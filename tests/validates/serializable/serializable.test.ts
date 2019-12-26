import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { intToString } from "../../../src/utils";

class InnerObject implements Serializable {
    r: u64;
    @ignore
    notCare: u64;

    constructor(i: u64 = 0) {
        this.r = 100;
        this.notCare = i;
    }

    assert_self(initState: boolean): void {
        ultrain_assert(this.r == 100, "InnerOjbect r must be 100");
        if (!initState) {
            let t: u64[] = [2, 3, 4, 5];
            ultrain_assert(t.indexOf(this.notCare) == -1, "InnerObject ignored member must be inited.");
        }
    }
}

class EmbedObject implements Serializable {
    name: string;
    points: u64;
    idx: u64;
    inner: InnerObject;

    constructor(i: u64 = 0) {
        this.name = "zhaosi.nicolas" + intToString(i);
        this.points = 9527;
        this.idx = i;
        this.inner = new InnerObject(i);
    }

    assert_self(initState: boolean): void {
        let n = "zhaosi.nicolas" + intToString(this.idx);
        ultrain_assert(this.name == n, "EmbedObject assert name failed.");
        ultrain_assert(this.points == 9527, "EmbedObject assert points failed.");
        this.inner.assert_self(initState);
    }
}

class Params implements Serializable {
    m_i8: i8;
    m_u8: u8;
    m_i16: i16;
    m_u16: u16;
    m_i32: i32;
    m_u32: u32;
    m_i64: i64;
    m_u64: u64;
    m_bool: boolean;
    m_string: string;
    m_obj: EmbedObject;

    m_array_i8: i8[];
    m_array_u8: u8[];
    m_array_i16: i16[];
    m_array_u16: u16[];
    m_array_i32: i32[];
    m_array_u32: u32[];
    m_array_i64: i64[];
    m_array_u64: u64[];
    m_array_bool: boolean[];
    m_array_string: string[];
    m_array_obj: EmbedObject[];

    m_map_i8: Map<string, i8>;
    m_map_u8: Map<string, u8>;
    m_map_i16: Map<string, i16>;
    m_map_u16: Map<string, u16>;
    m_map_i32: Map<string, i32>;
    m_map_u32: Map<string, u32>;
    m_map_i64: Map<string, i64>;
    m_map_u64: Map<string, u64>;
    m_map_bool: Map<string, boolean>;
    m_map_string: Map<string, string>;
    m_map_obj: Map<string, EmbedObject>;

    m_map_array_i8: Map<string, Array<i8>>;
    m_map_array_u8: Map<string, Array<u8>>;
    m_map_array_i16: Map<string, Array<i16>>;
    m_map_array_u16: Map<string, Array<u16>>;
    m_map_array_i32: Map<string, Array<i32>>;
    m_map_array_u32: Map<string, Array<u32>>;
    m_map_array_i64: Map<string, Array<i64>>;
    m_map_array_u64: Map<string, Array<u64>>;
    m_map_array_bool: Map<string, Array<boolean>>;
    m_map_array_string: Map<string, Array<string>>;
    m_map_array_obj: Map<string, Array<EmbedObject>>;

    m_map_map_i8: Map<string, Map<string, i8>>;
    m_map_map_u8: Map<string, Map<string, u8>>;
    m_map_map_i16: Map<string, Map<string, i16>>;
    m_map_map_u16: Map<string, Map<string, u16>>;
    m_map_map_i32: Map<string, Map<string, i32>>;
    m_map_map_u32: Map<string, Map<string, u32>>;
    m_map_map_i64: Map<string, Map<string, i64>>;
    m_map_map_u64: Map<string, Map<string, u64>>;
    m_map_map_bool: Map<string, Map<string, boolean>>;
    m_map_map_string: Map<string, Map<string, string>>;
    m_map_map_obj: Map<string, Map<string, EmbedObject>>;

