/**
 * @author fanliangqin@ultrain.io
 */
import { GenType } from "./genetype";
import { env as Action } from "../../internal/action.d";
import { DragonCore } from "./dragoncore";

class SkillAndLevel {
    skills: u32 = 0;
    skillsLevel: u32 = 0;
}

class CharAndHchar {
    schar: u32 = 0;
    hchar: u32 = 0;
}

export class GeneScience {
    ///skill weight
    skillRate: u16[] = [1448, 1232, 1084, 954, 840, 739, 650, 572, 503, 443, 390, 343, 302, 266, 234];
    ///dragon initial skill count
    gen0SkillCount: u64[] = [70, 29, 1];
    characterRate: u64[] = [20, 20, 15, 28, 12, 23, 17, 15, 23, 10, 17, 28, 34, 34, 23, 20, 20, 17, 28, 23, 23, 17, 17, 23, 12, 20, 28, 20, 34, 23];
    outsideRate: u64[] = [20, 20, 17, 28, 15, 23, 17, 15, 20, 12, 17, 28, 23, 28, 23, 20, 23, 17, 28, 13, 23, 15, 15, 20, 11, 17, 23, 23, 28, 34];
    exterior: u64 = 0x88339834D688DF;
    baseBlood: u64 = 100;

    master: DragonCore;

    constructor(master: DragonCore) {
        this.master = master;
    }

    private createSkillAndLevel(seed: u64, skillCount: u64, have_skill: u64): SkillAndLevel {
        if (seed == 0) {
            seed = Action.random_uint64(0);
        }
        let sal = new SkillAndLevel();
        let scores: u64[] = [];
        let t = 0;
        let m: u64;
        let skillKey: u64;
        let additional: u64[] = [];

        for (let i = 0; i < this.skillRate.length; i++) {
            if (have_skill > 0) {
                for ( let j = 0; j < 10; j++) {
                    if (((have_skill >> (8 * j)) & 0xff) == (i + 1)) {
                        additional[i] += 25;
                    }
                }
            }
            t += this.skillRate[i] * (100 + additional[i]) / 100;
            scores[i] = t;
        }

        for (let i: u64 = 0; i < skillCount; i++) {
            m = seed % t;
            for (let j: u32 = 0; j < (<u32>scores.length); j++) {
                if ( m < scores[j]) {
                    sal.skills += ((j + 1) << (32 - i * 8));
                    sal.skillsLevel += (1 << (16 - i * 4));
                    skillKey = j;
                    t -= this.skillRate[j] * (100 + additional[i]) / 100;
                    scores[j] = 0;
                    break;
                }
            }
            // reset scores
            for (let j: u32 = 0; j < (<u32>scores.length); j++) {
                if (j > skillKey && scores[j] > 0) {
                    scores[j] -= this.skillRate[skillKey] * (100 + additional[i]) / 100;
                }
            }

            seed /= 10;
        }

        return sal;
    }

    private mixCharacter(genes1: GenType, genes2: GenType, tp: u64): CharAndHchar {
        let seed: u64 = Action.random_uint64(0);
        if (tp == 1) {
            return this.specicalCharacter(seed);
        }

        let result = new CharAndHchar();
        let c1: u64 = 0;
        let c2: u64 = 0;
        let h1: u64 = 0;
        let h2: u64 = 0;

        h1 += ((genes1.hchar >> 6) & 0x3ff) << 10;
        h1 += ((genes2.hchar >> 6) & 0x3ff);
        h2 += ((genes1.hchar) & 0x3ff) << 10;
        h2 += ((genes1.hchar) & 0x3ff);

        c1 += ((genes1.schar >> 6) & 0x3ff) << 10;
        c1 += ((genes2.schar >> 6) & 0x3ff);
        c2 += ((genes1.schar) & 0x3ff) << 10;
        c2 += ((genes1.schar) & 0x3ff);

        if (seed % 100 < 1) {
            c1 += (h1 << 20);
            c2 += (h2 << 20);
        }

        result.schar = this.joint(seed, c1, c2);
        seed /= 1000000;
        result.hchar = this.joint(seed, h1, h2);

        return result;
    }

