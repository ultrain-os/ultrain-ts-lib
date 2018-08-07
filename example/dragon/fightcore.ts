/**
 * @author fanliangqin@ultrain.io
 */
import { env as Action } from "../../internal/action.d";
import { ultrain_assert } from "../../src/utils";
import { MatchCore } from "./match";
import { Pausable } from "./pausable";
import { GenType } from "./genetype";
import { Log } from "../../src/log";

class DragonInfo {
    id         : u64;
    blood      : u64;
    skills     : u64;
    skillLevels: u64;
    attackIndex: u64;
    seed       : u64;
    additionNum: u64;
    crit       : u64;
    bloodAdd   : u64;
    dodge      : u64;
    double     : u64;
    isDouble   : u64;

    constructor() {
        this.id          = 0;
        this.blood       = 0;
        this.skills      = 0;
        this.skillLevels = 0;
        this.attackIndex = 0;
        this.seed        = 0;
        this.additionNum = 0;
        this.crit        = 0;
        this.bloodAdd    = 0;
        this.dodge       = 0;
        this.double      = 0;
        this.isDouble    = 0;
    }
}

class SeedInfo {
    seed1: u64;
    seed2: u64;
}

class Addition {
    addi: u64[];

    constructor(info: u64[]) {
        this.addi = info;
    }
}

class FightContractData {
    // map betId => SeedInfo
    seeds         : Map<u64, SeedInfo>;
    baseDodge     : u64;
    baseCrit      : u64;
    baseDouble    : u64;
    skillDamageMin: u32[/*16*/];
    skillDamageMax: u32[/*16*/];
    offset: u64;
    cAddition: Addition[];

    constructor() {
        this.seeds          = new Map<u64, SeedInfo>();
        this.baseDodge      = 100;
        this.baseCrit       = 100;
        this.baseDouble     = 80;
        this.skillDamageMin = [15, 13, 18, 16, 21, 20, 23, 25, 30, 31, 33, 36, 41, 44, 47, 56];
        this.skillDamageMax = [15, 21, 19, 24, 22, 28, 29, 31, 32, 36, 41, 46, 47, 52, 59, 60];
        this.offset         = 100;
        this.cAddition      = [];
        this.cAddition.push(new Addition([2523156596, 2523155320, 2690931308, 2355385712, 2858704744, 2355384440, 2523155324, 2523159156, 2355385716, 2858704752, 2690928752, 2523155312, 2271502184, 2355385708, 2523159144, 1350067340, 1266508940, 1517184144, 1433625732, 1600742536, 1350395012, 1266836620, 1517511820, 1433953412, 1517839508, 1349411988, 1265853580, 1432970388, 1433298052, 1516856460]));
        this.cAddition.push(new Addition([1687582804, 1687584080, 1687907932, 1686926168, 1688234336, 1686602324, 1687585360, 1687582812, 1687255128, 1688564572, 1688236884, 1687581520, 1687906648, 1687252568, 1687582800, 2018547300, 2102104420, 1851431780, 1934986340, 1767875940, 2102430820, 2186319460, 1935317860, 2018873700, 1935321700, 1851105380, 2018219620, 1767218020, 1850775140, 2017890660]));
    }

}

export class FightCore/*  extends Pausable */ {
    private dataes: FightContractData;
    // private match: MatchCore;

    constructor(/* owner: account_name, match: MatchCore */) {
        this.dataes = new FightContractData();
    }

    private getBlood(gen: GenType): u64 {
        return <u64>gen.blood;
    }

    private getSkills(gen: GenType): u64 {
        return <u64>gen.skills;
    }

    private getSkillsLevel(gen: GenType): u64 {
        return <u64>gen.skillsLevel;
    }

    private getAddition(gen: GenType, dinfo: DragonInfo): void {
        let blood: u64    = 0;
        let crit: u64     = 0;
        let dodge: u64    = 0;
        let double: u64   = 0;
        let cid: u64      = 0;
        let addition: u64 = 0;
        let character: u32 = gen.schar;               // schar一共有16bit
        let append: u32    = <u32>(gen.color >> 60);
        let _gen = (character << 4 | append); // _gen现在有20bit
        for (let i = 0; i < 4; i++) {
            cid = (_gen >> (15 - i * 5)) & 0x1F;
            if (cid > 0) {
                let idx: i32 = <i32>(cid - 1);
                if (i < 2) {
                    // Log.s("GG 1").flush();
                    addition = this.dataes.cAddition[0].addi[idx];
                    // Log.s("GG 2").flush();
                } else {
                    addition = this.dataes.cAddition[1].addi[idx];
                }

                blood  = ((addition >> 24) & 0xff);
                crit   = ((addition >> 16) & 0xff);
                dodge  = ((addition >> 8) & 0xff);
                double = (addition & 0xff);
                // Log.s("GG 3").flush();
                dinfo.additionNum += 1;
                dinfo.bloodAdd    += blood;
                dinfo.crit        += crit;
                dinfo.dodge       += dodge;
                dinfo.double      += double;
            }
        }
        dinfo.blood = dinfo.blood + <u64>(dinfo.blood * dinfo.bloodAdd / 1000) - <u64>(dinfo.additionNum * this.dataes.offset * dinfo.blood / 1000);
    }

