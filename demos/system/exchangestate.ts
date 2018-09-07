
/**
 * @author fanliangqin@ultrain.io
 */
import { Asset } from "../../src/asset";

class Connector implements Serializable {
    balance: Asset;
    weight: f64;

    constructor() {
        this.balance = new Asset();
        this.weight = 0;
    }

    serialize(ds: DataStream): void {
        this.balance.serialize(ds);
        ds.writeDouble(this.weight);
    }

    deserialize(ds: DataStream): void {
        this.balance.deserialize(ds);
        this.weight = ds.readDouble();
    }

    primaryKey(): u64 { return <u64>0; }
}

export class ExchangeState implements Serializable {
    supply: Asset;
    base: Connector;
    quote: Connector;

    constructor() {
        this.supply = new Asset();
        this.base = new Connector();
        this.quote = new Connector();
    }

    primaryKey(): u64 { return this.supply.getSymbol(); }

    // TODO(liangqin): looks weird, waiting for implements.
    convertToExchange(c: Connector, i: Asset): Asset {
        return null;
    }

    convertFromExchange(c: Connector, i: Asset): Asset {
        return null;
    }

    convert(from: Asset, to: symbol_name): Asset {
        return null;
    }

    serialize(ds: DataStream): void {
        this.supply.serialize(ds);
        this.base.serialize(ds);
        this.quote.serialize(ds);
    }

    deserialize(ds: DataStream): void {
        this.supply.deserialize(ds);
        this.base.deserialize(ds);
        this.quote.deserialize(ds);
    }
}