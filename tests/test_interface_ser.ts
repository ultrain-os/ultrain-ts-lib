import { Contract } from "../lib/contract";
import { printstr, N, ultrain_assert, RN } from "../src/utils";
import "allocator/arena";


interface IBool{

    getName():string;

}

export class BasketBall implements IBool{

    getName():string{
        return "BasketBall";
    }
}

export class Football extends Contract implements IBool{
    getName(): string {
        return "football";
    }

    @action
    say(owner: account_name): void {
        let name = this.getName();
        printstr(name);
    }

}