    constructor() {
        // i8
        this.m_array_i8 = new Array<i8>();
        this.m_map_i8 = new Map<string, i8>();
        this.m_map_array_i8 = new Map<string, Array<i8>>();
        this.m_map_map_i8 = new Map<string, Map<string, i8>>();
        // u8
        this.m_u8 = 255;
        this.m_array_u8 = new Array<u8>();
        this.m_map_u8 = new Map<string, u8>();
        this.m_map_array_u8 = new Map<string, u8[]>();
        this.m_map_map_u8 = new Map<string, Map<string, u8>>();
        // i16
        this.m_array_i16 = new Array<i16>();
        this.m_map_i16 = new Map<string, i16>();
        this.m_map_array_i16 = new Map<string, i16[]>();
        this.m_map_map_i16 = new Map<string, Map<string, i16>>();
        // u16
        this.m_array_u16 = new Array<u16>();
        this.m_map_u16 = new Map<string, u16>();
        this.m_map_array_u16 = new Map<string, u16[]>();
        this.m_map_map_u16 = new Map<string, Map<string, u16>>();
        // i32
        this.m_array_i32 = new Array<i32>();
        this.m_map_i32 = new Map<string, i32>();
        this.m_map_array_i32 = new Map<string, i32[]>();
        this.m_map_map_i32 = new Map<string, Map<string, i32>>();
        // u32
        this.m_array_u32 = new Array<u32>();
        this.m_map_u32 = new Map<string, u32>();
        this.m_map_array_u32 = new Map<string, u32[]>();
        this.m_map_map_u32 = new Map<string, Map<string, u32>>();
        // i64
        this.m_array_i64 = new Array<i64>();
        this.m_map_i64 = new Map<string, i64>();
        this.m_map_array_i64 = new Map<string, i64[]>();
        this.m_map_map_i64 = new Map<string, Map<string, i64>>();
        // u64
        this.m_array_u64 = new Array<u64>();
        this.m_map_u64 = new Map<string, u64>();
        this.m_map_array_u64 = new Map<string, u64[]>();
        this.m_map_map_u64 = new Map<string, Map<string, u64>>();
        // bool
        this.m_array_bool = new Array<boolean>();
        this.m_map_bool = new Map<string, boolean>();
        this.m_map_array_bool = new Map<string, boolean[]>();
        this.m_map_map_bool = new Map<string, Map<string, boolean>>();
        // string
        this.m_array_string = new Array<string>();
        this.m_map_string = new Map<string, string>();
        this.m_map_array_string = new Map<string, string[]>();
        this.m_map_map_string = new Map<string, Map<string, string>>();
        // object
        this.m_obj = new EmbedObject(1);
        this.m_array_obj = new Array<EmbedObject>();
        this.m_map_obj = new Map<string, EmbedObject>();
        this.m_map_array_obj = new Map<string, EmbedObject[]>();
        this.m_map_map_obj = new Map<string, Map<string, EmbedObject>>();
    }

