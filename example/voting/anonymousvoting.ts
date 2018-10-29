import { Contract } from 'ultrain-ts-lib/src/contract';
import { Log } from 'ultrain-ts-lib/src/log';
import { NAME, RNAME} from 'ultrain-ts-lib/src/account';
import { DBManager } from 'ultrain-ts-lib/src/dbmanager';
import { ultrain_assert } from 'ultrain-ts-lib/src/utils';
import { Action } from 'ultrain-ts-lib/src/action';
import { SHA256 } from 'ultrain-ts-lib/src/crypto';

class VotingStatus implements Serializable {
  @primaryid
  name: account_name = 0; // voted
  count: u32 = 0; // votes
  who_voted: string[] = []; // hashed account who voted
}

class Candidates implements Serializable {
  candidates: Array<account_name> = new Array<account_name>();
}

const votingtable = "voting";
const votingscope = "s.voting";

const canditable = "candis";
const candiscope = "s.candis";

@database(VotingStatus, votingtable)
@database(Candidates, canditable)
export class AnonymousVoting extends Contract {
  candidb: DBManager<Candidates>;
  votingdb: DBManager<VotingStatus>;

  votes: Candidates;
  inited: boolean;

  public onInit(): void {
    this.votes = new Candidates();
    this.candidb = new DBManager<Candidates>(NAME(canditable), this.receiver, NAME(candiscope));
    this.inited = this.candidb.get(0, this.votes);

    Log.s("this.votes.length = ").i(this.votes.candidates.length).s(", inited = ").s(this.inited ? "true" : "false").flush();
  }

  public onStop(): void {
    if (this.inited) {
      this.candidb.modify(this.receiver, this.votes);
    } else {
      this.candidb.emplace(this.receiver, this.votes);
    }
  }

  @action
  setCandidates(candidate: account_name): void {
    ultrain_assert(Action.sender == this.receiver, "only contract owner can set candidates.");
    Log.s(" set '").s(RNAME(candidate)).s("', ori = ").i(candidate).flush();
    // this.init();

    Log.s("this.votes.length = ").i(this.votes.candidates.length).s(", inited = ")
    if (!this.votes.candidates.includes(candidate)) {
      this.votes.candidates.push(candidate);
    } else {
      ultrain_assert(false, "you also set this account as canditate.");
    }
  }

  @action
  vote(canidate: account_name): void {
    // this.init();
    if (this.votes.candidates.includes(canidate)) {
      let len = this.votes.candidates.length;
      let candi: VotingStatus = new VotingStatus();
      let sha = new SHA256();
      let hashedvoter = sha.hash(RNAME(Action.sender));
      let statusdb = new DBManager<VotingStatus>(NAME(votingtable), this.receiver, NAME(votingscope));
      let existing = statusdb.get(canidate, candi);

      if (existing) {
        ultrain_assert(candi.who_voted.includes(hashedvoter), "you have voted this candidates.");
        candi.count += 1;
        candi.who_voted.push(hashedvoter);
        statusdb.modify(this.receiver, candi);
      } else {
        candi.name = canidate;
        candi.count = 1;
        candi.who_voted.push(hashedvoter);

        statusdb.emplace(this.receiver, candi);
      }
    } else {
      ultrain_assert(false, "the candidate is not in candicates list.");
    }
  }
}