    private joint(seed: u64, c1: u64, c2: u64): u64 {
        let character: u64 = 0;
        let part: u64 = 0;
        part = this.createCharacter(seed, 1, this.getUnRepeatArr(c1));
        character += (part << 10);
        seed /= 10000;
        part = this.createCharacter(seed, 2, this.getUnRepeatArr(c2));
        character += part;
        return character;
    }

    private specicalCharacter(seed: u64): CharAndHchar {
        let dchar: u64 = 0;
        let hchar: u64 = 0;
        let c: u64 = 0;

        let allCharacter: u64[] = [];

        for (let i = 0; i < 30; i++) {
            allCharacter.push(i + 1);
        }
        c = this.createCharacter(seed, 1, allCharacter);
        dchar += (c << 10);
        seed /= 10;

        c = this.createCharacter(seed, 2, allCharacter);
        dchar += c;
        seed /= 10;

        c = this.createCharacter(seed, 1, allCharacter);
        hchar += (c << 10);
        seed /= 10;

        c = this.createCharacter(seed, 2, allCharacter);
        hchar += c;

        let result = new CharAndHchar();
        result.schar = dchar;
        result.hchar = hchar;

        return result;
    }

    private createCharacter(seed: u64, type: u64, allCharacter: u64[]): u64 {
        let character: u64 = 0;
        let mod: u64 = 0;
        let t: u64;
        let ckey: u64 = 0;
        let c: u64 = 0;

        mod  = seed % 100;
        if (mod >= 70) {
            c = 2;
        } else if (mod >= 15) {
            c = 1;
        }

        if (c == 0) return character;

        let characterScores: u64[] = [];
        for (let i: u32 = 0; i < allCharacter.length; i++) {
            if (type == 1) {
                t += this.characterRate[allCharacter[i] - 1];
            } else {
                t += this.outsideRate[allCharacter[i] - 1];
            }
            characterScores.push(t);
        }

        seed /= 10;
        if (c >= allCharacter.length) {
            let list: u64[] = [];
            for (let i = 0; i < 30; i++) {
                list.push(i + 1);
            }

            for (let j: u32 = 0; j < (<u23>allCharacter.length); j++) {
                character += ((allCharacter[j]) << (5 - j * 5));
                list[allCharacter[j] - 1] = 0;
            }

            for (let j: u32 = allCharacter.length; j < <u32>c; j++) {
                mod = seed % 30;
                while(list[mod] == 0) { mod = (mod + 1) % 30; }
                character += (list[mod] << (5 - j * 5));
                list[mod] = 0;
            }
        } else {
            for (let i: u64 = 0; i < c; i++) {
                mod = seed % t;
                for (let j: u32 = 0; j < (<u32>characterScores.length); j++) {
                    if (mod < characterScores[j]) {
                        character += ((allCharacter[j]) << (5 - i * 5));
                        ckey = j;
                        if (type == 1) {
                            t -= this.characterRate[j];
                        } else {
                            t -= this.outsideRate[j];
                        }
                        characterScores[j] = 0;
                        break;
                    }
                }
                if (i < c) {
                    for (let j: u32 = 0; j < (<u32>characterScores.length); j++) {
                        if (j > ckey && characterScores[j] > 0) {
                            if (type == 1) {
                                characterScores[j] -= this.characterRate[ckey];
                            } else {
                                characterScores[j] -= this.outsideRate[ckey];
                            }
                        }
                    }
                }
                seed /= 10;
            }
        }
        return character;
    }

    private getUnRepeatArr(arrNum: u64): u64[] {
        let c: u64 = 0;
        let count: u64 = 0;
        let un: u64 = 0;
        let key: u64 = 0;
        let r: boolean;

        for (let i = 0; i < 8; i++) {
            r = false;
            c = (arrNum >> (35 - i * 5)) & 0x1f;
            if (c > 0) {
                for (let j = 0; j < 8; j++) {
                    if (c == ((un >> (35 - j * 5)) & 0x1f)) {
                        r = true;
                        break;
                    }
                }
                if (r == false) {
                    un += c << (35 - 5 * key);
                    key++;
                    count += 1;
                }
            }
        }
        let cA1: u64[] = [];
        for (let i: u64 = 0; i < count; i++) {
            cA1.push((un >> (35 - i * 5)) & 0x1f);
        }
        return cA1;
    }

