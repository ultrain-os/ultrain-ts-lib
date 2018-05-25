/**
 * fanliangqin@ultrain.io
 */
import "allocator/arena";
import { ultrain_assert } from "../lib/system";
import { ISerializer } from "../utils/serializer";
import { Log } from "../lib/log";

export class DataStream {
    public _value: usize;

    public _pos: usize;
    public _start: usize;
    public _end: usize;

    constructor(buffer: usize, size: i32) {
        this._value = buffer;
        this._start = buffer;
        this._pos = buffer;
        this._end = buffer + size;
        Log.s("DataStream.constructor: this._value = ").i(this._value, 16).s(" this._start = ").i(this._start, 16).s(" this._pos = ").i(this._pos, 16).s(" this._end = ").i(this._end, 16).flush();
    }

    private valueIsNull(): boolean {
        return this._value == null;
    }

    public skip(s: i32): void {
        this._pos += s;
    }

    public read(dest: u8[], s: i32): boolean {
        ultrain_assert((this._end - this._pos) >= s, "datastream read over bounds.");
        // It is not sure if array.copy is supported or not by assemblyscript,
        // so use basic for loop to copy values.
        for (let i: i32 = 0; i < s; ++i) {
            dest.push(this.get());
            ++this._pos;
        }

        return true;
    }

    public write(src: u8[], s: i32): boolean {
        // ultrain_assert(this._end - this._pos >= s, "datastream write over bounds.");
        for (let i: i32 = 0; i < s; ++i) {
           this.put(src[i]);
        }
        return true;
    }

    public put(u: u8): boolean {
        // ultrain_assert(this._pos < this._end, "datastream put over bounds.");
        if (!this.valueIsNull()) {
            store<u8>(this._pos, u);
        }
        ++this._pos;
        // Log.s("DataStream.put: this._value = ").i(this._value, 16).s(" this._start = ").i(this._start, 16).s(" this._pos = ").i(this._pos, 16).s(" this._end = ").i(this._end, 16).flush();
        return true;
    }

    public get(): u8 {
        ultrain_assert(this._pos < this._end, "datastream get over bounds.");
        let val: u8 = load<u8>(this._pos);
        ++this._pos;
        // Log.s("DataStream.get: this._value = ").i(this._value, 16).s(" this._start = ").i(this._start, 16).s(" this._pos = ").i(this._pos, 16).s(" this._end = ").i(this._end, 16).flush();
        return val;
    }

    public pos(): i32 { return this._pos - this._start; }

    public valid(): boolean { return this._pos <= this._end; }

    public seekp(p: i32): boolean {
        this._pos += p;
        return this._pos < this._end;
    }

    public tellp(): i32 { return this.pos(); }

    public remaining(): i32 { return this._end - this._pos; }

    public serialize8(val: u8): DataStream {
        // Log.s("datastream.serialize8: ").i(val, 16).flush();
        // ultrain_assert(sizeof<u8>() + this._pos <= this._end, "datastream serialize8 over bounds");
        this.put(val);

        return this;
    }

    public serialize16(val: u16): DataStream {
        // Log.s("datastream.serialize16: ").i(val, 16).flush();
        // ultrain_assert(sizeof<u16>() + this._pos <= this._end, "datastream serialize16 over bounds");
        let hsb: u8 = <u8>((val & 0xff00) >> 8);
        let lsb: u8 = <u8>(val & 0x00ff);

        this.serialize8(hsb); this.serialize8(lsb);

        return this;
    }

    public serialize32(val: u32): DataStream {
        // Log.s("datastream.serialize32: ").i(val, 16).flush();
        // ultrain_assert(sizeof<u32>() + this._pos <= this._end, "datastream serialize32 over bounds");
        let hsb: u16 = <u16>((val & 0xffff0000) >> 16);
        let lsb: u16 = <u16>((val & 0x0000ffff));

        this.serialize16(hsb); this.serialize16(lsb);

        return this;
    }

