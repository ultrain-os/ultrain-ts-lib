import {AnonymousVoting} from "./anonymousvoting";

export function apply(receiver: u64, code: u64, actH: u64, actL: u64): void {
    if (receiver == code) {
      let _AnonymousVoting = new AnonymousVoting(receiver);
      _AnonymousVoting.setActionName(actH, actL);
      _AnonymousVoting.onInit();

      let ds = _AnonymousVoting.getDataStream();

    //   if (_AnonymousVoting.isAction("setCandidates")){
        let candidate = ds.read<u64>();
        _AnonymousVoting.setCandidates(candidate);
    //   }
    //   if (_AnonymousVoting.isAction("vote")){
    //     let canidate = ds.read<u64>();
    //     _AnonymousVoting.vote(canidate);
    //   }
      _AnonymousVoting.onStop();
    }
  }