    init(): void {
        // i8
        this.m_i8 = -127;
        this.m_array_i8.push(-127);
        this.m_array_i8.push(0);
        this.m_array_i8.push(127);
        this.m_map_i8.set("-127", -127);
        this.m_map_i8.set("0", 0);
        this.m_map_i8.set("127", 127);
        this.m_map_array_i8.set("0", this.m_array_i8);
        this.m_map_map_i8.set("0", this.m_map_i8);
        // u8
        this.m_u8 = 255;
        this.m_array_u8.push(0);
        this.m_array_u8.push(127);
        this.m_array_u8.push(255);
        this.m_map_u8.set("0", 0);
        this.m_map_u8.set("127", 127);
        this.m_map_u8.set("255", 255);
        this.m_map_array_u8.set("0", this.m_array_u8);
        this.m_map_map_u8.set("0", this.m_map_u8);
        // i16
        this.m_i16 = -255;
        this.m_array_i16.push(-255);
        this.m_array_i16.push(0);
        this.m_array_i16.push(255);
        this.m_map_i16.set("-255", -255);
        this.m_map_i16.set("0", 0);
        this.m_map_i16.set("255", 255);
        this.m_map_array_i16.set("0", this.m_array_i16);
        this.m_map_map_i16.set("0", this.m_map_i16);
        // u16
        this.m_u16 = 65535;
        this.m_array_u16.push(0);
        this.m_array_u16.push(256);
        this.m_array_u16.push(65535);
        this.m_map_u16.set("0", 0);
        this.m_map_u16.set("256", 256);
        this.m_map_u16.set("65535", 65535);
        this.m_map_array_u16.set("0", this.m_array_u16);
        this.m_map_map_u16.set("0", this.m_map_u16);
        // i32
        this.m_i32 = -65535;
        this.m_array_i32.push(-65535);
        this.m_array_i32.push(0);
        this.m_array_i32.push(65535);
        this.m_map_i32.set("-65535", -65535);
        this.m_map_i32.set("0", 0);
        this.m_map_i32.set("65535", 65535);
        this.m_map_array_i32.set("0", this.m_array_i32);
        this.m_map_map_i32.set("0", this.m_map_i32);
        // u32
        this.m_u32 = 0xffffffff;
        this.m_array_u32.push(0);
        this.m_array_u32.push(0x7fffffff);
        this.m_array_u32.push(0xffffffff);
        this.m_map_u32.set("0", 0);
        this.m_map_u32.set("0x7fffffff", 0x7fffffff);
        this.m_map_u32.set("0xffffffff", 0xffffffff);
        this.m_map_array_u32.set("0", this.m_array_u32);
        this.m_map_map_u32.set("0", this.m_map_u32);
        // i64
        this.m_i64 = -0xfffffffe;
        this.m_array_i64.push(-0xfffffffe);
        this.m_array_i64.push(0);
        this.m_array_i64.push(0xffffffff);
        this.m_map_i64.set("-0xfffffffe", -0xfffffffe);
        this.m_map_i64.set("0", 0);
        this.m_map_i64.set("0xffffffff", 0xffffffff);
        this.m_map_array_i64.set("0", this.m_array_i64);
        this.m_map_map_i64.set("0", this.m_map_i64);
        // u64
        this.m_u64 = 0xffffffffffffffff;
        this.m_array_u64.push(0);
        this.m_array_u64.push(0x7fffffffffffffff);
        this.m_array_u64.push(0xffffffffffffffff);
        this.m_map_u64.set("0", 0);
        this.m_map_u64.set("0x7fffffffffffffff", 0x7fffffffffffffff);
        this.m_map_u64.set("0xffffffffffffffff", 0xffffffffffffffff);
        this.m_map_array_u64.set("0", this.m_array_u64);
        this.m_map_map_u64.set("0", this.m_map_u64);
        // bool
        this.m_bool = true;
        this.m_array_bool.push(true);
        this.m_array_bool.push(false);
        this.m_map_bool.set("true", true);
        this.m_map_bool.set("false", false);
        this.m_map_array_bool.set("0", this.m_array_bool);
        this.m_map_map_bool.set("0", this.m_map_bool);
        // string
        this.m_string = "string";
        this.m_array_string.push("string");
        this.m_array_string.push("字符串");
        this.m_map_string.set("0", "string");
        this.m_map_string.set("1", "字符串");
        this.m_map_array_string.set("0", this.m_array_string);
        this.m_map_map_string.set("0", this.m_map_string);
        // object
        this.m_array_obj.push(new EmbedObject(2));
        this.m_array_obj.push(new EmbedObject(3));
        this.m_map_obj.set("0", new EmbedObject(4));
        this.m_map_obj.set("1", new EmbedObject(5));
        this.m_map_array_obj.set("0", this.m_array_obj);
        this.m_map_map_obj.set("0", this.m_map_obj);
    }