    public serialize64(val: u64): DataStream {
        // ultrain_assert(sizeof<u64>() + this._pos <= this._end, "datastream serialize64 over bounds");
        Log.s("datastream.serialize64: val = ").i(val, 16).flush();
        let hsb: u32 = <u32>((val & 0xffffffff00000000) >> 32);
        let lsb: u32 = <u32>( val & 0x00000000ffffffff);

        this.serialize32(hsb); this.serialize32(lsb);

        return this;
    }

    public serializebool(val: boolean): DataStream {
        // ultrain_assert(1 + this._pos <= this._end, "datastream serializebool over bounds");

        let b: u8 = val ? 1 : 0;
        Log.s("datastream.serializebool val = ").i(b).flush();
        this.serialize8(b);
        return this;
    }

    public deserialize8(): u8 {
        // ultrain_assert(<i32>sizeof<u8>() + this._pos <= this._end, "datastream deserialize8 over bounds.");
        let val: u8 = this.get();
        return val;
    }

    public deserialize16(): u16 {
        // ultrain_assert(<i32>sizeof<u16>() + this._pos <= this._end, "datastream deserialize16 over bounds.");
        let hsb: u16 = <u16>this.deserialize8();
        let lsb: u16 = <u16>this.deserialize8();

        let val: u16 = <u16>((hsb << 8) | lsb);
        return val;
    }

    public deserialize32(): u32 {
        // ultrain_assert(<i32>sizeof<u32>() + this._pos <= this._end, "datastream deserialize32 over bounds.");
        let hsb: u32 = <u32>this.deserialize16();
        let lsb: u32 = <u32>this.deserialize16();

        let val: u32 = <u32>((hsb << 16) | lsb);
        return val;
    }

    public deserialize64(): u64 {
        // ultrain_assert(<i32>sizeof<u64>() + this._pos <= this._end, "datastream deserialize64 over bounds.");
        let hsb: u64 = <u64>this.deserialize32();
        let lsb: u64 = <u64>this.deserialize32();

        let val: u64 = <u64>((hsb << 32) | lsb);
        Log.s("datastream deserialize u64. val = ").i(val, 16).flush();
        return val;
    }

    public deserializebool(): boolean {
        // ultrain_assert(1 + this._pos <= this._end, "datastream deserializebool over bounds.");
        let val: u8 = <u8> this.deserialize8();
        Log.s("datastream deserialize boolean = ").i(val).flush();
        return val == 1 ? true : false;
    }
}


 function packSize<T extends ISerializer>(t: T): i32 {
    let s: DataStream;// = new DataStream(null, 0);
    s._value = 0;
    s._start = 0;
    s._pos = 0;
    s._end = 0;
    t.serialize(s);
    return s.tellp();
}

export class Bytes {
    public value: usize = 0;
    public size: i32 = 0;

    public alloc(size: i32):void {
        this.value = allocate_memory(sizeof<u8>() * size);
        this.size = size;
    }

    public free(): void {
        if (this.value != 0) {
            free_memory(this.value);
        }
    }

    public prints(): void {

    }
}

export function pack<T extends ISerializer>(t: T): Bytes {
    let bytes: Bytes;

    let size: i32  =packSize(t);
    let buffer: usize = allocate_memory(sizeof<u8>() * size);
    let s: DataStream;// = new DataStream(buffer, size);
    s._value = buffer;
    s._start = buffer;
    s._pos = buffer;
    s._end = buffer + size;
    t.serialize(s);

    bytes.value = buffer;
    bytes.size = size;
    return bytes;
}

export function unpack<T extends ISerializer>(bytes: Bytes): T {
    let result: T;
    let s: DataStream;// = new DataStream(buffer, size);
    s._value = bytes.value;
    s._start = bytes.value;
    s._pos = bytes.value;bytes.value
    s._end = bytes.value + bytes.size;
    result.deserialize(s);
    return result;
}