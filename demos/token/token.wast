(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $I (func (result i64)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $v (func))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $Iv (func (param i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $iiiIi (func (param i32 i32 i32 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iIiIv (func (param i32 i64 i32 i64)))
 (type $iIIiii (func (param i32 i64 i64 i32 i32) (result i32)))
 (type $iIIiiv (func (param i32 i64 i64 i32 i32)))
 (type $Ii (func (param i64) (result i32)))
 (import "env" "ultrainio_assert" (func $../../internal/system.d/env.ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $../../src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $../../src/log/env.ts_log_done))
 (import "env" "action_data_size" (func $../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $../../internal/action.d/env.require_auth (param i64)))
 (import "env" "db_find_i64" (func $../../internal/db.d/env.db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $../../internal/db.d/env.db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_receiver" (func $../../internal/action.d/env.current_receiver (result i64)))
 (import "env" "db_store_i64" (func $../../internal/db.d/env.db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $../../internal/db.d/env.db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "send_inline" (func $../../internal/action.d/env.send_inline (param i32 i32)))
 (import "env" "is_account" (func $../../internal/action.d/env.is_account (param i64) (result i32)))
 (import "env" "require_recipient" (func $../../internal/action.d/env.require_recipient (param i64)))
 (import "env" "db_remove_i64" (func $../../internal/db.d/env.db_remove_i64 (param i32)))
 (import "env" "ultrainio_exit" (func $../../internal/system.d/env.ultrainio_exit (param i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $../../src/balance/SYS (mut i64) (i64.const 0))
 (global $../../src/balance/SYS_NAME (mut i64) (i64.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 3940))
 (memory $0 1)
 (data (i32.const 4) "\01\00\00\00 ")
 (data (i32.const 12) "\01\00\00\00!")
 (data (i32.const 20) "\01\00\00\00\"")
 (data (i32.const 28) "\01\00\00\00#")
 (data (i32.const 36) "\01\00\00\00$")
 (data (i32.const 44) "\01\00\00\00%")
 (data (i32.const 52) "\01\00\00\00&")
 (data (i32.const 60) "\01\00\00\00\'")
 (data (i32.const 68) "\01\00\00\00(")
 (data (i32.const 76) "\01\00\00\00)")
 (data (i32.const 84) "\01\00\00\00*")
 (data (i32.const 92) "\01\00\00\00+")
 (data (i32.const 100) "\01\00\00\00,")
 (data (i32.const 108) "\01\00\00\00-")
 (data (i32.const 116) "\01\00\00\00.")
 (data (i32.const 124) "\01\00\00\00/")
 (data (i32.const 132) "\01\00\00\000")
 (data (i32.const 140) "\01\00\00\001")
 (data (i32.const 148) "\01\00\00\002")
 (data (i32.const 156) "\01\00\00\003")
 (data (i32.const 164) "\01\00\00\004")
 (data (i32.const 172) "\01\00\00\005")
 (data (i32.const 180) "\01\00\00\006")
 (data (i32.const 188) "\01\00\00\007")
 (data (i32.const 196) "\01\00\00\008")
 (data (i32.const 204) "\01\00\00\009")
 (data (i32.const 212) "\01\00\00\00:")
 (data (i32.const 220) "\01\00\00\00;")
 (data (i32.const 228) "\01\00\00\00<")
 (data (i32.const 236) "\01\00\00\00=")
 (data (i32.const 244) "\01\00\00\00>")
 (data (i32.const 252) "\01\00\00\00?")
 (data (i32.const 260) "\01\00\00\00@")
 (data (i32.const 268) "\01\00\00\00A")
 (data (i32.const 276) "\01\00\00\00B")
 (data (i32.const 284) "\01\00\00\00C")
 (data (i32.const 292) "\01\00\00\00D")
 (data (i32.const 300) "\01\00\00\00E")
 (data (i32.const 308) "\01\00\00\00F")
 (data (i32.const 316) "\01\00\00\00G")
 (data (i32.const 324) "\01\00\00\00H")
 (data (i32.const 332) "\01\00\00\00I")
 (data (i32.const 340) "\01\00\00\00J")
 (data (i32.const 348) "\01\00\00\00K")
 (data (i32.const 356) "\01\00\00\00L")
 (data (i32.const 364) "\01\00\00\00M")
 (data (i32.const 372) "\01\00\00\00N")
 (data (i32.const 380) "\01\00\00\00O")
 (data (i32.const 388) "\01\00\00\00P")
 (data (i32.const 396) "\01\00\00\00Q")
 (data (i32.const 404) "\01\00\00\00R")
 (data (i32.const 412) "\01\00\00\00T")
 (data (i32.const 420) "\01\00\00\00U")
 (data (i32.const 428) "\01\00\00\00V")
 (data (i32.const 436) "\01\00\00\00W")
 (data (i32.const 444) "\01\00\00\00X")
 (data (i32.const 452) "\01\00\00\00Y")
 (data (i32.const 460) "\01\00\00\00Z")
 (data (i32.const 468) "\01\00\00\00[")
 (data (i32.const 476) "\01\00\00\00\\")
 (data (i32.const 484) "\01\00\00\00]")
 (data (i32.const 492) "\01\00\00\00^")
 (data (i32.const 500) "\01\00\00\00_")
 (data (i32.const 508) "\01\00\00\00`")
 (data (i32.const 516) "\01\00\00\00a")
 (data (i32.const 524) "\01\00\00\00b")
 (data (i32.const 532) "\01\00\00\00c")
 (data (i32.const 540) "\01\00\00\00d")
 (data (i32.const 548) "\01\00\00\00e")
 (data (i32.const 556) "\01\00\00\00f")
 (data (i32.const 564) "\01\00\00\00g")
 (data (i32.const 572) "\01\00\00\00h")
 (data (i32.const 580) "\01\00\00\00i")
 (data (i32.const 588) "\01\00\00\00j")
 (data (i32.const 596) "\01\00\00\00k")
 (data (i32.const 604) "\01\00\00\00l")
 (data (i32.const 612) "\01\00\00\00m")
 (data (i32.const 620) "\01\00\00\00n")
 (data (i32.const 628) "\01\00\00\00o")
 (data (i32.const 636) "\01\00\00\00p")
 (data (i32.const 644) "\01\00\00\00q")
 (data (i32.const 652) "\01\00\00\00r")
 (data (i32.const 660) "\01\00\00\00s")
 (data (i32.const 668) "\01\00\00\00t")
 (data (i32.const 676) "\01\00\00\00u")
 (data (i32.const 684) "\01\00\00\00v")
 (data (i32.const 692) "\01\00\00\00w")
 (data (i32.const 700) "\01\00\00\00x")
 (data (i32.const 708) "\01\00\00\00y")
 (data (i32.const 716) "\01\00\00\00z")
 (data (i32.const 724) "\01\00\00\00{")
 (data (i32.const 732) "\01\00\00\00|")
 (data (i32.const 740) "\01\00\00\00}")
 (data (i32.const 748) "\01\00\00\00~")
 (data (i32.const 761) "\03\00\00_\00\00\00|\01\00\00\00\00\00\00\04\00\00\00\0c\00\00\00\14\00\00\00\1c\00\00\00$\00\00\00,\00\00\004\00\00\00<\00\00\00D\00\00\00L\00\00\00T\00\00\00\\\00\00\00d\00\00\00l\00\00\00t\00\00\00|\00\00\00\84\00\00\00\8c\00\00\00\94\00\00\00\9c\00\00\00\a4\00\00\00\ac\00\00\00\b4\00\00\00\bc\00\00\00\c4\00\00\00\cc\00\00\00\d4\00\00\00\dc\00\00\00\e4\00\00\00\ec\00\00\00\f4\00\00\00\fc\00\00\00\04\01\00\00\0c\01\00\00\14\01\00\00\1c\01\00\00$\01\00\00,\01\00\004\01\00\00<\01\00\00D\01\00\00L\01\00\00T\01\00\00\\\01\00\00d\01\00\00l\01\00\00t\01\00\00|\01\00\00\84\01\00\00\8c\01\00\00\94\01\00\00\94\01\00\00\9c\01\00\00\a4\01\00\00\ac\01\00\00\b4\01\00\00\bc\01\00\00\c4\01\00\00\cc\01\00\00\d4\01\00\00\dc\01\00\00\e4\01\00\00\ec\01\00\00\f4\01\00\00\fc\01\00\00\04\02\00\00\0c\02\00\00\14\02\00\00\1c\02\00\00$\02\00\00,\02\00\004\02\00\00<\02\00\00D\02\00\00L\02\00\00T\02\00\00\\\02\00\00d\02\00\00l\02\00\00t\02\00\00|\02\00\00\84\02\00\00\8c\02\00\00\94\02\00\00\9c\02\00\00\a4\02\00\00\ac\02\00\00\b4\02\00\00\bc\02\00\00\c4\02\00\00\cc\02\00\00\d4\02\00\00\dc\02\00\00\e4\02\00\00\ec\02")
 (data (i32.const 1284) "\03\00\00\00U\00G\00S")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.")
 (data (i32.const 1388) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 ")
 (data (i32.const 1488) "\04\00\00\00s\00t\00a\00t")
 (data (i32.const 1500) "\08\00\00\00a\00c\00c\00o\00u\00n\00t\00s")
 (data (i32.const 1520) "\06\00\00\00c\00r\00e\00a\00t\00e")
 (data (i32.const 1536) "\"\00\00\00t\00o\00k\00e\00n\00.\00c\00r\00e\00a\00t\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00.")
 (data (i32.const 1608) "\1d\00\00\00t\00o\00k\00e\00n\00.\00c\00r\00e\00a\00t\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00u\00p\00p\00l\00y\00.")
 (data (i32.const 1672) "\17\00\00\00c\00u\00r\00r\00e\00n\00c\00y\00 \00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00.\00 \001")
 (data (i32.const 1724) "!\00\00\00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00y\00m\00b\00o\00l\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00.")
 (data (i32.const 1796) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t")
 (data (i32.const 1904) "\05\00\00\00i\00s\00s\00u\00e")
 (data (i32.const 1920) " \00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 1988) "*\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00m\00e\00m\00o\00 \00h\00a\00s\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \002\005\006\00 \00b\00y\00t\00e\00s\00.")
 (data (i32.const 2076) "&\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 2156) "\1e\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y\00.")
 (data (i32.const 2220) "\'\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00s\00y\00m\00b\00o\00l\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h\00.")
 (data (i32.const 2304) "/\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00e\00x\00c\00e\00e\00d\00s\00 \00a\00v\00a\00i\00l\00a\00b\00l\00e\00 \00s\00u\00p\00p\00l\00y\00.")
 (data (i32.const 2404) "1\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.")
 (data (i32.const 2508) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.")
 (data (i32.const 2616) ";\00\00\00u\00p\00d\00a\00t\00e\00r\00 \00c\00a\00n\00n\00o\00t\00 \00c\00h\00a\00n\00g\00e\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00w\00h\00e\00n\00 \00m\00o\00d\00i\00f\00y\00i\00n\00g\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00.")
 (data (i32.const 2740) "\06\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 2756) "\02\00\00\00=\00=")
 (data (i32.const 2764) "0\00\00\00 \00:\00 \00c\00a\00n\00 \00n\00o\00t\00 \00c\00o\00m\00p\00a\00r\00e\00 \00A\00s\00s\00e\00t\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00_\00s\00y\00m\00b\00o\00l\00.")
 (data (i32.const 2864) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 2876) "\08\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 2896) "\08\00\00\00 \00a\00c\00t\00o\00r\00:\00 ")
 (data (i32.const 2916) "\0d\00\00\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00:\00 ")
 (data (i32.const 2948) "(\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00c\00a\00n\00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00e\00l\00f\00.")
 (data (i32.const 3032) "*\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00t\00o\00 \00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 3120) "(\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 3204) "!\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y\00.")
 (data (i32.const 3276) "*\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00s\00y\00m\00b\00o\00l\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h\00.")
 (data (i32.const 3364) "-\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00m\00e\00m\00o\00 \00h\00a\00s\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \002\005\006\00 \00b\00y\00t\00e\00s\00.")
 (data (i32.const 3460) ",\00\00\00t\00o\00k\00e\00n\00.\00s\00u\00b\00B\00a\00l\00a\00n\00c\00e\00:\00 \00f\00r\00o\00m\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 3552) "&\00\00\00t\00o\00k\00e\00n\00.\00s\00u\00b\00B\00a\00l\00a\00n\00c\00e\00:\00 \00o\00v\00e\00r\00d\00r\00a\00w\00i\00n\00g\00 \00b\00a\00l\00a\00n\00c\00e\00.")
 (data (i32.const 3632) "3\00\00\00a\00t\00t\00e\00m\00p\00t\00 \00t\00o\00 \00r\00e\00m\00o\00v\00e\00 \00o\00b\00j\00e\00c\00t\00 \00t\00h\00a\00t\00 \00w\00a\00s\00 \00n\00o\00t\00 \00i\00n\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.")
 (data (i32.const 3740) "+\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00e\00r\00a\00s\00e\00 \00i\00s\00 \00n\00o\00t\00 \00i\00n\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.")
 (data (i32.const 3832) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00e\00r\00a\00s\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.")
 (export "apply" (func $main/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.gt_u
      (tee_local $2
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $0
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $0)
         (tee_local $4
          (tee_local $3
           (i32.shr_u
            (i32.and
             (i32.add
              (i32.sub
               (get_local $2)
               (get_local $1)
              )
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            (i32.const 16)
           )
          )
         )
         (i32.gt_s
          (get_local $0)
          (get_local $4)
         )
        )
       )
       (i32.const 0)
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        (i32.const 0)
       )
       (unreachable)
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/internal/arraybuffer/computeSize (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.add
      (get_local $0)
      (i32.const 7)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (unreachable)
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/allocate_memory
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/set_memory (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
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
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (tee_local $4
      (i32.and
       (i32.sub
        (i32.const 0)
        (get_local $0)
       )
       (i32.const 3)
      )
     )
    )
   )
   (tee_local $1
    (i32.mul
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $2
      (i32.and
       (i32.sub
        (get_local $2)
        (get_local $4)
       )
       (i32.const -4)
      )
     )
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
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $1)
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
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $1)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $4
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 4)
      )
      (i32.const 24)
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (set_local $3
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $1)
     )
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (get_local $3)
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
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (unreachable)
  )
  (set_local $2
   (call $~lib/internal/arraybuffer/allocUnsafe
    (tee_local $3
     (get_local $1)
    )
   )
  )
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $0
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $0)
      (i32.const 0)
     )
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/string/String#charCodeAt (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
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
 (func $~lib/memory/copy_memory (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $continue|0
   (if
    (select
     (i32.and
      (get_local $1)
      (i32.const 3)
     )
     (get_local $2)
     (get_local $2)
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
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
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
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
       (br $continue|1)
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
     (block
      (set_local $3
       (get_local $0)
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $3
         (get_local $1)
        )
        (i32.load8_u
         (get_local $3)
        )
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
       (block $tablify|0
        (br_table $case0|2 $case1|2 $case2|2 $tablify|0
         (i32.sub
          (i32.and
           (get_local $0)
           (i32.const 3)
          )
          (i32.const 1)
         )
        )
       )
       (br $break|2)
      )
      (set_local $4
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
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
            (get_local $4)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
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
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $4
      (i32.load
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $4)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
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
           (get_local $4)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
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
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
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
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $4)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
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
          (get_local $4)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
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
       (br $continue|5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
   (block
    (set_local $3
     (get_local $0)
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $3
       (get_local $1)
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call $~lib/memory/copy_memory
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
      (loop $continue|0
       (if
        (i32.and
         (get_local $0)
         (i32.const 7)
        )
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
         (set_local $0
          (i32.add
           (tee_local $3
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $3)
          (block (result i32)
           (set_local $1
            (i32.add
             (tee_local $3
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.load8_u
            (get_local $3)
           )
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
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
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $3)
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.load8_u
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
       (br $continue|2)
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
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
          )
          (i64.load
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
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
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_s
    (get_local $1)
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (block
    (if
     (i32.gt_s
      (get_local $1)
      (i32.const 1073741816)
     )
     (unreachable)
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (call $~lib/internal/arraybuffer/computeSize
        (get_local $2)
       )
       (i32.const 8)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (call $~lib/memory/set_memory
       (i32.add
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.const 0)
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
     )
     (block
      (call $~lib/memory/move_memory
       (i32.add
        (tee_local $3
         (call $~lib/internal/arraybuffer/allocUnsafe
          (get_local $1)
         )
        )
        (i32.const 8)
       )
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (get_local $2)
      )
      (call $~lib/memory/set_memory
       (i32.add
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.const 0)
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
      (return
       (get_local $3)
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
      (i32.lt_s
       (get_local $1)
       (i32.const 0)
      )
      (unreachable)
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
 (func $~lib/array/Array<u8>#push (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.add
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.load
     (tee_local $4
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 1073741816)
     )
     (unreachable)
    )
    (i32.store
     (get_local $0)
     (tee_local $4
      (call $~lib/internal/arraybuffer/reallocUnsafe
       (get_local $4)
       (get_local $3)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store8 offset=8
   (i32.add
    (get_local $4)
    (get_local $2)
   )
   (get_local $1)
  )
  (get_local $3)
 )
 (func $../../src/utils/toUTF8Array (; 27 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $3)
     (i32.load
      (get_local $0)
     )
    )
    (block
     (if
      (i32.lt_s
       (tee_local $1
        (call $~lib/string/String#charCodeAt
         (get_local $0)
         (get_local $3)
        )
       )
       (i32.const 128)
      )
      (drop
       (call $~lib/array/Array<u8>#push
        (get_local $2)
        (get_local $1)
       )
      )
      (block
       (if
        (i32.lt_s
         (get_local $1)
         (i32.const 2048)
        )
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $2)
          (i32.or
           (i32.shr_s
            (get_local $1)
            (i32.const 6)
           )
           (i32.const 192)
          )
         )
        )
        (block
         (if
          (if (result i32)
           (tee_local $4
            (i32.lt_s
             (get_local $1)
             (i32.const 55296)
            )
           )
           (get_local $4)
           (i32.ge_s
            (get_local $1)
            (i32.const 57344)
           )
          )
          (drop
           (call $~lib/array/Array<u8>#push
            (get_local $2)
            (i32.or
             (i32.shr_s
              (get_local $1)
              (i32.const 12)
             )
             (i32.const 224)
            )
           )
          )
          (block
           (drop
            (call $~lib/array/Array<u8>#push
             (get_local $2)
             (i32.or
              (i32.shr_s
               (tee_local $1
                (i32.add
                 (i32.or
                  (i32.shl
                   (i32.and
                    (get_local $1)
                    (i32.const 1023)
                   )
                   (i32.const 10)
                  )
                  (i32.and
                   (call $~lib/string/String#charCodeAt
                    (get_local $0)
                    (tee_local $3
                     (i32.add
                      (get_local $3)
                      (i32.const 1)
                     )
                    )
                   )
                   (i32.const 1023)
                  )
                 )
                 (i32.const 65536)
                )
               )
               (i32.const 18)
              )
              (i32.const 240)
             )
            )
           )
           (drop
            (call $~lib/array/Array<u8>#push
             (get_local $2)
             (i32.or
              (i32.and
               (i32.shr_s
                (get_local $1)
                (i32.const 12)
               )
               (i32.const 63)
              )
              (i32.const 128)
             )
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $2)
           (i32.or
            (i32.and
             (i32.shr_s
              (get_local $1)
              (i32.const 6)
             )
             (i32.const 63)
            )
            (i32.const 128)
           )
          )
         )
        )
       )
       (drop
        (call $~lib/array/Array<u8>#push
         (get_local $2)
         (i32.or
          (i32.and
           (get_local $1)
           (i32.const 63)
          )
          (i32.const 128)
         )
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
     (br $continue|0)
    )
   )
  )
  (drop
   (call $~lib/array/Array<u8>#push
    (get_local $2)
    (i32.const 0)
   )
  )
  (get_local $2)
 )
 (func $../../src/utils/string2cstr (; 28 ;) (type $ii) (param $0 i32) (result i32)
  (i32.add
   (i32.load
    (call $../../src/utils/toUTF8Array
     (get_local $0)
    )
   )
   (i32.const 8)
  )
 )
 (func $../../src/utils/ultrain_assert (; 29 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 1)
    )
   )
   (call $../../internal/system.d/env.ultrainio_assert
    (i32.const 0)
    (call $../../src/utils/string2cstr
     (get_local $1)
    )
   )
  )
 )
 (func $../../src/log/Logger#s (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (i32.load
      (get_local $1)
     )
    )
    (block
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
     (br $continue|0)
    )
   )
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#i (; 31 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../src/log/env.ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#flush (; 32 ;) (type $iv) (param $0 i32)
  (call $../../src/log/env.ts_log_done)
 )
 (func $../../src/asset/StringToSymbol (; 33 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $../../src/utils/ultrain_assert
   (i32.le_u
    (i32.and
     (tee_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 255)
    )
    (i32.const 7)
   )
   (i32.const 1296)
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (i32.and
      (get_local $5)
      (i32.const 255)
     )
    )
    (block
     (if
      (if (result i32)
       (tee_local $6
        (i32.lt_u
         (tee_local $4
          (i32.and
           (call $~lib/string/String#charCodeAt
            (get_local $1)
            (i32.and
             (get_local $2)
             (i32.const 255)
            )
           )
           (i32.const 255)
          )
         )
         (i32.const 65)
        )
       )
       (get_local $6)
       (i32.gt_u
        (get_local $4)
        (i32.const 90)
       )
      )
      (call $../../src/log/Logger#flush
       (call $../../src/log/Logger#i
        (call $../../src/log/Logger#s
         (get_global $../../src/log/Log)
         (i32.const 1388)
        )
        (i64.extend_s/i32
         (get_local $4)
        )
        (i32.const 16)
       )
      )
      (set_local $3
       (i64.or
        (get_local $3)
        (i64.shl
         (i64.extend_u/i32
          (get_local $4)
         )
         (i64.mul
          (i64.extend_u/i32
           (i32.and
            (i32.add
             (get_local $2)
             (i32.const 1)
            )
            (i32.const 255)
           )
          )
          (i64.const 8)
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
     (br $continue|0)
    )
   )
  )
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
 (func $../../lib/contract/Contract#constructor (; 34 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (i64.const 0)
     )
     (tee_local $0
      (get_local $2)
     )
    )
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (unreachable)
  )
  (call $~lib/memory/set_memory
   (i32.add
    (tee_local $2
     (call $~lib/internal/arraybuffer/allocUnsafe
      (get_local $1)
     )
    )
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $1)
  )
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $0
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 12)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $0)
      (i32.const 0)
     )
     (i32.store offset=8
      (get_local $0)
      (i32.const 0)
     )
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $../../src/datastream/DataStream#constructor (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 12)
       )
      )
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
     (tee_local $0
      (get_local $3)
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
 (func $../../lib/contract/DataStreamFromCurrentAction (; 37 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (drop
   (call $../../internal/action.d/env.read_action_data
    (i32.load
     (tee_local $1
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $0
        (call $../../internal/action.d/env.action_data_size)
       )
      )
     )
    )
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#constructor
   (i32.const 0)
   (i32.load
    (get_local $1)
   )
   (get_local $0)
  )
 )
 (func $../../lib/contract/Contract#getDataStream (; 38 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../lib/contract/DataStreamFromCurrentAction)
 )
 (func $../../src/name_ex/NameEx#constructor (; 39 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 16)
       )
      )
      (i64.const 0)
     )
     (i64.store offset=8
      (get_local $3)
      (i64.const 0)
     )
     (tee_local $0
      (get_local $3)
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
 (func $../../src/name_ex/char_to_symbol_ex (; 40 ;) (type $iI) (param $0 i32) (result i64)
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
       (get_local $0)
       (i32.const -46)
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
       (get_local $0)
       (i32.const -85)
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
       (get_local $0)
       (i32.const -27)
      )
      (i32.const 255)
     )
    )
   )
  )
  (i64.const 255)
 )
 (func $../../src/name_ex/NEX (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $3
   (call $../../src/name_ex/NameEx#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $5)
    )
    (block
     (set_local $4
      (call $../../src/name_ex/char_to_symbol_ex
       (call $~lib/string/String#charCodeAt
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (set_local $2
      (if (result i64)
       (i32.le_s
        (get_local $1)
        (i32.const 9)
       )
       (i64.or
        (get_local $2)
        (i64.shl
         (get_local $4)
         (i64.mul
          (i64.extend_u/i32
           (get_local $1)
          )
          (i64.const 6)
         )
        )
       )
       (if (result i64)
        (i32.eq
         (get_local $1)
         (i32.const 10)
        )
        (block (result i64)
         (i64.store offset=8
          (get_local $3)
          (i64.or
           (get_local $2)
           (i64.shl
            (i64.and
             (get_local $4)
             (i64.const 15)
            )
            (i64.mul
             (i64.extend_u/i32
              (get_local $1)
             )
             (i64.const 6)
            )
           )
          )
         )
         (i64.shr_u
          (i64.and
           (get_local $4)
           (i64.const 48)
          )
          (i64.const 4)
         )
        )
        (i64.or
         (get_local $2)
         (i64.shl
          (get_local $4)
          (i64.add
           (i64.mul
            (i64.extend_u/i32
             (i32.sub
              (get_local $1)
              (i32.const 11)
             )
            )
            (i64.const 6)
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
       (get_local $5)
       (i32.const 10)
      )
      (i64.store offset=8
       (get_local $3)
       (get_local $2)
      )
      (i64.store
       (get_local $3)
       (get_local $2)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $3)
 )
 (func $../../src/name_ex/NameEx._eq (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/datastream/DataStream#read<u64> (; 43 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#constructor|trampoline (; 44 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $oob
      (br_table $0of2 $1of2 $2of2 $oob
       (get_global $~argc)
      )
     )
     (unreachable)
    )
    (set_local $1
     (i64.const 0)
    )
   )
   (set_local $2
    (i64.const 0)
   )
  )
  (call $../../src/name_ex/NameEx#constructor
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset#deserialize (; 45 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../lib/contract/Contract#get:receiver (; 46 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#symbolName (; 47 ;) (type $iI) (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load offset=8
    (get_local $0)
   )
   (i64.const 8)
  )
 )
 (func $../../src/asset/Asset#isSymbolValid (; 48 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i64.shr_u
    (i64.load offset=8
     (get_local $0)
    )
    (i64.const 8)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $0)
     (i32.const 7)
    )
    (block
     (if
      (if (result i32)
       (tee_local $3
        (i32.lt_u
         (i32.and
          (tee_local $2
           (i32.wrap/i64
            (i64.and
             (get_local $1)
             (i64.const 255)
            )
           )
          )
          (i32.const 255)
         )
         (i32.const 65)
        )
       )
       (get_local $3)
       (i32.gt_u
        (i32.and
         (get_local $2)
         (i32.const 255)
        )
        (i32.const 90)
       )
      )
      (return
       (i32.const 0)
      )
     )
     (if
      (i64.eq
       (i64.and
        (tee_local $1
         (i64.shr_u
          (get_local $1)
          (i64.const 8)
         )
        )
        (i64.const 255)
       )
       (i64.const 0)
      )
      (loop $continue|1
       (if
        (i64.ne
         (i64.and
          (tee_local $1
           (i64.shr_u
            (get_local $1)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
        (return
         (i32.const 0)
        )
       )
       (br_if $continue|1
        (i32.lt_s
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const 1)
 )
 (func $../../src/asset/Asset#isAmountWithinRange (; 49 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (tee_local $1
    (i64.le_u
     (i64.const 0)
     (i64.load
      (get_local $0)
     )
    )
   )
   (i64.le_u
    (i64.load
     (get_local $0)
    )
    (i64.const 4611686018427387903)
   )
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset#isValid (; 50 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (tee_local $1
    (call $../../src/asset/Asset#isAmountWithinRange
     (get_local $0)
    )
   )
   (call $../../src/asset/Asset#isSymbolValid
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/utils/char_to_symbol (; 51 ;) (type $iI) (param $0 i32) (result i64)
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
       (get_local $0)
       (i32.const -91)
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
       (get_local $0)
       (i32.const -48)
      )
      (i32.const 255)
     )
    )
   )
  )
  (i64.const 0)
 )
 (func $../../src/utils/N (; 52 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.le_u
     (get_local $1)
     (i32.const 12)
    )
    (block
     (set_local $2
      (i64.const 0)
     )
     (if
      (if (result i32)
       (tee_local $5
        (i32.lt_u
         (get_local $1)
         (get_local $4)
        )
       )
       (i32.le_u
        (get_local $1)
        (i32.const 12)
       )
       (get_local $5)
      )
      (set_local $2
       (call $../../src/utils/char_to_symbol
        (i32.and
         (call $~lib/string/String#charCodeAt
          (get_local $0)
          (get_local $1)
         )
         (i32.const 255)
        )
       )
      )
     )
     (set_local $3
      (i64.or
       (get_local $3)
       (tee_local $2
        (select
         (i64.shl
          (i64.and
           (get_local $2)
           (i64.const 31)
          )
          (i64.sub
           (i64.const 64)
           (i64.mul
            (i64.extend_u/i32
             (i32.add
              (get_local $1)
              (i32.const 1)
             )
            )
            (i64.const 5)
           )
          )
         )
         (i64.and
          (get_local $2)
          (i64.const 15)
         )
         (i32.lt_u
          (get_local $1)
          (i32.const 12)
         )
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<DataItem<CurrencyStats>>#constructor (; 53 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (unreachable)
  )
  (set_local $2
   (call $~lib/internal/arraybuffer/allocUnsafe
    (tee_local $3
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $0
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $0)
      (i32.const 0)
     )
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#constructor (; 54 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 28)
       )
      )
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
     (i32.store offset=24
      (get_local $4)
      (i32.const 0)
     )
     (tee_local $0
      (get_local $4)
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
  (i32.store offset=24
   (get_local $0)
   (call $~lib/array/Array<DataItem<CurrencyStats>>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $../../src/balance/CurrencyStats#constructor (; 55 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 1672)
   )
  )
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 16)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $4)
      (i32.const 0)
     )
     (i64.store offset=8
      (get_local $4)
      (i64.const 0)
     )
     (tee_local $0
      (get_local $4)
     )
    )
   )
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $../../src/balance/CurrencyStats#constructor|trampoline (; 56 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $oob
       (br_table $0of3 $1of3 $2of3 $3of3 $oob
        (get_global $~argc)
       )
      )
      (unreachable)
     )
     (set_global $~argc
      (i32.const 0)
     )
     (set_local $1
      (call $../../src/asset/Asset#constructor|trampoline
       (i32.const 0)
       (i64.const 0)
       (i64.const 0)
      )
     )
    )
    (set_global $~argc
     (i32.const 0)
    )
    (set_local $2
     (call $../../src/asset/Asset#constructor|trampoline
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
   )
   (set_local $3
    (i64.const 0)
   )
  )
  (call $../../src/balance/CurrencyStats#constructor
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/array/Array<DataItem<CurrencyStats>>#get:length (; 57 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=4
   (get_local $0)
  )
 )
 (func $~lib/array/Array<DataItem<CurrencyStats>>#__get (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $2
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (i32.load offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (unreachable)
  )
 )
 (func $../../src/balance/CurrencyStats#primaryKey (; 59 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/asset/Asset#symbolName
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/balance/CurrencyStats#deserialize (; 60 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#deserialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/asset/Asset#deserialize
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#loadObjectByPrimaryIterator (; 61 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (tee_local $3
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $0
        (call $../../internal/db.d/env.db_get_i64
         (get_local $1)
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
    )
    (get_local $0)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $3)
    )
    (get_local $0)
   )
  )
  (call $../../src/balance/CurrencyStats#deserialize
   (get_local $2)
   (get_local $4)
  )
 )
 (func $../../src/dbmanager/DataItem<CurrencyStats>#constructor (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 16)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $2)
      (i32.const 0)
     )
     (i32.store offset=8
      (get_local $2)
      (i32.const 0)
     )
     (i32.store offset=12
      (get_local $2)
      (i32.const 0)
     )
     (tee_local $0
      (get_local $2)
     )
    )
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<DataItem<CurrencyStats>>#push (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.add
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.shr_u
     (i32.load
      (tee_local $4
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (unreachable)
    )
    (i32.store
     (get_local $0)
     (tee_local $4
      (call $~lib/internal/arraybuffer/reallocUnsafe
       (get_local $4)
       (i32.shl
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store offset=8
   (i32.add
    (get_local $4)
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (get_local $1)
  )
  (get_local $3)
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#get (; 64 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $3)
     (get_local $4)
    )
    (block
     (if
      (i64.eq
       (call $../../src/balance/CurrencyStats#primaryKey
        (i32.load offset=12
         (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $3)
         )
        )
       )
       (get_local $1)
      )
      (block
       (drop
        (i32.load offset=12
         (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $3)
         )
        )
       )
       (return
        (i32.const 1)
       )
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.lt_s
    (tee_local $3
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
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=4
   (tee_local $4
    (call $../../src/dbmanager/DataItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $3)
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $2)
  )
  (drop
   (call $~lib/array/Array<DataItem<CurrencyStats>>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
  (i32.const 1)
 )
 (func $../../src/asset/Asset#getSymbol (; 65 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#setSymbol (; 66 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/datastream/DataStream#isMesureMode (; 67 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eqz
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream#write<u64> (; 68 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (call $../../src/datastream/DataStream#isMesureMode
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
 (func $../../src/asset/Asset#serialize (; 69 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../src/balance/CurrencyStats#serialize (; 70 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#serialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/asset/Asset#serialize
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<CurrencyStats> (; 71 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $../../src/balance/CurrencyStats#serialize
   (get_local $0)
   (tee_local $1
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#emplace (; 72 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 1796)
  )
  (i32.store offset=12
   (tee_local $4
    (call $../../src/dbmanager/DataItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (call $../../src/balance/CurrencyStats#serialize
   (get_local $2)
   (tee_local $3
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.load
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $3
        (call $../../src/datastream/DataStream.measure<CurrencyStats>
         (get_local $2)
        )
       )
      )
     )
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $../../src/balance/CurrencyStats#primaryKey
    (get_local $2)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $5)
    (i32.load
     (get_local $3)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (drop
   (call $~lib/array/Array<DataItem<CurrencyStats>>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
 )
 (func $token/Token#create (; 73 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $../../internal/action.d/env.require_auth
   (call $../../lib/contract/Contract#get:receiver
    (get_local $0)
   )
  )
  (set_local $4
   (call $../../src/asset/Asset#symbolName
    (get_local $2)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isSymbolValid
    (get_local $2)
   )
   (i32.const 1536)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $2)
   )
   (i32.const 1608)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $../../src/dbmanager/DBManager<CurrencyStats>#get
     (tee_local $5
      (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
       (i32.const 0)
       (call $../../src/utils/N
        (i32.const 1488)
       )
       (call $../../lib/contract/Contract#get:receiver
        (get_local $0)
       )
       (get_local $4)
      )
     )
     (get_local $4)
     (block (result i32)
      (set_global $~argc
       (i32.const 0)
      )
      (tee_local $3
       (call $../../src/balance/CurrencyStats#constructor|trampoline
        (i32.const 0)
        (i32.const 0)
        (i32.const 0)
        (i64.const 0)
       )
      )
     )
    )
   )
   (i32.const 1724)
  )
  (call $../../src/asset/Asset#setSymbol
   (i32.load
    (get_local $3)
   )
   (call $../../src/asset/Asset#getSymbol
    (get_local $2)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (get_local $2)
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $1)
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#emplace
   (get_local $5)
   (call $../../lib/contract/Contract#get:receiver
    (get_local $0)
   )
   (get_local $3)
  )
 )
 (func $../../src/datastream/DataStream#read<u8> (; 74 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVarint32 (; 75 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $continue|0
   (set_local $1
    (i32.or
     (get_local $1)
     (block (result i32)
      (set_local $2
       (i32.add
        (tee_local $1
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.shl
       (i32.and
        (tee_local $3
         (call $../../src/datastream/DataStream#read<u8>
          (get_local $0)
         )
        )
        (i32.const 127)
       )
       (i32.mul
        (get_local $1)
        (i32.const 7)
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
  (get_local $1)
 )
 (func $~lib/internal/string/allocate (; 76 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
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
      (i32.const 536870910)
     )
     (get_local $1)
    )
   )
   (unreachable)
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/allocate_memory
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $../../src/datastream/DataStream#readString (; 77 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (call $../../src/datastream/DataStream#readVarint32
      (get_local $0)
     )
    )
   )
   (return
    (i32.const 1280)
   )
  )
  (set_local $3
   (call $~lib/internal/string/allocate
    (get_local $2)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $1)
     (get_local $2)
    )
    (block
     (i32.store16 offset=4
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
      (call $../../src/datastream/DataStream#read<u8>
       (get_local $0)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $3)
 )
 (func $../../src/asset/Asset#setAmount (; 78 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#modify (; 79 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (set_local $5
   (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $5)
     )
     (block
      (if
       (i64.eq
        (call $../../src/balance/CurrencyStats#primaryKey
         (get_local $2)
        )
        (call $../../src/balance/CurrencyStats#primaryKey
         (i32.load offset=12
          (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
           (i32.load offset=24
            (get_local $0)
           )
           (get_local $3)
          )
         )
        )
       )
       (block
        (set_local $4
         (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $3)
         )
        )
        (br $break|0)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $3
     (i32.lt_s
      (get_local $3)
      (get_local $5)
     )
    )
    (i32.eq
     (i32.load
      (get_local $4)
     )
     (get_local $0)
    )
    (get_local $3)
   )
   (i32.const 2404)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2508)
  )
  (set_local $6
   (call $../../src/balance/CurrencyStats#primaryKey
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $2)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (get_local $6)
    (call $../../src/balance/CurrencyStats#primaryKey
     (i32.load offset=12
      (get_local $4)
     )
    )
   )
   (i32.const 2616)
  )
  (call $../../src/balance/CurrencyStats#serialize
   (get_local $2)
   (tee_local $0
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.load
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $5
        (call $../../src/datastream/DataStream.measure<CurrencyStats>
         (get_local $2)
        )
       )
      )
     )
     (get_local $5)
    )
   )
  )
  (call $../../internal/db.d/env.db_update_i64
   (i32.load offset=4
    (get_local $4)
   )
   (get_local $1)
   (i32.load
    (get_local $0)
   )
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../src/balance/Account#constructor (; 80 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 4)
       )
      )
      (i32.const 0)
     )
     (tee_local $0
      (get_local $2)
     )
    )
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $../../src/balance/Account#deserialize (; 81 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#deserialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#loadObjectByPrimaryIterator (; 82 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (tee_local $3
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $0
        (call $../../internal/db.d/env.db_get_i64
         (get_local $1)
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
    )
    (get_local $0)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $3)
    )
    (get_local $0)
   )
  )
  (call $../../src/balance/Account#deserialize
   (get_local $2)
   (get_local $4)
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#get (; 83 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $3)
     (get_local $4)
    )
    (block
     (if
      (i64.eq
       (call $../../src/balance/CurrencyStats#primaryKey
        (i32.load offset=12
         (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $3)
         )
        )
       )
       (get_local $1)
      )
      (block
       (drop
        (i32.load offset=12
         (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $3)
         )
        )
       )
       (return
        (i32.const 1)
       )
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.lt_s
    (tee_local $3
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
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<Account>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=4
   (tee_local $4
    (call $../../src/dbmanager/DataItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $3)
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $2)
  )
  (drop
   (call $~lib/array/Array<DataItem<CurrencyStats>>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
  (i32.const 1)
 )
 (func $../../src/balance/Account#serialize (; 84 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#serialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/datastream/DataStream.measure<Account> (; 85 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $../../src/balance/Account#serialize
   (get_local $0)
   (tee_local $1
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#emplace (; 86 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 1796)
  )
  (i32.store offset=12
   (tee_local $4
    (call $../../src/dbmanager/DataItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (call $../../src/balance/Account#serialize
   (get_local $2)
   (tee_local $3
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.load
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $3
        (call $../../src/datastream/DataStream.measure<Account>
         (get_local $2)
        )
       )
      )
     )
     (get_local $3)
    )
   )
  )
  (set_local $5
   (call $../../src/balance/CurrencyStats#primaryKey
    (get_local $2)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $5)
    (i32.load
     (get_local $3)
    )
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (drop
   (call $~lib/array/Array<DataItem<CurrencyStats>>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#modify (; 87 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (set_local $5
   (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $5)
     )
     (block
      (if
       (i64.eq
        (call $../../src/balance/CurrencyStats#primaryKey
         (get_local $2)
        )
        (call $../../src/balance/CurrencyStats#primaryKey
         (i32.load offset=12
          (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
           (i32.load offset=24
            (get_local $0)
           )
           (get_local $3)
          )
         )
        )
       )
       (block
        (set_local $4
         (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $3)
         )
        )
        (br $break|0)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $3
     (i32.lt_s
      (get_local $3)
      (get_local $5)
     )
    )
    (i32.eq
     (i32.load
      (get_local $4)
     )
     (get_local $0)
    )
    (get_local $3)
   )
   (i32.const 2404)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2508)
  )
  (set_local $6
   (call $../../src/balance/CurrencyStats#primaryKey
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $2)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (get_local $6)
    (call $../../src/balance/CurrencyStats#primaryKey
     (i32.load offset=12
      (get_local $4)
     )
    )
   )
   (i32.const 2616)
  )
  (call $../../src/balance/Account#serialize
   (get_local $2)
   (tee_local $0
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.load
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $5
        (call $../../src/datastream/DataStream.measure<Account>
         (get_local $2)
        )
       )
      )
     )
     (get_local $5)
    )
   )
  )
  (call $../../internal/db.d/env.db_update_i64
   (i32.load offset=4
    (get_local $4)
   )
   (get_local $1)
   (i32.load
    (get_local $0)
   )
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $token/Token#addBalance (; 88 ;) (type $iIiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (set_local $4
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1500)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $0
   (call $../../src/balance/Account#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (if
   (call $../../src/dbmanager/DBManager<Account>#get
    (get_local $4)
    (call $../../src/asset/Asset#symbolName
     (get_local $2)
    )
    (get_local $0)
   )
   (block
    (set_local $1
     (i64.add
      (call $../../lib/contract/Contract#get:receiver
       (i32.load
        (get_local $0)
       )
      )
      (call $../../lib/contract/Contract#get:receiver
       (get_local $2)
      )
     )
    )
    (call $../../src/asset/Asset#setAmount
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
    (call $../../src/dbmanager/DBManager<Account>#modify
     (get_local $4)
     (i64.const 0)
     (get_local $0)
    )
   )
   (call $../../src/dbmanager/DBManager<Account>#emplace
    (get_local $4)
    (get_local $3)
    (call $../../src/balance/Account#constructor
     (i32.const 0)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/string/String#concat (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 2864)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.add
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 1280)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (tee_local $2
     (call $~lib/internal/string/allocate
      (get_local $2)
     )
    )
    (i32.const 4)
   )
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (i32.shl
    (get_local $3)
    (i32.const 1)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (get_local $2)
     (i32.const 4)
    )
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
   (i32.add
    (get_local $1)
    (i32.const 4)
   )
   (i32.shl
    (get_local $4)
    (i32.const 1)
   )
  )
  (get_local $2)
 )
 (func $~lib/string/String.__concat (; 90 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 2864)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset.checkOperaotrCondition (; 91 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $1)
    )
   )
   (call $~lib/string/String.__concat
    (get_local $2)
    (i32.const 2764)
   )
  )
 )
 (func $../../src/asset/Asset._eq (; 92 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
   (i32.const 2756)
  )
  (i64.eq
   (i64.load
    (get_local $0)
   )
   (i64.load
    (get_local $1)
   )
  )
 )
 (func $../../src/action/TransferParams#constructor (; 93 ;) (type $iIIiii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $5
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 24)
       )
      )
      (i64.const 0)
     )
     (i64.store offset=8
      (get_local $5)
      (i64.const 0)
     )
     (i32.store offset=16
      (get_local $5)
      (i32.const 0)
     )
     (i32.store offset=20
      (get_local $5)
      (i32.const 0)
     )
     (tee_local $0
      (get_local $5)
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (if
   (call $../../src/asset/Asset._eq
    (get_local $3)
    (i32.const 0)
   )
   (block
    (set_global $~argc
     (i32.const 0)
    )
    (i32.store offset=16
     (get_local $0)
     (call $../../src/asset/Asset#constructor|trampoline
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
   )
  )
  (i32.store offset=20
   (get_local $0)
   (get_local $4)
  )
  (get_local $0)
 )
 (func $../../src/action/TransferParams#constructor|trampoline (; 94 ;) (type $iIIiii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (block $4of4
   (block $3of4
    (block $2of4
     (block $1of4
      (block $0of4
       (block $oob
        (br_table $0of4 $1of4 $2of4 $3of4 $4of4 $oob
         (get_global $~argc)
        )
       )
       (unreachable)
      )
      (set_local $1
       (i64.const 0)
      )
     )
     (set_local $2
      (i64.const 0)
     )
    )
    (set_local $3
     (i32.const 0)
    )
   )
   (set_local $4
    (i32.const 1280)
   )
  )
  (call $../../src/action/TransferParams#constructor
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $../../src/action/ActionImpl#constructor (; 95 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $1
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 20)
       )
      )
      (i64.const 0)
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
     (tee_local $0
      (get_local $1)
     )
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (call $../../src/name_ex/NameEx#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (call $~lib/array/Array<DataItem<CurrencyStats>>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $../../src/datastream/DataStream#write<u8> (; 96 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $../../src/datastream/DataStream#isMesureMode
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
 (func $../../src/datastream/DataStream#writeVarint32 (; 97 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (loop $continue|0
   (call $../../src/datastream/DataStream#write<u8>
    (get_local $0)
    (i32.or
     (i32.and
      (get_local $1)
      (i32.const 127)
     )
     (i32.shl
      (select
       (i32.const 1)
       (i32.const 0)
       (i32.gt_u
        (tee_local $1
         (i32.shr_u
          (get_local $1)
          (i32.const 7)
         )
        )
        (i32.const 0)
       )
      )
      (i32.const 7)
     )
    )
   )
   (br_if $continue|0
    (get_local $1)
   )
  )
 )
 (func $../../src/datastream/DataStream#writeString (; 98 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $0)
   (tee_local $2
    (i32.load
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (set_local $1
   (call $../../src/utils/toUTF8Array
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (call $../../src/datastream/DataStream#isMesureMode
     (get_local $0)
    )
   )
   (call $~lib/memory/move_memory
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.add
     (i32.load
      (get_local $1)
     )
     (i32.const 8)
    )
    (i32.sub
     (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
      (get_local $1)
     )
     (i32.const 1)
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
     (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
      (get_local $1)
     )
     (i32.const 1)
    )
   )
  )
 )
 (func $../../src/action/TransferParams#serialize (; 99 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $../../src/asset/Asset#serialize
   (i32.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/datastream/DataStream#writeString
   (get_local $1)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<TransferParams> (; 100 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $../../src/action/TransferParams#serialize
   (get_local $0)
   (tee_local $1
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $~lib/array/Array<u8>#constructor|trampoline (; 101 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<u8>#constructor
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<u8>#__set (; 102 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (tee_local $3
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 1073741816)
     )
     (unreachable)
    )
    (i32.store
     (get_local $0)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocUnsafe
       (get_local $3)
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
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
  (i32.store8 offset=8
   (i32.add
    (get_local $3)
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $../../src/datastream/DataStream#toArray<u8> (; 103 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (i32.load offset=8
     (get_local $0)
    )
   )
   (block
    (set_global $~argc
     (i32.const 0)
    )
    (return
     (call $~lib/array/Array<u8>#constructor|trampoline
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
  )
  (set_local $3
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (tee_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $1)
     (get_local $4)
    )
    (block
     (call $~lib/array/Array<u8>#__set
      (get_local $3)
      (get_local $1)
      (i32.load8_u
       (i32.add
        (i32.load
         (get_local $0)
        )
        (get_local $2)
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $3)
 )
 (func $../../src/permission-level/PermissionLevel#serialize (; 104 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 2896)
    )
    (i64.load
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (drop
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 2916)
    )
    (i64.load offset=8
     (get_local $0)
    )
    (i32.const 16)
   )
  )
 )
 (func $../../src/datastream/DataStream#writeComplexVector<PermissionLevel> (; 105 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $0)
   (tee_local $3
    (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
     (get_local $1)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (get_local $3)
    )
    (block
     (call $../../src/permission-level/PermissionLevel#serialize
      (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (; 106 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.load
     (tee_local $2
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (i32.load8_u offset=8
    (i32.add
     (get_local $2)
     (get_local $1)
    )
   )
   (unreachable)
  )
 )
 (func $../../src/datastream/DataStream#writeVector<u8> (; 107 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $0)
   (tee_local $3
    (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
     (get_local $1)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (get_local $3)
    )
    (block
     (call $../../src/datastream/DataStream#write<u8>
      (get_local $0)
      (call $~lib/array/Array<u8>#__get
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
     (br $continue|0)
    )
   )
  )
 )
 (func $../../src/action/ActionImpl#serialize (; 108 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/asset/Asset#serialize
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/datastream/DataStream#writeComplexVector<PermissionLevel>
   (get_local $1)
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#writeVector<u8>
   (get_local $1)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<ActionImpl> (; 109 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $../../src/action/ActionImpl#serialize
   (get_local $0)
   (tee_local $1
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $../../src/action/dispatchInline (; 110 ;) (type $iIiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (drop
   (call $~lib/array/Array<DataItem<CurrencyStats>>#push
    (i32.load offset=12
     (tee_local $4
      (call $../../src/action/ActionImpl#constructor
       (i32.const 0)
      )
     )
    )
    (get_local $0)
   )
  )
  (i64.store
   (get_local $4)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $4)
   (get_local $2)
  )
  (call $../../src/action/TransferParams#serialize
   (get_local $3)
   (tee_local $0
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.load
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $0
        (call $../../src/datastream/DataStream.measure<TransferParams>
         (get_local $3)
        )
       )
      )
     )
     (get_local $0)
    )
   )
  )
  (i32.store offset=16
   (get_local $4)
   (call $../../src/datastream/DataStream#toArray<u8>
    (get_local $0)
   )
  )
  (call $../../src/action/ActionImpl#serialize
   (get_local $4)
   (tee_local $0
    (call $../../src/datastream/DataStream#constructor
     (i32.const 0)
     (i32.load
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $0
        (call $../../src/datastream/DataStream.measure<ActionImpl>
         (get_local $4)
        )
       )
      )
     )
     (get_local $0)
    )
   )
  )
  (call $../../internal/action.d/env.send_inline
   (i32.load
    (get_local $0)
   )
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $token/Token#issue (; 111 ;) (type $iIiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isSymbolValid
    (get_local $2)
   )
   (i32.const 1920)
  )
  (call $../../src/utils/ultrain_assert
   (i32.le_s
    (i32.load
     (get_local $3)
    )
    (i32.const 256)
   )
   (i32.const 1988)
  )
  (set_local $5
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1488)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (call $../../src/asset/Asset#symbolName
     (get_local $2)
    )
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (set_local $4
   (call $../../src/balance/CurrencyStats#constructor|trampoline
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
    (i64.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $5)
    (call $../../src/asset/Asset#symbolName
     (get_local $2)
    )
    (get_local $4)
   )
   (i32.const 2076)
  )
  (call $../../internal/action.d/env.require_auth
   (i64.load offset=8
    (get_local $4)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $2)
   )
   (i32.const 2156)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#getSymbol
     (get_local $2)
    )
    (call $../../src/asset/Asset#getSymbol
     (i32.load offset=4
      (get_local $4)
     )
    )
   )
   (i32.const 2220)
  )
  (call $../../src/utils/ultrain_assert
   (i64.le_u
    (call $../../lib/contract/Contract#get:receiver
     (get_local $2)
    )
    (i64.sub
     (call $../../lib/contract/Contract#get:receiver
      (i32.load offset=4
       (get_local $4)
      )
     )
     (call $../../lib/contract/Contract#get:receiver
      (i32.load
       (get_local $4)
      )
     )
    )
   )
   (i32.const 2304)
  )
  (set_local $7
   (i64.add
    (call $../../lib/contract/Contract#get:receiver
     (i32.load
      (get_local $4)
     )
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $2)
    )
   )
  )
  (call $../../src/asset/Asset#setAmount
   (i32.load
    (get_local $4)
   )
   (get_local $7)
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#modify
   (get_local $5)
   (i64.const 0)
   (get_local $4)
  )
  (call $token/Token#addBalance
   (get_local $0)
   (i64.load offset=8
    (get_local $4)
   )
   (get_local $2)
   (i64.load offset=8
    (get_local $4)
   )
  )
  (if
   (i64.ne
    (get_local $1)
    (i64.load offset=8
     (get_local $4)
    )
   )
   (block
    (set_global $~argc
     (i32.const 0)
    )
    (i64.store
     (tee_local $6
      (call $../../src/asset/Asset#constructor|trampoline
       (i32.const 0)
       (i64.const 0)
       (i64.const 0)
      )
     )
     (i64.load offset=8
      (get_local $4)
     )
    )
    (i64.store offset=8
     (get_local $6)
     (call $../../src/utils/N
      (i32.const 2740)
     )
    )
    (set_global $~argc
     (i32.const 0)
    )
    (i64.store
     (tee_local $5
      (call $../../src/action/TransferParams#constructor|trampoline
       (i32.const 0)
       (i64.const 0)
       (i64.const 0)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i64.load offset=8
      (get_local $4)
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $1)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $5)
     (get_local $3)
    )
    (call $../../src/action/dispatchInline
     (get_local $6)
     (call $../../lib/contract/Contract#get:receiver
      (get_local $0)
     )
     (call $../../src/name_ex/NEX
      (i32.const 2876)
     )
     (get_local $5)
    )
   )
  )
 )
 (func $../../src/balance/Account#constructor|trampoline (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_global $~argc
    (i32.const 0)
   )
   (set_local $1
    (call $../../src/asset/Asset#constructor|trampoline
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (call $../../src/balance/Account#constructor
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<DataItem<Account>>#splice (; 113 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 1)
   )
   (return)
  )
  (set_local $4
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
     (tee_local $3
      (i32.add
       (get_local $4)
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $3)
      (get_local $1)
     )
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $1)
    (get_local $4)
   )
   (return)
  )
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (tee_local $3
      (i32.load
       (get_local $0)
      )
     )
     (i32.const 8)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.shl
     (i32.add
      (get_local $1)
      (tee_local $2
       (select
        (tee_local $3
         (get_local $2)
        )
        (tee_local $1
         (i32.sub
          (get_local $4)
          (get_local $1)
         )
        )
        (i32.lt_s
         (get_local $3)
         (get_local $1)
        )
       )
      )
     )
     (i32.const 2)
    )
   )
   (i32.shl
    (get_local $2)
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_local $4)
    (get_local $2)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#erase (; 114 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (call $~lib/array/Array<DataItem<CurrencyStats>>#get:length
    (i32.load offset=24
     (get_local $0)
    )
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
      (br_if $break|0
       (i64.eq
        (call $../../src/balance/CurrencyStats#primaryKey
         (i32.load offset=12
          (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
           (i32.load offset=24
            (get_local $0)
           )
           (get_local $2)
          )
         )
        )
        (call $../../src/balance/CurrencyStats#primaryKey
         (get_local $1)
        )
       )
      )
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.lt_s
    (get_local $2)
    (get_local $3)
   )
   (i32.const 3632)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load
     (tee_local $1
      (call $~lib/array/Array<DataItem<CurrencyStats>>#__get
       (i32.load offset=24
        (get_local $0)
       )
       (get_local $2)
      )
     )
    )
    (get_local $0)
   )
   (i32.const 3740)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3832)
  )
  (call $~lib/array/Array<DataItem<Account>>#splice
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $2)
   (i32.const 1)
  )
  (call $../../internal/db.d/env.db_remove_i64
   (i32.load offset=4
    (get_local $1)
   )
  )
 )
 (func $token/Token#subBalance (; 115 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (set_local $3
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1500)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (set_local $0
   (call $../../src/balance/Account#constructor|trampoline
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/dbmanager/DBManager<Account>#get
    (get_local $3)
    (call $../../src/asset/Asset#symbolName
     (get_local $2)
    )
    (get_local $0)
   )
   (i32.const 3460)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ge_u
    (call $../../lib/contract/Contract#get:receiver
     (i32.load
      (get_local $0)
     )
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $2)
    )
   )
   (i32.const 3552)
  )
  (if
   (i64.eq
    (call $../../lib/contract/Contract#get:receiver
     (i32.load
      (get_local $0)
     )
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $2)
    )
   )
   (call $../../src/dbmanager/DBManager<Account>#erase
    (get_local $3)
    (get_local $0)
   )
   (block
    (set_local $4
     (i64.sub
      (call $../../lib/contract/Contract#get:receiver
       (i32.load
        (get_local $0)
       )
      )
      (call $../../lib/contract/Contract#get:receiver
       (get_local $2)
      )
     )
    )
    (call $../../src/asset/Asset#setAmount
     (i32.load
      (get_local $0)
     )
     (get_local $4)
    )
    (call $../../src/dbmanager/DBManager<Account>#modify
     (get_local $3)
     (get_local $1)
     (get_local $0)
    )
   )
  )
 )
 (func $token/Token#transfer (; 116 ;) (type $iIIiiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_local $2)
   )
   (i32.const 2948)
  )
  (call $../../internal/action.d/env.require_auth
   (get_local $1)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../internal/action.d/env.is_account
    (get_local $2)
   )
   (i32.const 3032)
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1488)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (call $../../src/asset/Asset#symbolName
     (get_local $3)
    )
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (set_local $5
   (call $../../src/balance/CurrencyStats#constructor|trampoline
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
    (i64.const 0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $6)
    (call $../../src/asset/Asset#symbolName
     (get_local $3)
    )
    (get_local $5)
   )
   (i32.const 3120)
  )
  (call $../../internal/action.d/env.require_recipient
   (get_local $1)
  )
  (call $../../internal/action.d/env.require_recipient
   (get_local $2)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $3)
   )
   (i32.const 3204)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#getSymbol
     (get_local $3)
    )
    (call $../../src/asset/Asset#getSymbol
     (i32.load
      (get_local $5)
     )
    )
   )
   (i32.const 3276)
  )
  (call $../../src/utils/ultrain_assert
   (i32.le_s
    (i32.load
     (get_local $4)
    )
    (i32.const 256)
   )
   (i32.const 3364)
  )
  (call $token/Token#subBalance
   (get_local $0)
   (get_local $1)
   (get_local $3)
  )
  (call $token/Token#addBalance
   (get_local $0)
   (get_local $2)
   (get_local $3)
   (get_local $1)
  )
 )
 (func $main/apply (; 117 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $4
     (call $../../lib/contract/Contract#getDataStream
      (tee_local $6
       (call $../../lib/contract/Contract#constructor
        (i32.const 0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (tee_local $5
       (call $../../src/name_ex/NameEx#constructor
        (i32.const 0)
        (get_local $2)
        (get_local $3)
       )
      )
      (call $../../src/name_ex/NEX
       (i32.const 1520)
      )
     )
     (block
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (block (result i32)
        (set_global $~argc
         (i32.const 0)
        )
        (tee_local $5
         (call $../../src/asset/Asset#constructor|trampoline
          (i32.const 0)
          (i64.const 0)
          (i64.const 0)
         )
        )
       )
       (get_local $4)
      )
      (call $token/Token#create
       (get_local $6)
       (get_local $0)
       (get_local $5)
      )
     )
     (if
      (call $../../src/name_ex/NameEx._eq
       (get_local $5)
       (call $../../src/name_ex/NEX
        (i32.const 1904)
       )
      )
      (block
       (set_local $0
        (call $../../src/datastream/DataStream#read<u64>
         (get_local $4)
        )
       )
       (call $../../src/asset/Asset#deserialize
        (block (result i32)
         (set_global $~argc
          (i32.const 0)
         )
         (tee_local $5
          (call $../../src/asset/Asset#constructor|trampoline
           (i32.const 0)
           (i64.const 0)
           (i64.const 0)
          )
         )
        )
        (get_local $4)
       )
       (call $token/Token#issue
        (get_local $6)
        (get_local $0)
        (get_local $5)
        (call $../../src/datastream/DataStream#readString
         (get_local $4)
        )
       )
      )
      (if
       (call $../../src/name_ex/NameEx._eq
        (get_local $5)
        (call $../../src/name_ex/NEX
         (i32.const 2876)
        )
       )
       (block
        (set_local $0
         (call $../../src/datastream/DataStream#read<u64>
          (get_local $4)
         )
        )
        (set_local $1
         (call $../../src/datastream/DataStream#read<u64>
          (get_local $4)
         )
        )
        (call $../../src/asset/Asset#deserialize
         (block (result i32)
          (set_global $~argc
           (i32.const 0)
          )
          (tee_local $5
           (call $../../src/asset/Asset#constructor|trampoline
            (i32.const 0)
            (i64.const 0)
            (i64.const 0)
           )
          )
         )
         (get_local $4)
        )
        (call $token/Token#transfer
         (get_local $6)
         (get_local $0)
         (get_local $1)
         (get_local $5)
         (call $../../src/datastream/DataStream#readString
          (get_local $4)
         )
        )
       )
       (call $../../internal/system.d/env.ultrainio_exit
        (i32.const 0)
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 118 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $../../src/log/Log
   (call $~lib/allocator/arena/allocate_memory
    (i32.const 0)
   )
  )
  (set_global $../../src/balance/SYS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1284)
   )
  )
  (set_global $../../src/balance/SYS_NAME
   (i64.shr_u
    (get_global $../../src/balance/SYS)
    (i64.const 8)
   )
  )
 )
)
