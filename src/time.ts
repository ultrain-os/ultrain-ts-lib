import { ISerializable } from "./ISerializable";
import { DataStream } from "../lib/datastream";
import { ultrain_assert } from "./utils";
import { env as system } from "../internal/system.d";

export class Microseconds implements ISerializable {
    _count: u64;

    static maximum(): Microseconds {
        return new Microseconds(0x7FFFFFFFFFFFFFFF);
    }

    constructor(c: u64 = 0) {
        this._count = c;
    }

    equal(c: Microseconds): boolean {
        return this._count == c._count;
    }

    gt(c: Microseconds): boolean {
        return this._count > c._count;
    }

    gte(c: Microseconds): boolean {
        return this._count >= c._count;
    }

    lt(c: Microseconds): boolean {
        return this._count < c._count;
    }

    lte(c: Microseconds): boolean {
        return this._count <= c._count;
    }

    add(c: Microseconds): Microseconds {
        this._count += c._count;
        return this;
    }

    sub(c: Microseconds): Microseconds {
        this._count -= c._count;
        return this;
    }

    count(): u64 { return this._count; }

    toSeconds(): u64 { return this._count / 1000000; }

    serialize(ds: DataStream): void {
        ds.write<u64>(this._count);
    }

    deserialize(ds: DataStream): void {
        this._count = ds.read<u64>();
    }

    primaryKey(): u64 { return <u64>0; }
}

export function milliseconds(c: u64): Microseconds {
    let mis = new Microseconds(c * 1000);
    return mis;
}

export function seconds(sec: u64): Microseconds {
    let mis = milliseconds(sec * 1000);
    return mis;
}

export function minutes(m: u64): Microseconds {
    let mis = seconds(m * 60);
    return mis;
}

export function hours(h: u64): Microseconds {
    let mis = minutes(h * 60);
    return mis;
}

export function days(d: u64): Microseconds {
    let mis = hours(d * 24);
    return mis;
}

export class TimePoint implements ISerializable {
    _elapsed: Microseconds;

    static fromIsoString(str: string): TimePoint {
        return null;
    }

    constructor(e: Microseconds) {
        this._elapsed = e;
    }

    timeSinceEpoch(): Microseconds { return this._elapsed; }
    secSinceEpoch(): u32 { return <u32>(this._elapsed.count() / 1000000); }

    equal(tp: TimePoint): boolean { return this._elapsed.equal(tp._elapsed); }
    lt(tp: TimePoint): boolean { return this._elapsed._count < tp._elapsed._count; }
    lte(tp: TimePoint): boolean { return this._elapsed._count <= tp._elapsed._count; }
    gt(tp: TimePoint): boolean { return this._elapsed._count > tp._elapsed._count; }
    gte(tp: TimePoint): boolean { return this._elapsed._count >= tp._elapsed._count; }
    add(ms: Microseconds): TimePoint { this._elapsed.add(ms); return this; }
    sub(ms: Microseconds): TimePoint { this._elapsed.sub(ms); return this; }

    serialize(ds: DataStream): void { this._elapsed.serialize(ds); }
    deserialize(ds: DataStream): void { this._elapsed.deserialize(ds); }
}

export class TimePointSec implements ISerializable {
    utc_seconds: u32;

    static maximum(): TimePointSec { return new TimePointSec(0xFFFFFFFF); }
    static min(): TimePointSec { return new TimePointSec(0); }

    constructor(seconds: u32) { this.utc_seconds = seconds; }

    toTimePoint(): TimePoint { return new TimePoint(seconds(this.utc_seconds)); }
    secSinceEpoch(): u32 { return this.utc_seconds; }

    assign(tp: TimePoint): TimePointSec {
        this.utc_seconds = <u32>(tp.timeSinceEpoch().count() / 1000000);
        return this;
    }

    equal(tps: TimePointSec): boolean { return this.utc_seconds == tps.utc_seconds; }
    lt(tps: TimePointSec): boolean { return this.utc_seconds < tps.utc_seconds; }
    lte(tps: TimePointSec): boolean { return this.utc_seconds <= tps.utc_seconds; }
    gt(tps: TimePointSec): boolean { return this.utc_seconds > tps.utc_seconds; }
    gte(tps: TimePointSec): boolean { return this.utc_seconds >= tps.utc_seconds; }

    serialize(ds: DataStream): void { ds.write<u32>(this.utc_seconds); }
    deserialize(ds: DataStream): void { this.utc_seconds = ds.read<u32>(); }
}

const block_interval_ms: u32 = 500;
const block_timestamp_epoch: u64 = 946684800000; // epoch since year 2000.

export class BlockTimestamp implements ISerializable {
    _slot: u32;

    static fromTimePoint(tp: TimePoint): BlockTimestamp {
        let bts = new BlockTimestamp();
        bts._slot = bts.setTimePoint(tp);
        return bts;
    }

    static fromTimePointSec(tps: TimePointSec): BlockTimestamp {
        let sec_since_epoch = tps.secSinceEpoch();
        let slot = <u32>((sec_since_epoch * 1000 - block_timestamp_epoch) / block_interval_ms);
        return new BlockTimestamp(slot);
    }

    static maximum(): BlockTimestamp { return new BlockTimestamp(0xffff); }
    static min(): BlockTimestamp { return new BlockTimestamp(0); }

    constructor(slot: u32 = 0) {
        this._slot = slot;
    }

    next(): BlockTimestamp {
        ultrain_assert(0x7FFFFFFF - this._slot >= 1, "block timestamp overflow.");
        let result = new BlockTimestamp(this._slot + 1);
        return result;
    }

    toTimePoint(): TimePoint {
        let msec: u64 = this._slot * <u64>block_interval_ms;
        msec += block_timestamp_epoch;

        return new TimePoint(milliseconds(msec));
    }

    assign(tp: TimePoint): void {
        this._slot = this.setTimePoint(tp);
    }

    equal(t: BlockTimestamp): boolean { return this._slot == t._slot; }
    lt(t: BlockTimestamp): boolean { return this._slot < t._slot; }
    lte(t: BlockTimestamp): boolean { return this._slot <= t._slot; }
    gt(t: BlockTimestamp): boolean { return this._slot > t._slot; }
    gte(t: BlockTimestamp): boolean { return this._slot >= t._slot; }

    serialize(ds: DataStream): void { ds.write<u32>(this._slot); }
    deserialize(ds: DataStream): void { this._slot = ds.read<u32>(); }

    private setTimePoint(tp: TimePoint): u32 {
        let micro_since_epoch = tp.timeSinceEpoch().count();
        let msec_since_epoch = micro_since_epoch / 1000;
        let slot = <u32>((msec_since_epoch - block_timestamp_epoch) / block_interval_ms);
        return slot;
    }
}

export function now(): u32 { return <u32>(system.current_time() / 1000000); }