    private genGene(owner: account_name, key: u64): GenType {
        let seed = Action.random_uint64(owner);
        let result = new GenType();

        let chr = this.specicalCharacter(seed);

        let color1: u64;
        let color2: u64;
        let m: u64;

        for (let i = 0; i < 14; i++) {
            if (i > 0) {
                color1 += (color1 << 4);
            }
            seed /= 10;
            let a = (this.exterior >> (i *4)) & 0xF;
            m = seed % a;
            color1 += m;
        }

        for (let i = 0; i < 14; i++) {
            if (i > 0) {
                color2 += (color2 << 4);
            }
            seed /= 10;
            let a = (this.exterior >> (i *4)) & 0xF;
            m = seed % a;
            color2 += m;
        }

        result.hchar = chr.hchar;
        result.schar = chr.schar;
        result.recessive = color2;
        result.color = color1;

        return result;
    }

    public isGeneScience(): boolean { return true; }

    public gen0Genes(genes: GenType): GenType {
        let seed = Action.random_uint64(0);

        genes.blood += seed % 21;
        genes.type += 2;

        let skillCount = 0;
        let t = 0;
        let scores: u64[] = [];

        for (let i: i32 = 0; i < (<i32>this.gen0SkillCount.length); i++) {
            t += this.gen0SkillCount[i];
            scores.push(t);
        }

        seed /= 10;
        for (let i = 0; i < scores.length; i++) {
            if ((seed % t) < scores[i]) {
                skillCount = i;
                break;
            }
        }

        if (skillCount > 0) {
            let sal = this.createSkillAndLevel(seed, skillCount, 0);
            genes.skills += sal.skills;
            genes.skillsLevel += sal.skillsLevel;
        }

        return genes;
    }
    /**
     * mix two gene
     * @param gene1 the first gene information
     * @param generation1 the first generation
     * @param gene2 the second gene information
     * @param generation2 the second generation
     * @param tid task id
     */
    public mixGenes(gene1: GenType, generation1: u64, gene2: GenType, generation2: u64, tid: u64): GenType {
        let r = Action.random_uint64(0) / 100;
        let new_gene_1 = new GenType();
        let new_gene_2 = new GenType();

        let b: u64 = generation1 > generation2 ? (generation1 + 1) : (generation2 + 1);
        b = b > 400 ? 400 : b;
        b = this.baseBlood + b * 5 + r % 21;
        let tp: u64 = 2;
        // check if use the 2nd part gene
        let mod: u64 = r % 100;
        r /= 100;

        if (r % 1000000 < 1) { tp = 1; }
        // for color
        if (mod < 2) { // 使用隐性基因的概率为1
            for (let i = 0; i < 14; i++) {
                if (i > 0) {
                    new_gene_1.color = new_gene_1.color << 4;
                    new_gene_2.color = new_gene_2.color << 4;
                }

                mod = r % 100;
                r /= 100;
                if (mod % 4 == 0) {
                    new_gene_1.color += (gene1.color >> ((14 - 1 - i) * 4)) & 0xF;
                } else if (mod % 4 == 1) {
                    new_gene_1.color += (gene2.color >> ((14 - 1 - i) * 4)) & 0xF;
                } else if (mod % 4 == 2) {
                    new_gene_1.color += (gene1.recessive >> ((14 - 1 - i) * 4)) & 0xF;
                } else {
                    new_gene_1.color += (gene2.recessive >> ((14 - 1 - i) * 4)) & 0xF;
                }

                mod = r % 100;
                r /= 100;
                if (mod % 4 == 0) {
                    new_gene_2.color += (gene1.color >> ((14 - 1 - i) * 4)) & 0xF;
                } else if (mod % 4 == 1) {
                    new_gene_2.color += (gene2.color >> ((14 - 1 - i) * 4)) & 0xF;
                } else if (mod % 4 == 2) {
                    new_gene_2.color += (gene1.recessive >> ((14 - 1 - i) * 4)) & 0xF;
                } else {
                    new_gene_2.color += (gene2.recessive >> ((14 - 1 - i) * 4)) & 0xF;
                }
            }
        } else {
            for (let i = 0; i < 14; i++) {
                if (i > 0) {
                    new_gene_1.color = new_gene_1.color << 4;
                    new_gene_2.color = new_gene_2.color << 4;
                }

                mod = r % 10;
                r /= 10;
                // 不使用隐性基因，则显性和显性计算，隐性和隐性计算
                if (mod % 2 == 0) {
                    new_gene_1.color += (gene1.color >> ((14-1-i)*4)) & 0xF;
                }else {
                    new_gene_1.color += (gene2.color >> ((14-1-i)*4)) & 0xF;
                }

                mod = r % 10;
                r = r / 10;

                if(mod % 2 == 0) {
                    new_gene_2.color += (gene1.recessive >> ((14-1-i)*4)) & 0xF;
                }else {
                    new_gene_2.color += (gene2.recessive >> ((14-1-i)*4)) & 0xF;
                }
            }
        }
        // blood type exterior
        new_gene_1.blood = b;
        // recessive
        new_gene_1.recessive = new_gene_2.color;
        // skills and skillsLevel
        let sal = this.mixSkills(r, gene1, gene2, b);
        new_gene_1.skills = sal.skills;
        new_gene_1.skillsLevel = sal.skillsLevel;
        // tid
        if (tp == 1) {
            new_gene_1.subtype = tid;
        }

        if (gene1.type == 1 || gene2.type == 1) {
            tp = 1;
        }
        // Character and hidden Character.
        // FIXME(liangqin): gene的位数前后不一致，需要搞清楚.
        let chchar = this.mixCharacter(gene1, gene2, tp);
        new_gene_1.schar = chchar.schar;
        new_gene_1.hchar = chchar.hchar;

        return new_gene_1;
    }

