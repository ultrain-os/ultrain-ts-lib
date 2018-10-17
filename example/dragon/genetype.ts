/**
 * @author fanliangqin@ultrain.io
 * @datetime 10:14:04, 06/29/2018
 * All rights reserved by ultrain.io @2018
 */

import { intToString } from "../../src/utils";
import { Log } from "../../src/log";
/**
 * 斗龙的基因组成
 * solidity编写的时候，采用了256bit的int来表示，原始格式如下：
 * H-------------------------------前128位--------------------------L
 *  FFFF  FFFF  FF    FF      FFFF          FFFF  FFFF  FFFF  FFFF
 * |---技能40bit---|      |-隐性性格16bit-| |----隐性基因64bit- -----|
 *
 * H--------------------------------后128位------------------------------------------------L
 *   FFF      F            FFF          F  FFFF         FFFF        FFFF  FFFF  FFFF  FFFF
 *       |-类型4bit-| |-血量12bit-| |-技能等级20bit-| |-性格16bit-| |------颜色64bit---------|
 *
 *
 * 现改成4个u64来表示一个基因。
 */
export class GenType implements Serializable {

    hsb2: u64 = 0; /*193 ~ 256 bit*/
    hsb1: u64 = 0; /*129 ~ 192 bit*/
    lsb2: u64 = 0; /*65 ~ 128 bit*/
    lsb1: u64 = 0; /*1 ~ 64 bit*/

    constructor(hsb2: u64 = 0, hsb1: u64 = 0, lsb2: u64 = 0, lsb1: u64 = 0) {
        this.hsb2 = hsb2;
        this.hsb1 = hsb1;
        this.lsb2 = lsb2;
        this.lsb1 = lsb1;
    }

    public get color(): u64 {
        return this.lsb1;
    }

    public set color(clr: u64) {
        this.lsb1 = clr;
    }
    /* 显性性格 */
    public get schar(): u32 {
        return <u32>(this.lsb2 & 0xFFFF);
    }
    /* 显性性格 */
    public set schar(crit: u32) {
        let val: u64 = (<u64>crit & 0xFFFF);
        let temp = this.lsb2 & 0xFFFFFFFFFFFF0000;
        this.lsb2 = temp | val;
    }

    public get skillsLevel(): u32 {
        let temp = this.lsb2 >> 16;
        return <u32>(temp & 0xFFFFF);
    }

    public set skillsLevel(lvl: u32) {
        let temp: u64 = ((<u64>lvl & 0xFFFFF) << 16);
        let mask = this.lsb2 & 0xFFFFFFF00000FFFF;
        this.lsb2 = mask | temp;
    }

    public get blood(): u32 {
        let temp = this.lsb2 >> 36;
        return <u32>(temp & 0xFFF);
    }

    public set blood(bld: u32) {
        let temp: u64 = (<u64>bld & 0xFFF) << 36;
        let mask = (this.lsb2 & 0xFFFF000FFFFFFFFF);
        this.lsb2 = (mask | temp);
    }

    public get type(): u32 {
        let temp: u64 = this.lsb2 >> 60;
        return <u32>(temp & 0xF);
    }

    public set type(tp: u32) {
        let temp:u64 = ((<u64>tp & 0xF) << 60);
        let mask = this.lsb2 & 0x0FFFFFFFFFFFFFFF;
        this.lsb2 = mask | temp;
    }

    public get subtype(): u32 {
        let temp = this.lsb2 >> 52;
        return <u32>(temp & 0x0FF);
    }

    public set subtype(t: u32) {
        let temp: u64 = ((<u64>t & 0x0FF) << 52);
        let mask = this.lsb2 & 0xF00FFFFFFFFFFFFF;
        this.lsb2 = mask | temp;
    }

    /* 隐性基因 */
    public get recessive(): u64 {
        return this.hsb1;
    }
    /* 隐性基因 */
    public set recessive(gen: u64) {
        this.hsb1 = gen;
    }
    /* 隐性性格 */
    public get hchar(): u32 {
        return <u32>(this.hsb2 & 0xFFFF);
    }
    /* 隐性性格 */
    public set hchar(hc: u32) {
        let temp: u64 = (<u64>hc & 0xFFFF);
        let mask = this.hsb2 & 0xFFFFFFFFFFFF0000;
        this.hsb2 = mask | temp;
    }

    public get skills(): u64 {
        let skillId: u64;
        let skills: u64;

        let temp: u64 = <u64>((this.hsb2 >> 24) & 0xFFFFFFFFFF);
        //预售龙 技能生成为反向 特殊处理
        if ((temp & 0xFF) > 0) {
            for (let i = 0; i < 5; i++) {
                skillId = (temp >> (i * 8)) & 0xFF;
                if (i > 0) {
                    skills = (skills << 8);
                }
                skills += skillId;
            }
        } else {
            for (let i = 0; i < 5; i++) {
                skillId = (temp >> (32 - i * 8)) & 0xFF;
                if (i > 0) {
                    skills = (skills << 8);
                }
                skills += skillId;
            }
        }
        return skills;
    }

    public set skills(sk: u64) {
        let temp: u64 = ((<u64>sk & 0xFFFFFFFFFF) << 16);
        let mask = this.hsb2 & 0xFF0000000000FFFF;
        this.hsb2 = mask | temp;
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<u64>(this.hsb2);
    //     ds.write<u64>(this.hsb1);
    //     ds.write<u64>(this.lsb2);
    //     ds.write<u64>(this.lsb1);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.hsb2 = ds.read<u64>();
    //     this.hsb1 = ds.read<u64>();
    //     this.lsb2 = ds.read<u64>();
    //     this.lsb1 = ds.read<u64>();
    // }

    // public primaryKey(): u64 {
    //     return 0;
    // }

    public toString(): string {
        let str = intToString(this.hsb2);
        str += '.'+intToString(this.hsb1);
        str += '.'+intToString(this.lsb2);
        str += '.'+intToString(this.lsb1);

        return str;
    }
}