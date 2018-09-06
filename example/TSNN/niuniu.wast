(module
 (type $ii (func (param i32) (result i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $iI (func (param i32) (result i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $I (func (result i64)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $iiiiiIiIv (func (param i32 i32 i32 i32 i32 i64 i32 i64)))
 (type $Ii (func (param i64) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $Iv (func (param i64)))
 (type $iiIii (func (param i32 i32 i64 i32) (result i32)))
 (type $iIiIv (func (param i32 i64 i32 i64)))
 (type $IIIIiIv (func (param i64 i64 i64 i64 i32 i64)))
 (type $iiiIv (func (param i32 i32 i32 i64)))
 (type $iiiiiIv (func (param i32 i32 i32 i32 i32 i64)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiiiiv (func (param i32 i32 i32 i32 i32 i32)))
 (type $iiiIi (func (param i32 i32 i32 i64) (result i32)))
 (type $iIIIIv (func (param i32 i64 i64 i64 i64)))
 (type $iIIiIv (func (param i32 i64 i64 i32 i64)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "ultrainio_assert" (func $../../internal/system.d/env.ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $../../src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $../../src/log/env.ts_log_done))
 (import "env" "db_find_i64" (func $../../internal/db.d/env.db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $../../internal/db.d/env.db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_sender" (func $../../internal/action.d/env.current_sender (result i64)))
 (import "env" "current_receiver" (func $../../internal/action.d/env.current_receiver (result i64)))
 (import "env" "db_store_i64" (func $../../internal/db.d/env.db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "action_data_size" (func $../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "tapos_block_num" (func $../../internal/transaction.d/env.tapos_block_num (result i32)))
 (import "env" "db_update_i64" (func $../../internal/db.d/env.db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "require_auth" (func $../../internal/action.d/env.require_auth (param i64)))
 (import "env" "big_int_probab_prime" (func $util/BigInt/env.big_int_probab_prime (param i32 i32 i32) (result i32)))
 (import "env" "big_int_mul" (func $util/BigInt/env.big_int_mul (param i32 i32 i32 i32 i32)))
 (import "env" "big_int_cmp" (func $util/BigInt/env.big_int_cmp (param i32 i32 i32) (result i32)))
 (import "env" "current_time" (func $../../internal/system.d/env.current_time (result i64)))
 (import "env" "big_int_pow_mod" (func $util/BigInt/env.big_int_pow_mod (param i32 i32 i32 i32 i32 i32)))
 (import "env" "set_result_int" (func $../../src/return/env.set_result_int (param i64)))
 (import "env" "set_result_str" (func $../../src/return/env.set_result_str (param i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/utils/PrintableChar i32 (i32.const 1272))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $../../src/asset/CHAR_A i32 (i32.const 65))
 (global $../../src/asset/CHAR_Z i32 (i32.const 90))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $../../src/asset/SYS (mut i64) (i64.const 0))
 (global $../../src/asset/SYS_NAME (mut i64) (i64.const 0))
 (global $../../src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $util/string_util/NUM_STR i32 (i32.const 1688))
 (global $round/DEFAULT_CARDS i32 (i32.const 2304))
 (global $round/MIN_PQ i32 (i32.const 2312))
 (global $round/MAX_PQ i32 (i32.const 2344))
 (global $round/MIN_N i32 (i32.const 2376))
 (global $round/BASE i32 (i32.const 62))
 (global $../../src/time/block_interval_ms i32 (i32.const 500))
 (global $../../src/time/block_timestamp_epoch i64 (i64.const 946684800000))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/datastream/HEADER_SIZE i32 (i32.const 4))
 (global $round/RoundStag.INIT i32 (i32.const 0))
 (global $round/RoundStag.SHUFFLE i32 (i32.const 1))
 (global $round/RoundStag.ENCRYPT i32 (i32.const 2))
 (global $round/RoundStag.UPLOAD_ENCRYPT_KEY i32 (i32.const 3))
 (global $round/RoundStag.SCRAMBLE_BANKER i32 (i32.const 4))
 (global $round/RoundStag.BET i32 (i32.const 5))
 (global $round/RoundStag.UPLOAD_LAST_ENCRYPT_KEY i32 (i32.const 6))
 (global $round/RoundStag.DISCARD i32 (i32.const 7))
 (global $round/RoundStag.UPLOAD_SHUFFLE_KEY i32 (i32.const 8))
 (global $round/RoundStag.SETTLE i32 (i32.const 9))
 (global $round/RoundStag.END i32 (i32.const 10))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $~lib/internal/string/CharCode.PLUS i32 (i32.const 43))
 (global $~lib/internal/string/CharCode.MINUS i32 (i32.const 45))
 (global $~lib/internal/string/CharCode.DOT i32 (i32.const 46))
 (global $~lib/internal/string/CharCode._0 i32 (i32.const 48))
 (global $~lib/internal/string/CharCode._1 i32 (i32.const 49))
 (global $~lib/internal/string/CharCode._2 i32 (i32.const 50))
 (global $~lib/internal/string/CharCode._3 i32 (i32.const 51))
 (global $~lib/internal/string/CharCode._4 i32 (i32.const 52))
 (global $~lib/internal/string/CharCode._5 i32 (i32.const 53))
 (global $~lib/internal/string/CharCode._6 i32 (i32.const 54))
 (global $~lib/internal/string/CharCode._7 i32 (i32.const 55))
 (global $~lib/internal/string/CharCode._8 i32 (i32.const 56))
 (global $~lib/internal/string/CharCode._9 i32 (i32.const 57))
 (global $~lib/internal/string/CharCode.A i32 (i32.const 65))
 (global $~lib/internal/string/CharCode.B i32 (i32.const 66))
 (global $~lib/internal/string/CharCode.E i32 (i32.const 69))
 (global $~lib/internal/string/CharCode.O i32 (i32.const 79))
 (global $~lib/internal/string/CharCode.X i32 (i32.const 88))
 (global $~lib/internal/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/internal/string/CharCode.a i32 (i32.const 97))
 (global $~lib/internal/string/CharCode.b i32 (i32.const 98))
 (global $~lib/internal/string/CharCode.e i32 (i32.const 101))
 (global $~lib/internal/string/CharCode.o i32 (i32.const 111))
 (global $~lib/internal/string/CharCode.x i32 (i32.const 120))
 (global $~lib/internal/string/CharCode.z i32 (i32.const 122))
 (global $~lib/set/INITIAL_CAPACITY i32 (i32.const 4))
 (global $~lib/set/BUCKET_SIZE i32 (i32.const 4))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $~lib/set/EMPTY i32 (i32.const 1))
 (global $~lib/set/FREE_FACTOR f64 (f64.const 0.75))
 (global $~lib/set/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 9976))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 \00")
 (data (i32.const 16) "\01\00\00\00!\00")
 (data (i32.const 24) "\01\00\00\00\"\00")
 (data (i32.const 32) "\01\00\00\00#\00")
 (data (i32.const 40) "\01\00\00\00$\00")
 (data (i32.const 48) "\01\00\00\00%\00")
 (data (i32.const 56) "\01\00\00\00&\00")
 (data (i32.const 64) "\01\00\00\00\'\00")
 (data (i32.const 72) "\01\00\00\00(\00")
 (data (i32.const 80) "\01\00\00\00)\00")
 (data (i32.const 88) "\01\00\00\00*\00")
 (data (i32.const 96) "\01\00\00\00+\00")
 (data (i32.const 104) "\01\00\00\00,\00")
 (data (i32.const 112) "\01\00\00\00-\00")
 (data (i32.const 120) "\01\00\00\00.\00")
 (data (i32.const 128) "\01\00\00\00/\00")
 (data (i32.const 136) "\01\00\00\000\00")
 (data (i32.const 144) "\01\00\00\001\00")
 (data (i32.const 152) "\01\00\00\002\00")
 (data (i32.const 160) "\01\00\00\003\00")
 (data (i32.const 168) "\01\00\00\004\00")
 (data (i32.const 176) "\01\00\00\005\00")
 (data (i32.const 184) "\01\00\00\006\00")
 (data (i32.const 192) "\01\00\00\007\00")
 (data (i32.const 200) "\01\00\00\008\00")
 (data (i32.const 208) "\01\00\00\009\00")
 (data (i32.const 216) "\01\00\00\00:\00")
 (data (i32.const 224) "\01\00\00\00;\00")
 (data (i32.const 232) "\01\00\00\00<\00")
 (data (i32.const 240) "\01\00\00\00=\00")
 (data (i32.const 248) "\01\00\00\00>\00")
 (data (i32.const 256) "\01\00\00\00?\00")
 (data (i32.const 264) "\01\00\00\00@\00")
 (data (i32.const 272) "\01\00\00\00A\00")
 (data (i32.const 280) "\01\00\00\00B\00")
 (data (i32.const 288) "\01\00\00\00C\00")
 (data (i32.const 296) "\01\00\00\00D\00")
 (data (i32.const 304) "\01\00\00\00E\00")
 (data (i32.const 312) "\01\00\00\00F\00")
 (data (i32.const 320) "\01\00\00\00G\00")
 (data (i32.const 328) "\01\00\00\00H\00")
 (data (i32.const 336) "\01\00\00\00I\00")
 (data (i32.const 344) "\01\00\00\00J\00")
 (data (i32.const 352) "\01\00\00\00K\00")
 (data (i32.const 360) "\01\00\00\00L\00")
 (data (i32.const 368) "\01\00\00\00M\00")
 (data (i32.const 376) "\01\00\00\00N\00")
 (data (i32.const 384) "\01\00\00\00O\00")
 (data (i32.const 392) "\01\00\00\00P\00")
 (data (i32.const 400) "\01\00\00\00Q\00")
 (data (i32.const 408) "\01\00\00\00R\00")
 (data (i32.const 416) "\01\00\00\00T\00")
 (data (i32.const 424) "\01\00\00\00U\00")
 (data (i32.const 432) "\01\00\00\00V\00")
 (data (i32.const 440) "\01\00\00\00W\00")
 (data (i32.const 448) "\01\00\00\00X\00")
 (data (i32.const 456) "\01\00\00\00Y\00")
 (data (i32.const 464) "\01\00\00\00Z\00")
 (data (i32.const 472) "\01\00\00\00[\00")
 (data (i32.const 480) "\01\00\00\00\\\00")
 (data (i32.const 488) "\01\00\00\00]\00")
 (data (i32.const 496) "\01\00\00\00^\00")
 (data (i32.const 504) "\01\00\00\00_\00")
 (data (i32.const 512) "\01\00\00\00`\00")
 (data (i32.const 520) "\01\00\00\00a\00")
 (data (i32.const 528) "\01\00\00\00b\00")
 (data (i32.const 536) "\01\00\00\00c\00")
 (data (i32.const 544) "\01\00\00\00d\00")
 (data (i32.const 552) "\01\00\00\00e\00")
 (data (i32.const 560) "\01\00\00\00f\00")
 (data (i32.const 568) "\01\00\00\00g\00")
 (data (i32.const 576) "\01\00\00\00h\00")
 (data (i32.const 584) "\01\00\00\00i\00")
 (data (i32.const 592) "\01\00\00\00j\00")
 (data (i32.const 600) "\01\00\00\00k\00")
 (data (i32.const 608) "\01\00\00\00l\00")
 (data (i32.const 616) "\01\00\00\00m\00")
 (data (i32.const 624) "\01\00\00\00n\00")
 (data (i32.const 632) "\01\00\00\00o\00")
 (data (i32.const 640) "\01\00\00\00p\00")
 (data (i32.const 648) "\01\00\00\00q\00")
 (data (i32.const 656) "\01\00\00\00r\00")
 (data (i32.const 664) "\01\00\00\00s\00")
 (data (i32.const 672) "\01\00\00\00t\00")
 (data (i32.const 680) "\01\00\00\00u\00")
 (data (i32.const 688) "\01\00\00\00v\00")
 (data (i32.const 696) "\01\00\00\00w\00")
 (data (i32.const 704) "\01\00\00\00x\00")
 (data (i32.const 712) "\01\00\00\00y\00")
 (data (i32.const 720) "\01\00\00\00z\00")
 (data (i32.const 728) "\01\00\00\00{\00")
 (data (i32.const 736) "\01\00\00\00|\00")
 (data (i32.const 744) "\01\00\00\00}\00")
 (data (i32.const 752) "\01\00\00\00~\00")
 (data (i32.const 760) "|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1272) "\f8\02\00\00_\00\00\00")
 (data (i32.const 1280) "\03\00\00\00U\00G\00S\00")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 1392) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1424) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1488) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1520) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 1624) "(\00\00\00\00\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1688) "X\06\00\00\n\00\00\00")
 (data (i32.const 1696) "\02\00\00\001\000\00")
 (data (i32.const 1704) "\02\00\00\001\001\00")
 (data (i32.const 1712) "\02\00\00\001\002\00")
 (data (i32.const 1720) "\02\00\00\001\003\00")
 (data (i32.const 1728) "\02\00\00\001\004\00")
 (data (i32.const 1736) "\02\00\00\001\005\00")
 (data (i32.const 1744) "\02\00\00\001\006\00")
 (data (i32.const 1752) "\02\00\00\001\007\00")
 (data (i32.const 1760) "\02\00\00\001\008\00")
 (data (i32.const 1768) "\02\00\00\001\009\00")
 (data (i32.const 1776) "\02\00\00\002\000\00")
 (data (i32.const 1784) "\02\00\00\002\001\00")
 (data (i32.const 1792) "\02\00\00\002\002\00")
 (data (i32.const 1800) "\02\00\00\002\003\00")
 (data (i32.const 1808) "\02\00\00\002\004\00")
 (data (i32.const 1816) "\02\00\00\002\005\00")
 (data (i32.const 1824) "\02\00\00\002\006\00")
 (data (i32.const 1832) "\02\00\00\002\007\00")
 (data (i32.const 1840) "\02\00\00\002\008\00")
 (data (i32.const 1848) "\02\00\00\002\009\00")
 (data (i32.const 1856) "\02\00\00\003\000\00")
 (data (i32.const 1864) "\02\00\00\003\001\00")
 (data (i32.const 1872) "\02\00\00\003\002\00")
 (data (i32.const 1880) "\02\00\00\003\003\00")
 (data (i32.const 1888) "\02\00\00\003\004\00")
 (data (i32.const 1896) "\02\00\00\003\005\00")
 (data (i32.const 1904) "\02\00\00\003\006\00")
 (data (i32.const 1912) "\02\00\00\003\007\00")
 (data (i32.const 1920) "\02\00\00\003\008\00")
 (data (i32.const 1928) "\02\00\00\003\009\00")
 (data (i32.const 1936) "\02\00\00\004\000\00")
 (data (i32.const 1944) "\02\00\00\004\001\00")
 (data (i32.const 1952) "\02\00\00\004\002\00")
 (data (i32.const 1960) "\02\00\00\004\003\00")
 (data (i32.const 1968) "\02\00\00\004\004\00")
 (data (i32.const 1976) "\02\00\00\004\005\00")
 (data (i32.const 1984) "\02\00\00\004\006\00")
 (data (i32.const 1992) "\02\00\00\004\007\00")
 (data (i32.const 2000) "\02\00\00\004\008\00")
 (data (i32.const 2008) "\02\00\00\004\009\00")
 (data (i32.const 2016) "\02\00\00\005\000\00")
 (data (i32.const 2024) "\02\00\00\005\001\00")
 (data (i32.const 2032) "\02\00\00\005\002\00")
 (data (i32.const 2040) "\02\00\00\005\003\00")
 (data (i32.const 2048) "\d0\00\00\00\00\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\a0\06\00\00\a8\06\00\00\b0\06\00\00\b8\06\00\00\c0\06\00\00\c8\06\00\00\d0\06\00\00\d8\06\00\00\e0\06\00\00\e8\06\00\00\f0\06\00\00\f8\06\00\00\00\07\00\00\08\07\00\00\10\07\00\00\18\07\00\00 \07\00\00(\07\00\000\07\00\008\07\00\00@\07\00\00H\07\00\00P\07\00\00X\07\00\00`\07\00\00h\07\00\00p\07\00\00x\07\00\00\80\07\00\00\88\07\00\00\90\07\00\00\98\07\00\00\a0\07\00\00\a8\07\00\00\b0\07\00\00\b8\07\00\00\c0\07\00\00\c8\07\00\00\d0\07\00\00\d8\07\00\00\e0\07\00\00\e8\07\00\00\f0\07\00\00\f8\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2304) "\00\08\00\004\00\00\00")
 (data (i32.const 2312) "\0b\00\00\00A\00z\00L\008\00n\000\00Y\005\008\00m\008\00")
 (data (i32.const 2344) "\0b\00\00\00h\00x\00M\00Z\00A\002\00C\00K\00Z\006\00W\00")
 (data (i32.const 2376) "\16\00\00\003\00t\00X\001\006\00d\00B\002\00j\00p\00s\00s\004\00t\00Z\00O\00R\00Y\00c\00q\00o\004\00")
 (data (i32.const 2424) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2432) "x\t\00\00\00\00\00\00")
 (data (i32.const 2440) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2448) "\88\t\00\00\00\00\00\00")
 (data (i32.const 2456) "\t\00\00\00c\00h\00a\00o\00l\00e\00.\00n\00n\00")
 (data (i32.const 2480) "\05\00\00\00i\00n\00d\00e\00x\00")
 (data (i32.const 2496) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 2560) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00")
 (data (i32.const 2672) "\n\00\00\00c\00r\00e\00a\00t\00e\00R\00o\00o\00m\00")
 (data (i32.const 2696) ")\00\00\00c\00r\00e\00a\00t\00e\00R\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00 \00t\00r\00y\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00h\00e\00c\00k\00I\00n\00N\00u\00m\00.\00")
 (data (i32.const 2784) "\t\00\00\00r\00o\00o\00m\00.\00i\00n\00f\00o\00")
 (data (i32.const 2808) "\04\00\00\00r\00o\00o\00m\00")
 (data (i32.const 2824) "\'\00\00\00i\00n\00s\00e\00r\00t\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00o\00m\00 \00h\00a\00v\00e\00 \00e\00x\00i\00s\00t\00.\00 \00r\00o\00o\00m\00N\00u\00m\00:\00")
 (data (i32.const 2912) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2928) "\00\00\00\00")
 (data (i32.const 2936) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2992) "\0c\00\00\00,\00 \00t\00a\00b\00l\00e\00:\00r\00o\00o\00m\00")
 (data (i32.const 3024) "\11\00\00\00,\00 \00t\00a\00b\00l\00e\00:\00r\00o\00o\00m\00.\00i\00n\00f\00o\00")
 (data (i32.const 3064) "7\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.\00")
 (data (i32.const 3184) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 3296) "\07\00\00\00c\00h\00e\00c\00k\00I\00n\00")
 (data (i32.const 3320) "%\00\00\00n\00o\00n\00c\00e\00.\00i\00s\00s\00u\00e\00:\00 \00c\00h\00e\00c\00k\00I\00n\00N\00u\00m\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00")
 (data (i32.const 3400) "\1f\00\00\00n\00o\00n\00c\00e\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00o\00m\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00")
 (data (i32.const 3472) "&\00\00\00s\00t\00a\00g\00e\00.\00i\00s\00s\00u\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00t\00a\00t\00e\00 \00o\00f\00 \00t\00h\00e\00 \00r\00o\00o\00m\00")
 (data (i32.const 3552) " \00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00")
 (data (i32.const 3624) "2\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00i\00s\00 \00n\00o\00t\00 \00e\00n\00o\00u\00g\00h\00.\00 \00P\00a\00y\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \00")
 (data (i32.const 3728) "+\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00 \00t\00h\00e\00 \00r\00o\00o\00m\00 \00!\00")
 (data (i32.const 3824) "B\00\00\00s\00t\00a\00r\00t\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00h\00o\00s\00t\00 \00o\00r\00 \00p\00l\00a\00y\00e\00r\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00o\00u\00g\00h\00 \00t\00o\00 \00s\00t\00a\00r\00t\00 \00!\00")
 (data (i32.const 3960) "\19\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00o\00m\00 \00i\00s\00 \00e\00n\00d\00 \00!\00")
 (data (i32.const 4016) "\05\00\00\00s\00t\00a\00r\00t\00")
 (data (i32.const 4032) "\"\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00o\00m\00N\00u\00m\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00 \00!\00")
 (data (i32.const 4104) "\05\00\00\00s\00e\00t\00P\00Q\00")
 (data (i32.const 4120) ",\00\00\00s\00t\00a\00g\00e\00.\00i\00s\00s\00u\00e\00:\00 \00t\00h\00e\00 \00r\00o\00o\00m\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00o\00r\00 \00i\00s\00 \00e\00n\00d\00")
 (data (i32.const 4216) "!\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00i\00n\00 \00r\00o\00o\00m\00")
 (data (i32.const 4288) "\05\00\00\00r\00o\00u\00n\00d\00")
 (data (i32.const 4304) "\n\00\00\00r\00o\00u\00n\00d\00.\00i\00n\00f\00o\00")
 (data (i32.const 4328) "\n\00\00\00r\00o\00u\00n\00d\00.\00t\00e\00m\00p\00")
 (data (i32.const 4352) "\1f\00\00\00s\00t\00a\00g\00e\00.\00i\00s\00s\00u\00e\00:\00 \00n\00o\00w\00 \00r\00o\00u\00n\00d\00 \00s\00t\00a\00g\00e\00 \00i\00s\00")
 (data (i32.const 4424) "+\00\00\00,\00 \00a\00n\00d\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00x\00p\00e\00c\00t\00 \00t\00o\00 \00d\00o\00 \00t\00h\00i\00s\00 \00a\00c\00t\00i\00o\00n\00!\00")
 (data (i32.const 4520) "&\00\00\00P\00Q\00.\00i\00s\00s\00u\00e\00:\00 \00P\00 \00o\00r\00 \00Q\00 \00y\00o\00u\00 \00c\00h\00o\00s\00e\00 \00i\00s\00 \00i\00n\00v\00a\00i\00l\00d\00!\00")
 (data (i32.const 4600) "#\00\00\00i\00n\00s\00e\00r\00t\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00u\00n\00d\00 \00h\00a\00v\00e\00 \00e\00x\00i\00s\00t\00.\00 \00i\00d\00:\00")
 (data (i32.const 4680) "\12\00\00\00,\00 \00t\00a\00b\00l\00e\00:\00r\00o\00u\00n\00d\00.\00i\00n\00f\00o\00")
 (data (i32.const 4720) "\0d\00\00\00,\00 \00t\00a\00b\00l\00e\00:\00r\00o\00u\00n\00d\00")
 (data (i32.const 4752) "(\00\00\00i\00n\00s\00e\00r\00t\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00u\00n\00d\00 \00t\00e\00m\00p\00 \00h\00a\00v\00e\00 \00e\00x\00i\00s\00t\00.\00 \00i\00d\00:\00")
 (data (i32.const 4840) "\12\00\00\00,\00 \00t\00a\00b\00l\00e\00:\00r\00o\00u\00n\00d\00.\00t\00e\00m\00p\00")
 (data (i32.const 4880) "\0b\00\00\00s\00h\00u\00f\00f\00l\00e\00C\00a\00r\00d\00")
 (data (i32.const 4912) "\03\00\00\00R\00 \001\00")
 (data (i32.const 4928) "\03\00\00\00G\00 \001\00")
 (data (i32.const 4944) "\"\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00i\00n\00 \00r\00o\00o\00m\00!\00")
 (data (i32.const 5016) "\03\00\00\00G\00 \002\00")
 (data (i32.const 5032) "\03\00\00\00G\00 \003\00")
 (data (i32.const 5048) ".\00\00\00s\00t\00a\00g\00e\00.\00i\00s\00s\00u\00e\00:\00 \00t\00h\00e\00 \00r\00o\00o\00m\00 \00i\00s\00 \00n\00o\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00o\00r\00 \00i\00s\00 \00e\00n\00d\00")
 (data (i32.const 5144) "\03\00\00\00G\00 \004\00")
 (data (i32.const 5160) "\03\00\00\00G\00 \005\00")
 (data (i32.const 5176) "\03\00\00\00G\00 \006\00")
 (data (i32.const 5192) "\0b\00\00\00p\00l\00a\00y\00.\00r\00e\00c\00o\00r\00d\00")
 (data (i32.const 5224) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5232) "h\14\00\00\00\00\00\00")
 (data (i32.const 5240) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5248) "x\14\00\00\00\00\00\00")
 (data (i32.const 5256) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5264) "\88\14\00\00\00\00\00\00")
 (data (i32.const 5272) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5280) "\98\14\00\00\00\00\00\00")
 (data (i32.const 5288) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5296) "\a8\14\00\00\00\00\00\00")
 (data (i32.const 5304) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5312) "\b8\14\00\00\00\00\00\00")
 (data (i32.const 5320) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5328) "\c8\14\00\00\00\00\00\00")
 (data (i32.const 5336) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5344) "\d8\14\00\00\00\00\00\00")
 (data (i32.const 5352) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5360) "\e8\14\00\00\00\00\00\00")
 (data (i32.const 5368) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5376) "\f8\14\00\00\00\00\00\00")
 (data (i32.const 5384) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5392) "\08\15\00\00\00\00\00\00")
 (data (i32.const 5400) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5408) "\18\15\00\00\00\00\00\00")
 (data (i32.const 5416) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5424) "(\15\00\00\00\00\00\00")
 (data (i32.const 5432) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5440) "8\15\00\00\00\00\00\00")
 (data (i32.const 5448) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5456) "H\15\00\00\00\00\00\00")
 (data (i32.const 5464) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5472) "X\15\00\00\00\00\00\00")
 (data (i32.const 5480) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5488) "h\15\00\00\00\00\00\00")
 (data (i32.const 5496) "\00\00\00\00\00\00\00\00")
 (data (i32.const 5504) "x\15\00\00\00\00\00\00")
 (data (i32.const 5512) "\1f\00\00\00r\00o\00u\00n\00d\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00u\00n\00d\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 5584) "\03\00\00\00G\00 \007\00")
 (data (i32.const 5600) "\03\00\00\00R\00 \002\00")
 (data (i32.const 5616) "\03\00\00\00R\00 \003\00")
 (data (i32.const 5632) "\03\00\00\00R\00 \004\00")
 (data (i32.const 5648) "+\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00x\00p\00e\00c\00t\00 \00t\00o\00 \00a\00c\00t\00i\00o\00n\00!\00")
 (data (i32.const 5744) "$\00\00\00c\00a\00r\00d\00s\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00r\00 \00c\00a\00r\00d\00s\00 \00a\00r\00e\00 \00i\00n\00v\00a\00i\00l\00d\00!\00")
 (data (i32.const 5824) "\'\00\00\00i\00n\00s\00e\00r\00t\00.\00i\00s\00s\00u\00e\00:\00 \00r\00o\00u\00n\00d\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00 \00i\00d\00:\00")
 (data (i32.const 5912) "\1f\00\00\00k\00e\00y\00.\00i\00s\00s\00u\00e\00:\00 \00p\00r\00i\00m\00a\00r\00y\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 5984) "%\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00.\00")
 (data (i32.const 6064) "\0e\00\00\00k\00e\00y\00 \00h\00a\00s\00 \00e\00x\00i\00s\00t\00!\00")
 (data (i32.const 6096) "\03\00\00\00R\00 \005\00")
 (data (i32.const 6112) "\0b\00\00\00e\00n\00c\00r\00y\00p\00t\00C\00a\00r\00d\00")
 (data (i32.const 6144) "\10\00\00\00u\00p\00l\00o\00a\00d\00E\00n\00c\00r\00y\00p\00t\00K\00e\00y\00")
 (data (i32.const 6184) "\'\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00i\00n\00 \00t\00h\00e\00 \00r\00o\00o\00m\00 \00!\00")
 (data (i32.const 6272) "8\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00u\00p\00l\00o\00a\00d\00 \00t\00h\00e\00 \00e\00n\00c\00r\00y\00p\00t\00 \00k\00e\00y\00s\00 \00!\00")
 (data (i32.const 6392) "\0e\00\00\00s\00c\00r\00a\00m\00b\00l\00e\00B\00a\00n\00k\00e\00r\00")
 (data (i32.const 6424) "1\00\00\00b\00i\00d\00W\00a\00y\00.\00i\00s\00s\00u\00e\00:\00 \00w\00e\00 \00n\00e\00e\00d\00 \00b\00i\00d\00W\00a\00y\00=\000\00 \00t\00o\00 \00d\00o\00 \00t\00h\00i\00s\00 \00a\00c\00t\00i\00o\00n\00!\00")
 (data (i32.const 6528) " \00\00\00s\00t\00a\00g\00e\00.\00i\00s\00s\00u\00e\00:\00 \00n\00o\00w\00 \00r\00o\00u\00n\00d\00 \00s\00t\00a\00g\00e\00 \00i\00s\00 \00")
 (data (i32.const 6600) "\03\00\00\00b\00e\00t\00")
 (data (i32.const 6616) "\"\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00b\00a\00n\00k\00e\00r\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00t\00 \00!\00")
 (data (i32.const 6688) "%\00\00\00b\00e\00t\00s\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00b\00e\00t\00t\00e\00d\00 \00!\00")
 (data (i32.const 6768) "\14\00\00\00u\00p\00l\00o\00a\00d\00L\00a\00s\00t\00E\00n\00c\00r\00y\00p\00t\00K\00e\00y\00")
 (data (i32.const 6816) "=\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00u\00p\00l\00o\00a\00d\00 \00t\00h\00e\00 \00l\00a\00s\00t\00 \00e\00n\00c\00r\00y\00p\00t\00 \00k\00e\00y\00s\00 \00!\00")
 (data (i32.const 6944) "\07\00\00\00d\00i\00s\00c\00a\00r\00d\00")
 (data (i32.const 6968) "\08\00\00\00d\00i\00s\00k\00e\00y\00s\00 \00")
 (data (i32.const 6992) "\02\00\00\00:\00 \00")
 (data (i32.const 7000) "\06\00\00\00c\00a\00r\00d\00:\00 \00")
 (data (i32.const 7016) "\n\00\00\00,\00 \00d\00i\00s\00k\00e\00y\00:\00 \00")
 (data (i32.const 7040) "\04\00\00\00e\00n\00d\00.\00")
 (data (i32.const 7056) "/\00\00\001\00\000c\00a\00r\00d\00s\00.\00i\00s\00s\00u\00e\00.\00c\00o\00n\00t\00e\00n\00t\00s\00:\00 \00y\00o\00u\00r\00 \00c\00a\00r\00d\00s\00 \00a\00r\00e\00 \00i\00n\00v\00a\00i\00l\00d\00!\00")
 (data (i32.const 7160) "-\00\00\002\00\000c\00a\00r\00d\00s\00.\00i\00s\00s\00u\00e\00.\00l\00e\00n\00g\00t\00h\00:\00 \00y\00o\00u\00r\00 \00c\00a\00r\00d\00s\00 \00a\00r\00e\00 \00i\00n\00v\00a\00i\00l\00d\00!\00")
 (data (i32.const 7256) "/\00\00\002\00\000c\00a\00r\00d\00s\00.\00i\00s\00s\00u\00e\00.\00c\00o\00n\00t\00e\00n\00t\00s\00:\00 \00y\00o\00u\00r\00 \00c\00a\00r\00d\00s\00 \00a\00r\00e\00 \00i\00n\00v\00a\00i\00l\00d\00!\00")
 (data (i32.const 7360) "\11\00\00\00u\00p\00l\00o\00a\00d\00S\00h\00u\00f\00f\00l\00e\00K\00e\00y\00s\00")
 (data (i32.const 7400) ")\00\00\00u\00p\00l\00o\00a\00d\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00u\00p\00l\00o\00a\00d\00e\00d\00 \00!\00")
 (data (i32.const 7488) "\06\00\00\00s\00e\00t\00t\00l\00e\00")
 (data (i32.const 7504) ",\00\00\00,\00 \00a\00n\00d\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00x\00p\00e\00c\00t\00 \00t\00o\00 \00d\00o\00 \00t\00h\00i\00s\00 \00a\00c\00t\00i\00o\00n\00 \00!\00")
 (data (i32.const 7600) "0\00\00\00p\00l\00a\00y\00e\00r\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00o\00s\00t\00 \00t\00h\00e\00 \00r\00e\00s\00u\00l\00t\00 \00!\00")
 (data (i32.const 7704) "\'\00\00\00f\00l\00a\00g\00.\00i\00s\00s\00u\00e\00:\00 \00c\00a\00r\00d\00s\00 \00d\00o\00 \00n\00o\00t\00 \00f\00i\00t\00 \00t\00h\00e\00 \00f\00l\00a\00g\00!\00 \00")
 (data (i32.const 7792) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 7840) "\00\00\00\00\00\00\00\00")
 (data (i32.const 7848) "\a0\1e\00\00\00\00\00\00")
 (data (i32.const 7856) "\00\00\00\00\00\00\00\00")
 (data (i32.const 7864) "\b0\1e\00\00\00\00\00\00")
 (data (i32.const 7872) "\1c\00\00\00f\00l\00a\00g\00.\00i\00s\00s\00u\00e\00:\00 \00c\00a\00r\00d\00 \00c\00o\00d\00e\00 \00e\00r\00r\00o\00r\00!\00")
 (data (i32.const 7936) "\08\00\00\00q\00u\00i\00t\00R\00o\00o\00m\00")
 (data (i32.const 7960) "4\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00c\00a\00n\00 \00n\00o\00t\00 \00q\00u\00i\00t\00 \00w\00h\00e\00n\00 \00g\00a\00m\00e\00 \00i\00s\00 \00s\00t\00a\00r\00t\00i\00n\00g\00 \00!\00")
 (data (i32.const 8072) "#\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00 \00h\00o\00s\00t\00 \00c\00a\00n\00 \00n\00o\00t\00 \00q\00u\00i\00t\00 \00r\00o\00o\00m\00!\00")
 (data (i32.const 8152) "\14\00\00\00p\00r\00o\00p\00o\00s\00a\00l\00D\00i\00s\00s\00o\00l\00v\00e\00R\00o\00o\00m\00")
 (data (i32.const 8200) "!\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00 \00g\00a\00m\00e\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00s\00t\00a\00r\00t\00 \00!\00")
 (data (i32.const 8272) "\10\00\00\00r\00e\00s\00p\00o\00n\00s\00e\00P\00r\00o\00p\00o\00s\00a\00l\00")
 (data (i32.const 8312) "+\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00n\00o\00 \00p\00l\00a\00y\00e\00r\00 \00p\00r\00o\00p\00o\00s\00a\00l\00 \00d\00i\00s\00s\00o\00l\00v\00e\00 \00r\00o\00o\00m\00")
 (data (i32.const 8408) "\1c\00\00\00r\00o\00o\00m\00.\00i\00s\00s\00u\00e\00:\00y\00o\00u\00 \00h\00a\00v\00e\00 \00r\00e\00s\00p\00o\00n\00s\00e\00")
 (data (i32.const 8472) "\t\00\00\00f\00i\00n\00d\00C\00h\00e\00a\00t\00")
 (data (i32.const 8496) "\0c\00\00\00f\00i\00n\00d\00O\00v\00e\00r\00T\00i\00m\00e\00")
 (data (i32.const 8528) ";\00\00\00o\00v\00e\00r\00t\00i\00m\00e\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00c\00a\00n\00 \00n\00o\00t\00 \00d\00o\00 \00t\00h\00i\00s\00 \00a\00c\00t\00i\00o\00n\00 \00b\00e\00f\00o\00r\00e\00 \00s\00h\00u\00f\00f\00l\00e\00 \00!\00")
 (data (i32.const 8656) ")\00\00\00o\00v\00e\00r\00t\00i\00m\00e\00.\00i\00s\00s\00u\00e\00:\00 \00y\00o\00u\00 \00a\00r\00e\00 \00n\00o\00t\00 \00i\00n\00 \00t\00h\00e\00 \00r\00o\00o\00m\00 \00!\00")
 (data (i32.const 8744) "\n\00\00\00g\00e\00t\00R\00o\00o\00m\00M\00a\00p\00")
 (data (i32.const 8768) "!\00\00\00p\00a\00r\00a\00m\00s\00.\00i\00s\00s\00u\00e\00:\00 \00n\00o\00 \00s\00u\00c\00h\00 \00c\00h\00e\00c\00k\00I\00n\00N\00u\00m\00.\00")
 (data (i32.const 8840) "\0b\00\00\00g\00e\00t\00R\00o\00o\00m\00I\00n\00f\00o\00")
 (data (i32.const 8872) "\1e\00\00\00p\00a\00r\00a\00m\00s\00.\00i\00s\00s\00u\00e\00:\00 \00n\00o\00 \00s\00u\00c\00h\00 \00r\00o\00o\00m\00N\00u\00m\00.\00")
 (data (i32.const 8936) "\13\00\00\00{\00\"\00m\00i\00n\00P\00l\00a\00y\00e\00r\00T\00o\00S\00t\00a\00r\00\"\00:\00")
 (data (i32.const 8984) "\t\00\00\00,\00\"\00p\00o\00i\00n\00t\00\"\00:\00")
 (data (i32.const 9008) "\0e\00\00\00,\00\"\00t\00o\00t\00a\00l\00R\00o\00u\00n\00d\00\"\00:\00")
 (data (i32.const 9040) "\n\00\00\00,\00\"\00b\00i\00d\00W\00a\00y\00\"\00:\00")
 (data (i32.const 9064) "\0c\00\00\00,\00\"\00m\00i\00n\00M\00o\00n\00e\00y\00\"\00:\00")
 (data (i32.const 9096) "\0c\00\00\00,\00\"\00s\00t\00a\00r\00t\00W\00a\00y\00\"\00:\00")
 (data (i32.const 9128) "\0e\00\00\00,\00\"\00c\00h\00e\00c\00k\00I\00n\00N\00u\00m\00\"\00:\00")
 (data (i32.const 9160) "\0b\00\00\00,\00\"\00r\00o\00o\00m\00N\00u\00m\00\"\00:\00")
 (data (i32.const 9192) "\t\00\00\00,\00\"\00s\00t\00a\00g\00e\00\"\00:\00")
 (data (i32.const 9216) "\0e\00\00\00,\00\"\00s\00t\00a\00r\00t\00B\00l\00o\00c\00k\00\"\00:\00")
 (data (i32.const 9248) "\0c\00\00\00g\00e\00t\00R\00o\00u\00n\00d\00I\00n\00f\00o\00")
 (data (i32.const 9280) "*\00\00\00p\00a\00r\00a\00m\00s\00.\00i\00s\00s\00u\00e\00:\00 \00n\00o\00 \00s\00u\00c\00h\00 \00r\00o\00o\00m\00N\00u\00m\00 \00o\00r\00 \00r\00o\00u\00n\00d\00N\00u\00m\00.\00")
 (data (i32.const 9368) "\t\00\00\00{\00\"\00s\00t\00a\00g\00e\00\"\00:\00")
 (data (i32.const 9392) "\n\00\00\00,\00\"\00b\00a\00n\00k\00e\00r\00\"\00:\00")
 (data (i32.const 9416) "\08\00\00\00,\00\"\00t\00u\00r\00n\00\"\00:\00")
 (data (i32.const 9440) "\05\00\00\00,\00\"\00P\00\"\00:\00")
 (data (i32.const 9456) "\05\00\00\00,\00\"\00Q\00\"\00:\00")
 (data (i32.const 9472) "\n\00\00\00g\00e\00t\00P\00l\00a\00y\00e\00r\00s\00")
 (data (i32.const 9496) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 9568) "\0d\00\00\00\00\00\00\00.............\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 9600) "`%\00\00\0d\00\00\00")
 (data (i32.const 9608) "\0d\00\00\00g\00e\00t\00C\00h\00e\00c\00k\00I\00n\00N\00u\00m\00")
 (data (i32.const 9640) "\0f\00\00\00g\00e\00t\00S\00h\00u\00f\00f\00l\00e\00C\00a\00r\00d\00s\00")
 (data (i32.const 9680) "\0f\00\00\00g\00e\00t\00E\00n\00c\00r\00y\00p\00t\00C\00a\00r\00d\00s\00")
 (data (i32.const 9720) "\10\00\00\00g\00e\00t\00S\00h\00u\00f\00f\00l\00e\00E\00n\00K\00e\00y\00s\00")
 (data (i32.const 9760) "\10\00\00\00g\00e\00t\00S\00h\00u\00f\00f\00l\00e\00D\00e\00K\00e\00y\00s\00")
 (data (i32.const 9800) "\0e\00\00\00g\00e\00t\00E\00n\00c\00r\00y\00p\00t\00K\00e\00y\00s\00")
 (data (i32.const 9832) "\0e\00\00\00g\00e\00t\00D\00e\00c\00r\00y\00p\00t\00K\00e\00y\00s\00")
 (data (i32.const 9864) "\0e\00\00\00g\00e\00t\00B\00e\00t\00s\004\00P\00l\00a\00y\00e\00r\00")
 (data (i32.const 9896) "\0c\00\00\00g\00e\00t\00P\00l\00a\00y\00C\00a\00r\00d\00s\00")
 (data (i32.const 9928) "\n\00\00\00{\00\"\00c\00a\00r\00d\00s\00\"\00:\00[\00")
 (data (i32.const 9952) "\t\00\00\00]\00,\00\"\00f\00l\00a\00g\00\"\00:\00")
 (export "memory" (memory $0))
 (export "apply" (func $niuniu/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 22 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   (unreachable)
  )
  (set_local $1
   (get_global $~lib/allocator/arena/offset)
  )
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.sub
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 25 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/memory/memset (; 26 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (set_local $3
   (i32.and
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.const 3)
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const -4)
   )
  )
  (set_local $4
   (i32.mul
    (i32.div_u
     (i32.const -1)
     (i32.const 255)
    )
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $4)
  )
  (set_local $3
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $5
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $4)
     )
     (i64.const 32)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $5)
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 32)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 0)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.0
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/string/String#charCodeAt (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u offset=4
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/internal/memory/memcpy (; 29 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 30 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/internal/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (get_local $1)
    (get_local $2)
   )
   (block
    (if
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (call $~lib/internal/arraybuffer/computeSize
        (get_local $2)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (block $~lib/memory/memory.fill|inlined.1
       (set_local $3
        (i32.add
         (i32.add
          (get_local $0)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $5
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     (block
      (set_local $5
       (call $~lib/internal/arraybuffer/allocateUnsafe
        (get_local $1)
       )
      )
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $4
        (i32.add
         (get_local $5)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        (i32.add
         (get_local $0)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $4)
        (get_local $3)
        (get_local $2)
       )
      )
      (block $~lib/memory/memory.fill|inlined.2
       (set_local $3
        (i32.add
         (i32.add
          (get_local $5)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $6
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $6)
       )
      )
      (return
       (get_local $5)
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $2)
    )
    (block
     (if
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort)
       (unreachable)
      )
     )
     (i32.store
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u8>#push (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.0
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 0)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $../../src/utils/toUTF8Array (; 33 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (block
     (set_local $3
      (call $~lib/string/String#charCodeAt
       (get_local $0)
       (get_local $2)
      )
     )
     (if
      (i32.lt_s
       (get_local $3)
       (i32.const 128)
      )
      (drop
       (call $~lib/array/Array<u8>#push
        (get_local $1)
        (get_local $3)
       )
      )
      (if
       (i32.lt_s
        (get_local $3)
        (i32.const 2048)
       )
       (block
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $1)
          (i32.or
           (i32.const 192)
           (i32.shr_s
            (get_local $3)
            (i32.const 6)
           )
          )
         )
        )
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $1)
          (i32.or
           (i32.const 128)
           (i32.and
            (get_local $3)
            (i32.const 63)
           )
          )
         )
        )
       )
       (if
        (if (result i32)
         (tee_local $4
          (i32.lt_s
           (get_local $3)
           (i32.const 55296)
          )
         )
         (get_local $4)
         (i32.ge_s
          (get_local $3)
          (i32.const 57344)
         )
        )
        (block
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 224)
            (i32.shr_s
             (get_local $3)
             (i32.const 12)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 6)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (get_local $3)
             (i32.const 63)
            )
           )
          )
         )
        )
        (block
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $3
          (i32.add
           (i32.const 65536)
           (i32.or
            (i32.shl
             (i32.and
              (get_local $3)
              (i32.const 1023)
             )
             (i32.const 10)
            )
            (i32.and
             (call $~lib/string/String#charCodeAt
              (get_local $0)
              (get_local $2)
             )
             (i32.const 1023)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 240)
            (i32.shr_s
             (get_local $3)
             (i32.const 18)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 12)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 6)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (get_local $3)
             (i32.const 63)
            )
           )
          )
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (drop
   (call $~lib/array/Array<u8>#push
    (get_local $1)
    (i32.const 0)
   )
  )
  (get_local $1)
 )
 (func $../../src/utils/string2cstr (; 34 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $../../src/utils/toUTF8Array
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $1)
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 8)
  )
 )
 (func $../../src/utils/ultrain_assert (; 35 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 1)
    )
    (i32.const 0)
   )
   (call $../../internal/system.d/env.ultrainio_assert
    (i32.const 0)
    (call $../../src/utils/string2cstr
     (get_local $1)
    )
   )
  )
 )
 (func $../../src/log/Logger#s (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    (call $../../src/log/env.ts_log_print_s
     (call $~lib/string/String#charCodeAt
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#i (; 37 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../src/log/env.ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#flush (; 38 ;) (type $iv) (param $0 i32)
  (call $../../src/log/env.ts_log_done)
 )
 (func $../../src/asset/StringToSymbol (; 39 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $1)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.le_u
    (i32.and
     (get_local $2)
     (i32.const 255)
    )
    (i32.const 7)
   )
   (i32.const 1296)
  )
  (set_local $3
   (i64.const 0)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $4)
       (i32.and
        (get_local $2)
        (i32.const 255)
       )
      )
     )
    )
    (block
     (set_local $5
      (i32.and
       (call $~lib/string/String#charCodeAt
        (get_local $1)
        (i32.and
         (get_local $4)
         (i32.const 255)
        )
       )
       (i32.const 255)
      )
     )
     (if
      (if (result i32)
       (tee_local $6
        (i32.lt_u
         (get_local $5)
         (get_global $../../src/asset/CHAR_A)
        )
       )
       (get_local $6)
       (i32.gt_u
        (get_local $5)
        (get_global $../../src/asset/CHAR_Z)
       )
      )
      (call $../../src/log/Logger#flush
       (call $../../src/log/Logger#i
        (call $../../src/log/Logger#s
         (get_global $../../src/log/Log)
         (i32.const 1520)
        )
        (i64.extend_u/i32
         (get_local $5)
        )
        (i32.const 16)
       )
      )
      (set_local $3
       (i64.or
        (get_local $3)
        (i64.shl
         (i64.extend_u/i32
          (get_local $5)
         )
         (i64.mul
          (i64.const 8)
          (i64.extend_u/i32
           (i32.and
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
            (i32.const 255)
           )
          )
         )
        )
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $3
   (i64.or
    (get_local $3)
    (i64.extend_u/i32
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $niuniu/NiuNiuContract#_super (; 40 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../lib/name/char_to_symbol (; 41 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 97)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 122)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 97)
       )
       (i32.const 6)
      )
      (i32.const 255)
     )
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 49)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 53)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 49)
       )
       (i32.const 1)
      )
      (i32.const 255)
     )
    )
   )
  )
  (i64.const 0)
 )
 (func $../../lib/name/N (; 42 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_u
       (get_local $3)
       (i32.const 12)
      )
     )
    )
    (block
     (set_local $4
      (i64.const 0)
     )
     (if
      (if (result i32)
       (tee_local $5
        (i32.lt_u
         (get_local $3)
         (get_local $1)
        )
       )
       (i32.le_u
        (get_local $3)
        (i32.const 12)
       )
       (get_local $5)
      )
      (set_local $4
       (call $../../lib/name/char_to_symbol
        (i32.and
         (call $~lib/string/String#charCodeAt
          (get_local $0)
          (get_local $3)
         )
         (i32.const 255)
        )
       )
      )
     )
     (if
      (i32.lt_u
       (get_local $3)
       (i32.const 12)
      )
      (block
       (set_local $4
        (i64.and
         (get_local $4)
         (i64.const 31)
        )
       )
       (set_local $4
        (i64.shl
         (get_local $4)
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.const 5)
           (i64.extend_u/i32
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (set_local $4
       (i64.and
        (get_local $4)
        (i64.const 15)
       )
      )
     )
     (set_local $2
      (i64.or
       (get_local $2)
       (get_local $4)
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $../../src/account/NAME (; 43 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../lib/name/N
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<NiuNiuContract>#constructor (; 44 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 0)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (block $~lib/memory/memory.fill|inlined.3
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $5
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $5)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $5)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $5)
        (i32.const 0)
       )
       (get_local $5)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $~lib/datastream/DataStream#constructor (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $3)
        (i32.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (get_local $0)
 )
 (func $~lib/datastream/DataStream#read<i32> (; 47 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (get_local $1)
 )
 (func $~lib/datastream/DataStream#read<u64> (; 48 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  (set_local $1
   (i64.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $1)
 )
 (func $~lib/array/Array<u64>#__get (; 49 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i64)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 3)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<u64_u64>|inlined.0 (result i64)
    (i64.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 3)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u64_u64>#find (; 50 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u64>#get:length|inlined.1 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (call $~lib/array/Array<u64>#__get
       (i32.load
        (get_local $0)
       )
       (get_local $2)
      )
      (get_local $1)
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<u64>#push (; 51 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 3)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 134217727)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 3)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<u64_u64>|inlined.0
   (i64.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 3)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<u64>#__set (; 52 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 3)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 134217727)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 3)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<u64_u64>|inlined.1
   (i64.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 3)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u64_u64>#set (; 53 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<u64>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $util/serialize_util/deserializeMap<u64_u64> (; 54 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (set_local $2
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (call $~lib/datastream/DataStream#read<u64>
       (get_local $1)
      )
     )
     (set_local $5
      (call $~lib/datastream/DataStream#read<u64>
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u64_u64>#set
      (get_local $0)
      (get_local $4)
      (get_local $5)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $niuniu/NiuNiuContract#deserialize (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $util/serialize_util/deserializeMap<u64_u64>
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $1)
  )
  (i64.store offset=16
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<NiuNiuContract>#loadObjectByPrimaryIterator (; 56 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $niuniu/NiuNiuContract#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<NiuNiuContract>#get (; 57 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<NiuNiuContract>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $../../src/action/Action.get:sender (; 58 ;) (type $I) (result i64)
  (call $../../internal/action.d/env.current_sender)
 )
 (func $~lib/map/Map<u64_u64>#keys (; 59 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $~lib/datastream/DataStream#isMeasureMode (; 60 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eq
   (i32.load
    (get_local $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/datastream/DataStream#write<i32> (; 61 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $~lib/datastream/DataStream#isMeasureMode
     (get_local $0)
    )
   )
   (i32.store
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 4)
   )
  )
 )
 (func $~lib/datastream/DataStream#write<u64> (; 62 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (call $~lib/datastream/DataStream#isMeasureMode
     (get_local $0)
    )
   )
   (i64.store
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 8)
   )
  )
 )
 (func $~lib/map/Map<u64_u64>#get (; 63 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $~lib/array/Array<u64>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $util/serialize_util/serializeMap<u64_u64> (; 64 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/map/Map<u64_u64>#keys
    (get_local $0)
   )
  )
  (set_local $3
   (block $~lib/array/Array<u64>#get:length|inlined.2 (result i32)
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (get_local $3)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (block
     (call $~lib/datastream/DataStream#write<u64>
      (get_local $1)
      (call $~lib/array/Array<u64>#__get
       (get_local $2)
       (get_local $4)
      )
     )
     (call $~lib/datastream/DataStream#write<u64>
      (get_local $1)
      (call $~lib/map/Map<u64_u64>#get
       (get_local $0)
       (call $~lib/array/Array<u64>#__get
        (get_local $2)
        (get_local $4)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $niuniu/NiuNiuContract#serialize (; 65 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $util/serialize_util/serializeMap<u64_u64>
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $1)
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=16
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<NiuNiuContract> (; 66 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $niuniu/NiuNiuContract#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $niuniu/NiuNiuContract#primaryKey (; 67 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/account/NAME
   (i32.const 2480)
  )
 )
 (func $../../src/dbmanager/DBManager<NiuNiuContract>#emplace (; 68 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2560)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<NiuNiuContract>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $niuniu/NiuNiuContract#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $niuniu/NiuNiuContract#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $niuniu/NiuNiuContract#constructor (; 69 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $niuniu/NiuNiuContract#_super
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 44)
        )
       )
       (i64.store
        (get_local $2)
        (i64.const 0)
       )
       (i32.store offset=8
        (get_local $2)
        (i32.const 0)
       )
       (i64.store offset=16
        (get_local $2)
        (i64.const 1)
       )
       (i32.store offset=24
        (get_local $2)
        (block (result i32)
         (set_local $3
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $3)
          (i32.const 2432)
         )
         (i32.store offset=4
          (get_local $3)
          (i32.const 2448)
         )
         (get_local $3)
        )
       )
       (i64.store offset=32
        (get_local $2)
        (i64.const 0)
       )
       (i32.store offset=40
        (get_local $2)
        (i32.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=32
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $0)
   (call $../../src/dbmanager/DBManager<NiuNiuContract>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (i32.const 2456)
    )
    (i64.load offset=32
     (get_local $0)
    )
    (call $../../src/account/NAME
     (i32.const 2480)
    )
   )
  )
  (if
   (i32.eqz
    (call $../../src/dbmanager/DBManager<NiuNiuContract>#get
     (i32.load offset=40
      (get_local $0)
     )
     (call $../../src/account/NAME
      (i32.const 2480)
     )
     (get_local $0)
    )
   )
   (call $../../src/dbmanager/DBManager<NiuNiuContract>#emplace
    (i32.load offset=40
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $../../src/contract/DataStreamFromCurrentAction (; 70 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $0
   (call $../../internal/action.d/env.action_data_size)
  )
  (set_local $1
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (drop
   (call $../../internal/action.d/env.read_action_data
    (i32.load
     (get_local $1)
    )
    (get_local $0)
   )
  )
  (set_local $2
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $1)
    )
    (get_local $0)
   )
  )
  (get_local $2)
 )
 (func $../../src/contract/Contract#getDataStream (; 71 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../src/contract/DataStreamFromCurrentAction)
 )
 (func $../../lib/name_ex/NameEx#constructor (; 72 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 16)
        )
       )
       (i64.store
        (get_local $3)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $3)
        (i64.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/contract/Contract#setActionName (; 73 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (i32.store offset=8
   (get_local $0)
   (call $../../lib/name_ex/NameEx#constructor
    (i32.const 0)
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $../../src/contract/Contract#onInit (; 74 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $../../lib/name_ex/char_to_symbol_ex (; 75 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
    (i32.const 46)
   )
   (return
    (i64.const 0)
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
    (i32.const 95)
   )
   (return
    (i64.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 48)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 57)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 48)
       )
       (i32.const 2)
      )
      (i32.const 255)
     )
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 97)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 122)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 97)
       )
       (i32.const 12)
      )
      (i32.const 255)
     )
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 65)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 90)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 65)
       )
       (i32.const 38)
      )
      (i32.const 255)
     )
    )
   )
  )
  (i64.const 255)
 )
 (func $../../lib/name_ex/NEX (; 76 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_local $1
   (call $../../lib/name_ex/NameEx#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (block
     (set_local $5
      (call $../../lib/name_ex/char_to_symbol_ex
       (call $~lib/string/String#charCodeAt
        (get_local $0)
        (get_local $4)
       )
      )
     )
     (if
      (i32.le_s
       (get_local $4)
       (i32.const 9)
      )
      (set_local $2
       (i64.or
        (get_local $2)
        (i64.shl
         (get_local $5)
         (i64.mul
          (i64.const 6)
          (i64.extend_s/i32
           (get_local $4)
          )
         )
        )
       )
      )
      (if
       (i32.eq
        (get_local $4)
        (i32.const 10)
       )
       (block
        (set_local $6
         (i64.and
          (get_local $5)
          (i64.const 15)
         )
        )
        (set_local $2
         (i64.or
          (get_local $2)
          (i64.shl
           (get_local $6)
           (i64.mul
            (i64.const 6)
            (i64.extend_s/i32
             (get_local $4)
            )
           )
          )
         )
        )
        (i64.store offset=8
         (get_local $1)
         (get_local $2)
        )
        (set_local $7
         (i64.shr_u
          (i64.and
           (get_local $5)
           (i64.const 48)
          )
          (i64.const 4)
         )
        )
        (set_local $2
         (get_local $7)
        )
       )
       (set_local $2
        (i64.or
         (get_local $2)
         (i64.shl
          (get_local $5)
          (i64.add
           (i64.mul
            (i64.const 6)
            (i64.extend_s/i32
             (i32.sub
              (get_local $4)
              (i32.const 11)
             )
            )
           )
           (i64.const 2)
          )
         )
        )
       )
      )
     )
     (if
      (i32.le_s
       (get_local $3)
       (i32.const 10)
      )
      (i64.store offset=8
       (get_local $1)
       (get_local $2)
      )
      (i64.store
       (get_local $1)
       (get_local $2)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $../../lib/name_ex/NameEx._eq (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (i64.load
      (get_local $1)
     )
    )
   )
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $1)
    )
   )
   (get_local $2)
  )
 )
 (func $../../src/contract/Contract#isAction (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../lib/name_ex/NameEx._eq
   (i32.load offset=8
    (get_local $0)
   )
   (call $../../lib/name_ex/NEX
    (get_local $1)
   )
  )
 )
 (func $~lib/datastream/DataStream#read<u8> (; 79 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load8_u
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func $~lib/map/Map<u64_u64>#has (; 80 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $../../src/action/Action.get:receiver (; 81 ;) (type $I) (result i64)
  (call $../../internal/action.d/env.current_receiver)
 )
 (func $../../src/dbmanager/DBManager<RoomInfo>#constructor (; 82 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u64>#constructor (; 83 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 134217727)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 3)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.4
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<ActionRecord>#constructor (; 84 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.5
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<Room>#constructor (; 85 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $room/Room#constructor (; 86 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=16
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 28)
        )
       )
       (i32.store
        (get_local $1)
        (block (result i32)
         (set_local $2
          (call $~lib/memory/memory.allocate
           (i32.const 52)
          )
         )
         (i32.store8
          (get_local $2)
          (i32.const 0)
         )
         (i32.store8 offset=1
          (get_local $2)
          (i32.const 3)
         )
         (i32.store8 offset=2
          (get_local $2)
          (i32.const 10)
         )
         (i32.store8 offset=3
          (get_local $2)
          (i32.const 0)
         )
         (i64.store offset=8
          (get_local $2)
          (i64.const 1)
         )
         (i32.store8 offset=16
          (get_local $2)
          (i32.const 0)
         )
         (i64.store offset=24
          (get_local $2)
          (i64.const 0)
         )
         (i64.store offset=32
          (get_local $2)
          (i64.const 0)
         )
         (i64.store offset=40
          (get_local $2)
          (i64.const 0)
         )
         (i32.store offset=48
          (get_local $2)
          (i32.const 0)
         )
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $1)
        (call $~lib/array/Array<u64>#constructor
         (i32.const 0)
         (i32.const 0)
        )
       )
       (i32.store8 offset=8
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=16
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $1)
        (call $~lib/array/Array<u64>#constructor
         (i32.const 0)
         (i32.const 0)
        )
       )
       (i32.store offset=24
        (get_local $1)
        (call $~lib/array/Array<ActionRecord>#constructor
         (i32.const 0)
         (i32.const 0)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (call $../../src/dbmanager/DBManager<RoomInfo>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (i32.const 2456)
    )
    (call $../../src/action/Action.get:receiver)
    (call $../../src/account/NAME
     (i32.const 2784)
    )
   )
  )
  (i32.store offset=12
   (get_local $0)
   (call $../../src/dbmanager/DBManager<Room>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (i32.const 2456)
    )
    (call $../../src/action/Action.get:receiver)
    (call $../../src/account/NAME
     (i32.const 2808)
    )
   )
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<Room>#find (; 87 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<Room>#exists (; 88 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Room>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if (result i32)
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $~lib/array/Array<String>#__get (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<String_String>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/internal/string/allocateUnsafe (; 90 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $0)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (set_local $1
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.1
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/internal/string/copyUnsafe (; 91 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $~lib/memory/memory.copy|inlined.1
   (set_local $5
    (i32.add
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $7
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $5)
    (get_local $6)
    (get_local $7)
   )
  )
 )
 (func $~lib/string/String#concat (; 92 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 2912)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (i32.const 2928)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocateUnsafe
    (get_local $4)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (i32.const 0)
   (get_local $0)
   (i32.const 0)
   (get_local $2)
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (get_local $2)
   (get_local $1)
   (i32.const 0)
   (get_local $3)
  )
  (get_local $5)
 )
 (func $~lib/string/String.__concat (; 93 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 2912)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/utils/intToString (; 94 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (set_local $1
   (i32.wrap/i64
    (i64.rem_u
     (get_local $0)
     (i64.const 10)
    )
   )
  )
  (set_local $2
   (i64.div_u
    (get_local $0)
    (i64.const 10)
   )
  )
  (set_local $3
   (call $~lib/array/Array<String>#__get
    (get_global $../../src/utils/PrintableChar)
    (i32.add
     (i32.const 16)
     (get_local $1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i64.ne
      (get_local $2)
      (i64.const 0)
     )
     (block
      (block
       (set_local $1
        (i32.wrap/i64
         (i64.rem_u
          (get_local $2)
          (i64.const 10)
         )
        )
       )
       (set_local $2
        (i64.div_u
         (get_local $2)
         (i64.const 10)
        )
       )
       (set_local $3
        (call $~lib/string/String.__concat
         (call $~lib/array/Array<String>#__get
          (get_global $../../src/utils/PrintableChar)
          (i32.add
           (i32.const 16)
           (get_local $1)
          )
         )
         (get_local $3)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $../../src/dbmanager/DBManager<RoomInfo>#find (; 95 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<RoomInfo>#exists (; 96 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<RoomInfo>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if (result i32)
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $~lib/datastream/DataStream#write<u8> (; 97 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $~lib/datastream/DataStream#isMeasureMode
     (get_local $0)
    )
   )
   (i32.store8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/datastream/DataStream#writeVarint32 (; 98 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (block $break|0
   (loop $continue|0
    (block
     (set_local $2
      (i32.and
       (get_local $1)
       (i32.const 127)
      )
     )
     (set_local $1
      (i32.shr_u
       (get_local $1)
       (i32.const 7)
      )
     )
     (set_local $2
      (i32.or
       (get_local $2)
       (i32.shl
        (if (result i32)
         (i32.gt_u
          (get_local $1)
          (i32.const 0)
         )
         (i32.const 1)
         (i32.const 0)
        )
        (i32.const 7)
       )
      )
     )
     (call $~lib/datastream/DataStream#write<u8>
      (get_local $0)
      (get_local $2)
     )
    )
    (br_if $continue|0
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/datastream/DataStream#writeVector<u64> (; 99 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<u64>#get:length|inlined.3 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $~lib/datastream/DataStream#write<u64>
     (get_local $0)
     (call $~lib/array/Array<u64>#__get
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/datastream/DataStream#write<i8> (; 100 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $~lib/datastream/DataStream#isMeasureMode
     (get_local $0)
    )
   )
   (i32.store8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/array/Array<ActionRecord>#__get (; 101 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<ActionRecord_ActionRecord>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $room/ActionRecord#serialize (; 102 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream#writeComplexVector<ActionRecord> (; 103 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<ActionRecord>#get:length|inlined.0 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $room/ActionRecord#serialize
     (call $~lib/array/Array<ActionRecord>#__get
      (get_local $1)
      (get_local $3)
     )
     (get_local $0)
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $room/Room#serialize (; 104 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#writeVector<u64>
   (get_local $1)
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<i8>
   (get_local $1)
   (i32.load8_s offset=8
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#writeVector<u64>
   (get_local $1)
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#writeComplexVector<ActionRecord>
   (get_local $1)
   (i32.load offset=24
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<Room> (; 105 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $room/Room#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $room/Room#primaryKey (; 106 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=32
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Room>#emplace (; 107 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2560)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<Room>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $room/Room#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $room/Room#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $room/RoomInfo#serialize (; 108 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u offset=3
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=24
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u offset=1
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=32
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u offset=16
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<i8>
   (get_local $1)
   (i32.load8_s offset=2
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=40
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<RoomInfo> (; 109 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $room/RoomInfo#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $room/RoomInfo#primaryKey (; 110 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=32
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<RoomInfo>#emplace (; 111 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2560)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<RoomInfo>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $room/RoomInfo#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $room/RoomInfo#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $room/Room#initInsertRoom (; 112 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $../../src/dbmanager/DBManager<Room>#exists
     (i32.load offset=12
      (get_local $0)
     )
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 2824)
     (call $../../src/utils/intToString
      (i64.load offset=32
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (i32.const 2992)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $../../src/dbmanager/DBManager<RoomInfo>#exists
     (i32.load offset=16
      (get_local $0)
     )
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 2824)
     (call $../../src/utils/intToString
      (i64.load offset=32
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (i32.const 3024)
   )
  )
  (call $../../src/dbmanager/DBManager<Room>#emplace
   (i32.load offset=12
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (get_local $0)
  )
  (call $../../src/dbmanager/DBManager<RoomInfo>#emplace
   (i32.load offset=16
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<NiuNiuContract>#find (; 113 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<NiuNiuContract>#modify (; 114 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<NiuNiuContract>#find
    (get_local $0)
    (call $niuniu/NiuNiuContract#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3064)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3184)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<NiuNiuContract>
    (get_local $2)
   )
  )
  (set_local $5
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $4)
   )
  )
  (set_local $6
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $5)
    )
    (get_local $4)
   )
  )
  (call $niuniu/NiuNiuContract#serialize
   (get_local $2)
   (get_local $6)
  )
  (call $../../internal/db.d/env.db_update_i64
   (get_local $3)
   (get_local $1)
   (i32.load
    (get_local $6)
   )
   (i32.load offset=8
    (get_local $6)
   )
  )
 )
 (func $niuniu/NiuNiuContract#createRoom (; 115 ;) (type $iiiiiIiIv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i32) (param $7 i64)
  (local $8 i32)
  (local $9 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/map/Map<u64_u64>#has
     (i32.load offset=24
      (get_local $0)
     )
     (get_local $7)
    )
   )
   (i32.const 2696)
  )
  (set_local $8
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (set_local $9
   (block (result i32)
    (set_local $9
     (call $~lib/memory/memory.allocate
      (i32.const 52)
     )
    )
    (i32.store8
     (get_local $9)
     (i32.const 0)
    )
    (i32.store8 offset=1
     (get_local $9)
     (i32.const 3)
    )
    (i32.store8 offset=2
     (get_local $9)
     (i32.const 10)
    )
    (i32.store8 offset=3
     (get_local $9)
     (i32.const 0)
    )
    (i64.store offset=8
     (get_local $9)
     (i64.const 1)
    )
    (i32.store8 offset=16
     (get_local $9)
     (i32.const 0)
    )
    (i64.store offset=24
     (get_local $9)
     (i64.const 0)
    )
    (i64.store offset=32
     (get_local $9)
     (i64.const 0)
    )
    (i64.store offset=40
     (get_local $9)
     (i64.const 0)
    )
    (i32.store offset=48
     (get_local $9)
     (i32.const 0)
    )
    (get_local $9)
   )
  )
  (i32.store8
   (get_local $9)
   (get_local $1)
  )
  (i32.store8 offset=1
   (get_local $9)
   (get_local $2)
  )
  (i32.store8 offset=2
   (get_local $9)
   (get_local $3)
  )
  (i32.store8 offset=3
   (get_local $9)
   (get_local $4)
  )
  (i64.store offset=8
   (get_local $9)
   (i64.extend_u/i32
    (i32.and
     (get_local $4)
     (i32.const 255)
    )
   )
  )
  (i32.store8 offset=16
   (get_local $9)
   (get_local $6)
  )
  (i64.store offset=24
   (get_local $9)
   (call $../../src/action/Action.get:sender)
  )
  (i64.store offset=32
   (get_local $9)
   (i64.load offset=16
    (get_local $0)
   )
  )
  (i64.store offset=40
   (get_local $9)
   (get_local $7)
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $9)
   (call $../../internal/transaction.d/env.tapos_block_num)
  )
  (i32.store
   (get_local $8)
   (get_local $9)
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=4
     (get_local $8)
    )
    (call $../../src/action/Action.get:sender)
   )
  )
  (call $room/Room#initInsertRoom
   (get_local $8)
  )
  (call $~lib/map/Map<u64_u64>#set
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $7)
   (i64.load offset=16
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $0)
   (i64.add
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 1)
   )
  )
  (call $../../src/dbmanager/DBManager<NiuNiuContract>#modify
   (i32.load offset=40
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#constructor (; 116 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 16)
        )
       )
       (i64.store
        (get_local $3)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $3)
        (i64.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/asset/Asset#deserialize (; 117 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $~lib/datastream/DataStream#readVarint32 (; 118 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.const 0)
  )
  (set_local $2
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (block
     (set_local $3
      (call $~lib/datastream/DataStream#read<u8>
       (get_local $0)
      )
     )
     (set_local $1
      (i32.or
       (get_local $1)
       (i32.shl
        (i32.and
         (get_local $3)
         (i32.const 127)
        )
        (i32.mul
         (i32.const 7)
         (block (result i32)
          (set_local $4
           (get_local $2)
          )
          (set_local $2
           (i32.add
            (get_local $4)
            (i32.const 1)
           )
          )
          (get_local $4)
         )
        )
       )
      )
     )
    )
    (br_if $continue|0
     (i32.and
      (get_local $3)
      (i32.const 128)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/datastream/DataStream#readVector<u64> (; 119 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<u64>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (get_local $2)
     (get_local $3)
     (call $~lib/datastream/DataStream#read<u64>
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $~lib/datastream/DataStream#read<i8> (; 120 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load8_s
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func $~lib/array/Array<ActionRecord>#__set (; 121 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<ActionRecord_ActionRecord>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $room/ActionRecord#deserialize (; 122 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
 )
 (func $~lib/datastream/DataStream#readComplexVector<ActionRecord> (; 123 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<ActionRecord>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<ActionRecord>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (block
     (call $~lib/array/Array<ActionRecord>#__set
      (get_local $2)
      (get_local $3)
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 20)
        )
       )
       (get_local $4)
      )
     )
     (call $room/ActionRecord#deserialize
      (call $~lib/array/Array<ActionRecord>#__get
       (get_local $2)
       (get_local $3)
      )
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $room/Room#deserialize (; 124 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (get_local $0)
   (call $~lib/datastream/DataStream#readVector<u64>
    (get_local $1)
   )
  )
  (i32.store8 offset=8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<i8>
    (get_local $1)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (call $~lib/datastream/DataStream#readVector<u64>
    (get_local $1)
   )
  )
  (i32.store offset=24
   (get_local $0)
   (call $~lib/datastream/DataStream#readComplexVector<ActionRecord>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Room>#loadObjectByPrimaryIterator (; 125 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $room/Room#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<Room>#get (; 126 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<Room>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $room/RoomInfo#deserialize (; 127 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store8 offset=3
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
  (i64.store offset=24
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
  (i32.store8 offset=1
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store8 offset=16
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
  (i32.store8 offset=2
   (get_local $0)
   (call $~lib/datastream/DataStream#read<i8>
    (get_local $1)
   )
  )
  (i64.store offset=40
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<RoomInfo>#loadObjectByPrimaryIterator (; 128 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $room/RoomInfo#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<RoomInfo>#get (; 129 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<RoomInfo>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $room/Room#getRoom (; 130 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (if
   (call $../../src/dbmanager/DBManager<Room>#get
    (i32.load offset=12
     (get_local $0)
    )
    (get_local $1)
    (get_local $0)
   )
   (return
    (call $../../src/dbmanager/DBManager<RoomInfo>#get
     (i32.load offset=16
      (get_local $0)
     )
     (get_local $1)
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $../../src/asset/Asset#getSymbol (; 131 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#getAmount (; 132 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u64>#includes (; 133 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.eq
      (get_local $3)
      (i32.const 0)
     )
    )
    (get_local $4)
    (i32.ge_s
     (get_local $2)
     (get_local $3)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $2)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (if
        (i64.eq
         (block $~lib/internal/arraybuffer/loadUnsafe<u64_u64>|inlined.2 (result i64)
          (i64.load offset=8
           (i32.add
            (get_local $6)
            (i32.shl
             (get_local $2)
             (i32.const 3)
            )
           )
          )
         )
         (get_local $1)
        )
        (return
         (i32.const 1)
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $../../src/action/Action.requireAuth (; 134 ;) (type $Iv) (param $0 i64)
  (call $../../internal/action.d/env.require_auth
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<Room>#modify (; 135 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<Room>#find
    (get_local $0)
    (call $room/Room#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3064)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3184)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<Room>
    (get_local $2)
   )
  )
  (set_local $5
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $4)
   )
  )
  (set_local $6
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $5)
    )
    (get_local $4)
   )
  )
  (call $room/Room#serialize
   (get_local $2)
   (get_local $6)
  )
  (call $../../internal/db.d/env.db_update_i64
   (get_local $3)
   (get_local $1)
   (i32.load
    (get_local $6)
   )
   (i32.load offset=8
    (get_local $6)
   )
  )
 )
 (func $room/Room#modifyRoom (; 136 ;) (type $iv) (param $0 i32)
  (call $../../src/dbmanager/DBManager<Room>#modify
   (i32.load offset=12
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (get_local $0)
  )
 )
 (func $room/Room#start (; 137 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (i32.and
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.load8_u offset=16
            (i32.load
             (get_local $0)
            )
           )
           (i32.const 0)
          )
         )
         (i64.eq
          (call $../../src/action/Action.get:sender)
          (call $~lib/array/Array<u64>#__get
           (i32.load offset=4
            (get_local $0)
           )
           (i32.const 0)
          )
         )
         (get_local $1)
        )
       )
       (get_local $1)
       (if (result i32)
        (tee_local $1
         (i32.eq
          (i32.load8_u offset=16
           (i32.load
            (get_local $0)
           )
          )
          (i32.const 1)
         )
        )
        (i32.eq
         (block $~lib/array/Array<u64>#get:length|inlined.6 (result i32)
          (set_local $1
           (i32.load offset=4
            (get_local $0)
           )
          )
          (i32.load offset=4
           (get_local $1)
          )
         )
         (i32.load8_u
          (i32.load
           (get_local $0)
          )
         )
        )
        (get_local $1)
       )
      )
     )
     (i32.const 1)
    )
    (i32.gt_s
     (block $~lib/array/Array<u64>#get:length|inlined.7 (result i32)
      (set_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 1)
    )
    (get_local $1)
   )
   (i32.const 3824)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (i32.load8_s offset=8
     (get_local $0)
    )
    (i32.const -1)
   )
   (i32.const 3960)
  )
  (i32.store8 offset=8
   (get_local $0)
   (i32.const 1)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
 )
 (func $room/Room#checkIn (; 138 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load8_s offset=8
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 3472)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#getSymbol
     (get_local $1)
    )
    (get_global $../../src/asset/SYS)
   )
   (i32.const 3552)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ge_u
    (call $../../src/asset/Asset#getAmount
     (get_local $1)
    )
    (i64.load offset=8
     (i32.load
      (get_local $0)
     )
    )
   )
   (call $~lib/string/String.__concat
    (i32.const 3624)
    (call $../../src/utils/intToString
     (i64.load offset=8
      (i32.load
       (get_local $0)
      )
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/array/Array<u64>#includes
     (i32.load offset=4
      (get_local $0)
     )
     (call $../../src/action/Action.get:sender)
     (i32.const 0)
    )
   )
   (i32.const 3728)
  )
  (call $../../src/action/Action.requireAuth
   (get_local $2)
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.eq
      (i32.load8_u offset=16
       (i32.load
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.eq
     (block $~lib/array/Array<u64>#get:length|inlined.5 (result i32)
      (set_local $3
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.load offset=4
       (get_local $3)
      )
     )
     (i32.load8_u
      (i32.load
       (get_local $0)
      )
     )
    )
    (get_local $3)
   )
   (block
    (call $room/Room#start
     (get_local $0)
    )
    (return)
   )
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
 )
 (func $niuniu/NiuNiuContract#checkIn (; 139 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i64)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (call $~lib/map/Map<u64_u64>#has
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $2)
   )
   (i32.const 3320)
  )
  (set_local $3
   (call $~lib/map/Map<u64_u64>#get
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $2)
   )
  )
  (set_local $4
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $4)
    (get_local $3)
   )
   (i32.const 3400)
  )
  (call $room/Room#checkIn
   (get_local $4)
   (get_local $1)
   (call $../../src/action/Action.get:sender)
  )
 )
 (func $niuniu/NiuNiuContract#start (; 140 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (set_local $2
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $2)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $room/Room#start
   (get_local $2)
  )
 )
 (func $~lib/datastream/DataStream#readString (; 141 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (i32.const 2928)
   )
  )
  (set_local $3
   (block $~lib/memory/memory.allocate|inlined.2 (result i32)
    (set_local $2
     (i32.add
      (get_global $~lib/datastream/HEADER_SIZE)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.2
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (get_local $3)
   (get_local $1)
  )
  (set_local $2
   (get_local $3)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $4)
      (get_local $1)
     )
     (block
      (block
       (set_local $5
        (call $~lib/datastream/DataStream#read<u8>
         (get_local $0)
        )
       )
       (i32.store16 offset=4
        (i32.add
         (get_local $2)
         (i32.mul
          (i32.const 2)
          (get_local $4)
         )
        )
        (get_local $5)
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<Round>#constructor (; 142 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<RoundBaseInfo>#constructor (; 143 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#constructor (; 144 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $round/Round#constructor (; 145 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 36)
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $1)
        (block (result i32)
         (set_local $2
          (call $~lib/memory/memory.allocate
           (i32.const 40)
          )
         )
         (i32.store8
          (get_local $2)
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $2)
          (call $~lib/array/Array<u64>#constructor
           (i32.const 0)
           (i32.const 0)
          )
         )
         (i32.store8 offset=8
          (get_local $2)
          (i32.const 0)
         )
         (i64.store offset=16
          (get_local $2)
          (i64.const 0)
         )
         (i32.store offset=24
          (get_local $2)
          (i32.const 2928)
         )
         (i32.store offset=28
          (get_local $2)
          (i32.const 2928)
         )
         (i64.store offset=32
          (get_local $2)
          (i64.const 0)
         )
         (get_local $2)
        )
       )
       (i32.store offset=16
        (get_local $1)
        (block (result i32)
         (set_local $2
          (call $~lib/memory/memory.allocate
           (i32.const 32)
          )
         )
         (i64.store
          (get_local $2)
          (i64.const 0)
         )
         (i32.store offset=8
          (get_local $2)
          (i32.const 0)
         )
         (i64.store offset=16
          (get_local $2)
          (i64.const 0)
         )
         (i32.store offset=24
          (get_local $2)
          (call $~lib/array/Array<u64>#constructor
           (i32.const 0)
           (i32.const 0)
          )
         )
         (i32.store offset=28
          (get_local $2)
          (block (result i32)
           (set_local $3
            (call $~lib/memory/memory.allocate
             (i32.const 5)
            )
           )
           (i32.store
            (get_local $3)
            (i32.const 0)
           )
           (i32.store8 offset=4
            (get_local $3)
            (i32.const 0)
           )
           (get_local $3)
          )
         )
         (get_local $2)
        )
       )
       (i32.store offset=20
        (get_local $1)
        (get_global $round/RoundStag.INIT)
       )
       (i64.store offset=24
        (get_local $1)
        (i64.const 0)
       )
       (i32.store offset=32
        (get_local $1)
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
   (call $../../src/dbmanager/DBManager<Round>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (i32.const 2456)
    )
    (call $../../src/action/Action.get:receiver)
    (call $../../src/account/NAME
     (i32.const 4288)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (call $../../src/dbmanager/DBManager<RoundBaseInfo>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (i32.const 2456)
    )
    (call $../../src/action/Action.get:receiver)
    (call $../../src/account/NAME
     (i32.const 4304)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $../../src/dbmanager/DBManager<TempVariable>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (i32.const 2456)
    )
    (call $../../src/action/Action.get:receiver)
    (call $../../src/account/NAME
     (i32.const 4328)
    )
   )
  )
  (get_local $0)
 )
 (func $util/BigInt/isProbablyPrime (; 146 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $util/BigInt/env.big_int_probab_prime
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String.fromCharCode (; 147 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/internal/string/allocateUnsafe
    (i32.const 1)
   )
  )
  (i32.store16 offset=4
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $util/BigInt/mul (; 148 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (call $util/BigInt/env.big_int_mul
   (i32.load
    (get_local $4)
   )
   (get_local $3)
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
   (call $../../src/utils/string2cstr
    (get_local $1)
   )
   (get_local $2)
  )
  (set_local $5
   (i32.const 2928)
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $6)
       (get_local $3)
      )
     )
    )
    (block
     (set_local $7
      (i32.load8_u
       (i32.add
        (i32.load
         (get_local $4)
        )
        (get_local $6)
       )
      )
     )
     (if
      (i32.eq
       (get_local $7)
       (i32.const 0)
      )
      (br $break|0)
     )
     (set_local $5
      (call $~lib/string/String.__concat
       (get_local $5)
       (call $~lib/string/String.fromCharCode
        (get_local $7)
       )
      )
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $5)
 )
 (func $util/BigInt/cmp (; 149 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $util/BigInt/env.big_int_cmp
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
   (call $../../src/utils/string2cstr
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $round/Round#vaildPQ (; 150 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $util/BigInt/isProbablyPrime
    (get_local $1)
    (i32.const 50)
    (get_global $round/BASE)
   )
  )
  (set_local $4
   (call $util/BigInt/isProbablyPrime
    (get_local $2)
    (i32.const 50)
    (get_global $round/BASE)
   )
  )
  (set_local $5
   (call $util/BigInt/mul
    (get_local $1)
    (get_local $2)
    (get_global $round/BASE)
   )
  )
  (if
   (if (result i32)
    (tee_local $6
     (if (result i32)
      (tee_local $6
       (if (result i32)
        (tee_local $6
         (if (result i32)
          (tee_local $6
           (if (result i32)
            (tee_local $6
             (if (result i32)
              (tee_local $6
               (i32.eq
                (get_local $3)
                (i32.const 0)
               )
              )
              (get_local $6)
              (i32.eq
               (get_local $4)
               (i32.const 0)
              )
             )
            )
            (get_local $6)
            (i32.lt_s
             (call $util/BigInt/cmp
              (get_local $1)
              (get_global $round/MIN_PQ)
              (get_global $round/BASE)
             )
             (i32.const 0)
            )
           )
          )
          (get_local $6)
          (i32.gt_s
           (call $util/BigInt/cmp
            (get_local $1)
            (get_global $round/MAX_PQ)
            (get_global $round/BASE)
           )
           (i32.const 0)
          )
         )
        )
        (get_local $6)
        (i32.lt_s
         (call $util/BigInt/cmp
          (get_local $2)
          (get_global $round/MIN_PQ)
          (get_global $round/BASE)
         )
         (i32.const 0)
        )
       )
      )
      (get_local $6)
      (i32.gt_s
       (call $util/BigInt/cmp
        (get_local $2)
        (get_global $round/MAX_PQ)
        (get_global $round/BASE)
       )
       (i32.const 0)
      )
     )
    )
    (get_local $6)
    (i32.lt_s
     (call $util/BigInt/cmp
      (get_local $5)
      (get_global $round/MIN_N)
      (get_global $round/BASE)
     )
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 1)
 )
 (func $../../src/dbmanager/DBManager<RoundBaseInfo>#find (; 151 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<RoundBaseInfo>#exists (; 152 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<RoundBaseInfo>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if (result i32)
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $../../src/dbmanager/DBManager<Round>#find (; 153 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<Round>#exists (; 154 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Round>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if (result i32)
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#find (; 155 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#exists (; 156 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<TempVariable>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if (result i32)
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $~lib/utf8util/toUTF8Array (; 157 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (block
     (set_local $3
      (call $~lib/string/String#charCodeAt
       (get_local $0)
       (get_local $2)
      )
     )
     (if
      (i32.lt_s
       (get_local $3)
       (i32.const 128)
      )
      (drop
       (call $~lib/array/Array<u8>#push
        (get_local $1)
        (get_local $3)
       )
      )
      (if
       (i32.lt_s
        (get_local $3)
        (i32.const 2048)
       )
       (block
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $1)
          (i32.or
           (i32.const 192)
           (i32.shr_s
            (get_local $3)
            (i32.const 6)
           )
          )
         )
        )
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $1)
          (i32.or
           (i32.const 128)
           (i32.and
            (get_local $3)
            (i32.const 63)
           )
          )
         )
        )
       )
       (if
        (if (result i32)
         (tee_local $4
          (i32.lt_s
           (get_local $3)
           (i32.const 55296)
          )
         )
         (get_local $4)
         (i32.ge_s
          (get_local $3)
          (i32.const 57344)
         )
        )
        (block
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 224)
            (i32.shr_s
             (get_local $3)
             (i32.const 12)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 6)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (get_local $3)
             (i32.const 63)
            )
           )
          )
         )
        )
        (block
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $3
          (i32.add
           (i32.const 65536)
           (i32.or
            (i32.shl
             (i32.and
              (get_local $3)
              (i32.const 1023)
             )
             (i32.const 10)
            )
            (i32.and
             (call $~lib/string/String#charCodeAt
              (get_local $0)
              (get_local $2)
             )
             (i32.const 1023)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 240)
            (i32.shr_s
             (get_local $3)
             (i32.const 18)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 12)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 6)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (get_local $3)
             (i32.const 63)
            )
           )
          )
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (drop
   (call $~lib/array/Array<u8>#push
    (get_local $1)
    (i32.const 0)
   )
  )
  (get_local $1)
 )
 (func $~lib/datastream/DataStream#writeString (; 158 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $1)
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 0)
   )
   (return)
  )
  (set_local $3
   (call $~lib/utf8util/toUTF8Array
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (call $~lib/datastream/DataStream#isMeasureMode
     (get_local $0)
    )
   )
   (block
    (set_local $4
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 8)
     )
    )
    (block $~lib/memory/memory.copy|inlined.2
     (set_local $5
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
     (set_local $6
      (i32.sub
       (block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
        (i32.load offset=4
         (get_local $3)
        )
       )
       (i32.const 1)
      )
     )
     (call $~lib/internal/memory/memmove
      (get_local $5)
      (get_local $4)
      (get_local $6)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.sub
     (block $~lib/array/Array<u8>#get:length|inlined.1 (result i32)
      (i32.load offset=4
       (get_local $3)
      )
     )
     (i32.const 1)
    )
   )
  )
 )
 (func $round/RoundBaseInfo#serialize (; 159 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#writeString
   (get_local $1)
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#writeString
   (get_local $1)
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#writeVector<u64>
   (get_local $1)
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u offset=8
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=16
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=32
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<RoundBaseInfo> (; 160 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $round/RoundBaseInfo#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $round/RoundBaseInfo#primaryKey (; 161 ;) (type $iI) (param $0 i32) (result i64)
  (i64.add
   (i64.mul
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 100)
   )
   (i64.extend_u/i32
    (i32.load8_u
     (get_local $0)
    )
   )
  )
 )
 (func $../../src/dbmanager/DBManager<RoundBaseInfo>#emplace (; 162 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2560)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<RoundBaseInfo>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $round/RoundBaseInfo#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $round/RoundBaseInfo#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $round/Round#serialize (; 163 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=24
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<Round> (; 164 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $round/Round#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $round/Round#primaryKey (; 165 ;) (type $iI) (param $0 i32) (result i64)
  (i64.add
   (i64.mul
    (i64.load offset=16
     (i32.load offset=12
      (get_local $0)
     )
    )
    (i64.const 100)
   )
   (i64.extend_u/i32
    (i32.load8_u
     (i32.load offset=12
      (get_local $0)
     )
    )
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Round>#emplace (; 166 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2560)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<Round>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $round/Round#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $round/Round#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (; 167 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<u8_u8>|inlined.0 (result i32)
    (i32.load8_u offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 0)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/datastream/DataStream#writeVector<u8> (; 168 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<u8>#get:length|inlined.2 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $~lib/datastream/DataStream#write<u8>
     (get_local $0)
     (call $~lib/array/Array<u8>#__get
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/Cards#serialize (; 169 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#writeVector<u8>
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u offset=4
    (get_local $0)
   )
  )
 )
 (func $round/TempVariable#serialize (; 170 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=16
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#writeVector<u64>
   (get_local $1)
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $round/Cards#serialize
   (i32.load offset=28
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $~lib/datastream/DataStream.measure<TempVariable> (; 171 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $round/TempVariable#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $round/TempVariable#primaryKey (; 172 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#emplace (; 173 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2560)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<TempVariable>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $round/TempVariable#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $round/TempVariable#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $round/Round#initInsertRound (; 174 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (set_local $1
   (i64.add
    (i64.mul
     (i64.load offset=16
      (i32.load offset=12
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (i64.extend_u/i32
     (i32.load8_u
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $../../src/dbmanager/DBManager<RoundBaseInfo>#exists
     (i32.load offset=4
      (get_local $0)
     )
     (get_local $1)
    )
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4600)
     (call $../../src/utils/intToString
      (get_local $1)
     )
    )
    (i32.const 4680)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $../../src/dbmanager/DBManager<Round>#exists
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4600)
     (call $../../src/utils/intToString
      (get_local $1)
     )
    )
    (i32.const 4720)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $../../src/dbmanager/DBManager<TempVariable>#exists
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4752)
     (call $../../src/utils/intToString
      (get_local $1)
     )
    )
    (i32.const 4840)
   )
  )
  (call $../../src/dbmanager/DBManager<RoundBaseInfo>#emplace
   (i32.load offset=4
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $../../src/dbmanager/DBManager<Round>#emplace
   (i32.load
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (get_local $0)
  )
  (call $../../src/dbmanager/DBManager<TempVariable>#emplace
   (i32.load offset=8
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $round/Round#setPQ (; 175 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.INIT)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#vaildPQ
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 4520)
  )
  (i32.store offset=28
   (i32.load offset=12
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store offset=24
   (i32.load offset=12
    (get_local $0)
   )
   (get_local $2)
  )
  (i64.store offset=32
   (i32.load offset=12
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
  )
  (i32.store offset=20
   (get_local $0)
   (get_global $round/RoundStag.SHUFFLE)
  )
  (set_local $3
   (block (result i32)
    (set_local $3
     (call $~lib/memory/memory.allocate
      (i32.const 32)
     )
    )
    (i64.store
     (get_local $3)
     (i64.const 0)
    )
    (i32.store offset=8
     (get_local $3)
     (i32.const 0)
    )
    (i64.store offset=16
     (get_local $3)
     (i64.const 0)
    )
    (i32.store offset=24
     (get_local $3)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=28
     (get_local $3)
     (block (result i32)
      (set_local $4
       (call $~lib/memory/memory.allocate
        (i32.const 5)
       )
      )
      (i32.store
       (get_local $4)
       (i32.const 0)
      )
      (i32.store8 offset=4
       (get_local $4)
       (i32.const 0)
      )
      (get_local $4)
     )
    )
    (get_local $3)
   )
  )
  (i64.store
   (get_local $3)
   (i64.add
    (i64.mul
     (i64.load offset=16
      (i32.load offset=12
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (i64.extend_u/i32
     (i32.load8_u
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
   )
  )
  (i32.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (call $round/Round#initInsertRound
   (get_local $0)
  )
 )
 (func $room/Room#setPQ (; 176 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (i32.load8_s offset=8
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 4120)
  )
  (call $../../src/utils/ultrain_assert
   (call $~lib/array/Array<u64>#includes
    (i32.load offset=4
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (i32.const 0)
   )
   (i32.const 4216)
  )
  (set_local $3
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (set_local $4
   (block (result i32)
    (set_local $4
     (call $~lib/memory/memory.allocate
      (i32.const 40)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $4)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store8 offset=8
     (get_local $4)
     (i32.const 0)
    )
    (i64.store offset=16
     (get_local $4)
     (i64.const 0)
    )
    (i32.store offset=24
     (get_local $4)
     (i32.const 2928)
    )
    (i32.store offset=28
     (get_local $4)
     (i32.const 2928)
    )
    (i64.store offset=32
     (get_local $4)
     (i64.const 0)
    )
    (get_local $4)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.load offset=4
    (get_local $0)
   )
  )
  (i32.store8
   (get_local $4)
   (i32.load8_s offset=8
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $4)
   (i64.load offset=32
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=8
   (get_local $4)
   (i32.load8_u offset=3
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=12
   (get_local $3)
   (get_local $4)
  )
  (call $round/Round#setPQ
   (get_local $3)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#setPQ (; 177 ;) (type $iIiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $4)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $room/Room#setPQ
   (get_local $4)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/array/Array<String>#constructor (; 178 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.6
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<String>#__set (; 179 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<String_String>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/datastream/DataStream#readStringVector (; 180 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<String>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<String>#__set
     (get_local $2)
     (get_local $3)
     (call $~lib/datastream/DataStream#readString
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $round/Round#deserialize (; 181 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=24
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Round>#loadObjectByPrimaryIterator (; 182 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $round/Round#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<Round>#get (; 183 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<Round>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $round/RoundBaseInfo#deserialize (; 184 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (get_local $0)
   (call $~lib/datastream/DataStream#readString
    (get_local $1)
   )
  )
  (i32.store offset=24
   (get_local $0)
   (call $~lib/datastream/DataStream#readString
    (get_local $1)
   )
  )
  (i32.store8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (call $~lib/datastream/DataStream#readVector<u64>
    (get_local $1)
   )
  )
  (i32.store8 offset=8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
  (i64.store offset=16
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<RoundBaseInfo>#loadObjectByPrimaryIterator (; 185 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $round/RoundBaseInfo#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<RoundBaseInfo>#get (; 186 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<RoundBaseInfo>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $round/TempVariable#deserialize (; 187 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
  (i64.store offset=16
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=24
   (get_local $0)
   (call $~lib/datastream/DataStream#readVector<u64>
    (get_local $1)
   )
  )
  (call $round/Cards#serialize
   (i32.load offset=28
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#loadObjectByPrimaryIterator (; 188 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $round/TempVariable#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#get (; 189 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<TempVariable>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $util/DBHelper/DBHelper#constructor (; 190 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Cards>#constructor (; 191 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.7
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i16>#constructor (; 192 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 536870908)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.8
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $round/PlayRecord#constructor (; 193 ;) (type $iiIii) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 64)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i32.store8 offset=16
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5232)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5248)
         )
         (get_local $5)
        )
       )
       (i32.store offset=24
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5264)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5280)
         )
         (get_local $5)
        )
       )
       (i32.store offset=28
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5296)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5312)
         )
         (get_local $5)
        )
       )
       (i32.store offset=32
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5328)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5344)
         )
         (get_local $5)
        )
       )
       (i32.store offset=36
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5360)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5376)
         )
         (get_local $5)
        )
       )
       (i32.store offset=40
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5392)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5408)
         )
         (get_local $5)
        )
       )
       (i32.store offset=44
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5424)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5440)
         )
         (get_local $5)
        )
       )
       (i32.store offset=48
        (get_local $4)
        (call $~lib/array/Array<Cards>#constructor
         (i32.const 0)
         (i32.const 0)
        )
       )
       (i32.store offset=52
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5456)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5472)
         )
         (get_local $5)
        )
       )
       (i32.store offset=56
        (get_local $4)
        (call $~lib/array/Array<i16>#constructor
         (i32.const 0)
         (i32.const 0)
        )
       )
       (i32.store offset=60
        (get_local $4)
        (block (result i32)
         (set_local $5
          (call $~lib/memory/memory.allocate
           (i32.const 8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.const 5488)
         )
         (i32.store offset=4
          (get_local $5)
          (i32.const 5504)
         )
         (get_local $5)
        )
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i32.store8 offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $round/Round#getRound (; 194 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Round>#get
    (i32.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $0)
   )
  )
  (set_local $2
   (if (result i32)
    (tee_local $3
     (call $../../src/dbmanager/DBManager<RoundBaseInfo>#get
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $1)
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (if (result i32)
    (tee_local $3
     (call $../../src/dbmanager/DBManager<TempVariable>#get
      (i32.load offset=8
       (get_local $0)
      )
      (get_local $1)
      (i32.load offset=16
       (get_local $0)
      )
     )
    )
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $3
   (if (result i32)
    (tee_local $3
     (if (result i32)
      (tee_local $3
       (call $../../src/dbmanager/DBManager<Round>#get
        (i32.load
         (get_local $0)
        )
        (get_local $1)
        (get_local $0)
       )
      )
      (call $../../src/dbmanager/DBManager<RoundBaseInfo>#get
       (i32.load offset=4
        (get_local $0)
       )
       (get_local $1)
       (i32.load offset=12
        (get_local $0)
       )
      )
      (get_local $3)
     )
    )
    (call $../../src/dbmanager/DBManager<TempVariable>#get
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
     (i32.load offset=16
      (get_local $0)
     )
    )
    (get_local $3)
   )
  )
  (if
   (get_local $2)
   (i32.store offset=32
    (get_local $0)
    (call $round/PlayRecord#constructor
     (i32.const 0)
     (call $util/DBHelper/DBHelper#constructor
      (i32.const 0)
      (call $../../src/action/Action.get:receiver)
      (call $../../src/account/NAME
       (i32.const 2456)
      )
      (call $../../src/account/NAME
       (i32.const 5192)
      )
     )
     (i64.load offset=16
      (i32.load offset=12
       (get_local $0)
      )
     )
     (i32.load8_u
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
   )
  )
  (get_local $2)
 )
 (func $room/Room#getCurrentRound (; 195 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 4928)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $~lib/array/Array<u64>#includes
    (i32.load offset=4
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (i32.const 0)
   )
   (i32.const 4944)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5016)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (i32.load8_s offset=8
     (get_local $0)
    )
    (i32.const -1)
   )
   (i32.const 3960)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5032)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (i32.load8_s offset=8
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 5048)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5144)
   )
  )
  (set_local $1
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (i64.extend_s/i32
     (i32.load8_s offset=8
      (get_local $0)
     )
    )
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5160)
   )
  )
  (set_local $2
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5176)
   )
  )
  (set_local $3
   (call $round/Round#getRound
    (get_local $2)
    (get_local $1)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $3)
   (i32.const 5512)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5584)
   )
  )
  (get_local $2)
 )
 (func $../../src/time/now (; 196 ;) (type $i) (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $../../internal/system.d/env.current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $room/ActionRecord.defaultAction (; 197 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (block (result i32)
    (set_local $1
     (call $~lib/memory/memory.allocate
      (i32.const 20)
     )
    )
    (i64.store
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=8
     (get_local $1)
     (i64.const 0)
    )
    (i32.store offset=16
     (get_local $1)
     (i32.const 0)
    )
    (get_local $1)
   )
  )
  (i64.store
   (get_local $1)
   (call $../../src/action/Action.get:sender)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.extend_u/i32
    (call $../../src/time/now)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/array/Array<ActionRecord>#push (; 198 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<ActionRecord_ActionRecord>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $room/Room#insertAction (; 199 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eq
    (block $~lib/array/Array<ActionRecord>#get:length|inlined.2 (result i32)
     (set_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (block $~lib/array/Array<u64>#get:length|inlined.9 (result i32)
     (set_local $2
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
   )
   (i32.store offset=24
    (get_local $0)
    (call $~lib/array/Array<ActionRecord>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (drop
   (call $~lib/array/Array<ActionRecord>#push
    (i32.load offset=24
     (get_local $0)
    )
    (call $room/ActionRecord.defaultAction
     (i32.load offset=20
      (get_local $1)
     )
    )
   )
  )
 )
 (func $round/Round#isInturn (; 200 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i64.eq
   (call $~lib/array/Array<u64>#__get
    (i32.load offset=4
     (i32.load offset=12
      (get_local $0)
     )
    )
    (i32.load offset=8
     (i32.load offset=16
      (get_local $0)
     )
    )
   )
   (get_local $1)
  )
 )
 (func $round/Round#vaildCards (; 201 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.const 1)
 )
 (func $../../src/dbmanager/DBManager<TempVariable>#modify (; 202 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<TempVariable>#find
    (get_local $0)
    (call $round/TempVariable#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3064)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3184)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<TempVariable>
    (get_local $2)
   )
  )
  (set_local $5
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $4)
   )
  )
  (set_local $6
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $5)
    )
    (get_local $4)
   )
  )
  (call $round/TempVariable#serialize
   (get_local $2)
   (get_local $6)
  )
  (call $../../internal/db.d/env.db_update_i64
   (get_local $3)
   (get_local $1)
   (i32.load
    (get_local $6)
   )
   (i32.load offset=8
    (get_local $6)
   )
  )
 )
 (func $round/Round#updateTemp (; 203 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (set_local $1
   (i64.add
    (i64.mul
     (i64.load offset=16
      (i32.load offset=12
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (i64.extend_u/i32
     (i32.load8_u
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/dbmanager/DBManager<TempVariable>#exists
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 5824)
     (call $../../src/utils/intToString
      (get_local $1)
     )
    )
    (i32.const 4840)
   )
  )
  (call $../../src/dbmanager/DBManager<TempVariable>#modify
   (i32.load offset=8
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $round/Round#nextTurn (; 204 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (set_local $2
   (i64.extend_s/i32
    (block $~lib/array/Array<u64>#get:length|inlined.10 (result i32)
     (set_local $1
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
  (if
   (i64.eq
    (i64.extend_s/i32
     (i32.add
      (i32.load offset=8
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (get_local $2)
   )
   (block
    (i32.store offset=8
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 0)
    )
    (call $round/Round#updateTemp
     (get_local $0)
    )
   )
   (block
    (i32.store offset=8
     (i32.load offset=16
      (get_local $0)
     )
     (i32.add
      (i32.load offset=8
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (call $round/Round#updateTemp
     (get_local $0)
    )
   )
  )
 )
 (func $~lib/map/Map<u8_bool>#find (; 205 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u8>#get:length|inlined.4 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (i32.load
         (get_local $0)
        )
        (get_local $2)
       )
       (i32.const 255)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/map/Map<u8_bool>#has (; 206 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<u8_bool>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $round/PlayRecord#getID (; 207 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (i64.add
   (i64.add
    (i64.mul
     (i64.load offset=8
      (get_local $0)
     )
     (i64.const 10000)
    )
    (i64.mul
     (i64.extend_u/i32
      (i32.load8_u offset=16
       (get_local $0)
      )
     )
     (i64.const 100)
    )
   )
   (get_local $1)
  )
 )
 (func $util/DBHelper/DBHelper.find (; 208 ;) (type $IIIIi) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (set_local $4
   (call $../../internal/db.d/env.db_find_i64
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
  (get_local $4)
 )
 (func $util/DBHelper/DBHelper.exist (; 209 ;) (type $IIIIi) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (set_local $4
   (call $util/DBHelper/DBHelper.find
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
  (if (result i32)
   (i32.lt_s
    (get_local $4)
    (i32.const 0)
   )
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $util/DBHelper/DBHelper#exist (; 210 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $util/DBHelper/DBHelper.exist
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
   (i64.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $util/DBHelper/DBHelper.get (; 211 ;) (type $IIIIi) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (call $../../internal/db.d/env.db_find_i64
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $4)
    (i32.const 0)
   )
   (i32.const 5912)
  )
  (set_local $5
   (call $../../internal/db.d/env.db_get_i64
    (get_local $4)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $6
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $5)
   )
  )
  (set_local $7
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $4)
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (get_local $7)
 )
 (func $util/DBHelper/DBHelper#get (; 212 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $util/DBHelper/DBHelper.get
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
   (i64.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $~lib/map/Map<u64_Array<String>>#find (; 213 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u64>#get:length|inlined.12 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (call $~lib/array/Array<u64>#__get
       (i32.load
        (get_local $0)
       )
       (get_local $2)
      )
      (get_local $1)
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<Array<String>>#push (; 214 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<String>_Array<String>>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<Array<String>>#__set (; 215 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<String>_Array<String>>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u64_Array<String>>#set (; 216 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u64_Array<String>>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<Array<String>>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<Array<String>>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $util/serialize_util/deserializeMapStringArray<u64> (; 217 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $2
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (call $~lib/datastream/DataStream#read<u64>
       (get_local $1)
      )
     )
     (set_local $5
      (call $~lib/datastream/DataStream#readStringVector
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u64_Array<String>>#set
      (get_local $0)
      (get_local $4)
      (get_local $5)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/array/Array<bool>#push (; 218 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<bool_bool>|inlined.0
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 0)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<bool>#__set (; 219 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 0)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<bool_bool>|inlined.1
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u8_bool>#set (; 220 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u8_bool>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u8>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<bool>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<bool>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $round/PlayRecord#getShuffleCards (; 221 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (set_local $1
     (call $round/PlayRecord#getID
      (get_local $0)
      (i64.const 1)
     )
    )
    (if
     (call $util/DBHelper/DBHelper#exist
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
     (block
      (call $util/serialize_util/deserializeMapStringArray<u64>
       (i32.load offset=24
        (get_local $0)
       )
       (call $util/DBHelper/DBHelper#get
        (i32.load
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (call $~lib/map/Map<u8_bool>#set
       (i32.load offset=20
        (get_local $0)
       )
       (i32.const 1)
       (i32.const 1)
      )
     )
    )
   )
  )
  (i32.load offset=24
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_Array<String>>#get:size (; 222 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $~lib/array/Array<u64>#get:length|inlined.13 (result i32)
   (set_local $1
    (i32.load
     (get_local $0)
    )
   )
   (i32.load offset=4
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Round>#modify (; 223 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<Round>#find
    (get_local $0)
    (call $round/Round#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3064)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3184)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<Round>
    (get_local $2)
   )
  )
  (set_local $5
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $4)
   )
  )
  (set_local $6
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $5)
    )
    (get_local $4)
   )
  )
  (call $round/Round#serialize
   (get_local $2)
   (get_local $6)
  )
  (call $../../internal/db.d/env.db_update_i64
   (get_local $3)
   (get_local $1)
   (i32.load
    (get_local $6)
   )
   (i32.load offset=8
    (get_local $6)
   )
  )
 )
 (func $round/Round#updateRound (; 224 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (set_local $1
   (i64.add
    (i64.mul
     (i64.load offset=16
      (i32.load offset=12
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (i64.extend_u/i32
     (i32.load8_u
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/dbmanager/DBManager<Round>#exists
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 5824)
     (call $../../src/utils/intToString
      (get_local $1)
     )
    )
    (i32.const 4720)
   )
  )
  (call $../../src/dbmanager/DBManager<Round>#modify
   (i32.load
    (get_local $0)
   )
   (call $../../src/action/Action.get:sender)
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_Array<String>>#keys (; 225 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Array<String>>#__get (; 226 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<String>_Array<String>>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u64_Array<String>>#get (; 227 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u64_Array<String>>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $~lib/array/Array<Array<String>>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $~lib/datastream/DataStream#writeStringVector (; 228 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $~lib/datastream/DataStream#writeString
     (get_local $0)
     (call $~lib/array/Array<String>#__get
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $util/serialize_util/serializeMapStringArray<u64> (; 229 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/map/Map<u64_Array<String>>#keys
    (get_local $0)
   )
  )
  (set_local $3
   (block $~lib/array/Array<u64>#get:length|inlined.16 (result i32)
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (get_local $3)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (block
     (call $~lib/datastream/DataStream#write<u64>
      (get_local $1)
      (call $~lib/array/Array<u64>#__get
       (get_local $2)
       (get_local $4)
      )
     )
     (call $~lib/datastream/DataStream#writeStringVector
      (get_local $1)
      (call $~lib/map/Map<u64_Array<String>>#get
       (get_local $0)
       (call $~lib/array/Array<u64>#__get
        (get_local $2)
        (get_local $4)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $util/DBHelper/DBHelper.update (; 230 ;) (type $IIIIiIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (param $5 i64)
  (local $6 i32)
  (set_local $6
   (call $util/DBHelper/DBHelper.find
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $6)
    (i32.const 0)
   )
   (i32.const 5984)
  )
  (call $../../internal/db.d/env.db_update_i64
   (get_local $6)
   (get_local $3)
   (i32.load
    (get_local $4)
   )
   (i32.load offset=8
    (get_local $4)
   )
  )
 )
 (func $util/DBHelper/DBHelper#update (; 231 ;) (type $iIiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (call $util/DBHelper/DBHelper.update
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
   (i64.load offset=16
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $util/DBHelper/DBHelper.insert (; 232 ;) (type $IIIIiIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (param $5 i64)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $util/DBHelper/DBHelper.exist
     (get_local $0)
     (get_local $1)
     (get_local $2)
     (get_local $5)
    )
   )
   (i32.const 6064)
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (get_local $1)
    (get_local $2)
    (get_local $3)
    (get_local $5)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $4)
    )
   )
  )
 )
 (func $util/DBHelper/DBHelper#insert (; 233 ;) (type $iIiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (call $util/DBHelper/DBHelper.insert
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
   (i64.load offset=16
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $round/PlayRecord#saveShuffleCards (; 234 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 1)
   )
  )
  (set_local $2
   (i32.load offset=24
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/Round#shuffleCard (; 235 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.SHUFFLE)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isInturn
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 5648)
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#vaildCards
    (get_local $0)
    (get_local $1)
   )
   (i32.const 5744)
  )
  (call $round/Round#nextTurn
   (get_local $0)
  )
  (set_local $2
   (call $round/PlayRecord#getShuffleCards
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (call $~lib/map/Map<u64_Array<String>>#set
   (get_local $2)
   (call $../../src/action/Action.get:sender)
   (get_local $1)
  )
  (if
   (i32.eq
    (call $~lib/map/Map<u64_Array<String>>#get:size
     (get_local $2)
    )
    (block $~lib/array/Array<u64>#get:length|inlined.15 (result i32)
     (set_local $3
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
   (block
    (i32.store offset=20
     (get_local $0)
     (get_global $round/RoundStag.ENCRYPT)
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
  (call $round/PlayRecord#saveShuffleCards
   (i32.load offset=32
    (get_local $0)
   )
  )
 )
 (func $room/Room#shuffleCard (; 236 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 4912)
   )
  )
  (set_local $2
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5600)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $2)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5616)
   )
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5632)
   )
  )
  (call $round/Round#shuffleCard
   (get_local $2)
   (get_local $1)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 6096)
   )
  )
 )
 (func $niuniu/NiuNiuContract#shuffleCard (; 237 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $2)
   )
   (i32.const 4032)
  )
  (call $room/Room#shuffleCard
   (get_local $3)
   (get_local $1)
  )
 )
 (func $round/PlayRecord#getEncryptCards (; 238 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 2)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 2)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMapStringArray<u64>
      (i32.load offset=28
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 2)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=28
   (get_local $0)
  )
 )
 (func $round/PlayRecord#saveEncryptCards (; 239 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 2)
   )
  )
  (set_local $2
   (i32.load offset=28
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/Round#encryptCard (; 240 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.ENCRYPT)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isInturn
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 5648)
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#vaildCards
    (get_local $0)
    (get_local $1)
   )
   (i32.const 5744)
  )
  (call $round/Round#nextTurn
   (get_local $0)
  )
  (set_local $2
   (call $round/PlayRecord#getEncryptCards
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (call $~lib/map/Map<u64_Array<String>>#set
   (get_local $2)
   (call $../../src/action/Action.get:sender)
   (get_local $1)
  )
  (if
   (i32.eq
    (call $~lib/map/Map<u64_Array<String>>#get:size
     (get_local $2)
    )
    (block $~lib/array/Array<u64>#get:length|inlined.18 (result i32)
     (set_local $3
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
   (block
    (i32.store offset=20
     (get_local $0)
     (get_global $round/RoundStag.UPLOAD_ENCRYPT_KEY)
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
  (call $round/PlayRecord#saveEncryptCards
   (i32.load offset=32
    (get_local $0)
   )
  )
 )
 (func $room/Room#encryptCard (; 241 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (set_local $2
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $2)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#encryptCard
   (get_local $2)
   (get_local $1)
  )
 )
 (func $niuniu/NiuNiuContract#encryptCard (; 242 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $2)
   )
   (i32.const 4032)
  )
  (call $room/Room#encryptCard
   (get_local $3)
   (get_local $1)
  )
 )
 (func $round/Round#isPlayer (; 243 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/array/Array<u64>#includes
   (i32.load offset=4
    (i32.load offset=12
     (get_local $0)
    )
   )
   (get_local $1)
   (i32.const 0)
  )
 )
 (func $round/PlayRecord#getEncryptKeys (; 244 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 5)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 5)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMapStringArray<u64>
      (i32.load offset=40
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 5)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=40
   (get_local $0)
  )
 )
 (func $round/PlayRecord#getDecryptKeys (; 245 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 6)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 6)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMapStringArray<u64>
      (i32.load offset=44
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 6)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=44
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_Array<String>>#has (; 246 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<u64_Array<String>>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $round/PlayRecord#saveEncryptKeys (; 247 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 5)
   )
  )
  (set_local $2
   (i32.load offset=40
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/PlayRecord#saveDecryptKeys (; 248 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 6)
   )
  )
  (set_local $2
   (i32.load offset=44
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMapStringArray<u64>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/Round#uploadEncryptKey (; 249 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.UPLOAD_ENCRYPT_KEY)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isPlayer
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6184)
  )
  (set_local $3
   (call $round/PlayRecord#getEncryptKeys
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (set_local $4
   (call $round/PlayRecord#getDecryptKeys
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/map/Map<u64_Array<String>>#has
     (get_local $3)
     (call $../../src/action/Action.get:sender)
    )
   )
   (i32.const 6272)
  )
  (call $~lib/map/Map<u64_Array<String>>#set
   (get_local $3)
   (call $../../src/action/Action.get:sender)
   (get_local $1)
  )
  (call $~lib/map/Map<u64_Array<String>>#set
   (get_local $4)
   (call $../../src/action/Action.get:sender)
   (get_local $2)
  )
  (call $round/PlayRecord#saveEncryptKeys
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $round/PlayRecord#saveDecryptKeys
   (i32.load offset=32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (call $~lib/map/Map<u64_Array<String>>#get:size
     (get_local $3)
    )
    (block $~lib/array/Array<u64>#get:length|inlined.20 (result i32)
     (set_local $5
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $5)
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load8_u offset=8
       (i32.load offset=12
        (get_local $0)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=20
      (get_local $0)
      (get_global $round/RoundStag.SCRAMBLE_BANKER)
     )
     (i32.store offset=20
      (get_local $0)
      (get_global $round/RoundStag.DISCARD)
     )
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
 )
 (func $room/Room#uploadEncryptKey (; 250 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $3)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#uploadEncryptKey
   (get_local $3)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#uploadEncryptKey (; 251 ;) (type $iiiIv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (set_local $4
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $4)
    (get_local $3)
   )
   (i32.const 4032)
  )
  (call $room/Room#uploadEncryptKey
   (get_local $4)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $round/Round#scrambleBanker (; 252 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load8_u offset=8
     (i32.load offset=12
      (get_local $0)
     )
    )
    (i32.const 0)
   )
   (i32.const 6424)
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isPlayer
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6184)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.SCRAMBLE_BANKER)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 6528)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (i64.store offset=24
   (get_local $0)
   (call $../../src/action/Action.get:sender)
  )
  (i32.store offset=20
   (get_local $0)
   (get_global $round/RoundStag.BET)
  )
  (call $round/Round#updateRound
   (get_local $0)
  )
 )
 (func $room/Room#scrambleBanker (; 253 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $1)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#scrambleBanker
   (get_local $1)
  )
 )
 (func $niuniu/NiuNiuContract#scrambleBanker (; 254 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (set_local $2
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $2)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $room/Room#scrambleBanker
   (get_local $2)
  )
 )
 (func $~lib/map/Map<u64_u8>#find (; 255 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u64>#get:length|inlined.22 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (call $~lib/array/Array<u64>#__get
       (i32.load
        (get_local $0)
       )
       (get_local $2)
      )
      (get_local $1)
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<u8>#__set (; 256 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 0)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.1
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u64_u8>#set (; 257 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u64_u8>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<u8>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<u8>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $util/serialize_util/deserializeMap<u64_u8> (; 258 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $2
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (call $~lib/datastream/DataStream#read<u64>
       (get_local $1)
      )
     )
     (set_local $5
      (call $~lib/datastream/DataStream#read<u8>
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u64_u8>#set
      (get_local $0)
      (get_local $4)
      (get_local $5)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#getBets4Player (; 259 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 10)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 10)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMap<u64_u8>
      (i32.load offset=60
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 10)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=60
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_u8>#has (; 260 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<u64_u8>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $~lib/map/Map<u64_u8>#keys (; 261 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_u8>#get (; 262 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u64_u8>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $~lib/array/Array<u8>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $util/serialize_util/serializeMap<u64_u8> (; 263 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/map/Map<u64_u8>#keys
    (get_local $0)
   )
  )
  (set_local $3
   (block $~lib/array/Array<u64>#get:length|inlined.23 (result i32)
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (get_local $3)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (block
     (call $~lib/datastream/DataStream#write<u64>
      (get_local $1)
      (call $~lib/array/Array<u64>#__get
       (get_local $2)
       (get_local $4)
      )
     )
     (call $~lib/datastream/DataStream#write<u8>
      (get_local $1)
      (call $~lib/map/Map<u64_u8>#get
       (get_local $0)
       (call $~lib/array/Array<u64>#__get
        (get_local $2)
        (get_local $4)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#saveBets4Player (; 264 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 10)
   )
  )
  (set_local $2
   (i32.load offset=60
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMap<u64_u8>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMap<u64_u8>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $~lib/map/Map<u64_u8>#get:size (; 265 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $~lib/array/Array<u64>#get:length|inlined.24 (result i32)
   (set_local $1
    (i32.load
     (get_local $0)
    )
   )
   (i32.load offset=4
    (get_local $1)
   )
  )
 )
 (func $round/Round#bet (; 266 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.BET)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isPlayer
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6184)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (i64.load offset=24
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6616)
  )
  (set_local $2
   (call $round/PlayRecord#getBets4Player
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/map/Map<u64_u8>#has
     (get_local $2)
     (call $../../src/action/Action.get:sender)
    )
   )
   (i32.const 6688)
  )
  (call $~lib/map/Map<u64_u8>#set
   (get_local $2)
   (call $../../src/action/Action.get:sender)
   (get_local $1)
  )
  (call $round/PlayRecord#saveBets4Player
   (i32.load offset=32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (call $~lib/map/Map<u64_u8>#get:size
     (get_local $2)
    )
    (i32.sub
     (block $~lib/array/Array<u64>#get:length|inlined.26 (result i32)
      (set_local $3
       (i32.load offset=4
        (i32.load offset=12
         (get_local $0)
        )
       )
      )
      (i32.load offset=4
       (get_local $3)
      )
     )
     (i32.const 1)
    )
   )
   (block
    (i32.store offset=20
     (get_local $0)
     (get_global $round/RoundStag.UPLOAD_LAST_ENCRYPT_KEY)
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
 )
 (func $room/Room#bet (; 267 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (set_local $2
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $2)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#bet
   (get_local $2)
   (get_local $1)
  )
 )
 (func $niuniu/NiuNiuContract#bet (; 268 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $2)
   )
   (i32.const 4032)
  )
  (call $room/Room#bet
   (get_local $3)
   (get_local $1)
  )
 )
 (func $round/Round#uploadLastEncryptKey (; 269 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.UPLOAD_LAST_ENCRYPT_KEY)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isPlayer
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6184)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/array/Array<u64>#includes
     (i32.load offset=24
      (i32.load offset=16
       (get_local $0)
      )
     )
     (call $../../src/action/Action.get:sender)
     (i32.const 0)
    )
   )
   (i32.const 6816)
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=24
     (i32.load offset=16
      (get_local $0)
     )
    )
    (call $../../src/action/Action.get:sender)
   )
  )
  (call $round/Round#updateTemp
   (get_local $0)
  )
  (set_local $3
   (call $~lib/map/Map<u64_Array<String>>#get
    (call $round/PlayRecord#getEncryptKeys
     (i32.load offset=32
      (get_local $0)
     )
    )
    (call $../../src/action/Action.get:sender)
   )
  )
  (set_local $4
   (call $~lib/map/Map<u64_Array<String>>#get
    (call $round/PlayRecord#getDecryptKeys
     (i32.load offset=32
      (get_local $0)
     )
    )
    (call $../../src/action/Action.get:sender)
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $5)
       (block $~lib/array/Array<u64>#get:length|inlined.28 (result i32)
        (set_local $6
         (i32.load offset=4
          (i32.load offset=12
           (get_local $0)
          )
         )
        )
        (i32.load offset=4
         (get_local $6)
        )
       )
      )
     )
    )
    (block
     (call $~lib/array/Array<String>#__set
      (get_local $3)
      (i32.add
       (i32.mul
        (get_local $5)
        (i32.const 5)
       )
       (i32.const 4)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $1)
       (get_local $5)
      )
     )
     (call $~lib/array/Array<String>#__set
      (get_local $4)
      (i32.add
       (i32.mul
        (get_local $5)
        (i32.const 5)
       )
       (i32.const 4)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.eq
    (block $~lib/array/Array<u64>#get:length|inlined.31 (result i32)
     (set_local $5
      (i32.load offset=24
       (i32.load offset=16
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $5)
     )
    )
    (block $~lib/array/Array<u64>#get:length|inlined.32 (result i32)
     (set_local $5
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $5)
     )
    )
   )
   (block
    (i32.store offset=20
     (get_local $0)
     (get_global $round/RoundStag.DISCARD)
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
 )
 (func $room/Room#uploadLastEncryptKey (; 270 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $3)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#uploadLastEncryptKey
   (get_local $3)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#uploadLastEncryptKey (; 271 ;) (type $iiiIv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (set_local $4
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $4)
    (get_local $3)
   )
   (i32.const 4032)
  )
  (call $room/Room#uploadLastEncryptKey
   (get_local $4)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/datastream/DataStream#readVector<u8> (; 272 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<u8>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<u8>#__set
     (get_local $2)
     (get_local $3)
     (call $~lib/datastream/DataStream#read<u8>
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $round/Round#vaildDiscard (; 273 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (if
   (if (result i32)
    (tee_local $4
     (if (result i32)
      (tee_local $4
       (i32.ne
        (block $~lib/array/Array<u8>#get:length|inlined.6 (result i32)
         (i32.load offset=4
          (get_local $1)
         )
        )
        (i32.const 5)
       )
      )
      (get_local $4)
      (i32.ne
       (block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
        (i32.load offset=4
         (get_local $2)
        )
       )
       (i32.const 5)
      )
     )
    )
    (get_local $4)
    (i32.ne
     (block $~lib/array/Array<String>#get:length|inlined.4 (result i32)
      (i32.load offset=4
       (get_local $3)
      )
     )
     (i32.const 5)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/string/compareUnsafe (; 274 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   (i32.const 0)
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $4)
      (i32.eqz
       (tee_local $5
        (i32.sub
         (i32.load16_u offset=4
          (get_local $6)
         )
         (i32.load16_u offset=4
          (get_local $7)
         )
        )
       )
      )
      (get_local $4)
     )
     (block
      (block
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__eq (; 275 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<Cards>#__set (; 276 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Cards_Cards>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<Cards>#__get (; 277 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<Cards_Cards>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $round/Cards#deserialize (; 278 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (call $~lib/datastream/DataStream#readVector<u8>
    (get_local $1)
   )
  )
  (i32.store8 offset=4
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u8>
    (get_local $1)
   )
  )
 )
 (func $~lib/datastream/DataStream#readComplexVector<Cards> (; 279 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<Cards>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<Cards>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (block
     (call $~lib/array/Array<Cards>#__set
      (get_local $2)
      (get_local $3)
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 5)
        )
       )
       (get_local $4)
      )
     )
     (call $round/Cards#deserialize
      (call $~lib/array/Array<Cards>#__get
       (get_local $2)
       (get_local $3)
      )
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $round/PlayRecord#getPlayCards (; 280 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 7)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 7)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (set_local $2
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (i32.store offset=48
      (get_local $0)
      (call $~lib/datastream/DataStream#readComplexVector<Cards>
       (get_local $2)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 7)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=48
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Cards>#push (; 281 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Cards_Cards>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/datastream/DataStream#writeComplexVector<Cards> (; 282 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<Cards>#get:length|inlined.0 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $round/Cards#serialize
     (call $~lib/array/Array<Cards>#__get
      (get_local $1)
      (get_local $3)
     )
     (get_local $0)
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#savePlayCards (; 283 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 7)
   )
  )
  (set_local $2
   (i32.load offset=48
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $~lib/datastream/DataStream#writeComplexVector<Cards>
   (get_local $3)
   (get_local $2)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeComplexVector<Cards>
   (get_local $5)
   (get_local $2)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/Round#isDiscardEnd (; 284 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.ge_s
   (block $~lib/array/Array<Cards>#get:length|inlined.1 (result i32)
    (set_local $1
     (call $round/PlayRecord#getPlayCards
      (i32.load offset=32
       (get_local $0)
      )
     )
    )
    (i32.load offset=4
     (get_local $1)
    )
   )
   (block $~lib/array/Array<u64>#get:length|inlined.33 (result i32)
    (set_local $1
     (i32.load offset=4
      (i32.load offset=12
       (get_local $0)
      )
     )
    )
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
 )
 (func $round/Round#discard (; 285 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.DISCARD)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isInturn
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 5648)
  )
  (set_local $5
   (call $round/PlayRecord#getEncryptKeys
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (set_local $6
   (call $~lib/map/Map<u64_Array<String>>#get
    (get_local $5)
    (call $../../src/action/Action.get:sender)
   )
  )
  (set_local $7
   (call $~lib/map/Map<u64_Array<String>>#get
    (call $round/PlayRecord#getDecryptKeys
     (i32.load offset=32
      (get_local $0)
     )
    )
    (call $../../src/action/Action.get:sender)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#vaildDiscard
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
   (i32.const 5744)
  )
  (block $break|0
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (block $~lib/array/Array<String>#get:length|inlined.6 (result i32)
        (i32.load offset=4
         (get_local $6)
        )
       )
      )
     )
    )
    (call $../../src/log/Logger#flush
     (call $../../src/log/Logger#s
      (call $../../src/log/Logger#s
       (call $../../src/log/Logger#i
        (call $../../src/log/Logger#s
         (get_global $../../src/log/Log)
         (i32.const 6968)
        )
        (i64.extend_s/i32
         (get_local $8)
        )
        (i32.const 10)
       )
       (i32.const 6992)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $6)
       (get_local $8)
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|1
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (block $~lib/array/Array<u8>#get:length|inlined.8 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (block
     (call $../../src/log/Logger#flush
      (call $../../src/log/Logger#s
       (call $../../src/log/Logger#s
        (call $../../src/log/Logger#s
         (call $../../src/log/Logger#i
          (call $../../src/log/Logger#s
           (get_global $../../src/log/Log)
           (i32.const 7000)
          )
          (i64.extend_u/i32
           (i32.and
            (call $~lib/array/Array<u8>#__get
             (get_local $1)
             (get_local $8)
            )
            (i32.const 255)
           )
          )
          (i32.const 10)
         )
         (i32.const 7016)
        )
        (call $~lib/array/Array<String>#__get
         (get_local $6)
         (get_local $8)
        )
       )
       (i32.const 7040)
      )
     )
     (set_local $9
      (if (result i32)
       (tee_local $9
        (if (result i32)
         (tee_local $9
          (i32.lt_s
           (i32.and
            (call $~lib/array/Array<u8>#__get
             (get_local $1)
             (get_local $8)
            )
            (i32.const 255)
           )
           (block $~lib/array/Array<String>#get:length|inlined.7 (result i32)
            (i32.load offset=4
             (get_local $6)
            )
           )
          )
         )
         (call $~lib/string/String.__eq
          (call $~lib/array/Array<String>#__get
           (get_local $6)
           (i32.and
            (call $~lib/array/Array<u8>#__get
             (get_local $1)
             (get_local $8)
            )
            (i32.const 255)
           )
          )
          (i32.const 2928)
         )
         (get_local $9)
        )
       )
       (i32.const 1)
       (get_local $9)
      )
     )
     (call $../../src/utils/ultrain_assert
      (get_local $9)
      (i32.const 7056)
     )
     (call $~lib/array/Array<String>#__set
      (get_local $6)
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $1)
        (get_local $8)
       )
       (i32.const 255)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $2)
       (get_local $8)
      )
     )
     (call $../../src/utils/ultrain_assert
      (i32.lt_s
       (call $~lib/array/Array<u8>#__get
        (get_local $1)
        (get_local $8)
       )
       (block $~lib/array/Array<String>#get:length|inlined.8 (result i32)
        (i32.load offset=4
         (get_local $7)
        )
       )
      )
      (i32.const 7160)
     )
     (call $../../src/utils/ultrain_assert
      (call $~lib/string/String.__eq
       (call $~lib/array/Array<String>#__get
        (get_local $7)
        (i32.and
         (call $~lib/array/Array<u8>#__get
          (get_local $1)
          (get_local $8)
         )
         (i32.const 255)
        )
       )
       (i32.const 2928)
      )
      (i32.const 7256)
     )
     (call $~lib/array/Array<String>#__set
      (get_local $7)
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $1)
        (get_local $8)
       )
       (i32.const 255)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $3)
       (get_local $8)
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (call $~lib/map/Map<u64_Array<String>>#set
   (get_local $5)
   (call $../../src/action/Action.get:sender)
   (get_local $6)
  )
  (call $round/PlayRecord#saveEncryptKeys
   (i32.load offset=32
    (get_local $0)
   )
  )
  (set_local $8
   (block (result i32)
    (set_local $8
     (call $~lib/memory/memory.allocate
      (i32.const 5)
     )
    )
    (i32.store
     (get_local $8)
     (i32.const 0)
    )
    (i32.store8 offset=4
     (get_local $8)
     (i32.const 0)
    )
    (get_local $8)
   )
  )
  (i32.store
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=4
   (get_local $8)
   (get_local $4)
  )
  (drop
   (call $~lib/array/Array<Cards>#push
    (call $round/PlayRecord#getPlayCards
     (i32.load offset=32
      (get_local $0)
     )
    )
    (get_local $8)
   )
  )
  (call $round/PlayRecord#savePlayCards
   (i32.load offset=32
    (get_local $0)
   )
  )
  (if
   (i64.eq
    (call $../../src/action/Action.get:sender)
    (i64.load offset=24
     (get_local $0)
    )
   )
   (block
    (i32.store offset=28
     (i32.load offset=16
      (get_local $0)
     )
     (get_local $8)
    )
    (call $round/Round#updateTemp
     (get_local $0)
    )
   )
  )
  (if
   (call $round/Round#isDiscardEnd
    (get_local $0)
   )
   (block
    (i32.store offset=20
     (get_local $0)
     (get_global $round/RoundStag.UPLOAD_SHUFFLE_KEY)
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
 )
 (func $room/Room#discard (; 286 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (set_local $5
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $5)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#discard
   (get_local $5)
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $niuniu/NiuNiuContract#discard (; 287 ;) (type $iiiiiIv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64)
  (local $6 i32)
  (set_local $6
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $6)
    (get_local $5)
   )
   (i32.const 4032)
  )
  (call $room/Room#discard
   (get_local $6)
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/map/Map<u64_String>#find (; 288 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u64>#get:length|inlined.35 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (call $~lib/array/Array<u64>#__get
       (i32.load
        (get_local $0)
       )
       (get_local $2)
      )
      (get_local $1)
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<String>#push (; 289 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<String_String>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/map/Map<u64_String>#set (; 290 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u64_String>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<String>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<String>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $util/serialize_util/deserializeMapString<u64> (; 291 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $2
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (call $~lib/datastream/DataStream#read<u64>
       (get_local $1)
      )
     )
     (set_local $5
      (call $~lib/datastream/DataStream#readString
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u64_String>#set
      (get_local $0)
      (get_local $4)
      (get_local $5)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#getShuffleEnKeys (; 292 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 3)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 3)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMapString<u64>
      (i32.load offset=32
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 3)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=32
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_String>#has (; 293 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<u64_String>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $~lib/map/Map<u64_String>#keys (; 294 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_String>#get (; 295 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u64_String>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $~lib/array/Array<String>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $util/serialize_util/serializeMapString<u64> (; 296 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/map/Map<u64_String>#keys
    (get_local $0)
   )
  )
  (set_local $3
   (block $~lib/array/Array<u64>#get:length|inlined.36 (result i32)
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $~lib/datastream/DataStream#write<i32>
   (get_local $1)
   (get_local $3)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (block
     (call $~lib/datastream/DataStream#write<u64>
      (get_local $1)
      (call $~lib/array/Array<u64>#__get
       (get_local $2)
       (get_local $4)
      )
     )
     (call $~lib/datastream/DataStream#writeString
      (get_local $1)
      (call $~lib/map/Map<u64_String>#get
       (get_local $0)
       (call $~lib/array/Array<u64>#__get
        (get_local $2)
        (get_local $4)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#saveShuffleEnKeys (; 297 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 3)
   )
  )
  (set_local $2
   (i32.load offset=32
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMapString<u64>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMapString<u64>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/PlayRecord#getShuffleDeKeys (; 298 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 4)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 4)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMapString<u64>
      (i32.load offset=36
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 4)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=36
   (get_local $0)
  )
 )
 (func $round/PlayRecord#saveShuffleDeKeys (; 299 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 4)
   )
  )
  (set_local $2
   (i32.load offset=36
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $util/serialize_util/serializeMapString<u64>
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $util/serialize_util/serializeMapString<u64>
   (get_local $2)
   (get_local $5)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/Round#uploadShuffleKeys (; 300 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.UPLOAD_SHUFFLE_KEY)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 4352)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 4424)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isPlayer
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6184)
  )
  (set_local $3
   (call $round/PlayRecord#getShuffleEnKeys
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/map/Map<u64_String>#has
     (get_local $3)
     (call $../../src/action/Action.get:sender)
    )
   )
   (i32.const 7400)
  )
  (call $~lib/map/Map<u64_String>#set
   (get_local $3)
   (call $../../src/action/Action.get:sender)
   (get_local $1)
  )
  (call $round/PlayRecord#saveShuffleEnKeys
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $~lib/map/Map<u64_String>#set
   (call $round/PlayRecord#getShuffleDeKeys
    (i32.load offset=32
     (get_local $0)
    )
   )
   (call $../../src/action/Action.get:sender)
   (get_local $2)
  )
  (call $round/PlayRecord#saveShuffleDeKeys
   (i32.load offset=32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (call $~lib/map/Map<u64_u8>#get:size
     (call $round/PlayRecord#getBets4Player
      (i32.load offset=32
       (get_local $0)
      )
     )
    )
    (block $~lib/array/Array<u64>#get:length|inlined.38 (result i32)
     (set_local $4
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
   )
   (block
    (i32.store offset=20
     (get_local $0)
     (get_global $round/RoundStag.SETTLE)
    )
    (call $round/Round#updateRound
     (get_local $0)
    )
   )
  )
 )
 (func $room/Room#uploadShuffleKeys (; 301 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $room/Room#insertAction
   (get_local $0)
   (get_local $3)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
  (call $round/Round#uploadShuffleKeys
   (get_local $3)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#uploadShuffleKeys (; 302 ;) (type $iiiIv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (set_local $4
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $4)
    (get_local $3)
   )
   (i32.const 4032)
  )
  (call $room/Room#uploadShuffleKeys
   (get_local $4)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/datastream/DataStream#read<i16> (; 303 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load16_s
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (get_local $1)
 )
 (func $~lib/array/Array<i16>#__set (; 304 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 536870908)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i16_i16>|inlined.0
   (i32.store16 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/datastream/DataStream#readVector<i16> (; 305 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<i16>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<i16>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i16>#__set
     (get_local $2)
     (get_local $3)
     (call $~lib/datastream/DataStream#read<i16>
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $~lib/map/Map<u64_Array<i16>>#find (; 306 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u64>#get:length|inlined.40 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (call $~lib/array/Array<u64>#__get
       (i32.load
        (get_local $0)
       )
       (get_local $2)
      )
      (get_local $1)
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<Array<i16>>#push (; 307 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i16>_Array<i16>>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<Array<i16>>#__set (; 308 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i16>_Array<i16>>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u64_Array<i16>>#set (; 309 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u64_Array<i16>>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<Array<i16>>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<Array<i16>>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $util/serialize_util/deserializeMapArray<u64_i16> (; 310 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $2
   (call $~lib/datastream/DataStream#read<i32>
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (call $~lib/datastream/DataStream#read<u64>
       (get_local $1)
      )
     )
     (set_local $5
      (call $~lib/datastream/DataStream#readVector<i16>
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u64_Array<i16>>#set
      (get_local $0)
      (get_local $4)
      (get_local $5)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#getPostResult (; 311 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 8)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 8)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (call $util/serialize_util/deserializeMapArray<u64_i16>
      (i32.load offset=52
       (get_local $0)
      )
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 8)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=52
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64_Array<i16>>#has (; 312 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<u64_Array<i16>>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $~lib/array/Array<String>#slice (; 313 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
   (if
    (i32.gt_s
     (get_local $1)
     (get_local $3)
    )
    (set_local $1
     (get_local $3)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (i32.add
     (get_local $3)
     (get_local $2)
    )
   )
   (if
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
    (set_local $2
     (get_local $3)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (get_local $1)
   )
   (set_local $2
    (get_local $1)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $2)
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.ge_s
     (get_local $6)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $7
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (get_local $6)
   )
  )
  (if
   (get_local $6)
   (block $~lib/memory/memory.copy|inlined.3
    (set_local $4
     (i32.add
      (i32.load
       (get_local $7)
      )
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
    )
    (set_local $5
     (i32.add
      (i32.add
       (i32.load
        (get_local $0)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (set_local $8
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (call $~lib/internal/memory/memmove
     (get_local $4)
     (get_local $5)
     (get_local $8)
    )
   )
  )
  (get_local $7)
 )
 (func $util/BigInt/powMod (; 314 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load
     (get_local $2)
    )
   )
  )
  (call $util/BigInt/env.big_int_pow_mod
   (i32.load
    (get_local $4)
   )
   (i32.load
    (get_local $2)
   )
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
   (call $../../src/utils/string2cstr
    (get_local $1)
   )
   (call $../../src/utils/string2cstr
    (get_local $2)
   )
   (get_local $3)
  )
  (set_local $5
   (i32.const 2928)
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $6)
       (i32.load
        (get_local $2)
       )
      )
     )
    )
    (block
     (set_local $7
      (i32.load8_u
       (i32.add
        (i32.load
         (get_local $4)
        )
        (get_local $6)
       )
      )
     )
     (if
      (i32.eq
       (get_local $7)
       (i32.const 0)
      )
      (br $break|0)
     )
     (set_local $5
      (call $~lib/string/String.__concat
       (get_local $5)
       (call $~lib/string/String.fromCharCode
        (get_local $7)
       )
      )
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $5)
 )
 (func $round/Round#encrypt (; 315 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $util/BigInt/powMod
   (get_local $1)
   (get_local $2)
   (call $util/BigInt/mul
    (i32.load offset=28
     (i32.load offset=12
      (get_local $0)
     )
    )
    (i32.load offset=28
     (i32.load offset=12
      (get_local $0)
     )
    )
    (get_global $round/BASE)
   )
   (get_global $round/BASE)
  )
 )
 (func $round/Round#decrypt (; 316 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $round/Round#encrypt
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/internal/string/parse<i32> (; 317 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.trunc_s/f64
     (f64.const nan:0x8000000000000)
    )
   )
  )
  (set_local $3
   (get_local $0)
  )
  (set_local $4
   (i32.load16_u offset=4
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
   (block
    (if
     (i32.eqz
      (tee_local $2
       (i32.sub
        (get_local $2)
        (i32.const 1)
       )
      )
     )
     (return
      (i32.trunc_s/f64
       (f64.const nan:0x8000000000000)
      )
     )
    )
    (set_local $4
     (i32.load16_u offset=4
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $5
     (i32.const -1)
    )
   )
   (if
    (i32.eq
     (get_local $4)
     (get_global $~lib/internal/string/CharCode.PLUS)
    )
    (block
     (if
      (i32.eqz
       (tee_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (return
       (i32.trunc_s/f64
        (f64.const nan:0x8000000000000)
       )
      )
     )
     (set_local $4
      (i32.load16_u offset=4
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
    )
    (set_local $5
     (i32.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (if
    (if (result i32)
     (tee_local $6
      (i32.eq
       (get_local $4)
       (get_global $~lib/internal/string/CharCode._0)
      )
     )
     (i32.gt_s
      (get_local $2)
      (i32.const 2)
     )
     (get_local $6)
    )
    (block $break|0
     (block $case6|0
      (block $case5|0
       (block $case4|0
        (block $case3|0
         (block $case2|0
          (block $case1|0
           (block $case0|0
            (set_local $6
             (i32.load16_u offset=4
              (i32.add
               (get_local $3)
               (i32.const 2)
              )
             )
            )
            (br_if $case0|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.B)
             )
            )
            (br_if $case1|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.b)
             )
            )
            (br_if $case2|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.O)
             )
            )
            (br_if $case3|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.o)
             )
            )
            (br_if $case4|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.X)
             )
            )
            (br_if $case5|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.x)
             )
            )
            (br $case6|0)
           )
          )
          (block
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 4)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 2)
            )
           )
           (set_local $1
            (i32.const 2)
           )
           (br $break|0)
          )
         )
        )
        (block
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 2)
          )
         )
         (set_local $1
          (i32.const 8)
         )
         (br $break|0)
        )
       )
      )
      (block
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 4)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 2)
        )
       )
       (set_local $1
        (i32.const 16)
       )
       (br $break|0)
      )
     )
     (set_local $1
      (i32.const 10)
     )
    )
    (set_local $1
     (i32.const 10)
    )
   )
   (if
    (if (result i32)
     (tee_local $6
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
     )
     (get_local $6)
     (i32.gt_s
      (get_local $1)
      (i32.const 36)
     )
    )
    (return
     (i32.trunc_s/f64
      (f64.const nan:0x8000000000000)
     )
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $break|1
   (loop $continue|1
    (if
     (block (result i32)
      (set_local $6
       (get_local $2)
      )
      (set_local $2
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $4
        (i32.load16_u offset=4
         (get_local $3)
        )
       )
       (if
        (if (result i32)
         (tee_local $6
          (i32.ge_s
           (get_local $4)
           (get_global $~lib/internal/string/CharCode._0)
          )
         )
         (i32.le_s
          (get_local $4)
          (get_global $~lib/internal/string/CharCode._9)
         )
         (get_local $6)
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (get_global $~lib/internal/string/CharCode._0)
         )
        )
        (if
         (if (result i32)
          (tee_local $6
           (i32.ge_s
            (get_local $4)
            (get_global $~lib/internal/string/CharCode.A)
           )
          )
          (i32.le_s
           (get_local $4)
           (get_global $~lib/internal/string/CharCode.Z)
          )
          (get_local $6)
         )
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.sub
            (get_global $~lib/internal/string/CharCode.A)
            (i32.const 10)
           )
          )
         )
         (if
          (if (result i32)
           (tee_local $6
            (i32.ge_s
             (get_local $4)
             (get_global $~lib/internal/string/CharCode.a)
            )
           )
           (i32.le_s
            (get_local $4)
            (get_global $~lib/internal/string/CharCode.z)
           )
           (get_local $6)
          )
          (set_local $4
           (i32.sub
            (get_local $4)
            (i32.sub
             (get_global $~lib/internal/string/CharCode.a)
             (i32.const 10)
            )
           )
          )
          (br $break|1)
         )
        )
       )
       (if
        (i32.ge_s
         (get_local $4)
         (get_local $1)
        )
        (br $break|1)
       )
       (set_local $7
        (i32.add
         (i32.mul
          (get_local $7)
          (get_local $1)
         )
         (get_local $4)
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (i32.mul
   (get_local $5)
   (get_local $7)
  )
 )
 (func $~lib/string/parseI32 (; 318 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/internal/string/parse<i32>
   (get_local $0)
   (get_local $1)
  )
 )
 (func $round/CardAnalyseResult#constructor (; 319 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store8
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 2)
        )
       )
       (i32.store8
        (get_local $3)
        (i32.const 0)
       )
       (i32.store8 offset=1
        (get_local $3)
        (i32.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i32.store8 offset=1
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $round/NiuNiuHelper.getValueFromNum (; 320 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.add
    (i32.div_u
     (i32.and
      (i32.sub
       (get_local $0)
       (i32.const 2)
      )
      (i32.const 255)
     )
     (i32.const 4)
    )
    (i32.const 1)
   )
  )
  (set_local $1
   (if (result i32)
    (i32.gt_u
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 9)
    )
    (i32.const 0)
    (get_local $1)
   )
  )
  (i32.div_u
   (i32.and
    (i32.sub
     (get_local $0)
     (i32.const 2)
    )
    (i32.const 255)
   )
   (i32.const 4)
  )
 )
 (func $round/NiuNiuHelper.hasNiu (; 321 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eq
   (i32.rem_u
    (i32.and
     (i32.add
      (i32.add
       (call $round/NiuNiuHelper.getValueFromNum
        (call $~lib/array/Array<u8>#__get
         (get_local $0)
         (i32.const 0)
        )
       )
       (call $round/NiuNiuHelper.getValueFromNum
        (call $~lib/array/Array<u8>#__get
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (call $round/NiuNiuHelper.getValueFromNum
       (call $~lib/array/Array<u8>#__get
        (get_local $0)
        (i32.const 2)
       )
      )
     )
     (i32.const 255)
    )
    (i32.const 10)
   )
   (i32.const 0)
  )
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 322 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $2)
     (i32.const 1)
    )
   )
   (block $~lib/memory/memory.fill|inlined.9
    (set_local $4
     (i32.add
      (get_local $3)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
    )
    (set_local $5
     (i32.const 0)
    )
    (call $~lib/internal/memory/memset
     (get_local $4)
     (get_local $5)
     (get_local $1)
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/set/Set<i32>#clear (; 323 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/set/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 32)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/set/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i32>#constructor (; 324 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=16
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $1)
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash32 (; 325 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (get_global $~lib/internal/hash/FNV_OFFSET)
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (i32.shr_u
       (get_local $0)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (i32.shr_u
       (get_local $0)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.shr_u
      (get_local $0)
      (i32.const 24)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/hash/hash<i32> (; 326 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash32
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i32>#find (; 327 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load offset=8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (i32.and
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (get_global $~lib/set/BUCKET_SIZE)
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $3)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=4
             (get_local $3)
            )
            (get_global $~lib/set/EMPTY)
           )
          )
         )
         (i32.eq
          (i32.load
           (get_local $3)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $3)
        )
       )
       (set_local $3
        (i32.and
         (i32.load offset=4
          (get_local $3)
         )
         (i32.xor
          (get_global $~lib/set/EMPTY)
          (i32.const -1)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/set/Set<i32>#rehash (; 328 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/set/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/set/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/set/ENTRY_SIZE<i32>|inlined.1 (result i32)
      (i32.const 8)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<i32>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=4
           (get_local $9)
          )
          (get_global $~lib/set/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store
          (get_local $10)
          (i32.load
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i32>|inlined.0 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i32>|inlined.0
             (call $~lib/internal/hash/hash32
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/set/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/set/ENTRY_SIZE<i32>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<i32>|inlined.4 (result i32)
          (i32.const 8)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i32>#add (; 329 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<i32>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/set/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
       )
       (i32.or
        (i32.shl
         (i32.load offset=4
          (get_local $0)
         )
         (i32.const 1)
        )
        (i32.const 1)
       )
      )
     )
    )
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<i32>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (get_local $3)
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $5
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $2)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/set/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<i32>#has (; 330 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i32>#delete (; 331 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i32>|inlined.1 (result i32)
     (br $~lib/internal/hash/hash<i32>|inlined.1
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
     (get_local $2)
    )
    (get_global $~lib/set/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/set/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/set/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $round/NiuNiuHelper.isShunZi (; 332 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/set/Set<i32>#constructor
    (i32.const 0)
   )
  )
  (set_local $3
   (get_local $1)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (block $~lib/array/Array<u8>#get:length|inlined.12 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $2)
     (i32.sub
      (get_local $3)
      (get_local $4)
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|1
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (block $~lib/array/Array<u8>#get:length|inlined.14 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<i32>#has
        (get_local $2)
        (i32.and
         (call $~lib/array/Array<u8>#__get
          (get_local $0)
          (get_local $4)
         )
         (i32.const 255)
        )
       )
      )
      (return
       (i32.const 0)
      )
     )
     (drop
      (call $~lib/set/Set<i32>#delete
       (get_local $2)
       (i32.and
        (call $~lib/array/Array<u8>#__get
         (get_local $0)
         (get_local $4)
        )
        (i32.const 255)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (i32.const 1)
 )
 (func $round/NiuNiuHelper.getColorFromNum (; 333 ;) (type $ii) (param $0 i32) (result i32)
  (i32.rem_u
   (i32.and
    (i32.sub
     (get_local $0)
     (i32.const 2)
    )
    (i32.const 255)
   )
   (i32.const 4)
  )
 )
 (func $round/NiuNiuHelper.isTongHua (; 334 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $round/NiuNiuHelper.getColorFromNum
    (call $~lib/array/Array<u8>#__get
     (get_local $0)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u8>#get:length|inlined.16 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (if
     (i32.ne
      (call $round/NiuNiuHelper.getColorFromNum
       (call $~lib/array/Array<u8>#__get
        (get_local $0)
        (get_local $2)
       )
      )
      (get_local $1)
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/array/Array<u8>#slice (; 335 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
   (if
    (i32.gt_s
     (get_local $1)
     (get_local $3)
    )
    (set_local $1
     (get_local $3)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (i32.add
     (get_local $3)
     (get_local $2)
    )
   )
   (if
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
    (set_local $2
     (get_local $3)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (get_local $1)
   )
   (set_local $2
    (get_local $1)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $2)
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.ge_s
     (get_local $6)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $7
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (get_local $6)
   )
  )
  (if
   (get_local $6)
   (block $~lib/memory/memory.copy|inlined.4
    (set_local $4
     (i32.add
      (i32.load
       (get_local $7)
      )
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
    )
    (set_local $5
     (i32.add
      (i32.add
       (i32.load
        (get_local $0)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.shl
       (get_local $1)
       (i32.const 0)
      )
     )
    )
    (set_local $8
     (i32.shl
      (get_local $6)
      (i32.const 0)
     )
    )
    (call $~lib/internal/memory/memmove
     (get_local $4)
     (get_local $5)
     (get_local $8)
    )
   )
  )
  (get_local $7)
 )
 (func $~lib/array/Array<u8>#slice|trampoline (; 336 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (get_global $~argc)
      )
     )
     (unreachable)
    )
    (set_local $1
     (i32.const 0)
    )
   )
   (set_local $2
    (get_global $~lib/builtins/i32.MAX_VALUE)
   )
  )
  (call $~lib/array/Array<u8>#slice
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $round/NiuNiuHelper.isWuHua (; 337 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (block $~lib/array/Array<u8>#get:length|inlined.18 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (if
     (i32.lt_u
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $0)
        (get_local $1)
       )
       (i32.const 255)
      )
      (i32.const 38)
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $round/NiuNiuHelper.isWuXiaoNiu (; 338 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.const 0)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u8>#get:length|inlined.20 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (block
     (set_local $1
      (i32.add
       (get_local $1)
       (call $round/NiuNiuHelper.getValueFromNum
        (call $~lib/array/Array<u8>#__get
         (get_local $0)
         (get_local $2)
        )
       )
      )
     )
     (if
      (i32.gt_u
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
       (i32.const 10)
      )
      (return
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.eq
   (get_local $1)
   (i32.const 10)
  )
 )
 (func $~lib/map/Map<u8_i32>#find (; 339 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u8>#get:length|inlined.24 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (i32.load
         (get_local $0)
        )
        (get_local $2)
       )
       (i32.const 255)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
     (return
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/map/Map<u8_i32>#has (; 340 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<u8_i32>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $~lib/array/Array<i32>#__get (; 341 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<i32_i32>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u8_i32>#get (; 342 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u8_i32>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $~lib/array/Array<i32>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $~lib/array/Array<i32>#push (; 343 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32_i32>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<i32>#__set (; 344 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32_i32>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u8_i32>#set (; 345 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/map/Map<u8_i32>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<u8>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<i32>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<i32>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u8_i32>#keys (; 346 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $round/NiuNiuHelper.isZhaDan (; 347 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (i32.const 0)
  )
  (set_local $2
   (block (result i32)
    (set_local $2
     (call $~lib/memory/memory.allocate
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $2)
     (i32.const 7848)
    )
    (i32.store offset=4
     (get_local $2)
     (i32.const 7864)
    )
    (get_local $2)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (block $~lib/array/Array<u8>#get:length|inlined.22 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (block
     (if
      (call $~lib/map/Map<u8_i32>#has
       (get_local $2)
       (call $~lib/array/Array<u8>#__get
        (get_local $0)
        (get_local $4)
       )
      )
      (set_local $3
       (i32.add
        (call $~lib/map/Map<u8_i32>#get
         (get_local $2)
         (call $~lib/array/Array<u8>#__get
          (get_local $0)
          (get_local $4)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $3
       (i32.const 1)
      )
     )
     (call $~lib/map/Map<u8_i32>#set
      (get_local $2)
      (call $~lib/array/Array<u8>#__get
       (get_local $0)
       (get_local $4)
      )
      (get_local $3)
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (call $~lib/map/Map<u8_i32>#keys
    (get_local $2)
   )
  )
  (block $break|1
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $5)
       (block $~lib/array/Array<u8>#get:length|inlined.26 (result i32)
        (i32.load offset=4
         (get_local $4)
        )
       )
      )
     )
    )
    (if
     (i32.gt_s
      (call $~lib/map/Map<u8_i32>#get
       (get_local $2)
       (call $~lib/array/Array<u8>#__get
        (get_local $4)
        (get_local $5)
       )
      )
      (i32.const 3)
     )
     (return
      (i32.const 1)
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (i32.const 0)
 )
 (func $round/Round#AnalyseCard (; 348 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.const 0)
  )
  (set_local $5
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $6)
       (block $~lib/array/Array<String>#get:length|inlined.12 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (block
     (set_local $4
      (call $~lib/string/parseI32
       (call $~lib/array/Array<String>#__get
        (get_local $1)
        (get_local $6)
       )
       (i32.const 0)
      )
     )
     (drop
      (call $~lib/array/Array<u8>#push
       (get_local $5)
       (get_local $4)
      )
     )
     (if
      (i32.lt_u
       (get_local $3)
       (i32.and
        (get_local $4)
        (i32.const 255)
       )
      )
      (set_local $3
       (get_local $4)
      )
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $6
   (call $round/CardAnalyseResult#constructor
    (i32.const 0)
    (get_local $2)
    (get_local $3)
   )
  )
  (block $break|1
   (block $case18|1
    (block $case17|1
     (block $case16|1
      (block $case15|1
       (block $case14|1
        (block $case13|1
         (block $case12|1
          (block $case11|1
           (block $case10|1
            (block $case9|1
             (block $case8|1
              (block $case7|1
               (block $case6|1
                (block $case5|1
                 (block $case4|1
                  (block $case3|1
                   (block $case2|1
                    (block $case1|1
                     (block $case0|1
                      (set_local $7
                       (i32.and
                        (get_local $2)
                        (i32.const 255)
                       )
                      )
                      (br_if $case0|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 0)
                       )
                      )
                      (br_if $case1|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 1)
                       )
                      )
                      (br_if $case2|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 2)
                       )
                      )
                      (br_if $case3|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 3)
                       )
                      )
                      (br_if $case4|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 4)
                       )
                      )
                      (br_if $case5|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 5)
                       )
                      )
                      (br_if $case6|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 6)
                       )
                      )
                      (br_if $case7|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 7)
                       )
                      )
                      (br_if $case8|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 8)
                       )
                      )
                      (br_if $case9|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 9)
                       )
                      )
                      (br_if $case10|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 10)
                       )
                      )
                      (br_if $case11|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 11)
                       )
                      )
                      (br_if $case12|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 12)
                       )
                      )
                      (br_if $case13|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 13)
                       )
                      )
                      (br_if $case14|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 14)
                       )
                      )
                      (br_if $case15|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 15)
                       )
                      )
                      (br_if $case16|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 16)
                       )
                      )
                      (br_if $case17|1
                       (i32.eq
                        (get_local $7)
                        (i32.const 17)
                       )
                      )
                      (br $case18|1)
                     )
                     (br $break|1)
                    )
                   )
                  )
                 )
                )
               )
              )
             )
            )
            (call $../../src/utils/ultrain_assert
             (call $round/NiuNiuHelper.hasNiu
              (get_local $5)
             )
             (i32.const 7704)
            )
            (br $break|1)
           )
           (call $../../src/utils/ultrain_assert
            (call $round/NiuNiuHelper.hasNiu
             (get_local $5)
            )
            (i32.const 7704)
           )
           (call $../../src/utils/ultrain_assert
            (i32.eq
             (i32.and
              (i32.add
               (call $round/NiuNiuHelper.getValueFromNum
                (call $~lib/array/Array<u8>#__get
                 (get_local $5)
                 (i32.const 3)
                )
               )
               (i32.rem_u
                (call $round/NiuNiuHelper.getValueFromNum
                 (call $~lib/array/Array<u8>#__get
                  (get_local $5)
                  (i32.const 4)
                 )
                )
                (i32.const 10)
               )
              )
              (i32.const 255)
             )
             (i32.const 0)
            )
            (i32.const 7704)
           )
           (br $break|1)
          )
          (call $../../src/utils/ultrain_assert
           (if (result i32)
            (tee_local $7
             (call $round/NiuNiuHelper.hasNiu
              (get_local $5)
             )
            )
            (call $round/NiuNiuHelper.isShunZi
             (get_local $5)
             (get_local $3)
            )
            (get_local $7)
           )
           (i32.const 7704)
          )
          (br $break|1)
         )
         (call $../../src/utils/ultrain_assert
          (if (result i32)
           (tee_local $7
            (call $round/NiuNiuHelper.hasNiu
             (get_local $5)
            )
           )
           (call $round/NiuNiuHelper.isTongHua
            (get_local $5)
           )
           (get_local $7)
          )
          (i32.const 7704)
         )
         (br $break|1)
        )
        (call $../../src/utils/ultrain_assert
         (if (result i32)
          (tee_local $7
           (if (result i32)
            (tee_local $7
             (call $round/NiuNiuHelper.hasNiu
              (get_local $5)
             )
            )
            (call $round/NiuNiuHelper.isTongHua
             (call $~lib/array/Array<u8>#slice
              (get_local $5)
              (i32.const 0)
              (i32.const 3)
             )
            )
            (get_local $7)
           )
          )
          (call $round/NiuNiuHelper.isTongHua
           (block (result i32)
            (set_global $~argc
             (i32.const 1)
            )
            (call $~lib/array/Array<u8>#slice|trampoline
             (get_local $5)
             (i32.const 3)
             (i32.const 0)
            )
           )
          )
          (get_local $7)
         )
         (i32.const 7704)
        )
        (br $break|1)
       )
       (call $../../src/utils/ultrain_assert
        (call $round/NiuNiuHelper.isWuHua
         (get_local $5)
        )
        (i32.const 7704)
       )
       (br $break|1)
      )
      (call $../../src/utils/ultrain_assert
       (call $round/NiuNiuHelper.isWuXiaoNiu
        (get_local $5)
       )
       (i32.const 7704)
      )
      (br $break|1)
     )
     (call $../../src/utils/ultrain_assert
      (call $round/NiuNiuHelper.isZhaDan
       (get_local $5)
      )
      (i32.const 7704)
     )
     (br $break|1)
    )
    (call $../../src/utils/ultrain_assert
     (if (result i32)
      (tee_local $7
       (call $round/NiuNiuHelper.isShunZi
        (get_local $5)
        (get_local $3)
       )
      )
      (call $round/NiuNiuHelper.isTongHua
       (get_local $5)
      )
      (get_local $7)
     )
     (i32.const 7704)
    )
    (br $break|1)
   )
   (call $../../src/utils/ultrain_assert
    (i32.const 0)
    (i32.const 7872)
   )
  )
  (get_local $6)
 )
 (func $round/Round#toAnalyseCards (; 349 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (block $~lib/array/Array<u8>#get:length|inlined.10 (result i32)
        (set_local $5
         (i32.load
          (get_local $1)
         )
        )
        (i32.load offset=4
         (get_local $5)
        )
       )
      )
     )
    )
    (drop
     (call $~lib/array/Array<String>#push
      (get_local $3)
      (call $~lib/array/Array<String>#__get
       (get_local $2)
       (i32.and
        (call $~lib/array/Array<u8>#__get
         (i32.load
          (get_local $1)
         )
         (get_local $4)
        )
        (i32.const 255)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $round/Round#AnalyseCard
   (get_local $0)
   (get_local $3)
   (i32.load8_u offset=4
    (get_local $1)
   )
  )
 )
 (func $round/Round#compareAnalyse (; 350 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $4
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (if
   (i32.lt_u
    (i32.load8_u
     (get_local $1)
    )
    (i32.load8_u
     (get_local $2)
    )
   )
   (set_local $4
    (i32.const 1)
   )
   (if
    (i32.eq
     (i32.load8_u
      (get_local $1)
     )
     (i32.load8_u
      (get_local $2)
     )
    )
    (if
     (i32.lt_u
      (i32.load8_u offset=1
       (get_local $1)
      )
      (i32.load8_u offset=1
       (get_local $2)
      )
     )
     (set_local $4
      (i32.const 1)
     )
     (set_local $4
      (i32.const -1)
     )
    )
    (set_local $4
     (i32.const -1)
    )
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 1)
   )
   (set_local $5
    (if (result i32)
     (i32.gt_u
      (i32.load8_u
       (get_local $2)
      )
      (i32.const 0)
     )
     (i32.load8_u
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (set_local $5
    (if (result i32)
     (i32.gt_u
      (i32.load8_u
       (get_local $1)
      )
      (i32.const 0)
     )
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
  )
  (set_local $6
   (i32.and
    (call $~lib/map/Map<u64_u8>#get
     (call $round/PlayRecord#getBets4Player
      (i32.load offset=32
       (get_local $0)
      )
     )
     (get_local $3)
    )
    (i32.const 255)
   )
  )
  (i32.mul
   (i32.mul
    (get_local $4)
    (get_local $5)
   )
   (get_local $6)
  )
 )
 (func $~lib/array/Array<i16>#push (; 351 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 536870908)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 1)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i16_i16>|inlined.1
   (i32.store16 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<i16>#__get (; 352 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<i16_i16>|inlined.0 (result i32)
    (i32.load16_s offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $round/Round#calResult (; 353 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $1
   (call $~lib/array/Array<i16>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $2
   (i32.mul
    (block $~lib/array/Array<u64>#get:length|inlined.41 (result i32)
     (set_local $2
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 5)
   )
  )
  (set_local $3
   (call $~lib/array/Array<String>#slice
    (call $~lib/map/Map<u64_Array<String>>#get
     (call $round/PlayRecord#getEncryptCards
      (i32.load offset=32
       (get_local $0)
      )
     )
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (i32.load offset=12
        (get_local $0)
       )
      )
      (i32.sub
       (block $~lib/array/Array<u64>#get:length|inlined.42 (result i32)
        (set_local $3
         (i32.load offset=4
          (i32.load offset=12
           (get_local $0)
          )
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
       (i32.const 1)
      )
     )
    )
    (i32.const 0)
    (get_local $2)
   )
  )
  (set_local $4
   (call $round/PlayRecord#getDecryptKeys
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $5)
       (block $~lib/array/Array<u64>#get:length|inlined.44 (result i32)
        (set_local $6
         (i32.load offset=4
          (i32.load offset=12
           (get_local $0)
          )
         )
        )
        (i32.load offset=4
         (get_local $6)
        )
       )
      )
     )
    )
    (block
     (set_local $6
      (call $~lib/map/Map<u64_Array<String>>#get
       (get_local $4)
       (call $~lib/array/Array<u64>#__get
        (i32.load offset=4
         (i32.load offset=12
          (get_local $0)
         )
        )
        (get_local $5)
       )
      )
     )
     (block $break|1
      (set_local $7
       (i32.const 0)
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         (i32.lt_s
          (get_local $7)
          (block $~lib/array/Array<String>#get:length|inlined.10 (result i32)
           (i32.load offset=4
            (get_local $3)
           )
          )
         )
        )
       )
       (call $~lib/array/Array<String>#__set
        (get_local $3)
        (get_local $7)
        (call $round/Round#decrypt
         (get_local $0)
         (call $~lib/array/Array<String>#__get
          (get_local $3)
          (get_local $5)
         )
         (call $~lib/array/Array<String>#__get
          (get_local $6)
          (get_local $7)
         )
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $5
   (call $round/Round#toAnalyseCards
    (get_local $0)
    (i32.load offset=28
     (i32.load offset=16
      (get_local $0)
     )
    )
    (get_local $3)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (call $round/PlayRecord#getPlayCards
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (block $break|2
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (block $~lib/array/Array<Cards>#get:length|inlined.3 (result i32)
        (i32.load offset=4
         (get_local $7)
        )
       )
      )
     )
    )
    (if
     (i64.ne
      (call $~lib/array/Array<u64>#__get
       (i32.load offset=4
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_local $8)
      )
      (i64.load offset=24
       (get_local $0)
      )
     )
     (block
      (set_local $9
       (call $round/Round#toAnalyseCards
        (get_local $0)
        (call $~lib/array/Array<Cards>#__get
         (get_local $7)
         (get_local $8)
        )
        (get_local $3)
       )
      )
      (drop
       (call $~lib/array/Array<i16>#push
        (get_local $1)
        (call $round/Round#compareAnalyse
         (get_local $0)
         (get_local $5)
         (get_local $9)
         (call $~lib/array/Array<u64>#__get
          (i32.load offset=4
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_local $8)
         )
        )
       )
      )
     )
     (block
      (set_local $6
       (get_local $8)
      )
      (drop
       (call $~lib/array/Array<i16>#push
        (get_local $1)
        (i32.const 0)
       )
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (set_local $8
   (i32.const 0)
  )
  (block $break|3
   (set_local $9
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_s
       (get_local $9)
       (block $~lib/array/Array<i16>#get:length|inlined.1 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (set_local $8
     (i32.sub
      (get_local $8)
      (call $~lib/array/Array<i16>#__get
       (get_local $1)
       (get_local $9)
      )
     )
    )
    (set_local $9
     (i32.add
      (get_local $9)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (call $~lib/array/Array<i16>#__set
   (get_local $1)
   (get_local $6)
   (get_local $8)
  )
  (get_local $1)
 )
 (func $round/PlayRecord#getResult (; 354 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 9)
   )
  )
  (if
   (i32.eqz
    (call $~lib/map/Map<u8_bool>#has
     (i32.load offset=20
      (get_local $0)
     )
     (i32.const 9)
    )
   )
   (if
    (call $util/DBHelper/DBHelper#exist
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (block
     (set_local $2
      (call $util/DBHelper/DBHelper#get
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (i32.store offset=56
      (get_local $0)
      (call $~lib/datastream/DataStream#readVector<i16>
       (get_local $2)
      )
     )
     (call $~lib/map/Map<u8_bool>#set
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 9)
      (i32.const 1)
     )
    )
   )
  )
  (i32.load offset=56
   (get_local $0)
  )
 )
 (func $~lib/datastream/DataStream#write<i16> (; 355 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $~lib/datastream/DataStream#isMeasureMode
     (get_local $0)
    )
   )
   (i32.store16
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/datastream/DataStream#writeVector<i16> (; 356 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<i16>#get:length|inlined.4 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $~lib/datastream/DataStream#write<i16>
     (get_local $0)
     (call $~lib/array/Array<i16>#__get
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $round/PlayRecord#saveResult (; 357 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (call $round/PlayRecord#getID
    (get_local $0)
    (i64.const 9)
   )
  )
  (set_local $2
   (i32.load offset=56
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $~lib/datastream/DataStream#writeVector<i16>
   (get_local $3)
   (get_local $2)
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (call $~lib/datastream/DataStream#writeVector<i16>
   (get_local $5)
   (get_local $2)
  )
  (if
   (call $util/DBHelper/DBHelper#exist
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#update
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
   (call $util/DBHelper/DBHelper#insert
    (i32.load
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (get_local $5)
    (get_local $1)
   )
  )
 )
 (func $round/Round#settle (; 358 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load offset=20
     (get_local $0)
    )
    (get_global $round/RoundStag.SETTLE)
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (i32.const 6528)
     (call $../../src/utils/intToString
      (i64.extend_s/i32
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.const 7504)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#isPlayer
    (get_local $0)
    (call $../../src/action/Action.get:sender)
   )
   (i32.const 6184)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/map/Map<u64_Array<i16>>#has
     (call $round/PlayRecord#getPostResult
      (i32.load offset=32
       (get_local $0)
      )
     )
     (call $../../src/action/Action.get:sender)
    )
   )
   (i32.const 7600)
  )
  (set_local $2
   (i64.load offset=16
    (i32.load offset=16
     (get_local $0)
    )
   )
  )
  (set_local $3
   (call $round/Round#calResult
    (get_local $0)
   )
  )
  (set_local $4
   (call $round/PlayRecord#getResult
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $5)
       (block $~lib/array/Array<i16>#get:length|inlined.3 (result i32)
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (drop
     (call $~lib/array/Array<i16>#push
      (get_local $4)
      (call $~lib/array/Array<i16>#__get
       (get_local $3)
       (get_local $5)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $round/PlayRecord#saveResult
   (i32.load offset=32
    (get_local $0)
   )
  )
  (get_local $3)
 )
 (func $room/Room#settle (; 359 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (set_local $2
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (drop
   (call $round/Round#settle
    (get_local $2)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const -1)
   )
   (block
    (i32.store8 offset=8
     (get_local $0)
     (i32.add
      (i32.load8_s offset=8
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (call $room/Room#modifyRoom
     (get_local $0)
    )
   )
  )
  (if
   (i32.gt_s
    (i32.load8_s offset=8
     (get_local $0)
    )
    (i32.load8_s offset=2
     (i32.load
      (get_local $0)
     )
    )
   )
   (block
    (i32.store8 offset=8
     (get_local $0)
     (i32.const -1)
    )
    (call $room/Room#modifyRoom
     (get_local $0)
    )
   )
  )
 )
 (func $~lib/array/Array<u64>#splice (; 360 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 1)
   )
   (return)
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $1)
    (get_local $3)
   )
   (return)
  )
  (set_local $2
   (select
    (tee_local $4
     (get_local $2)
    )
    (tee_local $5
     (i32.sub
      (get_local $3)
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $~lib/memory/memory.copy|inlined.5
   (set_local $4
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (get_local $1)
      (i32.const 3)
     )
    )
   )
   (set_local $5
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (i32.const 3)
     )
    )
   )
   (set_local $7
    (i32.shl
     (get_local $2)
     (i32.const 3)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $4)
    (get_local $5)
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $~lib/map/Map<u64_u64>#delete (; 361 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const -1)
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<u64>#splice
   (i32.load
    (get_local $0)
   )
   (get_local $2)
   (i32.const 1)
  )
  (call $~lib/array/Array<u64>#splice
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
   (i32.const 1)
  )
  (i32.const 1)
 )
 (func $niuniu/NiuNiuContract#settle (; 362 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $room/Room#settle
   (get_local $3)
   (get_local $2)
  )
  (if
   (i32.eq
    (i32.load8_s offset=8
     (get_local $3)
    )
    (i32.const -1)
   )
   (drop
    (call $~lib/map/Map<u64_u64>#delete
     (i32.load offset=24
      (get_local $0)
     )
     (i64.load offset=40
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $room/Room#quitRoom (; 363 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (call $~lib/array/Array<u64>#__get
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (i32.const 8072)
  )
  (set_local $2
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (block $~lib/array/Array<u64>#get:length|inlined.46 (result i32)
        (set_local $4
         (i32.load offset=4
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $4)
        )
       )
      )
     )
    )
    (if
     (i64.ne
      (get_local $1)
      (call $~lib/array/Array<u64>#__get
       (i32.load offset=4
        (get_local $0)
       )
       (get_local $3)
      )
     )
     (drop
      (call $~lib/array/Array<u64>#push
       (get_local $2)
       (call $~lib/array/Array<u64>#__get
        (i32.load offset=4
         (get_local $0)
        )
        (get_local $3)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.lt_s
    (block $~lib/array/Array<u64>#get:length|inlined.47 (result i32)
     (i32.load offset=4
      (get_local $2)
     )
    )
    (block $~lib/array/Array<u64>#get:length|inlined.48 (result i32)
     (set_local $3
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
   (i32.const 4944)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
 )
 (func $niuniu/NiuNiuContract#quitRoom (; 364 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (set_local $2
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $2)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load8_s offset=8
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 7960)
  )
  (call $room/Room#quitRoom
   (get_local $2)
   (call $../../src/action/Action.get:sender)
  )
 )
 (func $room/Room#proposalDissolveRoom (; 365 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/utils/ultrain_assert
   (call $~lib/array/Array<u64>#includes
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
    (i32.const 0)
   )
   (i32.const 4944)
  )
  (i32.store offset=20
   (get_local $0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=20
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
 )
 (func $niuniu/NiuNiuContract#proposalDissolveRoom (; 366 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (set_local $2
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $2)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (i32.load8_s offset=8
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 8200)
  )
  (call $room/Room#proposalDissolveRoom
   (get_local $2)
   (call $../../src/action/Action.get:sender)
  )
 )
 (func $room/Room#responseProposal (; 367 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (call $~lib/array/Array<u64>#includes
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
    (i32.const 0)
   )
   (i32.const 4944)
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (block $~lib/array/Array<u64>#get:length|inlined.49 (result i32)
     (set_local $2
      (i32.load offset=20
       (get_local $0)
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 8312)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $~lib/array/Array<u64>#includes
     (i32.load offset=20
      (get_local $0)
     )
     (get_local $1)
     (i32.const 0)
    )
   )
   (i32.const 8408)
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=20
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (if
   (i32.eq
    (block $~lib/array/Array<u64>#get:length|inlined.52 (result i32)
     (set_local $2
      (i32.load offset=20
       (get_local $0)
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (block $~lib/array/Array<u64>#get:length|inlined.53 (result i32)
     (set_local $2
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
   )
   (i32.store8 offset=8
    (get_local $0)
    (i32.const -1)
   )
  )
  (call $room/Room#modifyRoom
   (get_local $0)
  )
 )
 (func $niuniu/NiuNiuContract#responseProposal (; 368 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (set_local $2
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $2)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (i32.load8_s offset=8
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 8200)
  )
  (call $room/Room#responseProposal
   (get_local $2)
   (call $../../src/action/Action.get:sender)
  )
  (if
   (i32.eq
    (i32.load8_s offset=8
     (get_local $2)
    )
    (i32.const -1)
   )
   (drop
    (call $~lib/map/Map<u64_u64>#delete
     (i32.load offset=24
      (get_local $0)
     )
     (i64.load offset=40
      (i32.load
       (get_local $2)
      )
     )
    )
   )
  )
 )
 (func $niuniu/NiuNiuContract#findCheat (; 369 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (nop)
 )
 (func $room/Room#findOverTime (; 370 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (set_local $2
   (call $room/Room#getCurrentRound
    (get_local $0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 8528)
  )
  (call $../../src/utils/ultrain_assert
   (call $~lib/array/Array<u64>#includes
    (i32.load offset=4
     (get_local $0)
    )
    (call $../../src/action/Action.get:sender)
    (i32.const 0)
   )
   (i32.const 8656)
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (call $../../src/time/now)
   )
  )
  (if
   (i32.eq
    (i32.load offset=20
     (get_local $2)
    )
    (i32.load offset=16
     (call $~lib/array/Array<ActionRecord>#__get
      (get_local $3)
      (i32.const 0)
     )
    )
   )
   (nop)
   (nop)
  )
 )
 (func $niuniu/NiuNiuContract#findOverTime (; 371 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $1)
   )
   (i32.const 4032)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (i32.load8_s offset=8
     (get_local $3)
    )
    (i32.const 0)
   )
   (i32.const 8200)
  )
  (call $room/Room#findOverTime
   (get_local $3)
   (get_local $2)
  )
  (if
   (i32.eq
    (i32.load8_s offset=8
     (get_local $3)
    )
    (i32.const -1)
   )
   (drop
    (call $~lib/map/Map<u64_u64>#delete
     (i32.load offset=24
      (get_local $0)
     )
     (i64.load offset=40
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $../../src/return/Return<u64> (; 372 ;) (type $Iv) (param $0 i64)
  (call $../../src/return/env.set_result_int
   (get_local $0)
  )
 )
 (func $niuniu/NiuNiuContract#getRoomMap (; 373 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/utils/ultrain_assert
   (call $~lib/map/Map<u64_u64>#has
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $1)
   )
   (i32.const 8768)
  )
  (call $../../src/return/Return<u64>
   (call $~lib/map/Map<u64_u64>#get
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $../../src/return/Return<String> (; 374 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_str
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
  )
 )
 (func $../../src/return/Return<u8> (; 375 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_int
   (i64.extend_u/i32
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
   )
  )
 )
 (func $../../src/return/Return<i8> (; 376 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_int
   (i64.extend_s/i32
    (i32.shr_s
     (i32.shl
      (get_local $0)
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
  )
 )
 (func $../../src/return/Return<i32> (; 377 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_int
   (i64.extend_s/i32
    (get_local $0)
   )
  )
 )
 (func $room/Room#ReturnString (; 378 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<String>
   (i32.const 8936)
  )
  (call $../../src/return/Return<u8>
   (i32.load8_u
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 8984)
  )
  (call $../../src/return/Return<u8>
   (i32.load8_u offset=1
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9008)
  )
  (call $../../src/return/Return<i8>
   (i32.load8_s offset=2
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9040)
  )
  (call $../../src/return/Return<u8>
   (i32.load8_u offset=3
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9064)
  )
  (call $../../src/return/Return<u64>
   (i64.load offset=8
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9096)
  )
  (call $../../src/return/Return<u8>
   (i32.load8_u offset=16
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9128)
  )
  (call $../../src/return/Return<u64>
   (i64.load offset=40
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9160)
  )
  (call $../../src/return/Return<u64>
   (i64.load offset=32
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9192)
  )
  (call $../../src/return/Return<i8>
   (i32.load8_s offset=8
    (get_local $0)
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9216)
  )
  (call $../../src/return/Return<i32>
   (i32.load offset=48
    (i32.load
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 744)
  )
 )
 (func $niuniu/NiuNiuContract#getRoomInfo (; 379 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $room/Room#ReturnString
   (get_local $3)
  )
 )
 (func $round/Round#ReturnString (; 380 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<String>
   (i32.const 9368)
  )
  (call $../../src/return/Return<i32>
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9392)
  )
  (call $../../src/return/Return<u64>
   (i64.load offset=24
    (get_local $0)
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9416)
  )
  (call $../../src/return/Return<i32>
   (i32.load offset=8
    (i32.load offset=16
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9440)
  )
  (call $../../src/return/Return<String>
   (i32.load offset=28
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 9456)
  )
  (call $../../src/return/Return<String>
   (i32.load offset=24
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (call $../../src/return/Return<String>
   (i32.const 744)
  )
 )
 (func $niuniu/NiuNiuContract#getRoundInfo (; 381 ;) (type $iIiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (set_local $5
   (i64.add
    (i64.mul
     (get_local $1)
     (i64.const 100)
    )
    (i64.extend_u/i32
     (i32.and
      (get_local $2)
      (i32.const 255)
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $5)
   )
   (i32.const 9280)
  )
  (call $round/Round#ReturnString
   (get_local $4)
  )
 )
 (func $../../lib/name/RN (; 382 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $1
   (i32.const 9600)
  )
  (set_local $2
   (get_local $0)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_u
       (get_local $3)
       (i32.const 12)
      )
     )
    )
    (block
     (set_local $4
      (i32.wrap/i64
       (i64.and
        (get_local $2)
        (if (result i64)
         (i32.eq
          (get_local $3)
          (i32.const 0)
         )
         (i64.const 15)
         (i64.const 31)
        )
       )
      )
     )
     (set_local $5
      (i32.and
       (call $~lib/string/String#charCodeAt
        (i32.const 9496)
        (get_local $4)
       )
       (i32.const 255)
      )
     )
     (call $~lib/array/Array<u8>#__set
      (get_local $1)
      (i32.sub
       (i32.const 12)
       (get_local $3)
      )
      (get_local $5)
     )
     (set_local $2
      (i64.shr_u
       (get_local $2)
       (if (result i64)
        (i32.eq
         (get_local $3)
         (i32.const 0)
        )
        (i64.const 4)
        (i64.const 5)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $3
   (i32.const 2928)
  )
  (set_local $5
   (i32.const 1)
  )
  (block $break|1
   (set_local $4
    (i32.const 12)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.ge_s
       (get_local $4)
       (i32.const 0)
      )
     )
    )
    (if
     (if (result i32)
      (tee_local $6
       (i32.eq
        (i32.and
         (call $~lib/array/Array<u8>#__get
          (get_local $1)
          (get_local $4)
         )
         (i32.const 255)
        )
        (i32.const 46)
       )
      )
      (get_local $5)
      (get_local $6)
     )
     (nop)
     (block
      (set_local $5
       (i32.const 0)
      )
      (set_local $6
       (i32.sub
        (call $~lib/array/Array<u8>#__get
         (get_local $1)
         (get_local $4)
        )
        (i32.const 32)
       )
      )
      (set_local $3
       (call $~lib/string/String.__concat
        (call $~lib/array/Array<String>#__get
         (get_global $../../src/utils/PrintableChar)
         (i32.and
          (get_local $6)
          (i32.const 255)
         )
        )
        (get_local $3)
       )
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (get_local $3)
 )
 (func $../../src/account/RNAME (; 383 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/name/RN
   (get_local $0)
  )
 )
 (func $../../src/return/ReturnArray<String> (; 384 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (block $~lib/array/Array<String>#get:length|inlined.14 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (call $../../src/return/Return<String>
     (call $~lib/array/Array<String>#__get
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $niuniu/NiuNiuContract#getPlayers (; 385 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $3)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (set_local $4
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $5)
       (block $~lib/array/Array<u64>#get:length|inlined.55 (result i32)
        (set_local $6
         (i32.load offset=4
          (get_local $3)
         )
        )
        (i32.load offset=4
         (get_local $6)
        )
       )
      )
     )
    )
    (drop
     (call $~lib/array/Array<String>#push
      (get_local $4)
      (call $~lib/string/String.__concat
       (call $~lib/string/String.__concat
        (i32.const 24)
        (call $../../src/account/RNAME
         (call $~lib/array/Array<u64>#__get
          (i32.load offset=4
           (get_local $3)
          )
          (get_local $5)
         )
        )
       )
       (i32.const 24)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $../../src/return/ReturnArray<String>
   (get_local $4)
  )
 )
 (func $../../src/return/ReturnArray<u64> (; 386 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (block $~lib/array/Array<u64>#get:length|inlined.57 (result i32)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (call $../../src/return/Return<u64>
     (call $~lib/array/Array<u64>#__get
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $niuniu/NiuNiuContract#getCheckInNum (; 387 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/ReturnArray<u64>
   (call $~lib/map/Map<u64_u64>#keys
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
 )
 (func $room/Room#getShuffleCards (; 388 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_Array<String>>#get
   (call $round/PlayRecord#getShuffleCards
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getShuffleCards (; 389 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/ReturnArray<String>
   (call $room/Room#getShuffleCards
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getEncryptCards (; 390 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_Array<String>>#get
   (call $round/PlayRecord#getEncryptCards
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getEncryptCards (; 391 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/ReturnArray<String>
   (call $room/Room#getEncryptCards
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getShuffleEnKeys (; 392 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_String>#get
   (call $round/PlayRecord#getShuffleEnKeys
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getShuffleEnKeys (; 393 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/Return<String>
   (call $room/Room#getShuffleEnKeys
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getShuffleDeKeys (; 394 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_String>#get
   (call $round/PlayRecord#getShuffleDeKeys
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getShuffleDeKeys (; 395 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/Return<String>
   (call $room/Room#getShuffleDeKeys
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getEncryptKeys (; 396 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_Array<String>>#get
   (call $round/PlayRecord#getEncryptKeys
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getEncryptKeys (; 397 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/ReturnArray<String>
   (call $room/Room#getEncryptKeys
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getDecryptKeys (; 398 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_Array<String>>#get
   (call $round/PlayRecord#getDecryptKeys
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getDecryptKeys (; 399 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/ReturnArray<String>
   (call $room/Room#getDecryptKeys
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getBets4Player (; 400 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (call $~lib/map/Map<u64_u8>#get
   (call $round/PlayRecord#getBets4Player
    (i32.load offset=32
     (get_local $4)
    )
   )
   (get_local $2)
  )
 )
 (func $niuniu/NiuNiuContract#getBets4Player (; 401 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (call $../../src/return/Return<u8>
   (call $room/Room#getBets4Player
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $room/Room#getPlayCards (; 402 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (i64.add
    (i64.mul
     (i64.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 100)
    )
    (get_local $1)
   )
  )
  (set_local $4
   (call $round/Round#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $round/Round#getRound
    (get_local $4)
    (get_local $3)
   )
   (i32.const 5512)
  )
  (set_local $5
   (call $round/PlayRecord#getPlayCards
    (i32.load offset=32
     (get_local $4)
    )
   )
  )
  (call $~lib/array/Array<Cards>#__get
   (get_local $5)
   (get_local $2)
  )
 )
 (func $round/Cards#toString (; 403 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i32.const 9928)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<u8>#get:length|inlined.28 (result i32)
        (set_local $3
         (i32.load
          (get_local $0)
         )
        )
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (block
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (call $../../src/utils/intToString
        (i64.extend_u/i32
         (i32.and
          (call $~lib/array/Array<u8>#__get
           (i32.load
            (get_local $0)
           )
           (get_local $2)
          )
          (i32.const 255)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (get_local $2)
       (i32.sub
        (block $~lib/array/Array<u8>#get:length|inlined.30 (result i32)
         (set_local $3
          (i32.load
           (get_local $0)
          )
         )
         (i32.load offset=4
          (get_local $3)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (call $~lib/string/String.__concat
        (get_local $1)
        (i32.const 104)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $1
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (call $~lib/string/String.__concat
      (get_local $1)
      (i32.const 9952)
     )
     (call $../../src/utils/intToString
      (i64.extend_u/i32
       (i32.load8_u offset=4
        (get_local $0)
       )
      )
     )
    )
    (i32.const 744)
   )
  )
  (get_local $1)
 )
 (func $niuniu/NiuNiuContract#getPlayCards (; 404 ;) (type $iIIiIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (call $room/Room#constructor
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $room/Room#getRoom
    (get_local $5)
    (get_local $1)
   )
   (i32.const 8872)
  )
  (set_local $6
   (call $room/Room#getPlayCards
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
  (call $../../src/return/Return<String>
   (call $round/Cards#toString
    (get_local $6)
   )
  )
 )
 (func $../../src/contract/Contract#onStop (; 405 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $niuniu/apply (; 406 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $4
     (call $niuniu/NiuNiuContract#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (set_local $5
     (call $../../src/contract/Contract#getDataStream
      (get_local $4)
     )
    )
    (call $../../src/contract/Contract#setActionName
     (get_local $4)
     (get_local $2)
     (get_local $3)
    )
    (call $../../src/contract/Contract#onInit
     (get_local $4)
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 2672)
     )
     (block
      (set_local $6
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $7
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $8
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $9
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $11
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#createRoom
       (get_local $4)
       (get_local $6)
       (get_local $7)
       (get_local $8)
       (get_local $9)
       (get_local $10)
       (get_local $11)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 3296)
     )
     (block
      (set_local $11
       (call $../../src/asset/Asset#constructor
        (i32.const 0)
        (i64.const 0)
        (i64.const 1397183748)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (get_local $11)
       (get_local $5)
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#checkIn
       (get_local $4)
       (get_local $11)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 4016)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#start
       (get_local $4)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 4104)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $11
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (set_local $9
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#setPQ
       (get_local $4)
       (get_local $12)
       (get_local $11)
       (get_local $9)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 4880)
     )
     (block
      (set_local $9
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#shuffleCard
       (get_local $4)
       (get_local $9)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 6112)
     )
     (block
      (set_local $9
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#encryptCard
       (get_local $4)
       (get_local $9)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 6144)
     )
     (block
      (set_local $9
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $11
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#uploadEncryptKey
       (get_local $4)
       (get_local $9)
       (get_local $11)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 6392)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#scrambleBanker
       (get_local $4)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 6600)
     )
     (block
      (set_local $11
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#bet
       (get_local $4)
       (get_local $11)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 6768)
     )
     (block
      (set_local $11
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $9
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#uploadLastEncryptKey
       (get_local $4)
       (get_local $11)
       (get_local $9)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 6944)
     )
     (block
      (set_local $9
       (call $~lib/datastream/DataStream#readVector<u8>
        (get_local $5)
       )
      )
      (set_local $11
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $8
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $7
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#discard
       (get_local $4)
       (get_local $9)
       (get_local $11)
       (get_local $8)
       (get_local $7)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 7360)
     )
     (block
      (set_local $7
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (set_local $8
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#uploadShuffleKeys
       (get_local $4)
       (get_local $7)
       (get_local $8)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 7488)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $8
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#settle
       (get_local $4)
       (get_local $12)
       (get_local $8)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 7936)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#quitRoom
       (get_local $4)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 8152)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#proposalDissolveRoom
       (get_local $4)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 8272)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#responseProposal
       (get_local $4)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 8472)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#findCheat
       (get_local $4)
       (get_local $12)
       (get_local $10)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 8496)
     )
     (block
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#findOverTime
       (get_local $4)
       (get_local $10)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 8744)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getRoomMap
       (get_local $4)
       (get_local $12)
       (get_local $10)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 8840)
     )
     (block
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getRoomInfo
       (get_local $4)
       (get_local $10)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9248)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $8
       (call $~lib/datastream/DataStream#read<u8>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getRoundInfo
       (get_local $4)
       (get_local $12)
       (get_local $8)
       (get_local $10)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9472)
     )
     (block
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getPlayers
       (get_local $4)
       (get_local $10)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9608)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getCheckInNum
       (get_local $4)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9640)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getShuffleCards
       (get_local $4)
       (get_local $12)
       (get_local $10)
       (get_local $13)
       (get_local $14)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9680)
     )
     (block
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getEncryptCards
       (get_local $4)
       (get_local $14)
       (get_local $13)
       (get_local $10)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9720)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getShuffleEnKeys
       (get_local $4)
       (get_local $12)
       (get_local $10)
       (get_local $13)
       (get_local $14)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9760)
     )
     (block
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getShuffleDeKeys
       (get_local $4)
       (get_local $14)
       (get_local $13)
       (get_local $10)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9800)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getEncryptKeys
       (get_local $4)
       (get_local $12)
       (get_local $10)
       (get_local $13)
       (get_local $14)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9832)
     )
     (block
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getDecryptKeys
       (get_local $4)
       (get_local $14)
       (get_local $13)
       (get_local $10)
       (get_local $12)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9864)
     )
     (block
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getBets4Player
       (get_local $4)
       (get_local $12)
       (get_local $10)
       (get_local $13)
       (get_local $14)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 9896)
     )
     (block
      (set_local $14
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $13
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $8
       (call $~lib/datastream/DataStream#read<i32>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (call $niuniu/NiuNiuContract#getPlayCards
       (get_local $4)
       (get_local $14)
       (get_local $13)
       (get_local $8)
       (get_local $10)
      )
     )
    )
    (call $../../src/contract/Contract#onStop
     (get_local $4)
    )
   )
  )
 )
 (func $start (; 407 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (nop)
  (set_global $../../src/log/Log
   (block (result i32)
    (set_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 0)
     )
    )
    (get_local $0)
   )
  )
  (set_global $../../src/asset/SYS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1280)
   )
  )
  (set_global $../../src/asset/SYS_NAME
   (i64.shr_u
    (get_global $../../src/asset/SYS)
    (i64.const 8)
   )
  )
 )
 (func $null (; 408 ;) (type $v)
 )
)