    assert_test(initState: boolean): void {
        // i8
        ultrain_assert(this.m_i8 == -127, "ST m_i8 failed.");
        ultrain_assert(this.m_array_i8[0] == -127, "ST m_array_i8[0] failed.");
        ultrain_assert(this.m_array_i8[1] == 0, "ST m_array_i8[1] failed.");
        ultrain_assert(this.m_array_i8[2] == 127, "ST m_array_i8[2] failed.");
        ultrain_assert(this.m_map_i8.get("-127") == -127, "ST m_map_i8(0) failed.");
        ultrain_assert(this.m_map_i8.get("0") == 0, "ST m_map_i8(1) failed.");
        ultrain_assert(this.m_map_i8.get("127") == 127, "ST m_map_i8(2) failed.");
        let t_map_array_i8 = this.m_map_array_i8.get("0");
        ultrain_assert(t_map_array_i8[0] == -127, "ST t_map_array_i8[0] failed.");
        ultrain_assert(t_map_array_i8[1] == 0, "ST t_map_array_i8[1] failed.");
        ultrain_assert(t_map_array_i8[2] == 127, "ST t_map_array_i8[2] failed.");
        let t_map_map_i8 = this.m_map_map_i8.get("0");
        ultrain_assert(t_map_map_i8.get("-127") == -127, "ST t_map_map_i8(0) failed.");
        ultrain_assert(t_map_map_i8.get("0") == 0, "ST t_map_map_i8(1) failed.");
        ultrain_assert(t_map_map_i8.get("127") == 127, "ST t_map_map_i8(2) failed.");
        // u8
        ultrain_assert(this.m_u8 == 255, "ST m_u8 failed.");
        ultrain_assert(this.m_array_u8[0] == 0, "ST m_array_u8[0] failed.");
        ultrain_assert(this.m_array_u8[1] == 127, "ST m_array_u8[1] failed.");
        ultrain_assert(this.m_array_u8[2] == 255, "ST m_array_u8[2] failed.");
        ultrain_assert(this.m_map_u8.get("0") == 0, "ST m_map_u8(0) failed.");
        ultrain_assert(this.m_map_u8.get("127") == 127, "ST m_map_u8(1) failed.");
        ultrain_assert(this.m_map_u8.get("255") == 255, "ST m_map_u8(2) failed.");
        let t_map_array_u8 = this.m_map_array_u8.get("0");
        ultrain_assert(t_map_array_u8[0] == 0, "ST t_map_array_u8[0] failed.");
        ultrain_assert(t_map_array_u8[1] == 127, "ST t_map_array_u8[1] failed.");
        ultrain_assert(t_map_array_u8[2] == 255, "ST t_map_array_u8[2] failed.");
        let t_map_map_u8 = this.m_map_map_u8.get("0");
        ultrain_assert(t_map_map_u8.get("0") == 0, "ST t_map_map_u8(0) failed.");
        ultrain_assert(t_map_map_u8.get("127") == 127, "ST t_map_map_u8(1) failed.");
        ultrain_assert(t_map_map_u8.get("255") == 255, "ST t_map_map_u8(2) failed.");
        // i16
        ultrain_assert(this.m_i16 == -255, "ST m_i16 failed.");
        ultrain_assert(this.m_array_i16[0] == -255, "ST m_array_i16[0] failed.");
        ultrain_assert(this.m_array_i16[1] == 0, "ST m_array_i16[1] failed.");
        ultrain_assert(this.m_array_i16[2] == 255, "ST m_array_i16[2] failed.");
        ultrain_assert(this.m_map_i16.get("-255") == -255, "ST m_map_i16(0) failed.");
        ultrain_assert(this.m_map_i16.get("0") == 0, "ST m_map_i16(1) failed.");
        ultrain_assert(this.m_map_i16.get("255") == 255, "ST m_map_i16(2) failed.");
        let t_map_array_i16 = this.m_map_array_i16.get("0");
        ultrain_assert(t_map_array_i16[0] == -255, "ST t_map_array_i16[0] failed.");
        ultrain_assert(t_map_array_i16[1] == 0, "ST t_map_array_i16[1] failed.");
        ultrain_assert(t_map_array_i16[2] == 255, "ST t_map_array_i16[2] failed.");
        let t_map_map_i16 = this.m_map_map_i16.get("0");
        ultrain_assert(t_map_map_i16.get("-255") == -255, "ST t_map_map_i16(0) failed.");
        ultrain_assert(t_map_map_i16.get("0") == 0, "ST t_map_map_i16(1) failed.");
        ultrain_assert(t_map_map_i16.get("255") == 255, "ST t_map_map_i16(2) failed.");
        // u16
        ultrain_assert(this.m_u16 == 65535, "ST m_u16 failed.");
        ultrain_assert(this.m_array_u16[0] == 0, "ST m_array_u16[0] failed.");
        ultrain_assert(this.m_array_u16[1] == 256, "ST m_array_u16[1] failed.");
        ultrain_assert(this.m_array_u16[2] == 65535, "ST m_array_u16[2] failed.");
        ultrain_assert(this.m_map_u16.get("0") == 0, "ST m_map_u16(0) failed.");
        ultrain_assert(this.m_map_u16.get("256") == 256, "ST m_map_u16(1) failed.");
        ultrain_assert(this.m_map_u16.get("65535") == 65535, "ST m_map_u16(2) failed.");
        let t_map_array_u16 = this.m_map_array_u16.get("0");
        ultrain_assert(t_map_array_u16[0] == 0, "ST t_map_array_u16[0] failed.");
        ultrain_assert(t_map_array_u16[1] == 256, "ST t_map_array_u16[1] failed.");
        ultrain_assert(t_map_array_u16[2] == 65535, "ST t_map_array_u16[2] failed.");
        let t_map_map_u16 = this.m_map_map_u16.get("0");
        ultrain_assert(t_map_map_u16.get("0") == 0, "ST t_map_map_u16(0) failed.");
        ultrain_assert(t_map_map_u16.get("256") == 256, "ST t_map_map_u16(1) failed.");
        ultrain_assert(t_map_map_u16.get("65535") == 65535, "ST t_map_map_u16(2) failed.");
        // i32
        ultrain_assert(this.m_i32 == -65535, "ST m_i32 failed.");
        ultrain_assert(this.m_array_i32[0] == -65535, "ST m_array_i32[0] failed.");
        ultrain_assert(this.m_array_i32[1] == 0, "ST m_array_i32[1] failed.");
        ultrain_assert(this.m_array_i32[2] == 65535, "ST m_array_i32[2] failed.");
        ultrain_assert(this.m_map_i32.get("-65535") == -65535, "ST m_map_i32(0) failed.");
        ultrain_assert(this.m_map_i32.get("0") == 0, "ST m_map_i32(1) failed.");
        ultrain_assert(this.m_map_i32.get("65535") == 65535, "ST m_map_i32(2) failed.");
        let t_map_array_i32 = this.m_map_array_i32.get("0");
        ultrain_assert(t_map_array_i32[0] == -65535, "ST t_map_array_i32[0] failed.");
        ultrain_assert(t_map_array_i32[1] == 0, "ST t_map_array_i32[1] failed.");
        ultrain_assert(t_map_array_i32[2] == 65535, "ST t_map_array_i32[2] failed.");
        let t_map_map_i32 = this.m_map_map_i32.get("0");
        ultrain_assert(t_map_map_i32.get("-65535") == -65535, "ST t_map_map_i32(0) failed.");
        ultrain_assert(t_map_map_i32.get("0") == 0, "ST t_map_map_i32(1) failed.");
        ultrain_assert(t_map_map_i32.get("65535") == 65535, "ST t_map_map_i32(2) failed.");
        // u32
        ultrain_assert(this.m_u32 == 0xffffffff, "ST m_u32 failed.");
        ultrain_assert(this.m_array_u32[0] == 0, "ST m_array_u32[0] failed.");
        ultrain_assert(this.m_array_u32[1] == 0x7fffffff, "ST m_array_u32[1] failed.");
        ultrain_assert(this.m_array_u32[2] == 0xffffffff, "ST m_array_u32[2] failed.");
        ultrain_assert(this.m_map_u32.get("0") == 0, "ST m_map_u32(1) failed.");
        ultrain_assert(this.m_map_u32.get("0x7fffffff") == 0x7fffffff, "ST m_map_u32(0) failed.");
        ultrain_assert(this.m_map_u32.get("0xffffffff") == 0xffffffff, "ST m_map_u32(2) failed.");
        let t_map_array_u32 = this.m_map_array_u32.get("0");
        ultrain_assert(t_map_array_u32[0] == 0, "ST t_map_array_u32[0] failed.");
        ultrain_assert(t_map_array_u32[1] == 0x7fffffff, "ST t_map_array_u32[1] failed.");
        ultrain_assert(t_map_array_u32[2] == 0xffffffff, "ST t_map_array_u32[2] failed.");
        let t_map_map_u32 = this.m_map_map_u32.get("0");
        ultrain_assert(t_map_map_u32.get("0") == 0, "ST t_map_map_u32(1) failed.");
        ultrain_assert(t_map_map_u32.get("0x7fffffff") == 0x7fffffff, "ST t_map_map_u32(0) failed.");
        ultrain_assert(t_map_map_u32.get("0xffffffff") == 0xffffffff, "ST t_map_map_u32(2) failed.");
        // i64
        ultrain_assert(this.m_i64 == -0xfffffffe, "ST m_i64 failed.");
        ultrain_assert(this.m_array_i64[0] == -0xfffffffe, "ST m_array_i64[0] failed.");
        ultrain_assert(this.m_array_i64[1] == 0, "ST m_array_i64[1] failed.");
        ultrain_assert(this.m_array_i64[2] == 0xffffffff, "ST m_array_i64[2] failed.");
        ultrain_assert(this.m_map_i64.get("-0xfffffffe") == -0xfffffffe, "ST m_map_i64(0) failed.");
        ultrain_assert(this.m_map_i64.get("0") == 0, "ST m_map_i64(1) failed.");
        ultrain_assert(this.m_map_i64.get("0xffffffff") == 0xffffffff, "ST m_map_i64(2) failed.");
        let t_map_array_i64 = this.m_map_array_i64.get("0");
        ultrain_assert(t_map_array_i64[0] == -0xfffffffe, "ST t_map_array_i64[0] failed.");
        ultrain_assert(t_map_array_i64[1] == 0, "ST t_map_array_i64[1] failed.");
        ultrain_assert(t_map_array_i64[2] == 0xffffffff, "ST t_map_array_i64[2] failed.");
        let t_map_map_i64 = this.m_map_map_i64.get("0");
        ultrain_assert(t_map_map_i64.get("-0xfffffffe") == -0xfffffffe, "ST t_map_map_i64(0) failed.");
        ultrain_assert(t_map_map_i64.get("0") == 0, "ST t_map_map_i64(1) failed.");
        ultrain_assert(t_map_map_i64.get("0xffffffff") == 0xffffffff, "ST t_map_map_i64(2) failed.");
        // u64
        ultrain_assert(this.m_u64 == 0xffffffffffffffff, "ST m_u64 failed.");
        ultrain_assert(this.m_array_u64[0] == 0, "ST m_array_u64[0] failed.");
        ultrain_assert(this.m_array_u64[1] == 0x7fffffffffffffff, "ST m_array_u64[1] failed.");
        ultrain_assert(this.m_array_u64[2] == 0xffffffffffffffff, "ST m_array_u64[2] failed.");
        ultrain_assert(this.m_map_u64.get("0") == 0, "ST m_map_u64(1) failed.");
        ultrain_assert(this.m_map_u64.get("0x7fffffffffffffff") == 0x7fffffffffffffff, "ST m_map_u64(0) failed.");
        ultrain_assert(this.m_map_u64.get("0xffffffffffffffff") == 0xffffffffffffffff, "ST m_map_u64(2) failed.");
        let t_map_array_u64 = this.m_map_array_u64.get("0");
        ultrain_assert(t_map_array_u64[0] == 0, "ST t_map_array_u64[0] failed.");
        ultrain_assert(t_map_array_u64[1] == 0x7fffffffffffffff, "ST t_map_array_u64[1] failed.");
        ultrain_assert(t_map_array_u64[2] == 0xffffffffffffffff, "ST t_map_array_u64[2] failed.");
        let t_map_map_u64 = this.m_map_map_u64.get("0");
        ultrain_assert(t_map_map_u64.get("0") == 0, "ST t_map_map_u64(1) failed.");
        ultrain_assert(t_map_map_u64.get("0x7fffffffffffffff") == 0x7fffffffffffffff, "ST t_map_map_u64(0) failed.");
        ultrain_assert(t_map_map_u64.get("0xffffffffffffffff") == 0xffffffffffffffff, "ST t_map_map_u64(2) failed.");
        // bool
        ultrain_assert(this.m_bool == true, "ST m_bool failed.");
        ultrain_assert(this.m_array_bool[0] == true, "ST m_array_bool[0] failed.");
        ultrain_assert(this.m_array_bool[1] == false, "ST m_array_bool[1] failed.");
        ultrain_assert(this.m_map_bool.get("true") == true, "ST m_map_bool(0) failed.");
        ultrain_assert(this.m_map_bool.get("false") == false, "ST m_map_bool(1) failed.");
        let t_map_array_bool = this.m_map_array_bool.get("0");
        ultrain_assert(t_map_array_bool[0] == true, "ST t_map_array_bool[0] failed.");
        ultrain_assert(t_map_array_bool[1] == false, "ST t_map_array_bool[1] failed.");
        let t_map_map_bool = this.m_map_map_bool.get("0");
        ultrain_assert(t_map_map_bool.get("true") == true, "ST t_map_map_bool(0) failed.");
        ultrain_assert(t_map_map_bool.get("false") == false, "ST t_map_map_bool(1) failed.");
        // string
        ultrain_assert(this.m_string == "string", "ST m_string failed.");
        ultrain_assert(this.m_array_string[0] == "string", "ST m_array_string[0] failed.");
        ultrain_assert(this.m_array_string[1] == "字符串", "ST m_array_string[1] failed.");
        ultrain_assert(this.m_map_string.get("0") == "string", "ST m_map_string(0) failed.");
        ultrain_assert(this.m_map_string.get("1") == "字符串", "ST m_map_string(1) failed.");
        let t_map_array_string = this.m_map_array_string.get("0");
        ultrain_assert(t_map_array_string[0] == "string", "ST t_map_array_string[0] failed.");
        ultrain_assert(t_map_array_string[1] == "字符串", "ST t_map_array_string[1] failed.");
        let t_map_map_string = this.m_map_map_string.get("0");
        ultrain_assert(t_map_map_string.get("0") == "string", "ST t_map_map_string(0) failed.");
        ultrain_assert(t_map_map_string.get("1") == "字符串", "ST t_map_map_string(1) failed.");
        // object
        this.m_obj.assert_self(initState);
        this.m_array_obj[0].assert_self(initState);
        this.m_array_obj[1].assert_self(initState);
        this.m_map_obj.get("0").assert_self(initState);
        this.m_map_obj.get("1").assert_self(initState);
        let t_map_array_obj = this.m_map_array_obj.get("0");
        t_map_array_obj[0].assert_self(initState);
        t_map_array_obj[1].assert_self(initState);
        let t_map_map_obj = this.m_map_map_obj.get("0");
        t_map_map_obj.get("0").assert_self(initState);
        t_map_map_obj.get("1").assert_self(initState);
    }
}

class SerializableTest extends Contract {

    @action
    test(): void {
        let db = new DBManager<Params>(NAME("st.test"), NAME("st.test"));
        if (db.exists(0)) { db.erase(0); }
        let first = new Params();
        first.init();
        first.assert_test(true);
        db.emplace(first);

        let second = new Params();
        db.get(0, second);
        second.assert_test(false);
    }
}