    public mixSkills(r: u64, genes1: GenType, genes2: GenType, total_gen: u64): SkillAndLevel {
        let skill1_cnt: u32 = 0;
        let skill2_cnt: u32 = 0;
        let all_skill: u64 = 0;
        // FIXME(liangqin): all_skill的64bit可能会超出，怎么处理？

        let skills1 = genes1.skills;
        for (let i = 0; i < 5; i++) {
            let sk: u64 = <u64>((skills1 >> (8 * i)) & 0xff);
            if ( sk != 0) {
                skill1_cnt++;
                all_skill = all_skill << 8 + sk;
            }
        }

        let skills2 = genes2.skills;
        for (let i = 0; i < 5; i++) {
            let sk: u64 = <u64>((skills2 >> (8 * i)) & 0xff);
            if ( sk != 0) {
                skill2_cnt++;
                all_skill = all_skill << 8 + sk;
            }
        }

        let mod: u64 = r % 10;
        r /= 10;

        // FIXME(liangqin): 以下逻辑和原文不一样，因为原文没有else且没有返回值。
        let skill_cnt: u64 = 1;
        if (mod < skill1_cnt + skill2_cnt) {
            if (skill1_cnt > skill2_cnt) {
                if (skill2_cnt > 3) {
                    skill_cnt = skill2_cnt / 2;
                }
            } else {
                if (skill1_cnt > 3) {
                    skill_cnt = skill1_cnt / 2;
                }
            }

            while (skill_cnt < 5) {
                let factor: u64 = pow(10, (skill_cnt + 2));
                mod = r % factor;
                r /= factor;
                if (mod < ((total_gen + 1) * (skill1_cnt * skill1_cnt + skill2_cnt * skill2_cnt))) {
                    skill_cnt += 1;
                } else {
                    break;
                }
            }
        }
        return this.createSkillAndLevel(r, skill_cnt, all_skill);
    }

    public mixExtend(extend1: GenType, gen1: u64, extend2: GenType, gen2): GenType {
        return new GenType();
    }

    public genDragon(owner: account_name, key: u64): GenType {
        return this.gen0Genes(this.genGene(owner, key));
    }

    public confirmGene(genes: GenType): GenType {
        let type = genes.type;

        if (type == 2) {
            return genes;
        } else {
            let subtype = genes.subtype;
            // TODO(liangqin): 调用主合约，产生特殊龙的信息
            let cur: u64 = this.master.specialDragon.get(subtype);
            let limit: u64 = this.master.specialDragonLimit.get(subtype);
            if (cur < limit) {
                this.master.increaseSpecialDragon(subtype);
            } else {
                genes.type += 1;
                genes.subtype = 0;
            }
        }

        return genes;
    }
}