    private attack(d1: DragonInfo, d2: DragonInfo): void {
        let type: u64 = 1;
        let skill: i32 = <i32>((d1.skills >> (32 - d1.attackIndex * 8)) & 0xFF);
        let skillLevel: u64 = ((d1.skillLevels >> (16 - d1.attackIndex * 4)) & 0xF);
        let damage:u64 = this.dataes.skillDamageMin[skill];
        let damageMax: u64 = this.dataes.skillDamageMax[skill];

        if (skillLevel > 1) {
            damage += (skillLevel - 1) * 10 * damage / 100;
            damageMax += (skillLevel - 1) * 10 * damageMax / 100;
        }

        let diff = damageMax - damage;
        let offset = this.dataes.offset;
        if (skill > 0) {
            damage += d1.seed % (diff + 1);
            d1.seed /= 10;
        }
        // is miss
        if ((d2.seed % 1000) < (this.dataes.baseDodge + d2.dodge - d2.additionNum * offset)) {
            type = 2;
            damage = 0;
        } else {
            d1.seed /= 10;
            // is crit
            if ((d1.seed % 1000) < (this.dataes.baseCrit + d1.crit - d1.additionNum * offset)) {
                type = 3;
                damage *= 2;
            }
        }

        // Balance of blood
        d2.blood = (d2.blood - damage) <= 0 ? 0 : (d2.blood -damage);
        d1.seed /= 10;
        d1.attackIndex += 1;

        // is double
        if (d1.isDouble == 0) {
            if ((d1.seed % 1000) < (this.dataes.baseDouble + d1.double - d1.additionNum * offset)) {
                d1.isDouble = 1;
                d1.attackIndex -= 1;
            }
            d1.seed /= 10;
        } else {
            // clear double
            d1.isDouble = 0;
        }

        d1.attackIndex = d1.attackIndex % 5;
    }

    public startFight(betid: u64, did1: DragonId, gen1: GenType, did2: DragonId, gen2: GenType, nonce: u64): DragonId {
        let d1 = new DragonInfo();
        d1.id = did1;
        d1.blood = this.getBlood(gen1);
        d1.skills = this.getSkills(gen1);
        d1.skillLevels = this.getSkillsLevel(gen1);
        d1.seed = Action.random_uint64(nonce);
Log.s("SS 1").flush();
        let d2 = new DragonInfo();
        d2.id = did2;
        d2.blood = this.getBlood(gen2);
        d2.skills = this.getSkills(gen2);
        d2.skillLevels = this.getSkillsLevel(gen2);
        d2.seed = Action.random_uint64(nonce);
        Log.s("SS 2").flush();
        this.getAddition(gen1, d1);
        Log.s("SS 3").flush();
        this.getAddition(gen2, d2);

        let si = new SeedInfo();
        si.seed1 = d1.seed;
        si.seed2 = d2.seed;

        this.dataes.seeds.set(betid, si);

        let attacker: u64;
        let limit: u64 = 0;

        attacker = d1.seed > d2.seed ? 0 : 1;

        d1.seed /= 10;
        d2.seed /= 10;

        while (d1.blood > 0 && d2.blood > 0 && limit < 80) {
            if (d1.seed < 100000) {
                d1.seed = Action.random_uint64(nonce) / 3;
            }

            if (d2.seed < 100000) {
                d2.seed = Action.random_uint64(nonce) / 3;
            }

            if (attacker % 2 == 0) {
                this.attack(d1, d2);
                if (d1.isDouble == 0) {
                    attacker += 1;
                }
            } else {
                this.attack(d2, d1);
                if (d2.isDouble == 0) {
                    attacker += 1;
                }
            }
            limit++;
        }

        if (d1.blood > d2.blood) {
            return did1;
        } else if (d1.blood == d2.blood) {
            return d1.id > d2.id ? did1 : did2;
        } else {
            return did2;
        }
    }
}