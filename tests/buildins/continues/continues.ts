import { Contract } from "../../../src/contract";

export class UnitStatus {
    unitId: u64;
    level: u8;

    hpR: u16;
    agilityR: u16;
    hp: u16;
    attack: u16;
    intelligence: u16;
    defense: u16;
    agility: u16;
    luck: u16;
    stunned: u16;
    fire: u16;
    round: u16;
    roundA: u16;
    used: u16;
    energy: Energy;

    hpX: u16;
}


export class Energy {
    amount: u8;
    duration: u32;
    now: u32;

    constructor(_amount: u8, _duration: u32, _now: u32) {
        this.amount = _amount;
        this.duration = _duration;
        this.now = _now;
    }
}

export class TimeUtilTest extends Contract {

    @action
    test(): void {
        const result: UnitStatus[] = [];

        for (let i = 0; i < 20; ++i) {
            let status: UnitStatus;

            if (i < 10) {
                status = new UnitStatus();
                status.unitId = 0;
                status.level = 0;
                status.hp = 0;
                status.attack = 0;
                status.intelligence = 0;
                status.defense = 0;
                status.agility = 0;
                status.luck = 0;
                status.hpR = 0;
                status.agilityR = 0;
                status.stunned = 0;
                status.fire = 0;
                status.round = 0;
                status.roundA = 0;
                status.energy = new Energy(0, 0, 0);
                result.push(status);
                continue;
            }

            status = new UnitStatus();
            status.unitId = 1;
            status.level = 1;
            status.hp = 100;
            status.attack = 100;
            status.intelligence = 100;
            status.defense = 100;
            status.agility = 0;
            status.luck = 0;
            status.hpR = 0;
            status.agilityR = 0;
            status.stunned = 0;
            status.fire = 0;
            status.round = 0;
            status.roundA = 0;
            status.energy = new Energy(0, 0, 0);
            result.push(status);
        }
    }
}
