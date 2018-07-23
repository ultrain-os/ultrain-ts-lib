(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $iv (func (param i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $iIv (func (param i32 i64)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $I (func (result i64)))
 (type $iiIIi (func (param i32 i32 i64 i64) (result i32)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $IIiiv (func (param i64 i64 i32 i32)))
 (type $iIIiii (func (param i32 i64 i64 i32 i32) (result i32)))
 (type $iIIiv (func (param i32 i64 i64 i32)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iiIi (func (param i32 i32 i64) (result i32)))
 (type $iIiIv (func (param i32 i64 i32 i64)))
 (type $iIIIv (func (param i32 i64 i64 i64)))
 (type $III (func (param i64 i64) (result i64)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $iIIiIiv (func (param i32 i64 i64 i32 i64 i32)))
 (type $iIiIi (func (param i32 i64 i32 i64) (result i32)))
 (type $iIIIIIv (func (param i32 i64 i64 i64 i64 i64)))
 (type $iIIIIi (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $II (func (param i64) (result i64)))
 (type $iIIiiIIII (func (param i32 i64 i64 i32 i32 i64 i64 i64) (result i64)))
 (type $iIiiIIv (func (param i32 i64 i32 i32 i64 i64)))
 (type $iIIIIIIIv (func (param i32 i64 i64 i64 i64 i64 i64 i64)))
 (type $iiIIIv (func (param i32 i32 i64 i64 i64)))
 (type $iiIiIi (func (param i32 i32 i64 i32 i64) (result i32)))
 (type $iiiIIi (func (param i32 i32 i32 i64 i64) (result i32)))
 (type $iIiiIv (func (param i32 i64 i32 i32 i64)))
 (type $iIII (func (param i32 i64 i64) (result i64)))
 (type $iiIiIIi (func (param i32 i32 i64 i32 i64 i64) (result i32)))
 (type $iIiiIi (func (param i32 i64 i32 i32 i64) (result i32)))
 (type $iiiIi (func (param i32 i32 i32 i64) (result i32)))
 (type $iIIiI (func (param i32 i64 i64 i32) (result i64)))
 (type $iIIII (func (param i32 i64 i64 i64) (result i64)))
 (type $iIIIII (func (param i32 i64 i64 i64 i64) (result i64)))
 (type $Iv (func (param i64)))
 (type $iIIiIiII (func (param i32 i64 i64 i32 i64 i32 i64) (result i64)))
 (type $IIIv (func (param i64 i64 i64)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "ultrainio_assert" (func $../../internal/system.d/env.ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $../../src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $../../src/log/env.ts_log_done))
 (import "env" "action_data_size" (func $../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "tapos_block_num" (func $../../internal/transaction.d/env.tapos_block_num (result i32)))
 (import "env" "set_result_str" (func $../../src/return/env.set_result_str (param i32)))
 (import "env" "current_sender" (func $../../internal/action.d/env.current_sender (result i64)))
 (import "env" "db_find_i64" (func $../../internal/db.d/env.db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $../../internal/db.d/env.db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "send_inline" (func $../../internal/action.d/env.send_inline (param i32 i32)))
 (import "env" "emit_evnet" (func $../../lib/events/env.emit_evnet (param i32 i64 i32 i64)))
 (import "env" "is_account" (func $../../internal/action.d/env.is_account (param i64) (result i32)))
 (import "env" "random_uint64" (func $../../internal/action.d/env.random_uint64 (param i64) (result i64)))
 (import "env" "current_time" (func $../../internal/system.d/env.current_time (result i64)))
 (import "env" "set_result_int" (func $../../src/return/env.set_result_int (param i64)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $../../lib/events/EventObject (mut i32) (i32.const 0))
 (global $../../src/balance/SYS (mut i64) (i64.const 0))
 (global $../../src/balance/SYS_NAME (mut i64) (i64.const 0))
 (global $consts/HyperDragonContract (mut i64) (i64.const 0))
 (global $consts/CEO (mut i64) (i64.const 0))
 (global $consts/CFO (mut i64) (i64.const 0))
 (global $consts/API (mut i64) (i64.const 0))
 (global $consts/SaleAuctionAddress (mut i64) (i64.const 0))
 (global $consts/SireAuctionAddress (mut i64) (i64.const 0))
 (global $consts/MatchAddress (mut i64) (i64.const 0))
 (global $../../internal/types/UGS (mut i64) (i64.const 0))
 (global $match/MatchInfoTable (mut i64) (i64.const 0))
 (global $match/MatchInfoTableScope (mut i64) (i64.const 0))
 (global $dragoncore/PROMO_CREATION_LIMIT (mut i64) (i64.const 15000))
 (global $dragoncore/GEN0_CREATION_LIMIT (mut i64) (i64.const 45000))
 (global $dragoncore/GEN0_STARTING_PRICE (mut i32) (i32.const 0))
 (global $dragoncore/GEN0_AUCTION_DURATION (mut i64) (i64.const 0))
 (global $HEAP_BASE i32 (i32.const 11412))
 (memory $0 1)
 (data (i32.const 12) "\01\00\00\00 ")
 (data (i32.const 20) "\01\00\00\00!")
 (data (i32.const 28) "\01\00\00\00\"")
 (data (i32.const 36) "\01\00\00\00#")
 (data (i32.const 44) "\01\00\00\00$")
 (data (i32.const 52) "\01\00\00\00%")
 (data (i32.const 60) "\01\00\00\00&")
 (data (i32.const 68) "\01\00\00\00\'")
 (data (i32.const 76) "\01\00\00\00(")
 (data (i32.const 84) "\01\00\00\00)")
 (data (i32.const 92) "\01\00\00\00*")
 (data (i32.const 100) "\01\00\00\00+")
 (data (i32.const 108) "\01\00\00\00,")
 (data (i32.const 116) "\01\00\00\00-")
 (data (i32.const 124) "\01\00\00\00.")
 (data (i32.const 132) "\01\00\00\00/")
 (data (i32.const 140) "\01\00\00\000")
 (data (i32.const 148) "\01\00\00\001")
 (data (i32.const 156) "\01\00\00\002")
 (data (i32.const 164) "\01\00\00\003")
 (data (i32.const 172) "\01\00\00\004")
 (data (i32.const 180) "\01\00\00\005")
 (data (i32.const 188) "\01\00\00\006")
 (data (i32.const 196) "\01\00\00\007")
 (data (i32.const 204) "\01\00\00\008")
 (data (i32.const 212) "\01\00\00\009")
 (data (i32.const 220) "\01\00\00\00:")
 (data (i32.const 228) "\01\00\00\00;")
 (data (i32.const 236) "\01\00\00\00<")
 (data (i32.const 244) "\01\00\00\00=")
 (data (i32.const 252) "\01\00\00\00>")
 (data (i32.const 260) "\01\00\00\00?")
 (data (i32.const 268) "\01\00\00\00@")
 (data (i32.const 276) "\01\00\00\00A")
 (data (i32.const 284) "\01\00\00\00B")
 (data (i32.const 292) "\01\00\00\00C")
 (data (i32.const 300) "\01\00\00\00D")
 (data (i32.const 308) "\01\00\00\00E")
 (data (i32.const 316) "\01\00\00\00F")
 (data (i32.const 324) "\01\00\00\00G")
 (data (i32.const 332) "\01\00\00\00H")
 (data (i32.const 340) "\01\00\00\00I")
 (data (i32.const 348) "\01\00\00\00J")
 (data (i32.const 356) "\01\00\00\00K")
 (data (i32.const 364) "\01\00\00\00L")
 (data (i32.const 372) "\01\00\00\00M")
 (data (i32.const 380) "\01\00\00\00N")
 (data (i32.const 388) "\01\00\00\00O")
 (data (i32.const 396) "\01\00\00\00P")
 (data (i32.const 404) "\01\00\00\00Q")
 (data (i32.const 412) "\01\00\00\00R")
 (data (i32.const 420) "\01\00\00\00T")
 (data (i32.const 428) "\01\00\00\00U")
 (data (i32.const 436) "\01\00\00\00V")
 (data (i32.const 444) "\01\00\00\00W")
 (data (i32.const 452) "\01\00\00\00X")
 (data (i32.const 460) "\01\00\00\00Y")
 (data (i32.const 468) "\01\00\00\00Z")
 (data (i32.const 476) "\01\00\00\00[")
 (data (i32.const 484) "\01\00\00\00\\")
 (data (i32.const 492) "\01\00\00\00]")
 (data (i32.const 500) "\01\00\00\00^")
 (data (i32.const 508) "\01\00\00\00_")
 (data (i32.const 516) "\01\00\00\00`")
 (data (i32.const 524) "\01\00\00\00a")
 (data (i32.const 532) "\01\00\00\00b")
 (data (i32.const 540) "\01\00\00\00c")
 (data (i32.const 548) "\01\00\00\00d")
 (data (i32.const 556) "\01\00\00\00e")
 (data (i32.const 564) "\01\00\00\00f")
 (data (i32.const 572) "\01\00\00\00g")
 (data (i32.const 580) "\01\00\00\00h")
 (data (i32.const 588) "\01\00\00\00i")
 (data (i32.const 596) "\01\00\00\00j")
 (data (i32.const 604) "\01\00\00\00k")
 (data (i32.const 612) "\01\00\00\00l")
 (data (i32.const 620) "\01\00\00\00m")
 (data (i32.const 628) "\01\00\00\00n")
 (data (i32.const 636) "\01\00\00\00o")
 (data (i32.const 644) "\01\00\00\00p")
 (data (i32.const 652) "\01\00\00\00q")
 (data (i32.const 660) "\01\00\00\00r")
 (data (i32.const 668) "\01\00\00\00s")
 (data (i32.const 676) "\01\00\00\00t")
 (data (i32.const 684) "\01\00\00\00u")
 (data (i32.const 692) "\01\00\00\00v")
 (data (i32.const 700) "\01\00\00\00w")
 (data (i32.const 708) "\01\00\00\00x")
 (data (i32.const 716) "\01\00\00\00y")
 (data (i32.const 724) "\01\00\00\00z")
 (data (i32.const 732) "\01\00\00\00{")
 (data (i32.const 740) "\01\00\00\00|")
 (data (i32.const 748) "\01\00\00\00}")
 (data (i32.const 756) "\01\00\00\00~")
 (data (i32.const 768) "\08\03\00\00_\00\00\00|\01\00\00\00\00\00\00\0c\00\00\00\14\00\00\00\1c\00\00\00$\00\00\00,\00\00\004\00\00\00<\00\00\00D\00\00\00L\00\00\00T\00\00\00\\\00\00\00d\00\00\00l\00\00\00t\00\00\00|\00\00\00\84\00\00\00\8c\00\00\00\94\00\00\00\9c\00\00\00\a4\00\00\00\ac\00\00\00\b4\00\00\00\bc\00\00\00\c4\00\00\00\cc\00\00\00\d4\00\00\00\dc\00\00\00\e4\00\00\00\ec\00\00\00\f4\00\00\00\fc\00\00\00\04\01\00\00\0c\01\00\00\14\01\00\00\1c\01\00\00$\01\00\00,\01\00\004\01\00\00<\01\00\00D\01\00\00L\01\00\00T\01\00\00\\\01\00\00d\01\00\00l\01\00\00t\01\00\00|\01\00\00\84\01\00\00\8c\01\00\00\94\01\00\00\9c\01\00\00\9c\01\00\00\a4\01\00\00\ac\01\00\00\b4\01\00\00\bc\01\00\00\c4\01\00\00\cc\01\00\00\d4\01\00\00\dc\01\00\00\e4\01\00\00\ec\01\00\00\f4\01\00\00\fc\01\00\00\04\02\00\00\0c\02\00\00\14\02\00\00\1c\02\00\00$\02\00\00,\02\00\004\02\00\00<\02\00\00D\02\00\00L\02\00\00T\02\00\00\\\02\00\00d\02\00\00l\02\00\00t\02\00\00|\02\00\00\84\02\00\00\8c\02\00\00\94\02\00\00\9c\02\00\00\a4\02\00\00\ac\02\00\00\b4\02\00\00\bc\02\00\00\c4\02\00\00\cc\02\00\00\d4\02\00\00\dc\02\00\00\e4\02\00\00\ec\02\00\00\f4\02")
 (data (i32.const 1288) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1320) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1380) "\03\00\00\00U\00G\00S")
 (data (i32.const 1392) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.")
 (data (i32.const 1484) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1516) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 ")
 (data (i32.const 1616) "\0b\00\00\00m\00i\00m\00a\00.\00d\00r\00a\00g\00o\00n")
 (data (i32.const 1644) "\08\00\00\00m\00i\00m\00a\00.\00c\00e\00o")
 (data (i32.const 1664) "\08\00\00\00m\00i\00m\00a\00.\00c\00f\00o")
 (data (i32.const 1684) "\08\00\00\00m\00i\00m\00a\00.\00a\00p\00i")
 (data (i32.const 1704) "\n\00\00\00m\00m\00.\00s\00a\00l\00e\00a\00u\00c")
 (data (i32.const 1728) "\n\00\00\00m\00m\00.\00s\00i\00r\00e\00a\00u\00c")
 (data (i32.const 1752) "\08\00\00\00m\00m\00.\00m\00a\00t\00c\00h")
 (data (i32.const 1772) "\n\00\00\00h\00d\00.\00m\00a\00t\00c\00h\00e\00s")
 (data (i32.const 1796) "\t\00\00\00m\00a\00t\00.\00s\00c\00o\00p\00e")
 (data (i32.const 1820) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1880) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1892) "\"\00\00\00o\00n\00l\00y\00 \00C\00E\00O\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 1964) "2\00\00\00t\00h\00e\00 \00c\00u\00t\00 \00i\00s\00 \00l\00a\00r\00g\00e\00r\00 \00t\00h\00a\00n\00 \001\000\000\000\000\00,\00 \00a\00n\00d\00 \00i\00t\00 \00i\00s\00 \00f\00o\00r\00b\00i\00d\00d\00e\00n\00.")
 (data (i32.const 2068) "\18\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 2120) "\08\00\00\00a\00c\00c\00o\00u\00n\00t\00s")
 (data (i32.const 2140) "\0b\00\00\00u\00t\00r\00i\00o\00.\00t\00o\00k\00e\00n")
 (data (i32.const 2168) "-\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00o\00m\00p\00a\00r\00e\00 \00A\00s\00s\00e\00t\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00_\00s\00y\00m\00b\00o\00l\00.")
 (data (i32.const 2264) "\18\00\00\00a\00u\00c\00t\00i\00o\00n\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 2316) "\06\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 2332) "\08\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 2352) "\08\00\00\00 \00a\00c\00t\00o\00r\00:\00 ")
 (data (i32.const 2372) "\0d\00\00\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00:\00 ")
 (data (i32.const 2408) "p\t\00\00\05\00\00\00(\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d")
 (data (i32.const 2480) "\b8\t\00\00\05\00\00\00(\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 2552) "\16\00\00\00m\00a\00t\00c\00h\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 2600) "\"\00\00\00o\00n\00l\00y\00 \00C\00F\00O\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 2672) "\1c\00\00\00d\00r\00a\00g\00o\00n\00c\00o\00r\00e\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e\00.")
 (data (i32.const 2732) "\0c\00\00\00U\00p\00d\00a\00t\00e\00E\00x\00t\00e\00n\00d")
 (data (i32.const 2760) "\08\00\00\00d\00r\00a\00g\00o\00n\00I\00d")
 (data (i32.const 2780) "0\00\00\00p\00a\00r\00a\00m\00e\00t\00e\00r\00 \00\'\00k\00e\00y\00\'\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00 \00o\00r\00 \00e\00m\00p\00t\00y\00 \00s\00t\00r\00i\00n\00g\00.")
 (data (i32.const 2880) "\06\00\00\00e\00x\00t\00e\00n\00d")
 (data (i32.const 2896) "\1d\00\00\00e\00v\00e\00n\00t\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00p\00e\00c\00i\00f\00i\00e\00d\00.")
 (data (i32.const 2960) "!\00\00\00e\00v\00e\00n\00t\00s\00 \00s\00t\00r\00i\00n\00g\00 \00i\00s\00 \00l\00o\00n\00g\00e\00r\00 \00t\00h\00a\00n\00 \001\002\007\00.")
 (data (i32.const 3032) "&\00\00\00e\00v\00e\00n\00t\00 \00k\00e\00y\00\'\00s\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00l\00o\00n\00g\00e\00r\00 \00t\00h\00a\00n\00 \001\002\007\00.")
 (data (i32.const 3112) "\0b\00\00\00U\00p\00d\00a\00t\00e\00T\00i\00t\00l\00e")
 (data (i32.const 3140) "\06\00\00\00t\00i\00t\00l\00e\00s")
 (data (i32.const 3156) "\0d\00\00\00F\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n")
 (data (i32.const 3188) "\0d\00\00\00c\00o\00o\00l\00d\00o\00w\00n\00I\00n\00d\00e\00x")
 (data (i32.const 3220) "\0c\00\00\00c\00o\00o\00l\00d\00o\00w\00n\00T\00i\00m\00e")
 (data (i32.const 3248) "\15\00\00\00f\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n\00E\00n\00d\00b\00l\00o\00c\00k")
 (data (i32.const 3296) "\"\00\00\00t\00h\00i\00s\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00c\00u\00r\00r\00e\00n\00t\00l\00y\00 \00p\00a\00u\00s\00e\00d\00.")
 (data (i32.const 3368) ")\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00h\00e\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 3456) "\"\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00j\00o\00i\00n\00s\00 \00t\00o\00o\00 \00m\00a\00n\00y\00 \00m\00a\00t\00c\00h\00e\00s\00.")
 (data (i32.const 3528) "\15\00\00\00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 3576) "\17\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00p\00r\00e\00g\00n\00a\00n\00t\00.")
 (data (i32.const 3628) "!\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00s\00t\00i\00l\00l\00 \00c\00o\00o\00l\00i\00n\00g\00 \00d\00o\00w\00n\00.")
 (data (i32.const 3700) "\"\00\00\00t\00h\00e\00 \00s\00e\00n\00d\00e\00r\00 \00c\00a\00n\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 3772) "\18\00\00\00\'\00t\00o\00\'\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 3824) "&\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00d\00r\00a\00g\00o\00n\00 \00t\00o\00 \00m\00i\00m\00a\00.\00d\00r\00a\00g\00o\00n")
 (data (i32.const 3904) ".\00\00\00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00s\00 \00t\00o\00 \00m\00e\00s\00s\00a\00g\00e\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 4000) "\1f\00\00\00\'\00f\00r\00o\00m\00\'\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 4068) "1\00\00\00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00a\00n\00y\00 \00t\00o\00k\00e\00n\00 \00c\00a\00n\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00f\00r\00o\00m\00.")
 (data (i32.const 4172) "\08\00\00\00T\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 4192) "\04\00\00\00f\00r\00o\00m")
 (data (i32.const 4204) "\02\00\00\00t\00o")
 (data (i32.const 4212) "\07\00\00\00t\00o\00k\00e\00n\00I\00d")
 (data (i32.const 4232) "+\00\00\00s\00u\00p\00p\00l\00i\00e\00d\00 \00f\00e\00e\00 \00i\00s\00 \00s\00m\00a\00l\00l\00 \00t\00h\00a\00n\00 \00t\00h\00e\00 \00l\00o\00w\00e\00r\00 \00l\00i\00m\00i\00t\00.")
 (data (i32.const 4324) "\18\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00i\00s\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 4376) ".\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00g\00e\00n\00e\00 \00i\00s\00 \00n\00o\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \00t\00h\00e\00 \00g\00e\00n\00e\00 \00l\00i\00m\00i\00t\00.")
 (data (i32.const 4472) "\07\00\00\00m\00a\00t\00c\00h\00I\00d")
 (data (i32.const 4492) "\08\00\00\00j\00o\00i\00n\00U\00s\00e\00r")
 (data (i32.const 4512) "\t\00\00\00d\00r\00a\00g\00o\00n\00_\00i\00d")
 (data (i32.const 4536) "\t\00\00\00J\00o\00i\00n\00M\00a\00t\00c\00h")
 (data (i32.const 4560) "\0c\00\00\00C\00o\00m\00p\00l\00e\00t\00e\00J\00o\00i\00n")
 (data (i32.const 4588) "\1f\00\00\00t\00o\00o\00 \00m\00a\00n\00y\00 \00g\00e\00n\000\00 \00a\00u\00c\00t\00i\00o\00n\00s\00 \00c\00r\00e\00a\00t\00e\00d\00.")
 (data (i32.const 4656) "8\12\00\00\0f\00\00\00<\00\00\00\00\00\00\00\a8\05\00\00\d0\04\00\00<\04\00\00\ba\03\00\00H\03\00\00\e3\02\00\00\8a\02\00\00<\02\00\00\f7\01\00\00\bb\01\00\00\86\01\00\00W\01\00\00.\01\00\00\n\01\00\00\ea")
 (data (i32.const 4792) "\c0\12\00\00\03\00\00\00\18\00\00\00\00\00\00\00F\00\00\00\00\00\00\00\1d\00\00\00\00\00\00\00\01")
 (data (i32.const 4832) "\e8\12\00\00\1e\00\00\00\f0\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\"\00\00\00\00\00\00\00\"\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\"\00\00\00\00\00\00\00\17")
 (data (i32.const 5096) "\f0\13\00\00\1e\00\00\00\f0\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\"")
 (data (i32.const 5360) "\05\00\00\00B\00i\00r\00t\00h")
 (data (i32.const 5376) "\05\00\00\00o\00w\00n\00e\00r")
 (data (i32.const 5392) "\08\00\00\00m\00a\00t\00r\00o\00n\00I\00d")
 (data (i32.const 5412) "\06\00\00\00s\00i\00r\00e\00I\00d")
 (data (i32.const 5428) "\03\00\00\00g\00e\00n")
 (data (i32.const 5440) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 5492) "-\00\00\00t\00h\00e\00 \00a\00u\00c\00t\00i\00o\00n\00\'\00s\00 \00d\00u\00r\00a\00t\00i\00o\00n\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \001\00 \00m\00i\00n\00u\00t\00e\00.")
 (data (i32.const 5588) "\0e\00\00\00A\00u\00c\00t\00i\00o\00n\00C\00r\00e\00a\00t\00e\00d")
 (data (i32.const 5620) "\0d\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00P\00r\00i\00c\00e")
 (data (i32.const 5652) "\0b\00\00\00e\00n\00d\00i\00n\00g\00P\00r\00i\00c\00e")
 (data (i32.const 5680) "\08\00\00\00d\00u\00r\00a\00t\00i\00o\00n")
 (data (i32.const 5700) "\19\00\00\00t\00o\00o\00 \00m\00a\00n\00y\00 \00d\00r\00a\00g\00o\00n\00s\00 \00c\00r\00e\00a\00t\00e\00d\00.")
 (data (i32.const 5756) "0\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 5856) "\15\00\00\00d\00r\00a\00g\00o\00n\00 \00i\00d\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 5904) "(\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 5988) ";\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00r\00e\00e\00d\00 \00w\00i\00t\00h\00 \00t\00h\00e\00 \00s\00i\00r\00e\00 \00d\00r\00a\00g\00o\00n\00s\00 \00v\00i\00a\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 6112) "\1c\00\00\00t\00h\00e\00 \00t\00o\00k\00e\00n\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 6172) "\15\00\00\00b\00i\00d\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00t\00o\00o\00 \00l\00o\00w\00.")
 (data (i32.const 6220) " \00\00\00t\00h\00i\00s\00 \00t\00o\00k\00e\00n\00 \00i\00d\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 6288) "\'\00\00\00b\00i\00d\00 \00a\00m\00o\00u\00n\00t\00 \00i\00s\00 \00l\00o\00w\00e\00r\00 \00t\00h\00a\00n\00 \00c\00u\00r\00r\00e\00n\00t\00 \00p\00r\00i\00c\00e\00.")
 (data (i32.const 6372) "\0f\00\00\00s\00e\00l\00l\00e\00r\00 \00p\00r\00o\00c\00e\00e\00d\00s")
 (data (i32.const 6408) "\n\00\00\00b\00i\00d\00 \00e\00x\00c\00e\00s\00s")
 (data (i32.const 6432) "\11\00\00\00A\00u\00c\00t\00i\00o\00n\00S\00u\00c\00c\00e\00s\00s\00f\00u\00l")
 (data (i32.const 6472) "\n\00\00\00t\00o\00t\00a\00l\00P\00r\00i\00c\00e")
 (data (i32.const 6496) "\06\00\00\00w\00i\00n\00n\00e\00r")
 (data (i32.const 6512) "\06\00\00\00s\00e\00l\00l\00e\00r")
 (data (i32.const 6528) "\1d\00\00\00\'\00t\00o\00\'\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00 \00a\00c\00c\00o\00u\00n\00t\00 \00n\00a\00m\00e\00.")
 (data (i32.const 6592) " \00\00\00c\00a\00n\00 \00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00\'\00t\00o\00\'\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 6660) "\'\00\00\00c\00a\00n\00\'\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00a\00l\00e\00 \00a\00u\00c\00t\00i\00o\00n\00 \00a\00d\00d\00r\00e\00s\00s\00.")
 (data (i32.const 6744) "\'\00\00\00c\00a\00n\00\'\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00i\00r\00e\00 \00a\00u\00c\00t\00i\00o\00n\00 \00a\00d\00d\00r\00e\00s\00s\00.")
 (data (i32.const 6828) "\19\00\00\00y\00o\00u\00 \00d\00o\00n\00\'\00t\00 \00o\00w\00n\00 \00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 6884) "\n\00\00\00G\00i\00v\00e\00D\00r\00a\00g\00o\00n")
 (data (i32.const 6908) "\08\00\00\00P\00r\00e\00g\00n\00a\00n\00t")
 (data (i32.const 6928) "\10\00\00\00c\00o\00o\00l\00d\00o\00w\00n\00E\00n\00d\00B\00l\00o\00c\00k")
 (data (i32.const 6964) ")\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 7052) "!\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 7124) ",\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00d\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 7216) "\18\00\00\00t\00h\00i\00s\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00p\00r\00e\00g\00n\00e\00n\00t\00.")
 (data (i32.const 7268) "\0b\00\00\00U\00p\00d\00a\00t\00e\00G\00e\00n\00e\00s")
 (data (i32.const 7296) "\05\00\00\00g\00e\00n\00e\00s")
 (data (i32.const 7312) "\"\00\00\00o\00n\00l\00y\00 \00A\00P\00I\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 7384) ")\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00v\00a\00l\00i\00d\00,\00 \00i\00t\00s\00 \00b\00i\00r\00t\00h\00 \00t\00i\00m\00e\00 \00i\00s\00 \000\00.")
 (data (i32.const 7472) "\0f\00\00\00g\00i\00v\00e\00 \00b\00i\00r\00t\00h\00 \00f\00e\00e\00.")
 (data (i32.const 7508) "!\00\00\00p\00a\00y\00e\00r\00 \00i\00s\00 \00l\00o\00w\00e\00r\00 \00t\00h\00a\00n\00 \00a\00u\00t\00o\00B\00i\00r\00t\00h\00F\00e\00e\00.")
 (data (i32.const 7580) "#\00\00\00t\00h\00x\00 \00s\00e\00n\00d\00e\00r\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00.")
 (data (i32.const 7656) ".\00\00\00m\00a\00t\00r\00o\00n\00I\00d\00 \00a\00n\00d\00 \00s\00i\00r\00e\00I\00d\00 \00i\00s\00 \00n\00o\00t\00 \00p\00r\00e\00m\00i\00t\00t\00e\00d\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 7752) "\1d\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 7816) "\1b\00\00\00s\00i\00r\00e\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 7876) "\1f\00\00\00m\00a\00t\00r\00o\00n\00 \00a\00n\00d\00 \00s\00i\00r\00e\00 \00c\00a\00n\00 \00n\00o\00t\00 \00m\00a\00t\00i\00n\00g\00.")
 (data (i32.const 7944) "\12\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00d\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 7984) "\13\00\00\00s\00i\00r\00e\00 \00i\00d\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 8028) "\04\00\00\00t\00r\00u\00e")
 (data (i32.const 8040) "\05\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 8056) "\0b\00\00\00S\00e\00t\00B\00i\00r\00t\00h\00F\00e\00e")
 (data (i32.const 8084) "\03\00\00\00f\00e\00e")
 (data (i32.const 8096) "/\00\00\00t\00h\00e\00 \00s\00i\00r\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00s\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 8196) "\1a\00\00\00y\00o\00u\00 \00d\00o\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 8252) "\08\00\00\00A\00p\00p\00r\00o\00v\00a\00l")
 (data (i32.const 8272) ",\00\00\00s\00t\00a\00r\00t\00M\00a\00t\00c\00h\00 \00f\00a\00i\00l\00e\00d\00,\00 \00_\00i\00d\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00m\00a\00t\00c\00h\00_\00i\00d")
 (data (i32.const 8364) "\n\00\00\00M\00a\00t\00c\00h\00S\00t\00a\00r\00t")
 (data (i32.const 8388) "\t\00\00\00m\00a\00t\00c\00h\00T\00y\00p\00e")
 (data (i32.const 8412) "\n\00\00\00m\00a\00t\00c\00h\00L\00e\00v\00e\00l")
 (data (i32.const 8436) "\06\00\00\00m\00a\00x\00N\00u\00m")
 (data (i32.const 8452) "\06\00\00\00r\00e\00g\00f\00e\00e")
 (data (i32.const 8468) "\0c\00\00\00a\00w\00a\00r\00d\00f\00e\00e\00_\001\00s\00t")
 (data (i32.const 8496) "\0c\00\00\00a\00w\00a\00r\00d\00f\00e\00e\00_\002\00s\00t")
 (data (i32.const 8524) "\0c\00\00\00a\00w\00a\00r\00d\00f\00e\00e\00_\003\00s\00t")
 (data (i32.const 8552) "\15\00\00\00b\00e\00t\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 8600) "\1b\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00t\00 \00t\00h\00i\00s\00 \00m\00a\00t\00c\00h\00 \00n\00o\00w\00.")
 (data (i32.const 8660) ")\00\00\00r\00o\00u\00n\00d\00 \00d\00i\00s\00m\00a\00t\00c\00h\00e\00d\00 \00f\00o\00r\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00 \00a\00n\00d\00 \00b\00e\00t\00i\00d\00.")
 (data (i32.const 8748) "\1b\00\00\00y\00o\00u\00 \00d\00i\00d\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 8808) "\0b\00\00\00G\00u\00e\00s\00s\00D\00r\00a\00g\00o\00n")
 (data (i32.const 8836) "\05\00\00\00r\00o\00u\00n\00d")
 (data (i32.const 8852) "\05\00\00\00b\00e\00t\00I\00d")
 (data (i32.const 8868) "\07\00\00\00b\00e\00t\00u\00s\00e\00r")
 (data (i32.const 8888) "\06\00\00\00b\00e\00t\00f\00e\00e")
 (data (i32.const 8904) "\05\00\00\00r\00a\00t\00e\001")
 (data (i32.const 8920) "\05\00\00\00r\00a\00g\00e\002")
 (data (i32.const 8936) "\16\00\00\00m\00a\00t\00c\00h\00 \00s\00t\00a\00t\00u\00s\00 \00i\00s\00 \00f\00a\00l\00s\00e\00.")
 (data (i32.const 8984) "\0f\00\00\00m\00a\00t\00c\00h\00 \00s\00t\00e\00p\00 \00i\00s\00 \000")
 (data (i32.const 9020) "\0b\00\00\00C\00r\00e\00a\00t\00e\00G\00r\00o\00u\00p")
 (data (i32.const 9048) "\t\00\00\00d\00r\00a\00g\00o\00n\00I\00d\001")
 (data (i32.const 9072) "\t\00\00\00d\00r\00a\00g\00o\00n\00I\00d\002")
 (data (i32.const 9096) "\07\00\00\00l\00e\00f\00t\00_\00c\00n")
 (data (i32.const 9116) "\n\00\00\00M\00a\00t\00c\00h\00P\00a\00u\00s\00e")
 (data (i32.const 9140) "\0d\00\00\00C\00o\00m\00p\00l\00e\00t\00e\00G\00r\00o\00u\00p")
 (data (i32.const 9172) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 9216) "\0b\00\00\00F\00i\00n\00a\00l\00R\00e\00s\00u\00l\00t")
 (data (i32.const 9244) "\n\00\00\00d\00r\00a\00g\00o\00n\00I\00d\00_\001")
 (data (i32.const 9268) "\n\00\00\00d\00r\00a\00g\00o\00n\00I\00d\00_\002")
 (data (i32.const 9292) "\0d\00\00\00w\00i\00n\00n\00e\00r\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 9324) "\11\00\00\002\00n\00d\00 \00w\00i\00n\00n\00e\00r\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 9364) "\11\00\00\002\00r\00d\00 \00w\00i\00n\00n\00e\00r\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 9404) "\n\00\00\00D\00r\00a\00g\00o\00n\00L\00o\00s\00e")
 (data (i32.const 9428) "\0d\00\00\00D\00r\00a\00g\00o\00n\00V\00i\00c\00t\00o\00r\00y")
 (data (i32.const 9460) "\07\00\00\00B\00e\00t\00O\00v\00e\00r")
 (data (i32.const 9480) "\05\00\00\00b\00e\00t\00i\00d")
 (data (i32.const 9496) "\0f\00\00\00S\00e\00m\00i\00f\00i\00n\00a\00l\00R\00e\00s\00u\00l\00t")
 (data (i32.const 9532) "\n\00\00\00d\00r\00a\00g\00o\00n\00i\00d\00_\003")
 (data (i32.const 9556) "\n\00\00\00d\00r\00a\00g\00o\00n\00I\00d\00_\004")
 (data (i32.const 9580) "\10\00\00\00b\00e\00t\00t\00e\00r\00 \00t\00r\00a\00n\00s\00f\00e\00r\00.")
 (data (i32.const 9616) "\08\00\00\00G\00u\00e\00s\00s\00W\00i\00n")
 (data (i32.const 9636) "\04\00\00\00u\00s\00e\00r")
 (data (i32.const 9648) "\05\00\00\00p\00r\00i\00c\00e")
 (data (i32.const 9664) "\05\00\00\00m\00o\00n\00e\00y")
 (data (i32.const 9680) "\0f\00\00\00G\00u\00e\00s\00s\00L\00o\00s\00s\00R\00e\00t\00u\00r\00n")
 (data (i32.const 9716) "\t\00\00\00N\00e\00x\00t\00R\00o\00u\00n\00d")
 (data (i32.const 9740) "\t\00\00\00R\00o\00u\00n\00d\00O\00v\00e\00r")
 (data (i32.const 9764) "\0d\00\00\00C\00o\00m\00p\00l\00e\00t\00e\00M\00a\00t\00c\00h")
 (data (i32.const 9796) "$\00\00\00j\00o\00i\00n\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 9872) "\'\00\00\00r\00e\00g\00f\00e\00e\00s\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 9956) "/\00\00\00r\00e\00w\00a\00r\00d\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 10056) "\t\00\00\00g\00e\00t\00D\00r\00a\00g\00o\00n")
 (data (i32.const 10080) "\17\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00A\00u\00c\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e\00s")
 (data (i32.const 10132) "\0f\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00B\00a\00l\00a\00n\00c\00e")
 (data (i32.const 10168) "\0b\00\00\00u\00p\00d\00t\00e\00E\00x\00t\00e\00n\00d")
 (data (i32.const 10196) "\t\00\00\00s\00e\00t\00T\00i\00t\00l\00e\00s")
 (data (i32.const 10220) "\0d\00\00\00f\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n")
 (data (i32.const 10252) "\t\00\00\00j\00o\00i\00n\00M\00a\00t\00c\00h")
 (data (i32.const 10276) "\15\00\00\00s\00e\00t\00S\00p\00e\00c\00i\00a\00l\00D\00r\00a\00g\00o\00n\00L\00i\00m\00i\00t")
 (data (i32.const 10324) "\15\00\00\00i\00n\00c\00r\00e\00a\00s\00e\00S\00p\00e\00c\00i\00a\00l\00D\00r\00a\00g\00o\00n")
 (data (i32.const 10372) "\11\00\00\00c\00r\00e\00a\00t\00e\00G\00e\00n\000\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 10412) "\11\00\00\00c\00r\00e\00a\00t\00e\00P\00r\00o\00m\00o\00D\00r\00a\00g\00o\00n")
 (data (i32.const 10452) "\12\00\00\00b\00i\00d\00O\00n\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 10492) "\15\00\00\00s\00e\00t\00S\00a\00l\00e\00A\00u\00c\00t\00i\00o\00n\00A\00d\00d\00r\00e\00s\00s")
 (data (i32.const 10540) "\17\00\00\00s\00e\00t\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n\00A\00d\00d\00r\00e\00s\00s")
 (data (i32.const 10592) "\13\00\00\00c\00r\00e\00a\00t\00e\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 10636) "\11\00\00\00c\00r\00e\00a\00t\00e\00S\00a\00l\00e\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 10676) "\0b\00\00\00u\00p\00d\00a\00t\00e\00G\00e\00n\00e\00s")
 (data (i32.const 10704) "\t\00\00\00g\00i\00v\00e\00B\00i\00r\00t\00h")
 (data (i32.const 10728) "\0d\00\00\00b\00r\00e\00e\00d\00W\00i\00t\00h\00A\00u\00t\00o")
 (data (i32.const 10760) "\0c\00\00\00c\00a\00n\00B\00r\00e\00e\00d\00W\00i\00t\00h")
 (data (i32.const 10788) "\n\00\00\00i\00s\00P\00r\00e\00g\00n\00a\00n\00t")
 (data (i32.const 10812) "\0e\00\00\00i\00s\00R\00e\00a\00d\00y\00T\00o\00B\00r\00e\00e\00d")
 (data (i32.const 10844) "\0f\00\00\00s\00e\00t\00A\00u\00t\00o\00B\00i\00r\00t\00h\00F\00e\00e")
 (data (i32.const 10880) "\0d\00\00\00a\00p\00p\00r\00o\00v\00e\00S\00i\00r\00i\00n\00g")
 (data (i32.const 10912) "\t\00\00\00b\00a\00l\00a\00n\00c\00e\00O\00f")
 (data (i32.const 10936) "\07\00\00\00a\00p\00p\00r\00o\00v\00e")
 (data (i32.const 10956) "\0c\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m")
 (data (i32.const 10984) "\0b\00\00\00t\00o\00t\00a\00l\00S\00u\00p\00p\00l\00y")
 (data (i32.const 11012) "\07\00\00\00o\00w\00n\00e\00r\00O\00f")
 (data (i32.const 11032) "\0d\00\00\00t\00o\00k\00e\00n\00s\00O\00f\00O\00w\00n\00e\00r")
 (data (i32.const 11064) "\n\00\00\00s\00t\00a\00r\00t\00M\00a\00t\00c\00h")
 (data (i32.const 11088) "\t\00\00\00i\00s\00C\00a\00n\00J\00o\00i\00n")
 (data (i32.const 11112) "\05\00\00\00g\00u\00e\00s\00s")
 (data (i32.const 11128) "\08\00\00\00n\00e\00x\00t\00S\00t\00e\00p")
 (data (i32.const 11148) "\0b\00\00\00g\00e\00t\00E\00n\00t\00r\00y\00F\00e\00e")
 (data (i32.const 11176) "\0d\00\00\00s\00e\00t\00F\00i\00g\00h\00t\00L\00i\00m\00i\00t")
 (data (i32.const 11208) "\0d\00\00\00s\00e\00t\00A\00w\00a\00r\00d\00L\00i\00m\00i\00t")
 (data (i32.const 11240) "\0d\00\00\00s\00e\00t\00G\00r\00o\00u\00p\00L\00i\00m\00i\00t")
 (data (i32.const 11272) "\0c\00\00\00s\00e\00t\00J\00o\00i\00n\00L\00i\00m\00i\00t")
 (data (i32.const 11300) "\n\00\00\00s\00e\00t\00R\00e\00g\00f\00e\00e\00s")
 (data (i32.const 11324) "\11\00\00\00s\00e\00t\00R\00e\00w\00a\00r\00d\00M\00u\00l\00t\00i\00p\00l\00e")
 (data (i32.const 11364) "\0b\00\00\00s\00e\00t\00G\00e\00n\00L\00i\00m\00i\00t")
 (data (i32.const 11392) "\08\00\00\00d\00i\00s\00s\00o\00l\00v\00e")
 (export "HyperDragonContract#constructor" (func $index/HyperDragonContract#constructor))
 (export "Contract#get:_receiver" (func $Contract#get:_receiver))
 (export "Contract#set:_receiver" (func $Contract#set:_receiver))
 (export "HyperDragonContract#getDragon" (func $index/HyperDragonContract#getDragon))
 (export "HyperDragonContract#withdrawAuctionBalances" (func $index/HyperDragonContract#withdrawAuctionBalances))
 (export "HyperDragonContract#withdrawBalance" (func $index/HyperDragonContract#withdrawBalance))
 (export "HyperDragonContract#updteExtend" (func $index/HyperDragonContract#updteExtend))
 (export "HyperDragonContract#setTitles" (func $index/HyperDragonContract#setTitles))
 (export "HyperDragonContract#fightCooldown" (func $index/HyperDragonContract#fightCooldown))
 (export "HyperDragonContract#joinMatch" (func $index/HyperDragonContract#joinMatch))
 (export "HyperDragonContract#setSpecialDragonLimit" (func $index/HyperDragonContract#setSpecialDragonLimit))
 (export "HyperDragonContract#increaseSpecialDragon" (func $index/HyperDragonContract#increaseSpecialDragon))
 (export "HyperDragonContract#createGen0Auction" (func $index/HyperDragonContract#createGen0Auction))
 (export "HyperDragonContract#createPromoDragon" (func $index/HyperDragonContract#createPromoDragon))
 (export "HyperDragonContract#bidOnSiringAuction" (func $index/HyperDragonContract#bidOnSiringAuction))
 (export "HyperDragonContract#setSaleAuctionAddress" (func $index/HyperDragonContract#setSaleAuctionAddress))
 (export "HyperDragonContract#setSiringAuctionAddress" (func $index/HyperDragonContract#setSiringAuctionAddress))
 (export "HyperDragonContract#createSiringAuction" (func $index/HyperDragonContract#createSiringAuction))
 (export "HyperDragonContract#createSaleAuction" (func $index/HyperDragonContract#createSaleAuction))
 (export "HyperDragonContract#updateGenes" (func $index/HyperDragonContract#updateGenes))
 (export "HyperDragonContract#giveBirth" (func $index/HyperDragonContract#giveBirth))
 (export "HyperDragonContract#breedWithAuto" (func $index/HyperDragonContract#breedWithAuto))
 (export "HyperDragonContract#canBreedWith" (func $index/HyperDragonContract#canBreedWith))
 (export "HyperDragonContract#isPregnant" (func $index/HyperDragonContract#isPregnant))
 (export "HyperDragonContract#isReadyToBreed" (func $index/HyperDragonContract#isReadyToBreed))
 (export "HyperDragonContract#setAutoBirthFee" (func $index/HyperDragonContract#setAutoBirthFee))
 (export "HyperDragonContract#approveSiring" (func $index/HyperDragonContract#approveSiring))
 (export "HyperDragonContract#balanceOf" (func $index/HyperDragonContract#balanceOf))
 (export "HyperDragonContract#transfer" (func $saleclockauction/ClockAuctionBase#transfer))
 (export "HyperDragonContract#approve" (func $index/HyperDragonContract#approve))
 (export "HyperDragonContract#transferFrom" (func $index/HyperDragonContract#transferFrom))
 (export "HyperDragonContract#totalSupply" (func $index/HyperDragonContract#totalSupply))
 (export "HyperDragonContract#ownerOf" (func $index/HyperDragonContract#ownerOf))
 (export "HyperDragonContract#tokensOfOwner" (func $index/HyperDragonContract#tokensOfOwner))
 (export "HyperDragonContract#startMatch" (func $index/HyperDragonContract#startMatch))
 (export "HyperDragonContract#isCanJoin" (func $index/HyperDragonContract#isCanJoin))
 (export "HyperDragonContract#guess" (func $index/HyperDragonContract#guess))
 (export "HyperDragonContract#nextStep" (func $index/HyperDragonContract#nextStep))
 (export "HyperDragonContract#getEntryFee" (func $index/HyperDragonContract#getEntryFee))
 (export "HyperDragonContract#setFightLimit" (func $index/HyperDragonContract#setFightLimit))
 (export "HyperDragonContract#setAwardLimit" (func $index/HyperDragonContract#setAwardLimit))
 (export "HyperDragonContract#setGroupLimit" (func $index/HyperDragonContract#setGroupLimit))
 (export "HyperDragonContract#setJoinLimit" (func $index/HyperDragonContract#setJoinLimit))
 (export "HyperDragonContract#setRegfees" (func $index/HyperDragonContract#setRegfees))
 (export "HyperDragonContract#setRewardMultiple" (func $index/HyperDragonContract#setRewardMultiple))
 (export "HyperDragonContract#setGenLimit" (func $index/HyperDragonContract#setGenLimit))
 (export "HyperDragonContract#dissolve" (func $index/HyperDragonContract#dissolve))
 (export "apply" (func $index/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 18 ;) (type $ii) (param $0 i32) (result i32)
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
      (tee_local $0
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
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $4
          (tee_local $3
           (i32.shr_u
            (i32.and
             (i32.add
              (i32.sub
               (get_local $0)
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
          (get_local $2)
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
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/internal/arraybuffer/computeSize (; 19 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
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
 (func $~lib/memory/set_memory (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<String>#constructor (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
 (func $~lib/array/Array<u64>#constructor (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   (call $~lib/internal/arraybuffer/allocUnsafe
    (tee_local $3
     (i32.shl
      (get_local $1)
      (i32.const 3)
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
 (func $../../lib/events/_EventObject#constructor (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store
     (tee_local $1
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (block (result i32)
      (i32.store
       (tee_local $0
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 8)
        )
       )
       (call $~lib/array/Array<String>#constructor
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.store offset=4
       (get_local $0)
       (call $~lib/array/Array<String>#constructor
        (i32.const 0)
        (i32.const 0)
       )
      )
      (get_local $0)
     )
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<String>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $1)
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
 (func $~lib/string/String#charCodeAt (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
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
 (func $~lib/memory/copy_memory (; 27 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/move_memory (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u8>#push (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
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
 (func $../../src/utils/toUTF8Array (; 31 ;) (type $ii) (param $0 i32) (result i32)
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
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (i32.load
       (get_local $0)
      )
     )
    )
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
    (br $repeat|0)
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
 (func $../../src/utils/string2cstr (; 32 ;) (type $ii) (param $0 i32) (result i32)
  (i32.add
   (i32.load
    (call $../../src/utils/toUTF8Array
     (get_local $0)
    )
   )
   (i32.const 8)
  )
 )
 (func $../../src/utils/ultrain_assert (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/log/Logger#s (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (i32.load
       (get_local $1)
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
 (func $../../src/log/Logger#i (; 35 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../src/log/env.ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#flush (; 36 ;) (type $iv) (param $0 i32)
  (call $../../src/log/env.ts_log_done)
 )
 (func $../../src/asset/StringToSymbol (; 37 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
   (i32.const 1392)
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $2)
      (i32.and
       (get_local $5)
       (i32.const 255)
      )
     )
    )
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
        (i32.const 1516)
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
    (br $repeat|0)
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
 (func $../../src/utils/char_to_symbol (; 38 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/utils/N (; 39 ;) (type $iI) (param $0 i32) (result i64)
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
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.gt_u
      (get_local $1)
      (i32.const 12)
     )
    )
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
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $../../src/asset/Asset#constructor (; 40 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $../../lib/time/Microseconds#constructor (; 41 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../lib/time/milliseconds (; 42 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/Microseconds#constructor
   (i32.const 0)
   (i64.mul
    (get_local $0)
    (i64.const 1000)
   )
  )
 )
 (func $../../lib/time/seconds (; 43 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/milliseconds
   (i64.mul
    (get_local $0)
    (i64.const 1000)
   )
  )
 )
 (func $../../lib/time/minutes (; 44 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/seconds
   (i64.mul
    (get_local $0)
    (i64.const 60)
   )
  )
 )
 (func $../../lib/time/hours (; 45 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/minutes
   (i64.mul
    (get_local $0)
    (i64.const 60)
   )
  )
 )
 (func $../../lib/time/days (; 46 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/hours
   (i64.mul
    (get_local $0)
    (i64.const 24)
   )
  )
 )
 (func $../../lib/time/Microseconds#toSeconds (; 47 ;) (type $iI) (param $0 i32) (result i64)
  (i64.div_u
   (i64.load
    (get_local $0)
   )
   (i64.const 1000000)
  )
 )
 (func $~lib/array/Array<u64>#__unchecked_set (; 48 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (i64.store offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
   (get_local $2)
  )
 )
 (func $dragoncore/DragonCore#constructor (; 49 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i64.store
     (tee_local $1
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 136)
      )
     )
     (get_global $consts/CEO)
    )
    (i64.store offset=8
     (get_local $1)
     (get_global $consts/CFO)
    )
    (i64.store offset=16
     (get_local $1)
     (get_global $consts/API)
    )
    (i32.store8 offset=24
     (get_local $1)
     (i32.const 0)
    )
    (i32.store offset=28
     (get_local $1)
     (call $~lib/array/Array<String>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=32
     (get_local $1)
     (get_local $0)
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=36
     (get_local $1)
     (get_local $0)
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=40
     (get_local $1)
     (get_local $0)
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=44
     (get_local $1)
     (get_local $0)
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=48
     (get_local $1)
     (get_local $0)
    )
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $0)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=52
     (get_local $1)
     (get_local $0)
    )
    (i64.store offset=56
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=64
     (get_local $1)
     (i64.const 0)
    )
    (i32.store offset=72
     (get_local $1)
     (call $../../src/asset/Asset#constructor
      (i32.const 0)
      (i64.const 8)
      (get_global $../../internal/types/UGS)
     )
    )
    (i64.store offset=80
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=88
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=96
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=104
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=112
     (get_local $1)
     (i64.const 0)
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (tee_local $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 0)
       (i32.const 14)
      )
     )
     (i32.const 0)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/minutes
       (i64.const 1)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 1)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/minutes
       (i64.const 2)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 2)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/minutes
       (i64.const 5)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 3)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/minutes
       (i64.const 10)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 4)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/minutes
       (i64.const 30)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 5)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/hours
       (i64.const 1)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 6)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/hours
       (i64.const 2)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 7)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/hours
       (i64.const 4)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 8)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/hours
       (i64.const 8)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 9)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/hours
       (i64.const 16)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 10)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/days
       (i64.const 1)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 11)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/days
       (i64.const 2)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 12)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/days
       (i64.const 4)
      )
     )
    )
    (call $~lib/array/Array<u64>#__unchecked_set
     (get_local $0)
     (i32.const 13)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/days
       (i64.const 7)
      )
     )
    )
    (i32.store offset=120
     (get_local $1)
     (get_local $0)
    )
    (i64.store offset=128
     (get_local $1)
     (call $../../lib/time/Microseconds#toSeconds
      (call $../../lib/time/seconds
       (i64.const 10)
      )
     )
    )
    (get_local $1)
   )
  )
 )
 (func $index/HyperDragonContract#constructor (; 50 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 12)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
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
  (i32.store offset=8
   (get_local $0)
   (call $dragoncore/DragonCore#constructor
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $Contract#get:_receiver (; 51 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $Contract#set:_receiver (; 52 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 53 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  (call $~lib/memory/set_memory
   (i32.add
    (tee_local $3
     (call $~lib/internal/arraybuffer/allocUnsafe
      (tee_local $2
       (get_local $1)
      )
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
 (func $../../src/datastream/DataStream#constructor (; 54 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $../../lib/contract/DataStreamFromCurrentAction (; 55 ;) (type $i) (result i32)
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
 (func $../../lib/contract/Contract#getDataStream (; 56 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../lib/contract/DataStreamFromCurrentAction)
 )
 (func $~lib/array/Array<Dragon>#get:length (; 57 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=4
   (get_local $0)
  )
 )
 (func $dragoncore/DragonBase#containsDragon (; 58 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i32.eqz
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=28
       (get_local $0)
      )
     )
    )
   )
   (get_local $2)
   (i64.ge_u
    (get_local $1)
    (i64.extend_u/i32
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=28
       (get_local $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Dragon>#__get (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonCore#getDragon (; 60 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $dragoncore/DragonBase#containsDragon
     (get_local $0)
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $2
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $1)
    )
   )
  )
  (i32.store8
   (tee_local $0
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 104)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=56
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=64
   (get_local $0)
   (i32.const 0)
  )
  (i64.store offset=72
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=96
   (get_local $0)
   (i64.const 0)
  )
  (i32.store8
   (get_local $0)
   (i64.le_u
    (i64.load offset=16
     (get_local $2)
    )
    (i64.extend_u/i32
     (call $../../internal/transaction.d/env.tapos_block_num)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (i64.extend_u/i32
    (i32.load16_u offset=56
     (get_local $2)
    )
   )
  )
  (i64.store offset=16
   (get_local $0)
   (i64.load offset=16
    (get_local $2)
   )
  )
  (i64.store offset=24
   (get_local $0)
   (i64.load offset=48
    (get_local $2)
   )
  )
  (i64.store offset=32
   (get_local $0)
   (i64.extend_u/i32
    (i32.load offset=12
     (get_local $2)
    )
   )
  )
  (i64.store offset=40
   (get_local $0)
   (i64.load offset=32
    (get_local $2)
   )
  )
  (i64.store offset=48
   (get_local $0)
   (i64.load offset=40
    (get_local $2)
   )
  )
  (i64.store offset=56
   (get_local $0)
   (i64.extend_u/i32
    (i32.load16_u offset=72
     (get_local $2)
    )
   )
  )
  (i32.store offset=64
   (get_local $0)
   (i32.load offset=8
    (get_local $2)
   )
  )
  (i64.store offset=72
   (get_local $0)
   (i64.load offset=80
    (get_local $2)
   )
  )
  (i64.store offset=80
   (get_local $0)
   (i64.load offset=24
    (get_local $2)
   )
  )
  (i64.store offset=88
   (get_local $0)
   (i64.load offset=64
    (get_local $2)
   )
  )
  (i64.store offset=96
   (get_local $0)
   (i64.load offset=88
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $dragoncore/InterestDragon#toString (; 61 ;) (type $ii) (param $0 i32) (result i32)
  (i32.const 8)
 )
 (func $../../src/return/Return<String> (; 62 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_str
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#getDragon (; 63 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (if
   (tee_local $2
    (call $dragoncore/DragonCore#getDragon
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
   (call $../../src/return/Return<String>
    (call $dragoncore/InterestDragon#toString
     (get_local $2)
    )
   )
   (call $../../src/return/Return<String>
    (i32.const 1880)
   )
  )
 )
 (func $dragoncore/DragonAccessControl#onlyCEO (; 64 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 1892)
  )
 )
 (func $saleclockauction/SaleClockAuction#constructor (; 65 ;) (type $iiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i32.store offset=8
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 44)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (get_local $4)
      (i32.const 0)
     )
     (i64.store offset=16
      (get_local $4)
      (i64.const 0)
     )
     (i32.store offset=24
      (get_local $4)
      (i32.const 0)
     )
     (i32.store8 offset=28
      (get_local $4)
      (i32.const 1)
     )
     (i64.store offset=32
      (get_local $4)
      (i64.const 0)
     )
     (i32.store offset=40
      (get_local $4)
      (call $~lib/array/Array<String>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (tee_local $0
      (get_local $4)
     )
    )
   )
   (get_local $1)
  )
  (call $../../src/utils/ultrain_assert
   (i64.lt_u
    (get_local $3)
    (i64.const 10000)
   )
   (i32.const 1964)
  )
  (i64.store
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<Account>#constructor (; 66 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $../../src/asset/Asset.checkOperaotrCondition (; 67 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $1)
    )
   )
   (i32.const 2168)
  )
 )
 (func $../../src/asset/Asset._eq (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
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
 (func $../../src/balance/Account#constructor (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (call $../../src/asset/Asset._eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
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
 (func $../../src/asset/Asset#symbolName (; 70 ;) (type $iI) (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load offset=8
    (get_local $0)
   )
   (i64.const 8)
  )
 )
 (func $../../src/balance/Account#primaryKey (; 71 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/asset/Asset#symbolName
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream#read<u64> (; 72 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#deserialize (; 73 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/balance/Account#deserialize (; 74 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#deserialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#loadObjectByPrimaryIterator (; 75 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $../../src/dbmanager/DataItem<Account>#constructor (; 76 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<DataItem<Account>>#push (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
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
 (func $../../src/dbmanager/DBManager<Account>#get (; 78 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (call $~lib/array/Array<Dragon>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (call $../../src/balance/Account#primaryKey
       (i32.load offset=12
        (call $~lib/array/Array<Dragon>#__get
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
        (call $~lib/array/Array<Dragon>#__get
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
     (block
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
    (call $../../src/dbmanager/DataItem<Account>#constructor
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
   (call $~lib/array/Array<DataItem<Account>>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
  (i32.const 1)
 )
 (func $../../src/balance/queryBalance (; 79 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Account>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2120)
    )
    (call $../../src/utils/N
     (i32.const 2140)
    )
    (get_local $0)
   )
  )
  (set_local $1
   (call $../../src/balance/Account#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (if (result i32)
   (call $../../src/dbmanager/DBManager<Account>#get
    (get_local $2)
    (get_global $../../src/balance/SYS_NAME)
    (get_local $1)
   )
   (i32.load
    (get_local $1)
   )
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 0)
    (get_global $../../src/balance/SYS)
   )
  )
 )
 (func $../../src/action/TransferParams#constructor (; 80 ;) (type $iIIiii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
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
   (i32.store offset=16
    (get_local $0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (i32.store offset=20
   (get_local $0)
   (get_local $4)
  )
  (get_local $0)
 )
 (func $../../src/action/ActionImpl#constructor (; 81 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $1
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 24)
       )
      )
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
     (i32.store offset=20
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
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $../../src/datastream/DataStream#isMesureMode (; 82 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eqz
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream#write<u64> (; 83 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $../../src/asset/Asset#serialize (; 84 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#write<u8> (; 85 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#writeVarint32 (; 86 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#writeString (; 87 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (call $~lib/array/Array<Dragon>#get:length
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
     (call $~lib/array/Array<Dragon>#get:length
      (get_local $1)
     )
     (i32.const 1)
    )
   )
  )
 )
 (func $../../src/action/TransferParams#serialize (; 88 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream.measure<TransferParams> (; 89 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<u8>#__set (; 90 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
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
 (func $../../src/datastream/DataStream#toArray<u8> (; 91 ;) (type $ii) (param $0 i32) (result i32)
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
   (return
    (call $~lib/array/Array<u8>#constructor
     (i32.const 0)
     (i32.const 0)
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
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $1)
      (get_local $4)
     )
    )
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
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $../../src/permission-level/PermissionLevel#serialize (; 92 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 2352)
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
     (i32.const 2372)
    )
    (i64.load offset=8
     (get_local $0)
    )
    (i32.const 16)
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (; 93 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/datastream/DataStream#writeVector<u8> (; 94 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $0)
   (tee_local $3
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $2)
      (get_local $3)
     )
    )
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
    (br $repeat|0)
   )
  )
 )
 (func $../../src/action/ActionImpl#serialize (; 95 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
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
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $1)
   (tee_local $3
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=16
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $2)
      (get_local $3)
     )
    )
    (call $../../src/permission-level/PermissionLevel#serialize
     (call $~lib/array/Array<Dragon>#__get
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $2)
     )
     (get_local $1)
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
  (call $../../src/datastream/DataStream#writeVector<u8>
   (get_local $1)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<ActionImpl> (; 96 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/action/dispatchInline (; 97 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (drop
   (call $~lib/array/Array<DataItem<Account>>#push
    (i32.load offset=16
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
  (i64.store offset=8
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
  (i32.store offset=20
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
 (func $../../src/balance/send (; 98 ;) (type $IIiiv) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i64.store
   (tee_local $5
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
    )
   )
   (get_local $0)
  )
  (i64.store offset=8
   (get_local $5)
   (call $../../src/utils/N
    (i32.const 2316)
   )
  )
  (i64.store
   (tee_local $4
    (call $../../src/action/TransferParams#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
     (i32.const 0)
     (i32.const 8)
    )
   )
   (get_local $0)
  )
  (i64.store offset=8
   (get_local $4)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $4)
   (get_local $2)
  )
  (i32.store offset=20
   (get_local $4)
   (get_local $3)
  )
  (call $../../src/action/dispatchInline
   (get_local $5)
   (call $../../src/utils/N
    (i32.const 2140)
   )
   (call $../../src/utils/N
    (i32.const 2332)
   )
   (get_local $4)
  )
 )
 (func $saleclockauction/ClockAuction#withdrawBalance (; 99 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $1
     (i64.eq
      (tee_local $2
       (call $../../internal/action.d/env.current_sender)
      )
      (i64.load
       (get_local $0)
      )
     )
    )
    (get_local $1)
    (i64.eq
     (get_local $2)
     (get_global $consts/HyperDragonContract)
    )
   )
   (i32.const 2068)
  )
  (set_local $1
   (call $../../src/balance/queryBalance
    (i64.load
     (get_local $0)
    )
   )
  )
  (call $../../src/balance/send
   (i64.load
    (get_local $0)
   )
   (get_global $consts/HyperDragonContract)
   (get_local $1)
   (i32.const 2264)
  )
 )
 (func $saleclockauction/SireClockAuction#constructor (; 100 ;) (type $iiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i32.store offset=8
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 29)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (get_local $4)
      (i32.const 0)
     )
     (i64.store offset=16
      (get_local $4)
      (i64.const 0)
     )
     (i32.store offset=24
      (get_local $4)
      (i32.const 0)
     )
     (i32.store8 offset=28
      (get_local $4)
      (i32.const 1)
     )
     (tee_local $0
      (get_local $4)
     )
    )
   )
   (get_local $1)
  )
  (i64.store
   (get_local $0)
   (get_local $2)
  )
  (call $../../src/utils/ultrain_assert
   (i64.lt_u
    (get_local $3)
    (i64.const 10000)
   )
   (i32.const 1964)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Asset>#__unchecked_set (; 101 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $match/MatchCore#constructor (; 102 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store offset=64
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 68)
       )
      )
      (i64.const 0)
     )
     (call $~lib/array/Array<Asset>#__unchecked_set
      (tee_local $0
       (call $~lib/array/Array<String>#constructor
        (i32.const 0)
        (i32.const 5)
       )
      )
      (i32.const 0)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 200000)
       (get_global $../../internal/types/UGS)
      )
     )
     (call $~lib/array/Array<Asset>#__unchecked_set
      (get_local $0)
      (i32.const 1)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 200000)
       (get_global $../../internal/types/UGS)
      )
     )
     (call $~lib/array/Array<Asset>#__unchecked_set
      (get_local $0)
      (i32.const 2)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 200000)
       (get_global $../../internal/types/UGS)
      )
     )
     (call $~lib/array/Array<Asset>#__unchecked_set
      (get_local $0)
      (i32.const 3)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 200000)
       (get_global $../../internal/types/UGS)
      )
     )
     (call $~lib/array/Array<Asset>#__unchecked_set
      (get_local $0)
      (i32.const 4)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 200000)
       (get_global $../../internal/types/UGS)
      )
     )
     (i32.store offset=8
      (get_local $2)
      (get_local $0)
     )
     (i32.store offset=12
      (get_local $2)
      (i32.const 2408)
     )
     (i64.store offset=16
      (get_local $2)
      (i64.const 16)
     )
     (i64.store offset=24
      (get_local $2)
      (i64.const 16)
     )
     (i64.store offset=32
      (get_local $2)
      (i64.const 16)
     )
     (i32.store offset=40
      (get_local $2)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 100000)
       (get_global $../../internal/types/UGS)
      )
     )
     (i32.store offset=44
      (get_local $2)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 100000000)
       (get_global $../../internal/types/UGS)
      )
     )
     (i32.store
      (tee_local $0
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (call $~lib/array/Array<u64>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (call $~lib/array/Array<String>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=48
      (get_local $2)
      (get_local $0)
     )
     (i32.store offset=52
      (get_local $2)
      (i32.const 2480)
     )
     (i32.store
      (tee_local $0
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (call $~lib/array/Array<u64>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (call $~lib/array/Array<String>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=56
      (get_local $2)
      (get_local $0)
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (tee_local $0
       (call $~lib/array/Array<u64>#constructor
        (i32.const 0)
        (i32.const 9)
       )
      )
      (i32.const 0)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/hours
        (i64.const 4)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 1)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/hours
        (i64.const 8)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 2)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/hours
        (i64.const 12)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 3)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/hours
        (i64.const 16)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 4)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/days
        (i64.const 1)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 5)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/days
        (i64.const 2)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 6)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/days
        (i64.const 3)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 7)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/days
        (i64.const 3)
       )
      )
     )
     (call $~lib/array/Array<u64>#__unchecked_set
      (get_local $0)
      (i32.const 8)
      (call $../../lib/time/Microseconds#toSeconds
       (call $../../lib/time/days
        (i64.const 7)
       )
      )
     )
     (i32.store offset=60
      (get_local $2)
      (get_local $0)
     )
     (i32.store offset=64
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
 (func $match/MatchCore#withdrawBalance (; 103 ;) (type $iv) (param $0 i32)
  (local $1 i64)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $0
     (i64.eq
      (tee_local $1
       (call $../../internal/action.d/env.current_sender)
      )
      (get_global $consts/MatchAddress)
     )
    )
    (get_local $0)
    (i64.eq
     (get_local $1)
     (get_global $consts/HyperDragonContract)
    )
   )
   (i32.const 2068)
  )
  (set_local $0
   (call $../../src/balance/queryBalance
    (get_global $consts/MatchAddress)
   )
  )
  (call $../../src/balance/send
   (get_global $consts/MatchAddress)
   (get_global $consts/HyperDragonContract)
   (get_local $0)
   (i32.const 2552)
  )
 )
 (func $dragoncore/DragonCore#withdrawAuctionBalances (; 104 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $saleclockauction/ClockAuction#withdrawBalance
   (call $saleclockauction/SaleClockAuction#constructor
    (i32.const 0)
    (get_local $0)
    (i64.load offset=88
     (get_local $0)
    )
    (i64.load offset=96
     (get_local $0)
    )
   )
  )
  (call $saleclockauction/ClockAuction#withdrawBalance
   (call $saleclockauction/SireClockAuction#constructor
    (i32.const 0)
    (get_local $0)
    (i64.load offset=104
     (get_local $0)
    )
    (i64.load offset=112
     (get_local $0)
    )
   )
  )
  (call $match/MatchCore#withdrawBalance
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#withdrawAuctionBalances (; 105 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonCore#withdrawAuctionBalances
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $dragoncore/DragonAccessControl#onlyCFO (; 106 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 2600)
  )
 )
 (func $../../src/asset/Asset#getSymbol (; 107 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#setSymbol (; 108 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset._gt (; 109 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
  )
  (i64.gt_u
   (i64.load
    (get_local $0)
   )
   (i64.load
    (get_local $1)
   )
  )
 )
 (func $dragoncore/DragonCore#withdrawBalance (; 110 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (call $dragoncore/DragonAccessControl#onlyCFO
   (get_local $0)
  )
  (set_local $2
   (call $../../src/balance/queryBalance
    (get_global $consts/HyperDragonContract)
   )
  )
  (call $Contract#set:_receiver
   (tee_local $1
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
    )
   )
   (i64.mul
    (i64.add
     (i64.load offset=80
      (get_local $0)
     )
     (i64.const 1)
    )
    (call $Contract#get:_receiver
     (i32.load offset=72
      (get_local $0)
     )
    )
   )
  )
  (call $../../src/asset/Asset#setSymbol
   (get_local $1)
   (call $../../src/asset/Asset#getSymbol
    (i32.load offset=72
     (get_local $0)
    )
   )
  )
  (if
   (call $../../src/asset/Asset._gt
    (get_local $2)
    (get_local $1)
   )
   (block
    (call $Contract#set:_receiver
     (get_local $1)
     (i64.sub
      (call $Contract#get:_receiver
       (get_local $2)
      )
      (call $Contract#get:_receiver
       (get_local $1)
      )
     )
    )
    (call $../../src/balance/send
     (get_global $consts/HyperDragonContract)
     (get_global $consts/CFO)
     (get_local $1)
     (i32.const 2672)
    )
   )
  )
 )
 (func $index/HyperDragonContract#withdrawBalance (; 111 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonCore#withdrawBalance
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $~lib/memory/compare_memory (; 112 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    (if (result i32)
     (get_local $2)
     (i32.eq
      (i32.load8_u
       (get_local $0)
      )
      (i32.load8_u
       (get_local $1)
      )
     )
     (get_local $2)
    )
    (block
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
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
  (if (result i32)
   (get_local $2)
   (i32.sub
    (i32.load8_u
     (get_local $0)
    )
    (i32.load8_u
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__eq (; 113 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
     (i32.eqz
      (get_local $0)
     )
    )
    (get_local $2)
    (i32.eqz
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/string/String.__ne (; 114 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $../../src/map/Map<String_u64>#find (; 115 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (if
     (call $~lib/string/String.__eq
      (call $~lib/array/Array<Dragon>#__get
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
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<u64>#push (; 116 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
     (i32.const 3)
    )
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
    (i32.store
     (get_local $0)
     (tee_local $4
      (call $~lib/internal/arraybuffer/reallocUnsafe
       (get_local $4)
       (i32.shl
        (get_local $3)
        (i32.const 3)
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
  (i64.store offset=8
   (i32.add
    (get_local $4)
    (i32.shl
     (get_local $2)
     (i32.const 3)
    )
   )
   (get_local $1)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<u64>#__set (; 117 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 3)
    )
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
    (i32.store
     (get_local $0)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocUnsafe
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
 (func $../../src/map/Map<String_u64>#set (; 118 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (if
   (i32.eq
    (tee_local $3
     (call $../../src/map/Map<String_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<DataItem<Account>>#push
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
 (func $../../lib/events/_EventObject#set<u64> (; 119 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $3
     (call $~lib/string/String.__ne
      (get_local $1)
      (i32.const 0)
     )
    )
    (i32.gt_s
     (i32.load
      (get_local $1)
     )
     (i32.const 0)
    )
    (get_local $3)
   )
   (i32.const 2780)
  )
  (call $../../src/map/Map<String_u64>#set
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/map/Map<String_String>#keys (; 120 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u64>#__get (; 121 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (if (result i64)
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
     (i32.const 3)
    )
   )
   (i64.load offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $1)
      (i32.const 3)
     )
    )
   )
   (unreachable)
  )
 )
 (func $../../lib/events/_EventObject#serialize (; 122 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../src/map/Map<String_String>#keys
    (i32.load
     (get_local $0)
    )
   )
  )
  (set_local $5
   (call $~lib/array/Array<Dragon>#get:length
    (i32.load
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $3)
      )
     )
    )
    (call $../../src/utils/ultrain_assert
     (if (result i32)
      (tee_local $4
       (i32.le_s
        (i32.load
         (call $~lib/array/Array<Dragon>#__get
          (get_local $3)
          (get_local $2)
         )
        )
        (i32.const 127)
       )
      )
      (i32.le_s
       (i32.load
        (call $~lib/array/Array<Dragon>#__get
         (get_local $5)
         (get_local $2)
        )
       )
       (i32.const 127)
      )
      (get_local $4)
     )
     (i32.const 2960)
    )
    (call $../../src/datastream/DataStream#writeString
     (get_local $1)
     (call $~lib/array/Array<Dragon>#__get
      (get_local $3)
      (get_local $2)
     )
    )
    (call $../../src/datastream/DataStream#write<u8>
     (get_local $1)
     (i32.const 1)
    )
    (call $../../src/datastream/DataStream#writeString
     (get_local $1)
     (call $~lib/array/Array<Dragon>#__get
      (get_local $5)
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
  (set_local $2
   (call $../../src/map/Map<String_String>#keys
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (set_local $4
   (call $~lib/array/Array<Dragon>#get:length
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (block $break|1
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.ge_s
      (get_local $0)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $2)
      )
     )
    )
    (call $../../src/utils/ultrain_assert
     (i32.le_s
      (i32.load
       (call $~lib/array/Array<Dragon>#__get
        (get_local $2)
        (get_local $0)
       )
      )
      (i32.const 127)
     )
     (i32.const 3032)
    )
    (call $../../src/datastream/DataStream#writeString
     (get_local $1)
     (call $~lib/array/Array<Dragon>#__get
      (get_local $2)
      (get_local $0)
     )
    )
    (call $../../src/datastream/DataStream#write<u8>
     (get_local $1)
     (i32.const 4)
    )
    (call $../../src/datastream/DataStream#write<u64>
     (get_local $1)
     (call $~lib/array/Array<u64>#__get
      (get_local $4)
      (get_local $0)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<_EventObject> (; 123 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $../../lib/events/_EventObject#serialize
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
 (func $../../src/datastream/DSHelper.getDataStreamWithLength (; 124 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../src/datastream/DataStream#constructor
   (i32.const 0)
   (i32.load
    (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $0)
  )
 )
 (func $../../src/datastream/DataStream#size (; 125 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=8
   (get_local $0)
  )
 )
 (func $../../lib/events/emit (; 126 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $2
     (call $~lib/string/String.__ne
      (get_local $0)
      (i32.const 0)
     )
    )
    (i32.gt_s
     (i32.load
      (get_local $0)
     )
     (i32.const 0)
    )
    (get_local $2)
   )
   (i32.const 2896)
  )
  (call $../../lib/events/_EventObject#serialize
   (get_local $1)
   (tee_local $1
    (call $../../src/datastream/DSHelper.getDataStreamWithLength
     (call $../../src/datastream/DataStream.measure<_EventObject>
      (get_local $1)
     )
    )
   )
  )
  (call $../../lib/events/env.emit_evnet
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
   (i64.extend_u/i32
    (i32.load
     (get_local $0)
    )
   )
   (call $../../src/map/Map<String_String>#keys
    (get_local $1)
   )
   (i64.extend_u/i32
    (call $../../src/datastream/DataStream#size
     (get_local $1)
    )
   )
  )
 )
 (func $dragoncore/DragonExtend#updateExtend (; 127 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (i64.store offset=88
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $1)
    )
   )
   (get_local $2)
  )
  (call $../../lib/events/emit
   (i32.const 2732)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (get_global $../../lib/events/EventObject)
     (i32.const 2760)
     (get_local $1)
    )
    (i32.const 2880)
    (get_local $2)
   )
  )
 )
 (func $index/HyperDragonContract#updteExtend (; 128 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonExtend#updateExtend
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $titles/Titles#get:count (; 129 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const 15)
   )
  )
 )
 (func $titles/Titles#set:count (; 130 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const -16)
   )
  )
  (i64.store
   (get_local $0)
   (i64.add
    (i64.load
     (get_local $0)
    )
    (i64.extend_u/i32
     (i32.and
      (get_local $1)
      (i32.const 15)
     )
    )
   )
  )
 )
 (func $titles/Titles.compositeMatchIdAndRank (; 131 ;) (type $III) (param $0 i64) (param $1 i64) (result i64)
  (i64.add
   (i64.and
    (get_local $0)
    (i64.const 1023)
   )
   (i64.shl
    (i64.and
     (get_local $1)
     (i64.const 3)
    )
    (i64.const 10)
   )
  )
 )
 (func $titles/Titles#setAMatch (; 132 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (set_local $2
   (call $titles/Titles#get:count
    (get_local $0)
   )
  )
  (i64.store
   (get_local $0)
   (i64.add
    (i64.add
     (i64.shl
      (i64.shr_u
       (i64.load
        (get_local $0)
       )
       (i64.const 4)
      )
      (i64.const 16)
     )
     (i64.shl
      (i64.and
       (get_local $1)
       (i64.const 4095)
      )
      (i64.const 4)
     )
    )
    (i64.extend_u/i32
     (i32.and
      (get_local $2)
      (i32.const 255)
     )
    )
   )
  )
 )
 (func $dragoncore/DragonMatch#setTitles (; 133 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (if
   (call $dragoncore/DragonBase#containsDragon
    (get_local $0)
    (get_local $1)
   )
   (block
    (call $titles/Titles#set:count
     (tee_local $0
      (call $../../lib/time/Microseconds#constructor
       (i32.const 0)
       (i64.load offset=80
        (tee_local $4
         (call $~lib/array/Array<Dragon>#__get
          (i32.load offset=28
           (get_local $0)
          )
          (i32.wrap/i64
           (get_local $1)
          )
         )
        )
       )
      )
     )
     (i32.add
      (call $titles/Titles#get:count
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (call $titles/Titles#setAMatch
     (get_local $0)
     (call $titles/Titles.compositeMatchIdAndRank
      (get_local $2)
      (get_local $3)
     )
    )
    (i64.store offset=80
     (get_local $4)
     (call $Contract#get:_receiver
      (get_local $0)
     )
    )
    (call $../../lib/events/emit
     (i32.const 3112)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 2760)
       (get_local $1)
      )
      (i32.const 3140)
      (i64.load offset=80
       (get_local $4)
      )
     )
    )
   )
  )
 )
 (func $index/HyperDragonContract#setTitles (; 134 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonMatch#setTitles
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonMatch#fightCooldown (; 135 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (if
   (call $dragoncore/DragonBase#containsDragon
    (get_local $0)
    (get_local $1)
   )
   (block
    (i64.store offset=24
     (tee_local $4
      (call $~lib/array/Array<Dragon>#__get
       (i32.load offset=28
        (get_local $0)
       )
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (i64.add
      (i64.div_u
       (get_local $3)
       (i64.load offset=128
        (get_local $0)
       )
      )
      (i64.extend_u/i32
       (call $../../internal/transaction.d/env.tapos_block_num)
      )
     )
    )
    (i64.store offset=64
     (get_local $4)
     (get_local $2)
    )
    (call $../../lib/events/emit
     (i32.const 3156)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (get_global $../../lib/events/EventObject)
         (i32.const 2760)
         (get_local $1)
        )
        (i32.const 3188)
        (get_local $2)
       )
       (i32.const 3220)
       (get_local $3)
      )
      (i32.const 3248)
      (i64.load offset=24
       (get_local $4)
      )
     )
    )
   )
  )
 )
 (func $index/HyperDragonContract#fightCooldown (; 136 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonMatch#fightCooldown
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAccessControl#whenNotPaused (; 137 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (i32.load8_u offset=24
     (get_local $0)
    )
   )
   (i32.const 3296)
  )
 )
 (func $../../src/map/Map<u64_u64>#find (; 138 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load
        (get_local $0)
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
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $../../src/map/Map<u64_u64>#contains (; 139 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $../../src/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $../../src/map/Map<u64_u64>#get (; 140 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (if
   (i32.eq
    (tee_local $2
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const -1)
   )
   (return
    (i64.const 0)
   )
  )
  (call $~lib/array/Array<u64>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $dragoncore/DragonAssetControl#_owns (; 141 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (if (result i32)
   (tee_local $3
    (call $../../src/map/Map<u64_u64>#contains
     (i32.load offset=32
      (get_local $0)
     )
     (get_local $2)
    )
   )
   (i64.eq
    (call $../../src/map/Map<u64_u64>#get
     (i32.load offset=32
      (get_local $0)
     )
     (get_local $2)
    )
    (get_local $1)
   )
   (get_local $3)
  )
 )
 (func $dragoncore/DragonBreeding#isPregnant (; 142 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 3528)
  )
  (i64.ne
   (i64.load offset=48
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=28
      (get_local $0)
     )
     (i32.wrap/i64
      (get_local $1)
     )
    )
   )
   (i64.const 0)
  )
 )
 (func $dragoncore/DragonMatch#_isNotCooldownIng (; 143 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i64.le_u
     (i64.load offset=16
      (get_local $1)
     )
     (i64.extend_u/i32
      (call $../../internal/transaction.d/env.tapos_block_num)
     )
    )
   )
   (i64.le_u
    (i64.load offset=24
     (get_local $1)
    )
    (i64.extend_u/i32
     (call $../../internal/transaction.d/env.tapos_block_num)
    )
   )
   (get_local $2)
  )
 )
 (func $../../src/map/Map<u64_MatchInfo>#get (; 144 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (tee_local $2
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const -1)
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<Dragon>#__get
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $../../src/map/Map<u64_JoinUser>#_valueAt (; 145 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if (result i32)
   (i32.ne
    (tee_local $2
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const -1)
   )
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
   )
   (i32.const 0)
  )
 )
 (func $match/MatchCore#isCanJoin (; 146 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (i32.load8_u offset=24
     (tee_local $2
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=48
        (get_local $0)
       )
       (i64.load
        (get_local $0)
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.ne
      (call $../../src/map/Map<u64_JoinUser>#_valueAt
       (i32.load offset=44
        (get_local $2)
       )
       (get_local $1)
      )
      (i32.const 0)
     )
    )
    (i64.ne
     (i64.load
      (call $../../src/map/Map<u64_JoinUser>#_valueAt
       (i32.load offset=44
        (get_local $2)
       )
       (get_local $1)
      )
     )
     (i64.const 0)
    )
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i64.ge_u
    (i64.load offset=32
     (get_local $2)
    )
    (call $~lib/array/Array<u64>#__get
     (i32.load offset=52
      (get_local $0)
     )
     (i32.wrap/i64
      (i64.sub
       (i64.load offset=16
        (get_local $2)
       )
       (i64.const 1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 1)
 )
 (func $../../src/map/Map<u64_u64>#set (; 147 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (if
   (i32.eq
    (tee_local $3
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
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
 (func $dragoncore/DragonAssetControl#_approve (; 148 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=40
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonAssetControl#_approvedFor (; 149 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (if (result i32)
   (tee_local $3
    (call $../../src/map/Map<u64_u64>#contains
     (i32.load offset=40
      (get_local $0)
     )
     (get_local $2)
    )
   )
   (i64.eq
    (call $../../src/map/Map<u64_u64>#get
     (i32.load offset=40
      (get_local $0)
     )
     (get_local $2)
    )
    (get_local $1)
   )
   (get_local $3)
  )
 )
 (func $~lib/array/Array<u64>#splice (; 150 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
     (tee_local $1
      (i32.add
       (get_local $4)
       (get_local $1)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $1)
      (get_local $3)
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
     (i32.const 3)
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
        (get_local $2)
        (tee_local $3
         (i32.sub
          (get_local $4)
          (get_local $1)
         )
        )
        (i32.lt_s
         (get_local $2)
         (get_local $3)
        )
       )
      )
     )
     (i32.const 3)
    )
   )
   (i32.shl
    (get_local $2)
    (i32.const 3)
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
 (func $../../src/map/Map<u64_u64>#remove (; 151 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (tee_local $2
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
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
 (func $dragoncore/DragonBase#_transfer (; 152 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (if
   (call $../../src/map/Map<u64_u64>#contains
    (i32.load offset=36
     (get_local $0)
    )
    (get_local $2)
   )
   (block
    (set_local $4
     (i64.add
      (call $../../src/map/Map<u64_u64>#get
       (i32.load offset=36
        (get_local $0)
       )
       (get_local $2)
      )
      (i64.const 1)
     )
    )
    (call $../../src/map/Map<u64_u64>#set
     (i32.load offset=36
      (get_local $0)
     )
     (get_local $2)
     (get_local $4)
    )
   )
   (call $../../src/map/Map<u64_u64>#set
    (i32.load offset=36
     (get_local $0)
    )
    (get_local $2)
    (i64.const 1)
   )
  )
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=32
    (get_local $0)
   )
   (get_local $3)
   (get_local $2)
  )
  (if
   (i32.and
    (call $../../internal/action.d/env.is_account
     (get_local $1)
    )
    (i32.const 1)
   )
   (block
    (call $../../src/utils/ultrain_assert
     (call $../../src/map/Map<u64_u64>#contains
      (i32.load offset=36
       (get_local $0)
      )
      (get_local $1)
     )
     (i32.const 4068)
    )
    (set_local $4
     (i64.sub
      (call $../../src/map/Map<u64_u64>#get
       (i32.load offset=36
        (get_local $0)
       )
       (get_local $1)
      )
      (i64.const 1)
     )
    )
    (call $../../src/map/Map<u64_u64>#set
     (i32.load offset=36
      (get_local $0)
     )
     (get_local $1)
     (get_local $4)
    )
    (drop
     (call $../../src/map/Map<u64_u64>#remove
      (i32.load offset=44
       (get_local $0)
      )
      (get_local $3)
     )
    )
    (drop
     (call $../../src/map/Map<u64_u64>#remove
      (i32.load offset=40
       (get_local $0)
      )
      (get_local $3)
     )
    )
   )
  )
  (call $../../lib/events/emit
   (i32.const 4172)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4192)
      (get_local $1)
     )
     (i32.const 4204)
     (get_local $2)
    )
    (i32.const 4212)
    (get_local $3)
   )
  )
 )
 (func $dragoncore/DragonAssetControl#transferFrom (; 153 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $../../src/utils/ultrain_assert
   (call $../../internal/action.d/env.is_account
    (get_local $2)
   )
   (i32.const 3772)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $2)
    (get_global $consts/HyperDragonContract)
   )
   (i32.const 3824)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_approvedFor
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $3)
   )
   (i32.const 3904)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
   (i32.const 4000)
  )
  (call $dragoncore/DragonBase#_transfer
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $match/MatchCore#_escrow (; 154 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transferFrom
   (i32.load offset=64
    (get_local $0)
   )
   (get_local $1)
   (get_global $consts/MatchAddress)
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset._gte (; 155 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
  )
  (i64.ge_u
   (i64.load
    (get_local $0)
   )
   (i64.load
    (get_local $1)
   )
  )
 )
 (func $match/MatchCore#getDragonGene (; 156 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (i64.load offset=56
   (call $dragoncore/DragonCore#getDragon
    (i32.load offset=64
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $match/JoinUser#constructor (; 157 ;) (type $iIiIi) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 24)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (get_local $4)
      (i32.const 0)
     )
     (i64.store offset=16
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
  (i32.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<JoinUser>#__set (; 158 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $3
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
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (i32.store
     (get_local $0)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocUnsafe
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
 (func $../../src/map/Map<u64_JoinUser>#set (; 159 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (tee_local $3
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
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
     (call $~lib/array/Array<DataItem<Account>>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<JoinUser>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $match/MatchCore#joinMatch (; 160 ;) (type $iIIiIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (call $match/MatchCore#_escrow
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
  (set_local $6
   (call $../../src/map/Map<u64_JoinUser>#_valueAt
    (i32.load offset=48
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $5)
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=8
      (get_local $0)
     )
     (i32.wrap/i64
      (i64.sub
       (i64.load offset=16
        (get_local $6)
       )
       (i64.const 1)
      )
     )
    )
   )
   (i32.const 4232)
  )
  (call $../../src/utils/ultrain_assert
   (call $match/MatchCore#isCanJoin
    (get_local $0)
    (get_local $1)
   )
   (i32.const 4324)
  )
  (set_local $7
   (call $match/MatchCore#getDragonGene
    (get_local $0)
    (get_local $2)
   )
  )
  (if
   (i64.gt_u
    (call $~lib/array/Array<u64>#__get
     (tee_local $8
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=56
        (get_local $0)
       )
       (i64.load offset=16
        (get_local $6)
       )
      )
     )
     (i32.const 1)
    )
    (i64.const 0)
   )
   (call $../../src/utils/ultrain_assert
    (if (result i32)
     (tee_local $5
      (i64.ge_u
       (get_local $7)
       (call $~lib/array/Array<u64>#__get
        (get_local $8)
        (i32.const 0)
       )
      )
     )
     (i64.le_u
      (get_local $7)
      (call $~lib/array/Array<u64>#__get
       (get_local $8)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.const 4376)
   )
  )
  (set_local $5
   (call $match/JoinUser#constructor
    (i32.const 0)
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=44
    (get_local $6)
   )
   (get_local $1)
   (get_local $5)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.add
    (i64.load offset=32
     (get_local $6)
    )
    (i64.const 1)
   )
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=52
     (get_local $6)
    )
    (get_local $1)
   )
  )
  (call $../../lib/events/emit
   (i32.const 4536)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4472)
      (i64.load
       (get_local $0)
      )
     )
     (i32.const 4492)
     (get_local $1)
    )
    (i32.const 4512)
    (get_local $2)
   )
  )
  (if
   (i64.ge_u
    (i64.load offset=32
     (get_local $6)
    )
    (call $~lib/array/Array<u64>#__get
     (i32.load offset=52
      (get_local $0)
     )
     (i32.wrap/i64
      (i64.load
       (get_local $0)
      )
     )
    )
   )
   (block
    (i32.store8
     (get_local $6)
     (i32.const 1)
    )
    (call $../../lib/events/emit
     (i32.const 4560)
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4472)
      (i64.load
       (get_local $0)
      )
     )
    )
   )
  )
 )
 (func $dragoncore/DragonCore#joinMatch (; 161 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (if
   (call $dragoncore/DragonBase#containsDragon
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $3
     (call $../../internal/action.d/env.current_sender)
    )
    (call $../../src/utils/ultrain_assert
     (call $dragoncore/DragonAssetControl#_owns
      (get_local $0)
      (get_local $3)
      (get_local $1)
     )
     (i32.const 3368)
    )
    (set_local $6
     (i64.and
      (i64.load offset=80
       (tee_local $4
        (call $~lib/array/Array<Dragon>#__get
         (i32.load offset=28
          (get_local $0)
         )
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (i64.const 255)
     )
    )
    (set_local $5
     (call $match/MatchCore#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (call $../../src/utils/ultrain_assert
     (i64.lt_u
      (get_local $6)
      (i64.const 10)
     )
     (i32.const 3456)
    )
    (call $../../src/utils/ultrain_assert
     (i32.eqz
      (call $dragoncore/DragonBreeding#isPregnant
       (get_local $0)
       (get_local $1)
      )
     )
     (i32.const 3576)
    )
    (call $../../src/utils/ultrain_assert
     (call $dragoncore/DragonMatch#_isNotCooldownIng
      (get_local $0)
      (get_local $4)
     )
     (i32.const 3628)
    )
    (call $../../src/utils/ultrain_assert
     (call $match/MatchCore#isCanJoin
      (get_local $5)
      (get_local $3)
     )
     (i32.const 3700)
    )
    (call $dragoncore/DragonAssetControl#_approve
     (get_local $0)
     (get_local $1)
     (get_global $consts/MatchAddress)
    )
    (call $match/MatchCore#joinMatch
     (get_local $5)
     (get_local $3)
     (get_local $1)
     (i32.load offset=8
      (get_local $4)
     )
     (i64.load offset=80
      (get_local $4)
     )
     (get_local $2)
    )
   )
  )
 )
 (func $index/HyperDragonContract#joinMatch (; 162 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $dragoncore/DragonCore#joinMatch
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonMinting#setSpecialDragonLimit (; 163 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=52
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#setSpecialDragonLimit (; 164 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonMinting#setSpecialDragonLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonMinting#increaseSpecialDragon (; 165 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (if
   (call $../../src/map/Map<u64_u64>#contains
    (i32.load offset=48
     (get_local $0)
    )
    (get_local $1)
   )
   (set_local $2
    (call $../../src/map/Map<u64_u64>#get
     (i32.load offset=48
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=48
    (get_local $0)
   )
   (get_local $1)
   (i64.add
    (get_local $2)
    (i64.const 1)
   )
  )
 )
 (func $index/HyperDragonContract#increaseSpecialDragon (; 166 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonMinting#increaseSpecialDragon
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $genetype/GenType#constructor (; 167 ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $5
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 32)
       )
      )
      (i64.const 0)
     )
     (i64.store offset=8
      (get_local $5)
      (i64.const 0)
     )
     (i64.store offset=16
      (get_local $5)
      (i64.const 0)
     )
     (i64.store offset=24
      (get_local $5)
      (i64.const 0)
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
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (i64.store offset=24
   (get_local $0)
   (get_local $4)
  )
  (get_local $0)
 )
 (func $genescience/GeneScience#constructor (; 168 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store offset=32
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 36)
       )
      )
      (i32.const 4656)
     )
     (i32.store offset=4
      (get_local $2)
      (i32.const 4792)
     )
     (i32.store offset=8
      (get_local $2)
      (i32.const 4832)
     )
     (i32.store offset=12
      (get_local $2)
      (i32.const 5096)
     )
     (i64.store offset=16
      (get_local $2)
      (i64.const 38337325647169759)
     )
     (i64.store offset=24
      (get_local $2)
      (i64.const 100)
     )
     (i32.store offset=32
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
 (func $genetype/GenType#get:blood (; 169 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.shr_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 36)
    )
    (i64.const 4095)
   )
  )
 )
 (func $genetype/GenType#set:blood (; 170 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const -281406257233921)
    )
    (i64.extend_u/i32
     (i32.shl
      (i32.and
       (get_local $1)
       (i32.const 4095)
      )
      (i32.const 36)
     )
    )
   )
  )
 )
 (func $genetype/GenType#get:type (; 171 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.shr_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 60)
    )
    (i64.const 15)
   )
  )
 )
 (func $genetype/GenType#set:type (; 172 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 1152921504606846975)
    )
    (i64.extend_u/i32
     (i32.shl
      (i32.and
       (get_local $1)
       (i32.const 15)
      )
      (i32.const 60)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<u16>#__get (; 173 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
     (i32.const 1)
    )
   )
   (i32.load16_u offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
 )
 (func $genescience/GeneScience#createSkillAndLevel (; 174 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (if
   (i64.eq
    (get_local $1)
    (i64.const 0)
   )
   (set_local $1
    (call $../../internal/action.d/env.random_uint64
     (i64.const 0)
    )
   )
  )
  (i32.store
   (tee_local $6
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $6)
   (i32.const 0)
  )
  (set_local $7
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $9
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $5)
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (if
     (i64.gt_u
      (get_local $3)
      (i64.const 0)
     )
     (block $break|1
      (set_local $4
       (i32.const 0)
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.ge_s
         (get_local $4)
         (i32.const 10)
        )
       )
       (if
        (i64.eq
         (i64.and
          (i64.shr_u
           (get_local $3)
           (i64.mul
            (i64.extend_u/i32
             (get_local $4)
            )
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.extend_u/i32
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
        )
        (call $~lib/array/Array<u64>#__set
         (get_local $9)
         (get_local $5)
         (i64.add
          (call $~lib/array/Array<u64>#__get
           (get_local $9)
           (get_local $5)
          )
          (i64.const 25)
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
    )
    (call $~lib/array/Array<u64>#__set
     (get_local $7)
     (get_local $5)
     (tee_local $8
      (i64.add
       (get_local $8)
       (i64.div_u
        (i64.mul
         (i64.extend_u/i32
          (i32.and
           (call $~lib/array/Array<u16>#__get
            (i32.load
             (get_local $0)
            )
            (get_local $5)
           )
           (i32.const 65535)
          )
         )
         (i64.add
          (call $~lib/array/Array<u64>#__get
           (get_local $9)
           (get_local $5)
          )
          (i64.const 100)
         )
        )
        (i64.const 100)
       )
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
  (block $break|2
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_s
      (get_local $5)
      (i32.wrap/i64
       (get_local $2)
      )
     )
    )
    (set_local $3
     (i64.rem_u
      (get_local $1)
      (get_local $8)
     )
    )
    (block $break|3
     (set_local $4
      (i32.const 0)
     )
     (loop $repeat|3
      (br_if $break|3
       (i32.ge_u
        (get_local $4)
        (call $~lib/array/Array<Dragon>#get:length
         (get_local $7)
        )
       )
      )
      (set_local $10
       (if (result i64)
        (i64.lt_u
         (get_local $3)
         (call $~lib/array/Array<u64>#__get
          (get_local $7)
          (get_local $4)
         )
        )
        (block (result i64)
         (i32.store
          (get_local $6)
          (i32.add
           (i32.load
            (get_local $6)
           )
           (i32.shl
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
            (i32.sub
             (i32.const 32)
             (i32.shl
              (get_local $5)
              (i32.const 3)
             )
            )
           )
          )
         )
         (i32.store offset=4
          (get_local $6)
          (i32.add
           (i32.load offset=4
            (get_local $6)
           )
           (i32.shl
            (i32.const 1)
            (i32.sub
             (i32.const 16)
             (i32.shl
              (get_local $5)
              (i32.const 2)
             )
            )
           )
          )
         )
         (set_local $8
          (i64.sub
           (get_local $8)
           (i64.div_u
            (i64.mul
             (i64.extend_u/i32
              (i32.and
               (call $~lib/array/Array<u16>#__get
                (i32.load
                 (get_local $0)
                )
                (get_local $4)
               )
               (i32.const 65535)
              )
             )
             (i64.add
              (call $~lib/array/Array<u64>#__get
               (get_local $9)
               (get_local $5)
              )
              (i64.const 100)
             )
            )
            (i64.const 100)
           )
          )
         )
         (call $~lib/array/Array<u64>#__set
          (get_local $7)
          (get_local $4)
          (i64.const 0)
         )
         (i64.extend_u/i32
          (get_local $4)
         )
        )
        (block
         (set_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (br $repeat|3)
        )
       )
      )
     )
    )
    (block $break|4
     (set_local $4
      (i32.const 0)
     )
     (loop $repeat|4
      (br_if $break|4
       (i32.ge_u
        (get_local $4)
        (call $~lib/array/Array<Dragon>#get:length
         (get_local $7)
        )
       )
      )
      (if
       (if (result i32)
        (tee_local $11
         (i64.gt_u
          (i64.extend_u/i32
           (get_local $4)
          )
          (get_local $10)
         )
        )
        (i64.gt_u
         (call $~lib/array/Array<u64>#__get
          (get_local $7)
          (get_local $4)
         )
         (i64.const 0)
        )
        (get_local $11)
       )
       (call $~lib/array/Array<u64>#__set
        (get_local $7)
        (get_local $4)
        (i64.sub
         (call $~lib/array/Array<u64>#__get
          (get_local $7)
          (get_local $4)
         )
         (i64.div_u
          (i64.mul
           (i64.extend_u/i32
            (i32.and
             (call $~lib/array/Array<u16>#__get
              (i32.load
               (get_local $0)
              )
              (i32.wrap/i64
               (get_local $10)
              )
             )
             (i32.const 65535)
            )
           )
           (i64.add
            (call $~lib/array/Array<u64>#__get
             (get_local $9)
             (get_local $5)
            )
            (i64.const 100)
           )
          )
          (i64.const 100)
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
      (br $repeat|4)
     )
    )
    (set_local $1
     (i64.div_u
      (get_local $1)
      (i64.const 10)
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (get_local $6)
 )
 (func $genetype/GenType#get:skills (; 175 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (if
   (i64.gt_u
    (i64.and
     (tee_local $3
      (i64.and
       (i64.shr_u
        (i64.load
         (get_local $0)
        )
        (i64.const 24)
       )
       (i64.const 1099511627775)
      )
     )
     (i64.const 255)
    )
    (i64.const 0)
   )
   (block $break|0
    (set_local $0
     (i32.const 0)
    )
    (loop $repeat|0
     (br_if $break|0
      (i32.ge_s
       (get_local $0)
       (i32.const 5)
      )
     )
     (set_local $2
      (i64.and
       (i64.shr_u
        (get_local $3)
        (i64.extend_u/i32
         (i32.shl
          (get_local $0)
          (i32.const 3)
         )
        )
       )
       (i64.const 255)
      )
     )
     (if
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
      (set_local $1
       (i64.shl
        (get_local $1)
        (i64.const 8)
       )
      )
     )
     (set_local $1
      (i64.add
       (get_local $1)
       (get_local $2)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $repeat|0)
    )
   )
   (block $break|1
    (set_local $0
     (i32.const 0)
    )
    (loop $repeat|1
     (br_if $break|1
      (i32.ge_s
       (get_local $0)
       (i32.const 5)
      )
     )
     (set_local $2
      (i64.and
       (i64.shr_u
        (get_local $3)
        (i64.sub
         (i64.const 32)
         (i64.extend_u/i32
          (i32.shl
           (get_local $0)
           (i32.const 3)
          )
         )
        )
       )
       (i64.const 255)
      )
     )
     (if
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
      (set_local $1
       (i64.shl
        (get_local $1)
        (i64.const 8)
       )
      )
     )
     (set_local $1
      (i64.add
       (get_local $1)
       (get_local $2)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $repeat|1)
    )
   )
  )
  (get_local $1)
 )
 (func $genetype/GenType#set:skills (; 176 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load
      (get_local $0)
     )
     (i64.const -72057594037862401)
    )
    (i64.shl
     (i64.and
      (get_local $1)
      (i64.const 1099511627775)
     )
     (i64.const 16)
    )
   )
  )
 )
 (func $genetype/GenType#get:skillsLevel (; 177 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.shr_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 16)
    )
    (i64.const 1048575)
   )
  )
 )
 (func $genetype/GenType#set:skillsLevel (; 178 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const -68719411201)
    )
    (i64.extend_u/i32
     (i32.shl
      (i32.and
       (get_local $1)
       (i32.const 1048575)
      )
      (i32.const 16)
     )
    )
   )
  )
 )
 (func $genescience/GeneScience#gen0Genes (; 179 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (set_local $3
   (call $../../internal/action.d/env.random_uint64
    (i64.const 0)
   )
  )
  (call $genetype/GenType#set:blood
   (get_local $1)
   (i32.add
    (call $genetype/GenType#get:blood
     (get_local $1)
    )
    (i32.wrap/i64
     (i64.rem_u
      (get_local $3)
      (i64.const 21)
     )
    )
   )
  )
  (call $genetype/GenType#set:type
   (get_local $1)
   (i32.add
    (call $genetype/GenType#get:type
     (get_local $1)
    )
    (i32.const 2)
   )
  )
  (set_local $6
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (get_local $6)
      (tee_local $5
       (i64.add
        (get_local $5)
        (call $~lib/array/Array<u64>#__get
         (i32.load offset=4
          (get_local $0)
         )
         (get_local $2)
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
  (set_local $3
   (i64.div_u
    (get_local $3)
    (i64.const 10)
   )
  )
  (block $break|1
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $6)
      )
     )
    )
    (set_local $4
     (if (result i64)
      (i64.lt_u
       (i64.rem_u
        (get_local $3)
        (get_local $5)
       )
       (call $~lib/array/Array<u64>#__get
        (get_local $6)
        (get_local $2)
       )
      )
      (i64.extend_u/i32
       (get_local $2)
      )
      (block
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
    )
   )
  )
  (if
   (i64.gt_u
    (get_local $4)
    (i64.const 0)
   )
   (block
    (set_local $2
     (call $genescience/GeneScience#createSkillAndLevel
      (get_local $0)
      (get_local $3)
      (get_local $4)
      (i64.const 0)
     )
    )
    (call $genetype/GenType#set:skills
     (get_local $1)
     (i64.add
      (call $genetype/GenType#get:skills
       (get_local $1)
      )
      (i64.extend_u/i32
       (i32.load
        (get_local $2)
       )
      )
     )
    )
    (call $genetype/GenType#set:skillsLevel
     (get_local $1)
     (i32.add
      (call $genetype/GenType#get:skillsLevel
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $2)
      )
     )
    )
   )
  )
  (get_local $1)
 )
 (func $genetype/GenType#get:subtype (; 180 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.shr_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 48)
    )
    (i64.const 4095)
   )
  )
 )
 (func $genetype/GenType#set:subtype (; 181 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const -1152640029630136321)
    )
    (i64.extend_u/i32
     (i32.shl
      (i32.and
       (get_local $1)
       (i32.const 4095)
      )
      (i32.const 48)
     )
    )
   )
  )
 )
 (func $genescience/GeneScience#confirmGene (; 182 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (call $genetype/GenType#get:type
     (get_local $1)
    )
    (i32.const 2)
   )
   (return
    (get_local $1)
   )
   (block
    (set_local $2
     (call $genetype/GenType#get:subtype
      (get_local $1)
     )
    )
    (if
     (i64.lt_u
      (call $../../src/map/Map<u64_u64>#get
       (i32.load offset=48
        (i32.load offset=32
         (get_local $0)
        )
       )
       (i64.extend_u/i32
        (get_local $2)
       )
      )
      (call $../../src/map/Map<u64_u64>#get
       (i32.load offset=52
        (i32.load offset=32
         (get_local $0)
        )
       )
       (i64.extend_u/i32
        (get_local $2)
       )
      )
     )
     (call $dragoncore/DragonMinting#increaseSpecialDragon
      (i32.load offset=32
       (get_local $0)
      )
      (i64.extend_u/i32
       (get_local $2)
      )
     )
     (block
      (call $genetype/GenType#set:type
       (get_local $1)
       (i32.add
        (call $genetype/GenType#get:type
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (call $genetype/GenType#set:subtype
       (get_local $1)
       (i32.const 0)
      )
     )
    )
   )
  )
  (get_local $1)
 )
 (func $dragoncore/DragonCore#confirmGene (; 183 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $genescience/GeneScience#confirmGene
   (call $genescience/GeneScience#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../internal/system.d/env.now (; 184 ;) (type $i) (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $../../internal/system.d/env.current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $~lib/internal/string/allocate (; 185 ;) (type $ii) (param $0 i32) (result i32)
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
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
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
 (func $~lib/string/String#concat (; 186 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 1880)
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
    (i32.const 8)
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
 (func $~lib/string/String.__concat (; 187 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 1880)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/utils/intToString (; 188 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i64.div_u
    (get_local $0)
    (i64.const 10)
   )
  )
  (set_local $2
   (call $~lib/array/Array<Dragon>#__get
    (i32.const 768)
    (i32.add
     (i32.wrap/i64
      (i64.rem_u
       (get_local $0)
       (i64.const 10)
      )
     )
     (i32.const 16)
    )
   )
  )
  (loop $continue|0
   (if
    (i64.ne
     (get_local $1)
     (i64.const 0)
    )
    (block
     (set_local $3
      (i32.wrap/i64
       (i64.rem_u
        (get_local $1)
        (i64.const 10)
       )
      )
     )
     (set_local $1
      (i64.div_u
       (get_local $1)
       (i64.const 10)
      )
     )
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (call $~lib/array/Array<Dragon>#__get
        (i32.const 768)
        (i32.add
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $2)
 )
 (func $genetype/GenType#toString (; 189 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/string/String.__concat
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (call $../../src/utils/intToString
      (i64.load
       (get_local $0)
      )
     )
     (call $../../src/utils/intToString
      (i64.load offset=8
       (get_local $0)
      )
     )
    )
    (call $../../src/utils/intToString
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (call $../../src/utils/intToString
    (i64.load offset=24
     (get_local $0)
    )
   )
  )
 )
 (func $../../src/map/Map<String_String>#set (; 190 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (tee_local $3
     (call $../../src/map/Map<String_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const -1)
   )
   (block
    (drop
     (call $~lib/array/Array<DataItem<Account>>#push
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (drop
     (call $~lib/array/Array<DataItem<Account>>#push
      (i32.load offset=4
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (call $~lib/array/Array<JoinUser>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $../../lib/events/_EventObject#set<String> (; 191 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $3
     (call $~lib/string/String.__ne
      (get_local $1)
      (i32.const 0)
     )
    )
    (i32.gt_s
     (i32.load
      (get_local $1)
     )
     (i32.const 0)
    )
    (get_local $3)
   )
   (i32.const 2780)
  )
  (call $../../src/map/Map<String_String>#set
   (i32.load
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $dragoncore/DragonCore#_createDragon (; 192 ;) (type $iIIiiIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (result i64)
  (local $8 i32)
  (local $9 i32)
  (set_local $9
   (i32.div_u
    (i32.and
     (get_local $3)
     (i32.const 65535)
    )
    (i32.const 2)
   )
  )
  (if
   (i64.ne
    (get_local $1)
    (i64.const 0)
   )
   (if
    (i32.gt_u
     (get_local $9)
     (i32.const 7)
    )
    (set_local $9
     (i32.const 7)
    )
   )
   (if
    (i32.gt_u
     (get_local $9)
     (i32.const 13)
    )
    (set_local $9
     (i32.const 13)
    )
   )
  )
  (if
   (i32.and
    (call $../../internal/action.d/env.is_account
     (get_local $6)
    )
    (i32.const 1)
   )
   (set_local $4
    (call $dragoncore/DragonCore#confirmGene
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (i64.store
   (tee_local $8
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 96)
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $8)
   (call $genetype/GenType#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (i32.store offset=12
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $8)
   (i64.const 0)
  )
  (i32.store16 offset=56
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=64
   (get_local $8)
   (i64.const 0)
  )
  (i32.store16 offset=72
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=80
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $8)
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $4)
  )
  (i32.store offset=12
   (get_local $8)
   (call $../../internal/system.d/env.now)
  )
  (i64.store offset=16
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=40
   (get_local $8)
   (get_local $2)
  )
  (i64.store offset=48
   (get_local $8)
   (i64.const 0)
  )
  (i32.store16 offset=56
   (get_local $8)
   (get_local $9)
  )
  (i64.store offset=64
   (get_local $8)
   (i64.const 0)
  )
  (i32.store16 offset=72
   (get_local $8)
   (get_local $3)
  )
  (i64.store offset=80
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=88
   (get_local $8)
   (get_local $7)
  )
  (set_local $3
   (i32.sub
    (call $~lib/array/Array<DataItem<Account>>#push
     (i32.load offset=28
      (get_local $0)
     )
     (get_local $8)
    )
    (i32.const 1)
   )
  )
  (call $../../lib/events/emit
   (i32.const 5360)
   (call $../../lib/events/_EventObject#set<String>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 5376)
        (get_local $6)
       )
       (i32.const 2760)
       (i64.extend_u/i32
        (get_local $3)
       )
      )
      (i32.const 5392)
      (get_local $1)
     )
     (i32.const 5412)
     (get_local $2)
    )
    (i32.const 5428)
    (call $genetype/GenType#toString
     (get_local $4)
    )
   )
  )
  (call $dragoncore/DragonBase#_transfer
   (get_local $0)
   (i64.const 0)
   (get_local $6)
   (i64.extend_u/i32
    (get_local $3)
   )
  )
  (i64.extend_u/i32
   (get_local $3)
  )
 )
 (func $saleclockauction/SaleClockAuction#averageGen0SalePrice (; 193 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (i32.const 5)
     )
    )
    (set_local $2
     (i64.add
      (get_local $2)
      (call $Contract#get:_receiver
       (call $~lib/array/Array<Dragon>#__get
        (i32.load offset=40
         (get_local $0)
        )
        (get_local $1)
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
    (br $repeat|0)
   )
  )
  (call $../../src/asset/Asset#setSymbol
   (tee_local $1
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.div_u
      (get_local $2)
      (i64.const 5)
     )
     (i64.const 0)
    )
   )
   (call $../../src/asset/Asset#getSymbol
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=40
      (get_local $0)
     )
     (i32.const 0)
    )
   )
  )
  (get_local $1)
 )
 (func $../../src/asset/Asset#clone (; 194 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (tee_local $1
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
    )
   )
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (get_local $1)
 )
 (func $dragoncore/DragonCore#_computeNextGen0Price (; 195 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i64.lt_u
    (tee_local $2
     (i64.add
      (tee_local $2
       (call $Contract#get:_receiver
        (tee_local $0
         (call $saleclockauction/SaleClockAuction#averageGen0SalePrice
          (get_local $1)
         )
        )
       )
      )
      (i64.div_u
       (get_local $2)
       (i64.const 2)
      )
     )
    )
    (call $Contract#get:_receiver
     (get_global $dragoncore/GEN0_STARTING_PRICE)
    )
   )
   (set_local $2
    (call $Contract#get:_receiver
     (get_global $dragoncore/GEN0_STARTING_PRICE)
    )
   )
  )
  (call $Contract#set:_receiver
   (tee_local $0
    (call $../../src/asset/Asset#clone
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (get_local $0)
 )
 (func $saleclockauction/ClockAuctionBase#escrow (; 196 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transferFrom
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (i64.load
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $saleclockauction/ClockAuctionBase#addAuction (; 197 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (i64.load offset=16
     (get_local $2)
    )
    (i64.const 60)
   )
   (i32.const 5492)
  )
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
  (call $../../lib/events/emit
   (i32.const 5588)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4212)
       (get_local $1)
      )
      (i32.const 5620)
      (call $Contract#get:_receiver
       (i32.load offset=8
        (get_local $2)
       )
      )
     )
     (i32.const 5652)
     (call $Contract#get:_receiver
      (i32.load offset=12
       (get_local $2)
      )
     )
    )
    (i32.const 5680)
    (i64.load offset=16
     (get_local $2)
    )
   )
  )
 )
 (func $saleclockauction/SaleClockAuction#createAuction (; 198 ;) (type $iIiiIIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i64)
  (local $6 i32)
  (call $saleclockauction/ClockAuctionBase#escrow
   (get_local $0)
   (get_local $5)
   (get_local $1)
  )
  (i64.store
   (tee_local $6
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 32)
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $6)
   (i32.const 0)
  )
  (i32.store offset=12
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $6)
   (i64.const 0)
  )
  (i64.store
   (get_local $6)
   (get_local $5)
  )
  (i32.store offset=8
   (get_local $6)
   (get_local $2)
  )
  (i32.store offset=12
   (get_local $6)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $6)
   (get_local $4)
  )
  (i64.store offset=24
   (get_local $6)
   (i64.extend_u/i32
    (call $../../internal/system.d/env.now)
   )
  )
  (call $saleclockauction/ClockAuctionBase#addAuction
   (get_local $0)
   (get_local $1)
   (get_local $6)
  )
 )
 (func $dragoncore/DragonCore#createGen0Auction (; 199 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i64)
  (call $../../src/utils/ultrain_assert
   (i64.lt_u
    (i64.load offset=64
     (get_local $0)
    )
    (get_global $dragoncore/GEN0_CREATION_LIMIT)
   )
   (i32.const 4588)
  )
  (call $dragoncore/DragonAssetControl#_approve
   (get_local $0)
   (tee_local $2
    (call $dragoncore/DragonCore#_createDragon
     (get_local $0)
     (i64.const 0)
     (i64.const 0)
     (i32.const 0)
     (call $genescience/GeneScience#gen0Genes
      (call $genescience/GeneScience#constructor
       (i32.const 0)
       (get_local $0)
      )
      (get_local $1)
     )
     (i64.const 0)
     (tee_local $3
      (get_global $consts/HyperDragonContract)
     )
     (get_local $2)
    )
   )
   (get_local $3)
  )
  (call $saleclockauction/SaleClockAuction#createAuction
   (tee_local $1
    (call $saleclockauction/SaleClockAuction#constructor
     (i32.const 0)
     (get_local $0)
     (i64.load offset=88
      (get_local $0)
     )
     (i64.load offset=96
      (get_local $0)
     )
    )
   )
   (get_local $2)
   (call $dragoncore/DragonCore#_computeNextGen0Price
    (get_local $0)
    (get_local $1)
   )
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
   (get_global $dragoncore/GEN0_AUCTION_DURATION)
   (get_local $3)
  )
  (i64.store offset=64
   (get_local $0)
   (i64.add
    (i64.load offset=64
     (get_local $0)
    )
    (i64.const 1)
   )
  )
 )
 (func $index/HyperDragonContract#createGen0Auction (; 200 ;) (type $iIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
  (local $6 i32)
  (set_local $6
   (call $genetype/GenType#constructor
    (i32.const 0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
  (call $dragoncore/DragonCore#createGen0Auction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $6)
   (get_local $5)
  )
 )
 (func $dragoncore/DragonCore#createPromoDragon (; 201 ;) (type $iiIIIv) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (tee_local $5
     (get_local $2)
    )
    (i64.const 0)
   )
   (set_local $5
    (i64.load offset=8
     (get_local $0)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.lt_u
    (i64.load offset=56
     (get_local $0)
    )
    (get_global $dragoncore/PROMO_CREATION_LIMIT)
   )
   (i32.const 5700)
  )
  (i64.store offset=56
   (get_local $0)
   (i64.add
    (i64.load offset=56
     (get_local $0)
    )
    (i64.const 1)
   )
  )
  (drop
   (call $dragoncore/DragonCore#_createDragon
    (get_local $0)
    (i64.const 0)
    (i64.const 0)
    (i32.const 0)
    (get_local $1)
    (get_local $3)
    (get_local $5)
    (get_local $4)
   )
  )
 )
 (func $index/HyperDragonContract#createPromoDragon (; 202 ;) (type $iIIIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64)
  (local $8 i32)
  (set_local $8
   (call $genetype/GenType#constructor
    (i32.const 0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
  (call $dragoncore/DragonCore#createPromoDragon
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $8)
   (get_local $5)
   (get_local $6)
   (get_local $7)
  )
 )
 (func $dragoncore/DragonBreeding#_isReadyToBreed (; 203 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i64.eq
     (i64.load offset=48
      (get_local $1)
     )
     (i64.const 0)
    )
   )
   (i64.le_u
    (i64.load offset=16
     (get_local $1)
    )
    (i64.extend_u/i32
     (call $../../internal/transaction.d/env.tapos_block_num)
    )
   )
   (get_local $2)
  )
 )
 (func $dragoncore/DragonBreeding#isReadyToBreed (; 204 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 5856)
  )
  (call $dragoncore/DragonBreeding#_isReadyToBreed
   (get_local $0)
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $1)
    )
   )
  )
 )
 (func $dragoncore/DragonBreeding#_isValidMatingPair (; 205 ;) (type $iiIiIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (result i32)
  (local $5 i32)
  (if
   (i64.eq
    (get_local $2)
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i64.eq
      (i64.load offset=32
       (get_local $1)
      )
      (get_local $4)
     )
    )
    (get_local $5)
    (i64.eq
     (i64.load offset=40
      (get_local $1)
     )
     (get_local $4)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i64.eq
      (i64.load offset=32
       (get_local $3)
      )
      (get_local $2)
     )
    )
    (get_local $5)
    (i64.eq
     (i64.load offset=40
      (get_local $3)
     )
     (get_local $2)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i64.eq
      (i64.load offset=32
       (get_local $3)
      )
      (i64.const 0)
     )
    )
    (get_local $5)
    (i64.eq
     (i64.load offset=32
      (get_local $1)
     )
     (i64.const 0)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i64.eq
      (i64.load offset=32
       (get_local $3)
      )
      (i64.load offset=32
       (get_local $1)
      )
     )
    )
    (get_local $5)
    (i64.eq
     (i64.load offset=32
      (get_local $3)
     )
     (i64.load offset=40
      (get_local $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i64.eq
      (i64.load offset=40
       (get_local $3)
      )
      (i64.load offset=32
       (get_local $1)
      )
     )
    )
    (get_local $5)
    (i64.eq
     (i64.load offset=40
      (get_local $3)
     )
     (i64.load offset=40
      (get_local $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 1)
 )
 (func $dragoncore/DragonBreeding#_canBreedWithViaAuction (; 206 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (call $dragoncore/DragonBreeding#_isValidMatingPair
   (get_local $0)
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $1)
    )
   )
   (get_local $1)
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $2)
    )
   )
   (get_local $2)
  )
 )
 (func $saleclockauction/ClockAuctionBase#isOnAuction (; 207 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i64.gt_u
   (i64.load offset=24
    (get_local $1)
   )
   (i64.const 0)
  )
 )
 (func $saleclockauction/ClockAuctionBase#computeCurrentPrice (; 208 ;) (type $iiiIIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i32)
  (if (result i32)
   (i64.gt_u
    (get_local $4)
    (get_local $3)
   )
   (get_local $2)
   (block (result i32)
    (set_local $5
     (call $../../src/asset/Asset._gt
      (get_local $2)
      (get_local $1)
     )
    )
    (set_local $0
     (call $../../src/asset/Asset#clone
      (get_local $1)
     )
    )
    (set_local $4
     (i64.div_u
      (i64.mul
       (if (result i64)
        (get_local $5)
        (i64.sub
         (call $Contract#get:_receiver
          (get_local $2)
         )
         (call $Contract#get:_receiver
          (get_local $1)
         )
        )
        (i64.sub
         (call $Contract#get:_receiver
          (get_local $1)
         )
         (call $Contract#get:_receiver
          (get_local $2)
         )
        )
       )
       (get_local $4)
      )
      (get_local $3)
     )
    )
    (set_local $3
     (call $Contract#get:_receiver
      (get_local $0)
     )
    )
    (call $Contract#set:_receiver
     (get_local $0)
     (tee_local $3
      (select
       (i64.add
        (get_local $3)
        (get_local $4)
       )
       (i64.sub
        (get_local $3)
        (get_local $4)
       )
       (get_local $5)
      )
     )
    )
    (get_local $0)
   )
  )
 )
 (func $saleclockauction/ClockAuctionBase#currentPrice (; 209 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i64.gt_u
    (i64.extend_u/i32
     (call $../../internal/system.d/env.now)
    )
    (i64.load offset=24
     (get_local $1)
    )
   )
   (set_local $2
    (i64.sub
     (i64.extend_u/i32
      (call $../../internal/system.d/env.now)
     )
     (i64.load offset=24
      (get_local $1)
     )
    )
   )
  )
  (call $saleclockauction/ClockAuctionBase#computeCurrentPrice
   (get_local $0)
   (i32.load offset=8
    (get_local $1)
   )
   (i32.load offset=12
    (get_local $1)
   )
   (i64.load offset=16
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $saleclockauction/ClockAuction#getcurrentPrice (; 210 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (call $saleclockauction/ClockAuctionBase#isOnAuction
    (get_local $0)
    (tee_local $2
     (call $../../src/map/Map<u64_JoinUser>#_valueAt
      (i32.load offset=24
       (get_local $0)
      )
      (get_local $1)
     )
    )
   )
   (i32.const 6112)
  )
  (call $saleclockauction/ClockAuctionBase#currentPrice
   (get_local $0)
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset#add (; 211 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $1)
    )
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 2168)
  )
  (i64.store
   (get_local $0)
   (i64.add
    (i64.load
     (get_local $0)
    )
    (i64.load
     (get_local $1)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Auction>#splice (; 212 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
     (tee_local $1
      (i32.add
       (get_local $4)
       (get_local $1)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $1)
      (get_local $3)
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
        (get_local $2)
        (tee_local $3
         (i32.sub
          (get_local $4)
          (get_local $1)
         )
        )
        (i32.lt_s
         (get_local $2)
         (get_local $3)
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
 (func $../../src/map/Map<u64_Auction>#remove (; 213 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (tee_local $2
     (call $../../src/map/Map<u64_u64>#find
      (get_local $0)
      (get_local $1)
     )
    )
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
  (call $~lib/array/Array<Auction>#splice
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $2)
   (i32.const 1)
  )
  (i32.const 1)
 )
 (func $saleclockauction/ClockAuctionBase#removeAuction (; 214 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (drop
   (call $../../src/map/Map<u64_Auction>#remove
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $saleclockauction/ClockAuctionBase#computeCut (; 215 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (set_local $2
   (i64.div_u
    (i64.mul
     (call $Contract#get:_receiver
      (get_local $1)
     )
     (i64.load offset=16
      (get_local $0)
     )
    )
    (i64.const 10000)
   )
  )
  (call $Contract#set:_receiver
   (tee_local $0
    (call $../../src/asset/Asset#clone
     (get_local $1)
    )
   )
   (get_local $2)
  )
  (get_local $0)
 )
 (func $saleclockauction/ClockAuctionBase#_bid (; 216 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $../../src/utils/ultrain_assert
   (call $saleclockauction/ClockAuctionBase#isOnAuction
    (get_local $0)
    (tee_local $3
     (call $../../src/map/Map<u64_MatchInfo>#get
      (i32.load offset=24
       (get_local $0)
      )
      (get_local $1)
     )
    )
   )
   (i32.const 6220)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $2)
    (tee_local $4
     (call $saleclockauction/ClockAuctionBase#currentPrice
      (get_local $0)
      (get_local $3)
     )
    )
   )
   (i32.const 6288)
  )
  (set_local $5
   (i64.load
    (get_local $3)
   )
  )
  (call $saleclockauction/ClockAuctionBase#removeAuction
   (get_local $0)
   (get_local $1)
  )
  (if
   (i64.gt_u
    (call $Contract#get:_receiver
     (get_local $4)
    )
    (i64.const 0)
   )
   (block
    (set_local $6
     (call $saleclockauction/ClockAuctionBase#computeCut
      (get_local $0)
      (get_local $4)
     )
    )
    (drop
     (call $../../src/asset/Asset#add
      (tee_local $3
       (call $../../src/asset/Asset#clone
        (get_local $4)
       )
      )
      (get_local $6)
     )
    )
    (call $../../src/balance/send
     (i64.load
      (get_local $0)
     )
     (get_local $5)
     (get_local $3)
     (i32.const 6372)
    )
   )
  )
  (drop
   (call $../../src/asset/Asset#add
    (tee_local $3
     (call $../../src/asset/Asset#clone
      (get_local $2)
     )
    )
    (get_local $4)
   )
  )
  (call $../../src/balance/send
   (i64.load
    (get_local $0)
   )
   (call $../../internal/action.d/env.current_sender)
   (get_local $3)
   (i32.const 6408)
  )
  (call $../../lib/events/emit
   (i32.const 6432)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4212)
       (get_local $1)
      )
      (i32.const 6472)
      (call $Contract#get:_receiver
       (get_local $4)
      )
     )
     (i32.const 6496)
     (call $../../internal/action.d/env.current_sender)
    )
    (i32.const 6512)
    (get_local $5)
   )
  )
  (get_local $4)
 )
 (func $dragoncore/DragonAssetControl#transfer (; 217 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../internal/action.d/env.is_account
    (get_local $1)
   )
   (i32.const 6528)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_global $consts/HyperDragonContract)
   )
   (i32.const 6592)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_global $consts/SaleAuctionAddress)
   )
   (i32.const 6660)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_global $consts/SireAuctionAddress)
   )
   (i32.const 6744)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 6828)
  )
  (call $../../lib/events/emit
   (i32.const 6884)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4192)
      (call $../../internal/action.d/env.current_sender)
     )
     (i32.const 4204)
     (get_local $1)
    )
    (i32.const 4212)
    (get_local $2)
   )
  )
  (call $dragoncore/DragonBase#_transfer
   (get_local $0)
   (call $../../internal/action.d/env.current_sender)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $saleclockauction/ClockAuctionBase#transfer (; 218 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transfer
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $saleclockauction/SireClockAuction#bid (; 219 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (set_local $3
   (i64.load
    (call $../../src/map/Map<u64_JoinUser>#_valueAt
     (i32.load offset=24
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
  (drop
   (call $saleclockauction/ClockAuctionBase#_bid
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (call $saleclockauction/ClockAuctionBase#transfer
   (get_local $0)
   (get_local $3)
   (get_local $1)
  )
 )
 (func $dragoncore/DragonBreeding#_triggerCooldown (; 220 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $1)
   (i64.div_u
    (call $~lib/array/Array<u64>#__get
     (i32.load offset=120
      (get_local $0)
     )
     (i32.load16_u offset=56
      (get_local $1)
     )
    )
    (i64.load offset=128
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load16_u offset=56
     (get_local $1)
    )
    (i32.const 13)
   )
   (i32.store16 offset=56
    (get_local $1)
    (i32.add
     (i32.load16_u offset=56
      (get_local $1)
     )
     (i32.const 1)
    )
   )
  )
 )
 (func $dragoncore/DragonBreeding#_breedWith (; 221 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $2)
    )
   )
  )
  (i64.store offset=48
   (tee_local $3
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=28
      (get_local $0)
     )
     (i32.wrap/i64
      (get_local $1)
     )
    )
   )
   (get_local $2)
  )
  (call $dragoncore/DragonBreeding#_triggerCooldown
   (get_local $0)
   (get_local $4)
  )
  (call $dragoncore/DragonBreeding#_triggerCooldown
   (get_local $0)
   (get_local $3)
  )
  (drop
   (call $../../src/map/Map<u64_u64>#remove
    (i32.load offset=44
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (drop
   (call $../../src/map/Map<u64_u64>#remove
    (i32.load offset=44
     (get_local $0)
    )
    (get_local $2)
   )
  )
  (i64.store offset=80
   (get_local $0)
   (i64.add
    (i64.load offset=80
     (get_local $0)
    )
    (i64.const 1)
   )
  )
  (call $../../lib/events/emit
   (i32.const 6908)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 5376)
       (call $../../src/map/Map<u64_u64>#get
        (i32.load offset=32
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (i32.const 5392)
      (get_local $1)
     )
     (i32.const 5412)
     (get_local $2)
    )
    (i32.const 6928)
    (i64.load offset=16
     (get_local $3)
    )
   )
  )
 )
 (func $dragoncore/DragonCore#bidOnSiringAuction (; 222 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (set_local $4
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (get_local $4)
    (get_local $2)
   )
   (i32.const 5756)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#isReadyToBreed
    (get_local $0)
    (get_local $2)
   )
   (i32.const 5904)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_canBreedWithViaAuction
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (i32.const 5988)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $3)
    (call $../../src/asset/Asset#add
     (call $saleclockauction/ClockAuction#getcurrentPrice
      (tee_local $5
       (call $saleclockauction/SireClockAuction#constructor
        (i32.const 0)
        (get_local $0)
        (i64.load offset=104
         (get_local $0)
        )
        (i64.load offset=112
         (get_local $0)
        )
       )
      )
      (get_local $1)
     )
     (i32.load offset=72
      (get_local $0)
     )
    )
   )
   (i32.const 6172)
  )
  (call $saleclockauction/SireClockAuction#bid
   (get_local $5)
   (get_local $1)
   (call $../../src/asset/Asset#add
    (get_local $3)
    (i32.load offset=72
     (get_local $0)
    )
   )
  )
  (call $dragoncore/DragonBreeding#_breedWith
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#bidOnSiringAuction (; 223 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonCore#bidOnSiringAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAuction#setSaleAuctionAddress (; 224 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (i64.store offset=88
   (get_local $0)
   (get_local $1)
  )
  (i64.store offset=96
   (get_local $0)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#setSaleAuctionAddress (; 225 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAuction#setSaleAuctionAddress
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonAuction#setSiringAuctionAddress (; 226 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (i64.store offset=104
   (get_local $0)
   (get_local $1)
  )
  (i64.store offset=112
   (get_local $0)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#setSiringAuctionAddress (; 227 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAuction#setSiringAuctionAddress
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonCore#createSiringAuction (; 228 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (set_local $5
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (get_local $5)
    (get_local $1)
   )
   (i32.const 6964)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#isReadyToBreed
    (get_local $0)
    (get_local $1)
   )
   (i32.const 7052)
  )
  (call $dragoncore/DragonAssetControl#_approve
   (get_local $0)
   (get_local $1)
   (get_global $consts/SireAuctionAddress)
  )
  (call $saleclockauction/SaleClockAuction#createAuction
   (call $saleclockauction/SireClockAuction#constructor
    (i32.const 0)
    (get_local $0)
    (i64.load offset=104
     (get_local $0)
    )
    (i64.load offset=112
     (get_local $0)
    )
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
   (get_local $5)
  )
 )
 (func $index/HyperDragonContract#createSiringAuction (; 229 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (call $dragoncore/DragonCore#createSiringAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $dragoncore/DragonCore#createSaleAuction (; 230 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (set_local $5
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (get_local $5)
    (get_local $1)
   )
   (i32.const 7124)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $dragoncore/DragonBreeding#isPregnant
     (get_local $0)
     (get_local $1)
    )
   )
   (i32.const 7216)
  )
  (call $dragoncore/DragonAssetControl#_approve
   (get_local $0)
   (get_local $1)
   (get_global $consts/SaleAuctionAddress)
  )
  (call $saleclockauction/SaleClockAuction#createAuction
   (call $saleclockauction/SaleClockAuction#constructor
    (i32.const 0)
    (get_local $0)
    (i64.load offset=88
     (get_local $0)
    )
    (i64.load offset=96
     (get_local $0)
    )
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
   (get_local $5)
  )
 )
 (func $index/HyperDragonContract#createSaleAuction (; 231 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (call $dragoncore/DragonCore#createSaleAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $dragoncore/DragonBreeding#updateGenes (; 232 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (i32.store offset=8
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (get_local $1)
    )
   )
   (get_local $2)
  )
  (call $../../lib/events/emit
   (i32.const 7268)
   (call $../../lib/events/_EventObject#set<String>
    (call $../../lib/events/_EventObject#set<u64>
     (get_global $../../lib/events/EventObject)
     (i32.const 2760)
     (get_local $1)
    )
    (i32.const 7296)
    (call $genetype/GenType#toString
     (get_local $2)
    )
   )
  )
 )
 (func $index/HyperDragonContract#updateGenes (; 233 ;) (type $iIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
  (local $6 i32)
  (set_local $6
   (call $genetype/GenType#constructor
    (i32.const 0)
    (get_local $2)
    (get_local $3)
    (get_local $4)
    (get_local $5)
   )
  )
  (call $dragoncore/DragonBreeding#updateGenes
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $6)
  )
 )
 (func $dragoncore/DragonAccessControl#onlyAPI (; 234 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load offset=16
     (get_local $0)
    )
   )
   (i32.const 7312)
  )
 )
 (func $genetype/GenType#get:color (; 235 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=24
   (get_local $0)
  )
 )
 (func $genetype/GenType#set:color (; 236 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (get_local $0)
   (get_local $1)
  )
 )
 (func $genescience/GeneScience#mixSkills (; 237 ;) (type $iIiiIi) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (set_local $5
   (call $genetype/GenType#get:skills
    (get_local $2)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (i32.const 5)
     )
    )
    (if
     (i64.ne
      (tee_local $6
       (i64.and
        (i64.shr_u
         (get_local $5)
         (i64.mul
          (i64.extend_u/i32
           (get_local $2)
          )
          (i64.const 8)
         )
        )
        (i64.const 255)
       )
      )
      (i64.const 0)
     )
     (block
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 1)
       )
      )
      (set_local $9
       (i64.shl
        (get_local $9)
        (i64.add
         (get_local $6)
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
    (br $repeat|0)
   )
  )
  (set_local $6
   (call $genetype/GenType#get:skills
    (get_local $3)
   )
  )
  (block $break|1
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.ge_s
      (get_local $2)
      (i32.const 5)
     )
    )
    (if
     (i64.ne
      (tee_local $5
       (i64.and
        (i64.shr_u
         (get_local $6)
         (i64.mul
          (i64.extend_u/i32
           (get_local $2)
          )
          (i64.const 8)
         )
        )
        (i64.const 255)
       )
      )
      (i64.const 0)
     )
     (block
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const 1)
       )
      )
      (set_local $9
       (i64.shl
        (get_local $9)
        (i64.add
         (get_local $5)
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
    (br $repeat|1)
   )
  )
  (set_local $5
   (i64.rem_u
    (get_local $1)
    (i64.const 10)
   )
  )
  (set_local $1
   (i64.div_u
    (get_local $1)
    (i64.const 10)
   )
  )
  (set_local $6
   (i64.const 1)
  )
  (if
   (i64.lt_u
    (get_local $5)
    (i64.extend_u/i32
     (i32.add
      (get_local $7)
      (get_local $8)
     )
    )
   )
   (block
    (if
     (i32.gt_u
      (get_local $7)
      (get_local $8)
     )
     (if
      (i32.gt_u
       (get_local $8)
       (i32.const 3)
      )
      (set_local $6
       (i64.extend_u/i32
        (i32.div_u
         (get_local $8)
         (i32.const 2)
        )
       )
      )
     )
     (if
      (i32.gt_u
       (get_local $7)
       (i32.const 3)
      )
      (set_local $6
       (i64.extend_u/i32
        (i32.div_u
         (get_local $7)
         (i32.const 2)
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (i64.lt_u
        (get_local $6)
        (i64.const 5)
       )
       (block
        (set_local $10
         (i64.const 1)
        )
        (block $break|3
         (set_local $5
          (i64.const 0)
         )
         (loop $repeat|3
          (br_if $break|3
           (i64.ge_u
            (get_local $5)
            (i64.add
             (get_local $6)
             (i64.const 2)
            )
           )
          )
          (set_local $10
           (i64.mul
            (get_local $10)
            (i64.const 10)
           )
          )
          (set_local $5
           (i64.add
            (get_local $5)
            (i64.const 1)
           )
          )
          (br $repeat|3)
         )
        )
        (set_local $5
         (i64.rem_u
          (get_local $1)
          (get_local $10)
         )
        )
        (set_local $1
         (i64.div_u
          (get_local $1)
          (get_local $10)
         )
        )
        (br_if $break|2
         (i64.ge_u
          (get_local $5)
          (i64.mul
           (i64.add
            (get_local $4)
            (i64.const 1)
           )
           (i64.extend_u/i32
            (i32.add
             (i32.mul
              (get_local $7)
              (get_local $7)
             )
             (i32.mul
              (get_local $8)
              (get_local $8)
             )
            )
           )
          )
         )
        )
        (set_local $6
         (i64.add
          (get_local $6)
          (i64.const 1)
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
  )
  (call $genescience/GeneScience#createSkillAndLevel
   (get_local $0)
   (get_local $1)
   (get_local $6)
   (get_local $9)
  )
 )
 (func $genescience/GeneScience#createCharacter (; 238 ;) (type $iIIiI) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (result i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (if
   (i64.ge_u
    (tee_local $7
     (i64.rem_u
      (get_local $1)
      (i64.const 100)
     )
    )
    (i64.const 70)
   )
   (set_local $9
    (i32.const 2)
   )
   (if
    (i64.ge_u
     (get_local $7)
     (i64.const 15)
    )
    (set_local $9
     (i32.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $9)
   )
   (return
    (get_local $8)
   )
  )
  (set_local $6
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $5)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $3)
      )
     )
    )
    (set_local $4
     (i32.wrap/i64
      (i64.sub
       (call $~lib/array/Array<u64>#__get
        (get_local $3)
        (get_local $5)
       )
       (i64.const 1)
      )
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (get_local $6)
      (tee_local $10
       (if (result i64)
        (i64.eq
         (get_local $2)
         (i64.const 1)
        )
        (i64.add
         (get_local $10)
         (call $~lib/array/Array<u64>#__get
          (i32.load offset=8
           (get_local $0)
          )
          (get_local $4)
         )
        )
        (i64.add
         (get_local $10)
         (call $~lib/array/Array<u64>#__get
          (i32.load offset=12
           (get_local $0)
          )
          (get_local $4)
         )
        )
       )
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
  (set_local $1
   (i64.div_u
    (get_local $1)
    (i64.const 10)
   )
  )
  (if
   (i32.ge_s
    (get_local $9)
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $3)
    )
   )
   (block
    (set_local $5
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (block $break|1
     (set_local $4
      (i32.const 0)
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.ge_s
        (get_local $4)
        (i32.const 30)
       )
      )
      (drop
       (call $~lib/array/Array<u64>#push
        (get_local $5)
        (i64.extend_u/i32
         (i32.add
          (get_local $4)
          (i32.const 1)
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
    (block $break|2
     (set_local $4
      (i32.const 0)
     )
     (loop $repeat|2
      (br_if $break|2
       (i32.ge_s
        (get_local $4)
        (call $~lib/array/Array<Dragon>#get:length
         (get_local $3)
        )
       )
      )
      (set_local $8
       (i64.add
        (get_local $8)
        (i64.shl
         (call $~lib/array/Array<u64>#__get
          (get_local $3)
          (get_local $4)
         )
         (i64.sub
          (i64.const 5)
          (i64.extend_u/i32
           (i32.mul
            (get_local $4)
            (i32.const 5)
           )
          )
         )
        )
       )
      )
      (call $~lib/array/Array<u64>#__set
       (get_local $5)
       (i32.wrap/i64
        (i64.sub
         (call $~lib/array/Array<u64>#__get
          (get_local $3)
          (get_local $4)
         )
         (i64.const 1)
        )
       )
       (i64.const 0)
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $repeat|2)
     )
    )
    (block $break|3
     (set_local $4
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $3)
      )
     )
     (loop $repeat|3
      (br_if $break|3
       (i32.ge_s
        (get_local $4)
        (get_local $9)
       )
      )
      (set_local $7
       (i64.rem_u
        (get_local $1)
        (i64.const 30)
       )
      )
      (loop $continue|4
       (if
        (i64.eq
         (call $~lib/array/Array<u64>#__get
          (get_local $5)
          (i32.wrap/i64
           (get_local $7)
          )
         )
         (i64.const 0)
        )
        (block
         (set_local $7
          (i64.rem_u
           (i64.add
            (get_local $7)
            (i64.const 1)
           )
           (i64.const 30)
          )
         )
         (br $continue|4)
        )
       )
      )
      (set_local $8
       (i64.add
        (get_local $8)
        (i64.shl
         (call $~lib/array/Array<u64>#__get
          (get_local $5)
          (i32.wrap/i64
           (get_local $7)
          )
         )
         (i64.sub
          (i64.const 5)
          (i64.extend_u/i32
           (i32.mul
            (get_local $4)
            (i32.const 5)
           )
          )
         )
        )
       )
      )
      (call $~lib/array/Array<u64>#__set
       (get_local $5)
       (i32.wrap/i64
        (get_local $7)
       )
       (i64.const 0)
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $repeat|3)
     )
    )
   )
   (block $break|5
    (set_local $5
     (i32.const 0)
    )
    (loop $repeat|5
     (br_if $break|5
      (i32.ge_s
       (get_local $5)
       (get_local $9)
      )
     )
     (set_local $7
      (i64.rem_u
       (get_local $1)
       (get_local $10)
      )
     )
     (block $break|6
      (set_local $4
       (i32.const 0)
      )
      (loop $repeat|6
       (br_if $break|6
        (i32.ge_s
         (get_local $4)
         (call $~lib/array/Array<Dragon>#get:length
          (get_local $6)
         )
        )
       )
       (if
        (i64.lt_u
         (get_local $7)
         (call $~lib/array/Array<u64>#__get
          (get_local $6)
          (get_local $4)
         )
        )
        (block
         (set_local $8
          (i64.add
           (get_local $8)
           (i64.shl
            (call $~lib/array/Array<u64>#__get
             (get_local $3)
             (get_local $4)
            )
            (i64.sub
             (i64.const 5)
             (i64.extend_u/i32
              (i32.mul
               (get_local $5)
               (i32.const 5)
              )
             )
            )
           )
          )
         )
         (set_local $11
          (get_local $4)
         )
         (set_local $10
          (if (result i64)
           (i64.eq
            (get_local $2)
            (i64.const 1)
           )
           (i64.sub
            (get_local $10)
            (call $~lib/array/Array<u64>#__get
             (i32.load offset=8
              (get_local $0)
             )
             (get_local $4)
            )
           )
           (i64.sub
            (get_local $10)
            (call $~lib/array/Array<u64>#__get
             (i32.load offset=12
              (get_local $0)
             )
             (get_local $4)
            )
           )
          )
         )
         (call $~lib/array/Array<u64>#__set
          (get_local $6)
          (get_local $4)
          (i64.const 0)
         )
        )
        (block
         (set_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (br $repeat|6)
        )
       )
      )
     )
     (if
      (i32.lt_s
       (get_local $5)
       (get_local $9)
      )
      (block $break|7
       (set_local $4
        (i32.const 0)
       )
       (loop $repeat|7
        (br_if $break|7
         (i32.ge_s
          (get_local $4)
          (call $~lib/array/Array<Dragon>#get:length
           (get_local $6)
          )
         )
        )
        (if
         (if (result i32)
          (tee_local $12
           (i32.gt_s
            (get_local $4)
            (get_local $11)
           )
          )
          (i64.gt_u
           (call $~lib/array/Array<u64>#__get
            (get_local $6)
            (get_local $4)
           )
           (i64.const 0)
          )
          (get_local $12)
         )
         (if
          (i64.eq
           (get_local $2)
           (i64.const 1)
          )
          (call $~lib/array/Array<u64>#__set
           (get_local $6)
           (get_local $4)
           (i64.sub
            (call $~lib/array/Array<u64>#__get
             (get_local $6)
             (get_local $4)
            )
            (call $~lib/array/Array<u64>#__get
             (i32.load offset=8
              (get_local $0)
             )
             (get_local $11)
            )
           )
          )
          (call $~lib/array/Array<u64>#__set
           (get_local $6)
           (get_local $4)
           (i64.sub
            (call $~lib/array/Array<u64>#__get
             (get_local $6)
             (get_local $4)
            )
            (call $~lib/array/Array<u64>#__get
             (i32.load offset=12
              (get_local $0)
             )
             (get_local $11)
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
        (br $repeat|7)
       )
      )
     )
     (set_local $1
      (i64.div_u
       (get_local $1)
       (i64.const 10)
      )
     )
     (set_local $5
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (br $repeat|5)
    )
   )
  )
  (get_local $8)
 )
 (func $genescience/GeneScience#specicalCharacter (; 239 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (set_local $3
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (i32.const 30)
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (get_local $3)
      (i64.extend_u/i32
       (i32.add
        (get_local $2)
        (i32.const 1)
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
  (set_local $4
   (i64.add
    (i64.add
     (get_local $4)
     (i64.shl
      (call $genescience/GeneScience#createCharacter
       (get_local $0)
       (get_local $1)
       (i64.const 1)
       (get_local $3)
      )
      (i64.const 10)
     )
    )
    (call $genescience/GeneScience#createCharacter
     (get_local $0)
     (tee_local $1
      (i64.div_u
       (get_local $1)
       (i64.const 10)
      )
     )
     (i64.const 2)
     (get_local $3)
    )
   )
  )
  (set_local $5
   (i64.add
    (i64.add
     (get_local $5)
     (i64.shl
      (call $genescience/GeneScience#createCharacter
       (get_local $0)
       (tee_local $1
        (i64.div_u
         (get_local $1)
         (i64.const 10)
        )
       )
       (i64.const 1)
       (get_local $3)
      )
      (i64.const 10)
     )
    )
    (call $genescience/GeneScience#createCharacter
     (get_local $0)
     (i64.div_u
      (get_local $1)
      (i64.const 10)
     )
     (i64.const 2)
     (get_local $3)
    )
   )
  )
  (i32.store
   (tee_local $2
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $2)
   (i32.const 0)
  )
  (i64.store32
   (get_local $2)
   (get_local $4)
  )
  (i64.store32 offset=4
   (get_local $2)
   (get_local $5)
  )
  (get_local $2)
 )
 (func $genetype/GenType#get:hchar (; 240 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const 65535)
   )
  )
 )
 (func $genetype/GenType#get:schar (; 241 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 65535)
   )
  )
 )
 (func $genescience/GeneScience#getUnRepeatArr (; 242 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 8)
     )
    )
    (set_local $6
     (i32.const 0)
    )
    (if
     (i64.gt_u
      (tee_local $7
       (i64.and
        (i64.shr_u
         (get_local $1)
         (i64.sub
          (i64.const 35)
          (i64.extend_u/i32
           (i32.mul
            (get_local $0)
            (i32.const 5)
           )
          )
         )
        )
        (i64.const 31)
       )
      )
      (i64.const 0)
     )
     (block
      (block $break|1
       (set_local $3
        (i32.const 0)
       )
       (loop $repeat|1
        (br_if $break|1
         (i32.ge_s
          (get_local $3)
          (i32.const 8)
         )
        )
        (set_local $6
         (if (result i32)
          (i64.eq
           (get_local $7)
           (i64.and
            (i64.shr_u
             (get_local $2)
             (i64.sub
              (i64.const 35)
              (i64.extend_u/i32
               (i32.mul
                (get_local $3)
                (i32.const 5)
               )
              )
             )
            )
            (i64.const 31)
           )
          )
          (i32.const 1)
          (block
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (br $repeat|1)
          )
         )
        )
       )
      )
      (if
       (i32.eqz
        (get_local $6)
       )
       (block
        (set_local $2
         (i64.add
          (get_local $2)
          (i64.shl
           (get_local $7)
           (i64.sub
            (i64.const 35)
            (i64.mul
             (get_local $5)
             (i64.const 5)
            )
           )
          )
         )
        )
        (set_local $5
         (i64.add
          (get_local $5)
          (i64.const 1)
         )
        )
        (set_local $4
         (i64.add
          (get_local $4)
          (i64.const 1)
         )
        )
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
    (br $repeat|0)
   )
  )
  (set_local $0
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|2
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i64.ge_u
      (get_local $1)
      (get_local $4)
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (get_local $0)
      (i64.and
       (i64.shr_u
        (get_local $2)
        (i64.sub
         (i64.const 35)
         (i64.mul
          (get_local $1)
          (i64.const 5)
         )
        )
       )
       (i64.const 31)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (get_local $0)
 )
 (func $genescience/GeneScience#joint (; 243 ;) (type $iIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (i64.add
   (i64.add
    (i64.shl
     (call $genescience/GeneScience#createCharacter
      (get_local $0)
      (get_local $1)
      (i64.const 1)
      (call $genescience/GeneScience#getUnRepeatArr
       (get_local $0)
       (get_local $2)
      )
     )
     (i64.const 10)
    )
    (i64.const 0)
   )
   (call $genescience/GeneScience#createCharacter
    (get_local $0)
    (i64.div_u
     (get_local $1)
     (i64.const 10000)
    )
    (i64.const 2)
    (call $genescience/GeneScience#getUnRepeatArr
     (get_local $0)
     (get_local $3)
    )
   )
  )
 )
 (func $genescience/GeneScience#mixCharacter (; 244 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (set_local $5
   (call $../../internal/action.d/env.random_uint64
    (i64.const 0)
   )
  )
  (if
   (i64.eq
    (get_local $3)
    (i64.const 1)
   )
   (return
    (call $genescience/GeneScience#specicalCharacter
     (get_local $0)
     (get_local $5)
    )
   )
  )
  (i32.store
   (tee_local $4
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $4)
   (i32.const 0)
  )
  (set_local $7
   (i64.add
    (i64.add
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (i32.shr_u
         (call $genetype/GenType#get:hchar
          (get_local $1)
         )
         (i32.const 6)
        )
        (i32.const 1023)
       )
       (i32.const 10)
      )
     )
     (i64.const 0)
    )
    (i64.extend_u/i32
     (i32.and
      (i32.shr_u
       (call $genetype/GenType#get:hchar
        (get_local $2)
       )
       (i32.const 6)
      )
      (i32.const 1023)
     )
    )
   )
  )
  (set_local $8
   (i64.add
    (i64.add
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (call $genetype/GenType#get:hchar
         (get_local $1)
        )
        (i32.const 1023)
       )
       (i32.const 10)
      )
     )
     (i64.const 0)
    )
    (i64.extend_u/i32
     (i32.and
      (call $genetype/GenType#get:hchar
       (get_local $1)
      )
      (i32.const 1023)
     )
    )
   )
  )
  (set_local $3
   (i64.add
    (i64.add
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (i32.shr_u
         (call $genetype/GenType#get:schar
          (get_local $1)
         )
         (i32.const 6)
        )
        (i32.const 1023)
       )
       (i32.const 10)
      )
     )
     (i64.const 0)
    )
    (i64.extend_u/i32
     (i32.and
      (i32.shr_u
       (call $genetype/GenType#get:schar
        (get_local $2)
       )
       (i32.const 6)
      )
      (i32.const 1023)
     )
    )
   )
  )
  (set_local $6
   (i64.add
    (i64.add
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (call $genetype/GenType#get:schar
         (get_local $1)
        )
        (i32.const 1023)
       )
       (i32.const 10)
      )
     )
     (i64.const 0)
    )
    (i64.extend_u/i32
     (i32.and
      (call $genetype/GenType#get:schar
       (get_local $1)
      )
      (i32.const 1023)
     )
    )
   )
  )
  (if
   (i64.lt_u
    (i64.rem_u
     (get_local $5)
     (i64.const 100)
    )
    (i64.const 1)
   )
   (block
    (set_local $3
     (i64.add
      (get_local $3)
      (i64.shl
       (get_local $7)
       (i64.const 20)
      )
     )
    )
    (set_local $6
     (i64.add
      (get_local $6)
      (i64.shl
       (get_local $8)
       (i64.const 20)
      )
     )
    )
   )
  )
  (i64.store32
   (get_local $4)
   (call $genescience/GeneScience#joint
    (get_local $0)
    (get_local $5)
    (get_local $3)
    (get_local $6)
   )
  )
  (i64.store32 offset=4
   (get_local $4)
   (call $genescience/GeneScience#joint
    (get_local $0)
    (i64.div_u
     (get_local $5)
     (i64.const 1000000)
    )
    (get_local $7)
    (get_local $8)
   )
  )
  (get_local $4)
 )
 (func $genetype/GenType#set:schar (; 245 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const -65536)
    )
    (i64.extend_u/i32
     (i32.and
      (get_local $1)
      (i32.const 65535)
     )
    )
   )
  )
 )
 (func $genetype/GenType#set:hchar (; 246 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (i64.or
    (i64.and
     (i64.load
      (get_local $0)
     )
     (i64.const -65536)
    )
    (i64.extend_u/i32
     (i32.and
      (get_local $1)
      (i32.const 65535)
     )
    )
   )
  )
 )
 (func $genescience/GeneScience#mixGenes (; 247 ;) (type $iiIiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i64) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (set_local $8
   (i64.div_u
    (call $../../internal/action.d/env.random_uint64
     (i64.const 0)
    )
    (i64.const 100)
   )
  )
  (set_local $7
   (call $genetype/GenType#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (set_local $9
   (call $genetype/GenType#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (set_local $4
   (i64.add
    (i64.add
     (i64.load offset=24
      (get_local $0)
     )
     (i64.mul
      (select
       (i64.const 400)
       (tee_local $4
        (select
         (i64.add
          (get_local $2)
          (i64.const 1)
         )
         (i64.add
          (get_local $4)
          (i64.const 1)
         )
         (i64.gt_u
          (get_local $2)
          (get_local $4)
         )
        )
       )
       (i64.gt_u
        (get_local $4)
        (i64.const 400)
       )
      )
      (i64.const 5)
     )
    )
    (i64.rem_u
     (get_local $8)
     (i64.const 21)
    )
   )
  )
  (set_local $10
   (i64.const 2)
  )
  (set_local $2
   (i64.rem_u
    (get_local $8)
    (i64.const 100)
   )
  )
  (if
   (i64.lt_u
    (i64.rem_u
     (tee_local $8
      (i64.div_u
       (get_local $8)
       (i64.const 100)
      )
     )
     (i64.const 1000000)
    )
    (i64.const 1)
   )
   (set_local $10
    (i64.const 1)
   )
  )
  (if
   (i64.lt_u
    (get_local $2)
    (i64.const 2)
   )
   (block $break|0
    (loop $repeat|0
     (br_if $break|0
      (i32.ge_s
       (get_local $6)
       (i32.const 14)
      )
     )
     (if
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
      (block
       (call $genetype/GenType#set:color
        (get_local $7)
        (i64.shl
         (call $genetype/GenType#get:color
          (get_local $7)
         )
         (i64.const 4)
        )
       )
       (call $genetype/GenType#set:color
        (get_local $9)
        (i64.shl
         (call $genetype/GenType#get:color
          (get_local $9)
         )
         (i64.const 4)
        )
       )
      )
     )
     (set_local $2
      (i64.rem_u
       (get_local $8)
       (i64.const 100)
      )
     )
     (set_local $8
      (i64.div_u
       (get_local $8)
       (i64.const 100)
      )
     )
     (if
      (i64.eq
       (i64.rem_u
        (get_local $2)
        (i64.const 4)
       )
       (i64.const 0)
      )
      (call $genetype/GenType#set:color
       (get_local $7)
       (i64.add
        (call $genetype/GenType#get:color
         (get_local $7)
        )
        (i64.and
         (i64.shr_u
          (call $genetype/GenType#get:color
           (get_local $1)
          )
          (i64.mul
           (i64.sub
            (i64.const 13)
            (i64.extend_u/i32
             (get_local $6)
            )
           )
           (i64.const 4)
          )
         )
         (i64.const 15)
        )
       )
      )
      (if
       (i64.eq
        (i64.rem_u
         (get_local $2)
         (i64.const 4)
        )
        (i64.const 1)
       )
       (call $genetype/GenType#set:color
        (get_local $7)
        (i64.add
         (call $genetype/GenType#get:color
          (get_local $7)
         )
         (i64.and
          (i64.shr_u
           (call $genetype/GenType#get:color
            (get_local $3)
           )
           (i64.mul
            (i64.sub
             (i64.const 13)
             (i64.extend_u/i32
              (get_local $6)
             )
            )
            (i64.const 4)
           )
          )
          (i64.const 15)
         )
        )
       )
       (if
        (i64.eq
         (i64.rem_u
          (get_local $2)
          (i64.const 4)
         )
         (i64.const 2)
        )
        (call $genetype/GenType#set:color
         (get_local $7)
         (i64.add
          (call $genetype/GenType#get:color
           (get_local $7)
          )
          (i64.and
           (i64.shr_u
            (call $../../src/asset/Asset#getSymbol
             (get_local $1)
            )
            (i64.mul
             (i64.sub
              (i64.const 13)
              (i64.extend_u/i32
               (get_local $6)
              )
             )
             (i64.const 4)
            )
           )
           (i64.const 15)
          )
         )
        )
        (call $genetype/GenType#set:color
         (get_local $7)
         (i64.add
          (call $genetype/GenType#get:color
           (get_local $7)
          )
          (i64.and
           (i64.shr_u
            (call $../../src/asset/Asset#getSymbol
             (get_local $3)
            )
            (i64.mul
             (i64.sub
              (i64.const 13)
              (i64.extend_u/i32
               (get_local $6)
              )
             )
             (i64.const 4)
            )
           )
           (i64.const 15)
          )
         )
        )
       )
      )
     )
     (set_local $2
      (i64.rem_u
       (get_local $8)
       (i64.const 100)
      )
     )
     (set_local $8
      (i64.div_u
       (get_local $8)
       (i64.const 100)
      )
     )
     (if
      (i64.eq
       (i64.rem_u
        (get_local $2)
        (i64.const 4)
       )
       (i64.const 0)
      )
      (call $genetype/GenType#set:color
       (get_local $9)
       (i64.add
        (call $genetype/GenType#get:color
         (get_local $9)
        )
        (i64.and
         (i64.shr_u
          (call $genetype/GenType#get:color
           (get_local $1)
          )
          (i64.mul
           (i64.sub
            (i64.const 13)
            (i64.extend_u/i32
             (get_local $6)
            )
           )
           (i64.const 4)
          )
         )
         (i64.const 15)
        )
       )
      )
      (if
       (i64.eq
        (i64.rem_u
         (get_local $2)
         (i64.const 4)
        )
        (i64.const 1)
       )
       (call $genetype/GenType#set:color
        (get_local $9)
        (i64.add
         (call $genetype/GenType#get:color
          (get_local $9)
         )
         (i64.and
          (i64.shr_u
           (call $genetype/GenType#get:color
            (get_local $3)
           )
           (i64.mul
            (i64.sub
             (i64.const 13)
             (i64.extend_u/i32
              (get_local $6)
             )
            )
            (i64.const 4)
           )
          )
          (i64.const 15)
         )
        )
       )
       (if
        (i64.eq
         (i64.rem_u
          (get_local $2)
          (i64.const 4)
         )
         (i64.const 2)
        )
        (call $genetype/GenType#set:color
         (get_local $9)
         (i64.add
          (call $genetype/GenType#get:color
           (get_local $9)
          )
          (i64.and
           (i64.shr_u
            (call $../../src/asset/Asset#getSymbol
             (get_local $1)
            )
            (i64.mul
             (i64.sub
              (i64.const 13)
              (i64.extend_u/i32
               (get_local $6)
              )
             )
             (i64.const 4)
            )
           )
           (i64.const 15)
          )
         )
        )
        (call $genetype/GenType#set:color
         (get_local $9)
         (i64.add
          (call $genetype/GenType#get:color
           (get_local $9)
          )
          (i64.and
           (i64.shr_u
            (call $../../src/asset/Asset#getSymbol
             (get_local $3)
            )
            (i64.mul
             (i64.sub
              (i64.const 13)
              (i64.extend_u/i32
               (get_local $6)
              )
             )
             (i64.const 4)
            )
           )
           (i64.const 15)
          )
         )
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
   (block $break|1
    (loop $repeat|1
     (br_if $break|1
      (i32.ge_s
       (get_local $6)
       (i32.const 14)
      )
     )
     (if
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
      (block
       (call $genetype/GenType#set:color
        (get_local $7)
        (i64.shl
         (call $genetype/GenType#get:color
          (get_local $7)
         )
         (i64.const 4)
        )
       )
       (call $genetype/GenType#set:color
        (get_local $9)
        (i64.shl
         (call $genetype/GenType#get:color
          (get_local $9)
         )
         (i64.const 4)
        )
       )
      )
     )
     (set_local $2
      (i64.rem_u
       (get_local $8)
       (i64.const 10)
      )
     )
     (set_local $8
      (i64.div_u
       (get_local $8)
       (i64.const 10)
      )
     )
     (if
      (i64.eq
       (i64.rem_u
        (get_local $2)
        (i64.const 2)
       )
       (i64.const 0)
      )
      (call $genetype/GenType#set:color
       (get_local $7)
       (i64.add
        (call $genetype/GenType#get:color
         (get_local $7)
        )
        (i64.and
         (i64.shr_u
          (call $genetype/GenType#get:color
           (get_local $1)
          )
          (i64.mul
           (i64.sub
            (i64.const 13)
            (i64.extend_u/i32
             (get_local $6)
            )
           )
           (i64.const 4)
          )
         )
         (i64.const 15)
        )
       )
      )
      (call $genetype/GenType#set:color
       (get_local $7)
       (i64.add
        (call $genetype/GenType#get:color
         (get_local $7)
        )
        (i64.and
         (i64.shr_u
          (call $genetype/GenType#get:color
           (get_local $3)
          )
          (i64.mul
           (i64.sub
            (i64.const 13)
            (i64.extend_u/i32
             (get_local $6)
            )
           )
           (i64.const 4)
          )
         )
         (i64.const 15)
        )
       )
      )
     )
     (set_local $2
      (i64.rem_u
       (get_local $8)
       (i64.const 10)
      )
     )
     (set_local $8
      (i64.div_u
       (get_local $8)
       (i64.const 10)
      )
     )
     (if
      (i64.eq
       (i64.rem_u
        (get_local $2)
        (i64.const 2)
       )
       (i64.const 0)
      )
      (call $genetype/GenType#set:color
       (get_local $9)
       (i64.add
        (call $genetype/GenType#get:color
         (get_local $9)
        )
        (i64.and
         (i64.shr_u
          (call $../../src/asset/Asset#getSymbol
           (get_local $1)
          )
          (i64.mul
           (i64.sub
            (i64.const 13)
            (i64.extend_u/i32
             (get_local $6)
            )
           )
           (i64.const 4)
          )
         )
         (i64.const 15)
        )
       )
      )
      (call $genetype/GenType#set:color
       (get_local $9)
       (i64.add
        (call $genetype/GenType#get:color
         (get_local $9)
        )
        (i64.and
         (i64.shr_u
          (call $../../src/asset/Asset#getSymbol
           (get_local $3)
          )
          (i64.mul
           (i64.sub
            (i64.const 13)
            (i64.extend_u/i32
             (get_local $6)
            )
           )
           (i64.const 4)
          )
         )
         (i64.const 15)
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
     (br $repeat|1)
    )
   )
  )
  (call $genetype/GenType#set:blood
   (get_local $7)
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (call $../../src/asset/Asset#setSymbol
   (get_local $7)
   (call $genetype/GenType#get:color
    (get_local $9)
   )
  )
  (call $genetype/GenType#set:skills
   (get_local $7)
   (i64.extend_u/i32
    (i32.load
     (tee_local $6
      (call $genescience/GeneScience#mixSkills
       (get_local $0)
       (get_local $8)
       (get_local $1)
       (get_local $3)
       (get_local $4)
      )
     )
    )
   )
  )
  (call $genetype/GenType#set:skillsLevel
   (get_local $7)
   (i32.load offset=4
    (get_local $6)
   )
  )
  (if
   (i64.eq
    (get_local $10)
    (i64.const 1)
   )
   (call $genetype/GenType#set:subtype
    (get_local $7)
    (i32.wrap/i64
     (get_local $5)
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $6
     (i32.eq
      (call $genetype/GenType#get:type
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (get_local $6)
    (i32.eq
     (call $genetype/GenType#get:type
      (get_local $3)
     )
     (i32.const 1)
    )
   )
   (set_local $10
    (i64.const 1)
   )
  )
  (call $genetype/GenType#set:schar
   (get_local $7)
   (i32.load
    (tee_local $6
     (call $genescience/GeneScience#mixCharacter
      (get_local $0)
      (get_local $1)
      (get_local $3)
      (get_local $10)
     )
    )
   )
  )
  (call $genetype/GenType#set:hchar
   (get_local $7)
   (i32.load offset=4
    (get_local $6)
   )
  )
  (get_local $7)
 )
 (func $genescience/GeneScience#mixExtend (; 248 ;) (type $iIIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i64)
  (i64.const 0)
 )
 (func $dragoncore/DragonCore#giveBirth (; 249 ;) (type $iIII) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $dragoncore/DragonAccessControl#onlyAPI
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (i32.load offset=12
     (tee_local $3
      (call $~lib/array/Array<Dragon>#__get
       (i32.load offset=28
        (get_local $0)
       )
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 7384)
  )
  (set_local $4
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=28
     (get_local $0)
    )
    (i32.wrap/i64
     (i64.load offset=48
      (get_local $3)
     )
    )
   )
  )
  (set_local $5
   (i32.load16_u offset=72
    (get_local $3)
   )
  )
  (if
   (i32.gt_u
    (i32.load16_u offset=72
     (get_local $4)
    )
    (i32.load16_u offset=72
     (get_local $3)
    )
   )
   (set_local $5
    (i32.load16_u offset=72
     (get_local $4)
    )
   )
  )
  (set_local $7
   (call $genescience/GeneScience#mixGenes
    (tee_local $6
     (call $genescience/GeneScience#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (i32.load offset=8
     (get_local $3)
    )
    (i64.extend_u/i32
     (i32.load16_u offset=72
      (get_local $3)
     )
    )
    (i32.load offset=8
     (get_local $4)
    )
    (i64.extend_u/i32
     (i32.load16_u offset=72
      (get_local $4)
     )
    )
    (get_local $2)
   )
  )
  (set_local $2
   (call $genescience/GeneScience#mixExtend
    (get_local $6)
    (i64.load offset=88
     (get_local $3)
    )
    (i64.extend_u/i32
     (i32.load16_u offset=72
      (get_local $3)
     )
    )
    (i64.load offset=88
     (get_local $4)
    )
    (i64.extend_u/i32
     (i32.load16_u offset=72
      (get_local $4)
     )
    )
   )
  )
  (set_local $8
   (call $../../src/map/Map<u64_u64>#get
    (i32.load offset=32
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $1
   (call $dragoncore/DragonCore#_createDragon
    (get_local $0)
    (get_local $1)
    (i64.load offset=48
     (get_local $3)
    )
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
    (get_local $7)
    (i64.const 0)
    (get_local $8)
    (get_local $2)
   )
  )
  (i64.store offset=48
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $0)
   (i64.sub
    (i64.load offset=80
     (get_local $0)
    )
    (i64.const 1)
   )
  )
  (set_local $2
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/balance/send
   (get_global $consts/HyperDragonContract)
   (get_local $2)
   (i32.load offset=72
    (get_local $0)
   )
   (i32.const 7472)
  )
  (get_local $1)
 )
 (func $index/HyperDragonContract#giveBirth (; 250 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (drop
   (call $dragoncore/DragonCore#giveBirth
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $dragoncore/DragonBreeding#_isSiringPermitted (; 251 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (if (result i32)
   (tee_local $3
    (i64.eq
     (tee_local $2
      (call $../../src/map/Map<u64_u64>#get
       (i32.load offset=32
        (get_local $0)
       )
       (get_local $2)
      )
     )
     (call $../../src/map/Map<u64_u64>#get
      (i32.load offset=32
       (get_local $0)
      )
      (get_local $1)
     )
    )
   )
   (i64.eq
    (call $../../src/map/Map<u64_u64>#get
     (i32.load offset=44
      (get_local $0)
     )
     (get_local $1)
    )
    (get_local $2)
   )
   (get_local $3)
  )
 )
 (func $dragoncore/DragonBreeding#breedWithAuto (; 252 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $3)
    (i32.load offset=72
     (get_local $0)
    )
   )
   (i32.const 7508)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $1)
   )
   (i32.const 7580)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isSiringPermitted
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (i32.const 7656)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isReadyToBreed
    (get_local $0)
    (tee_local $3
     (call $~lib/array/Array<Dragon>#__get
      (i32.load offset=28
       (get_local $0)
      )
      (i32.wrap/i64
       (get_local $1)
      )
     )
    )
   )
   (i32.const 7752)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isReadyToBreed
    (get_local $0)
    (tee_local $4
     (call $~lib/array/Array<Dragon>#__get
      (i32.load offset=28
       (get_local $0)
      )
      (i32.wrap/i64
       (get_local $2)
      )
     )
    )
   )
   (i32.const 7816)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isValidMatingPair
    (get_local $0)
    (get_local $3)
    (get_local $1)
    (get_local $4)
    (get_local $2)
   )
   (i32.const 7876)
  )
  (call $dragoncore/DragonBreeding#_breedWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#breedWithAuto (; 253 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonBreeding#breedWithAuto
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonBreeding#canBreedWith (; 254 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 7944)
  )
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $2)
    (i64.const 0)
   )
   (i32.const 7984)
  )
  (if (result i32)
   (tee_local $3
    (call $dragoncore/DragonBreeding#_isValidMatingPair
     (get_local $0)
     (call $~lib/array/Array<Dragon>#__get
      (i32.load offset=28
       (get_local $0)
      )
      (i32.wrap/i64
       (get_local $1)
      )
     )
     (get_local $1)
     (call $~lib/array/Array<Dragon>#__get
      (i32.load offset=28
       (get_local $0)
      )
      (i32.wrap/i64
       (get_local $2)
      )
     )
     (get_local $2)
    )
   )
   (call $dragoncore/DragonBreeding#_isSiringPermitted
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (get_local $3)
  )
 )
 (func $index/HyperDragonContract#canBreedWith (; 255 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8028)
    (i32.const 8040)
    (call $dragoncore/DragonBreeding#canBreedWith
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
     (get_local $2)
    )
   )
  )
 )
 (func $index/HyperDragonContract#isPregnant (; 256 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8028)
    (i32.const 8040)
    (call $dragoncore/DragonBreeding#isPregnant
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $index/HyperDragonContract#isReadyToBreed (; 257 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8028)
    (i32.const 8040)
    (call $dragoncore/DragonBreeding#isReadyToBreed
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $dragoncore/DragonBreeding#setAutoBirthFee (; 258 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $0)
   (get_local $1)
  )
  (call $../../lib/events/emit
   (i32.const 8056)
   (call $../../lib/events/_EventObject#set<u64>
    (get_global $../../lib/events/EventObject)
    (i32.const 8084)
    (call $Contract#get:_receiver
     (get_local $1)
    )
   )
  )
 )
 (func $index/HyperDragonContract#setAutoBirthFee (; 259 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonBreeding#setAutoBirthFee
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $dragoncore/DragonBreeding#approvesiring (; 260 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 8096)
  )
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=44
    (get_local $0)
   )
   (get_local $2)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#approveSiring (; 261 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonBreeding#approvesiring
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonAssetControl#balanceOf (; 262 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (if (result i64)
   (call $../../src/map/Map<u64_u64>#contains
    (i32.load offset=36
     (get_local $0)
    )
    (get_local $1)
   )
   (call $../../src/map/Map<u64_u64>#get
    (i32.load offset=36
     (get_local $0)
    )
    (get_local $1)
   )
   (i64.const 0)
  )
 )
 (func $../../src/return/Return<u64> (; 263 ;) (type $Iv) (param $0 i64)
  (call $../../src/return/env.set_result_int
   (get_local $0)
  )
 )
 (func $index/HyperDragonContract#balanceOf (; 264 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<u64>
   (call $dragoncore/DragonAssetControl#balanceOf
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $dragoncore/DragonAssetControl#approve (; 265 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 8196)
  )
  (call $dragoncore/DragonAssetControl#_approve
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
  (call $../../lib/events/emit
   (i32.const 8252)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 5376)
      (call $../../internal/action.d/env.current_sender)
     )
     (i32.const 4204)
     (get_local $1)
    )
    (i32.const 4212)
    (get_local $2)
   )
  )
 )
 (func $index/HyperDragonContract#approve (; 266 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#approve
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#transferFrom (; 267 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonAssetControl#transferFrom
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAssetControl#totalSupply (; 268 ;) (type $iI) (param $0 i32) (result i64)
  (i64.sub
   (i64.extend_u/i32
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=28
      (get_local $0)
     )
    )
   )
   (i64.const 1)
  )
 )
 (func $index/HyperDragonContract#totalSupply (; 269 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<u64>
   (call $dragoncore/DragonAssetControl#totalSupply
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
 )
 (func $dragoncore/DragonAssetControl#ownerOf (; 270 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (if
   (call $../../src/map/Map<u64_u64>#contains
    (i32.load offset=32
     (get_local $0)
    )
    (get_local $1)
   )
   (return
    (call $../../src/map/Map<u64_u64>#get
     (i32.load offset=32
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
  (i64.const 0)
 )
 (func $index/HyperDragonContract#ownerOf (; 271 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<u64>
   (call $dragoncore/DragonAssetControl#ownerOf
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $dragoncore/DragonAssetControl#tokensOfOwner (; 272 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (set_local $3
   (call $dragoncore/DragonAssetControl#balanceOf
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $4
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (if
   (i64.ne
    (get_local $3)
    (i64.const 0)
   )
   (block
    (set_local $3
     (call $dragoncore/DragonAssetControl#totalSupply
      (get_local $0)
     )
    )
    (block $break|0
     (set_local $2
      (i32.const 1)
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.gt_s
        (get_local $2)
        (i32.wrap/i64
         (get_local $3)
        )
       )
      )
      (if
       (i64.eq
        (call $../../src/map/Map<u64_u64>#get
         (i32.load offset=32
          (get_local $0)
         )
         (i64.extend_u/i32
          (get_local $2)
         )
        )
        (get_local $1)
       )
       (drop
        (call $~lib/array/Array<u64>#push
         (get_local $4)
         (i64.extend_u/i32
          (get_local $2)
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
   )
  )
  (get_local $4)
 )
 (func $../../src/return/ReturnArray<u64> (; 273 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $0)
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
 (func $index/HyperDragonContract#tokensOfOwner (; 274 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/ReturnArray<u64>
   (call $dragoncore/DragonAssetControl#tokensOfOwner
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $../../src/asset/Asset#multi (; 275 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i64.store
   (get_local $0)
   (i64.mul
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $match/MatchCore#startMatch (; 276 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 8272)
  )
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (tee_local $4
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 96)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $4)
   (i64.const 0)
  )
  (i32.store8 offset=24
   (get_local $4)
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $4)
   (i64.const 0)
  )
  (i32.store offset=40
   (get_local $4)
   (i32.const 0)
  )
  (i32.store offset=44
   (get_local $4)
   (i32.const 0)
  )
  (i32.store offset=48
   (get_local $4)
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $4)
   (i32.const 0)
  )
  (i64.store offset=56
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=72
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $4)
   (i64.const 0)
  )
  (i32.store8
   (get_local $4)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $4)
   (get_local $2)
  )
  (i32.store8 offset=24
   (get_local $4)
   (i32.const 1)
  )
  (i64.store offset=32
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=56
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=72
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $4)
   (i64.const 0)
  )
  (call $~lib/array/Array<u64>#__set
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=40
     (get_local $4)
    )
    (i32.const 0)
   )
   (i32.const 0)
   (i64.const 0)
  )
  (call $~lib/array/Array<u64>#__set
   (call $~lib/array/Array<Dragon>#__get
    (i32.load offset=40
     (get_local $4)
    )
    (i32.const 1)
   )
   (i32.const 0)
   (i64.const 0)
  )
  (call $~lib/array/Array<u64>#__set
   (i32.load offset=52
    (get_local $4)
   )
   (i32.const 0)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $4)
   (i64.const 1)
  )
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=48
    (get_local $0)
   )
   (i64.load
    (get_local $0)
   )
   (get_local $4)
  )
  (set_local $5
   (i64.div_u
    (i64.mul
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=52
       (get_local $0)
      )
      (tee_local $4
       (i32.sub
        (i32.wrap/i64
         (get_local $3)
        )
        (i32.const 1)
       )
      )
     )
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=12
       (get_local $0)
      )
      (get_local $4)
     )
    )
    (i64.const 10000)
   )
  )
  (set_local $6
   (call $../../src/asset/Asset#multi
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $4)
    )
    (i64.mul
     (get_local $5)
     (i64.const 15)
    )
   )
  )
  (set_local $7
   (call $../../src/asset/Asset#multi
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $4)
    )
    (i64.mul
     (get_local $5)
     (i64.const 10)
    )
   )
  )
  (set_local $8
   (call $../../src/asset/Asset#multi
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $4)
    )
    (i64.mul
     (get_local $5)
     (i64.const 5)
    )
   )
  )
  (call $../../lib/events/emit
   (i32.const 8364)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (get_global $../../lib/events/EventObject)
           (i32.const 4472)
           (get_local $1)
          )
          (i32.const 8388)
          (get_local $2)
         )
         (i32.const 8412)
         (get_local $3)
        )
        (i32.const 8436)
        (call $~lib/array/Array<u64>#__get
         (i32.load offset=52
          (get_local $0)
         )
         (get_local $4)
        )
       )
       (i32.const 8452)
       (call $Contract#get:_receiver
        (call $~lib/array/Array<Dragon>#__get
         (i32.load offset=8
          (get_local $0)
         )
         (get_local $4)
        )
       )
      )
      (i32.const 8468)
      (call $Contract#get:_receiver
       (get_local $6)
      )
     )
     (i32.const 8496)
     (call $Contract#get:_receiver
      (get_local $7)
     )
    )
    (i32.const 8524)
    (call $Contract#get:_receiver
     (get_local $8)
    )
   )
  )
 )
 (func $dragoncore/DragonCore#startMatch (; 277 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $match/MatchCore#startMatch
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $index/HyperDragonContract#startMatch (; 278 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonCore#startMatch
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonCore#isCanJoin (; 279 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $match/MatchCore#isCanJoin
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#isCanJoin (; 280 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8028)
    (i32.const 8040)
    (call $dragoncore/DragonCore#isCanJoin
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $../../src/asset/Asset._lte (; 281 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
  )
  (i64.le_u
   (i64.load
    (get_local $0)
   )
   (i64.load
    (get_local $1)
   )
  )
 )
 (func $betid/BetId#get:index (; 282 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.shr_u
     (i64.load
      (get_local $0)
     )
     (i64.const 4)
    )
    (i64.const 255)
   )
  )
 )
 (func $match/GuessUser#constructor (; 283 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 12)
       )
      )
      (i64.const 0)
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
  (i32.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $match/MatchCore#guess (; 284 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $4
     (call $../../src/asset/Asset._gte
      (get_local $3)
      (i32.load offset=40
       (get_local $0)
      )
     )
    )
    (call $../../src/asset/Asset._lte
     (get_local $3)
     (i32.load offset=44
      (get_local $0)
     )
    )
    (get_local $4)
   )
   (i32.const 8552)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load8_u
     (tee_local $4
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=48
        (get_local $0)
       )
       (i64.load
        (get_local $0)
       )
      )
     )
    )
    (i32.const 2)
   )
   (i32.const 8600)
  )
  (set_local $5
   (call $betid/BetId#get:index
    (tee_local $8
     (call $../../lib/time/Microseconds#constructor
      (i32.const 0)
      (get_local $1)
     )
    )
   )
  )
  (set_local $8
   (call $titles/Titles#get:count
    (get_local $8)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=88
     (get_local $4)
    )
    (i64.extend_u/i32
     (get_local $8)
    )
   )
   (i32.const 8660)
  )
  (set_local $9
   (call $match/GuessUser#constructor
    (i32.const 0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $3)
   )
  )
  (set_local $7
   (i64.load
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=44
      (get_local $4)
     )
     (call $~lib/array/Array<u64>#__get
      (call $~lib/array/Array<Dragon>#__get
       (i32.load offset=40
        (get_local $4)
       )
       (get_local $5)
      )
      (i32.const 0)
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=44
      (get_local $4)
     )
     (call $~lib/array/Array<u64>#__get
      (call $~lib/array/Array<Dragon>#__get
       (i32.load offset=40
        (get_local $4)
       )
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $5
     (i64.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (get_local $5)
    (i64.eq
     (get_local $6)
     (get_local $2)
    )
   )
   (i32.const 8748)
  )
  (call $Contract#set:_receiver
   (i32.load
    (call $../../src/map/Map<u64_MatchInfo>#get
     (call $../../src/map/Map<u64_MatchInfo>#get
      (i32.load offset=48
       (get_local $4)
      )
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (i64.add
    (call $Contract#get:_receiver
     (i32.load
      (call $../../src/map/Map<u64_MatchInfo>#get
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=48
         (get_local $4)
        )
        (get_local $1)
       )
       (get_local $2)
      )
     )
    )
    (call $Contract#get:_receiver
     (get_local $3)
    )
   )
  )
  (drop
   (call $~lib/array/Array<DataItem<Account>>#push
    (i32.load offset=4
     (call $../../src/map/Map<u64_MatchInfo>#get
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=48
        (get_local $4)
       )
       (get_local $1)
      )
      (get_local $2)
     )
    )
    (get_local $9)
   )
  )
  (set_local $5
   (call $../../src/map/Map<u64_MatchInfo>#get
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=48
      (get_local $4)
     )
     (get_local $1)
    )
    (get_local $7)
   )
  )
  (set_local $4
   (call $../../src/map/Map<u64_MatchInfo>#get
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=48
      (get_local $4)
     )
     (get_local $1)
    )
    (get_local $6)
   )
  )
  (set_local $7
   (if (result i64)
    (i64.gt_u
     (call $Contract#get:_receiver
      (i32.load
       (get_local $5)
      )
     )
     (i64.const 0)
    )
    (i64.div_u
     (i64.mul
      (i64.add
       (call $Contract#get:_receiver
        (i32.load
         (get_local $5)
        )
       )
       (call $Contract#get:_receiver
        (i32.load
         (get_local $4)
        )
       )
      )
      (i64.const 9500)
     )
     (call $Contract#get:_receiver
      (i32.load
       (get_local $5)
      )
     )
    )
    (i64.const 19500)
   )
  )
  (set_local $6
   (select
    (i64.const 10000)
    (tee_local $6
     (if (result i64)
      (i64.gt_u
       (call $Contract#get:_receiver
        (i32.load
         (get_local $4)
        )
       )
       (i64.const 0)
      )
      (i64.div_u
       (i64.mul
        (i64.add
         (call $Contract#get:_receiver
          (i32.load
           (get_local $5)
          )
         )
         (call $Contract#get:_receiver
          (i32.load
           (get_local $4)
          )
         )
        )
        (i64.const 9500)
       )
       (call $Contract#get:_receiver
        (i32.load
         (get_local $4)
        )
       )
      )
      (i64.const 19500)
     )
    )
    (i64.lt_u
     (get_local $6)
     (i64.const 10000)
    )
   )
  )
  (call $../../lib/events/emit
   (i32.const 8808)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (get_global $../../lib/events/EventObject)
           (i32.const 4472)
           (i64.load
            (get_local $0)
           )
          )
          (i32.const 8836)
          (i64.extend_u/i32
           (get_local $8)
          )
         )
         (i32.const 8852)
         (get_local $1)
        )
        (i32.const 8868)
        (i64.load
         (get_local $9)
        )
       )
       (i32.const 2760)
       (get_local $2)
      )
      (i32.const 8888)
      (call $Contract#get:_receiver
       (get_local $3)
      )
     )
     (i32.const 8904)
     (select
      (i64.const 10000)
      (get_local $7)
      (i64.lt_u
       (get_local $7)
       (i64.const 10000)
      )
     )
    )
    (i32.const 8920)
    (get_local $6)
   )
  )
 )
 (func $dragoncore/DragonCore#guess (; 285 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $match/MatchCore#guess
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $index/HyperDragonContract#guess (; 286 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonCore#guess
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $match/MatchCore#giveGroup (; 287 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (set_local $4
   (i64.extend_u/i32
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=52
      (tee_local $2
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=48
         (get_local $0)
        )
        (i64.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (set_local $9
   (i64.add
    (i64.shl
     (i64.load
      (get_local $0)
     )
     (i64.const 12)
    )
    (i64.load offset=88
     (get_local $2)
    )
   )
  )
  (set_local $6
   (select
    (tee_local $6
     (i64.div_u
      (get_local $4)
      (i64.const 2)
     )
    )
    (tee_local $7
     (i64.add
      (i64.load offset=64
       (get_local $2)
      )
      (i64.load offset=32
       (get_local $0)
      )
     )
    )
    (i64.lt_u
     (get_local $6)
     (get_local $7)
    )
   )
  )
  (set_local $5
   (call $../../internal/action.d/env.random_uint64
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i64.ge_u
      (get_local $1)
      (get_local $6)
     )
    )
    (set_local $7
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=52
       (get_local $2)
      )
      (tee_local $3
       (i32.wrap/i64
        (i64.rem_u
         (get_local $5)
         (i64.sub
          (get_local $4)
          (i64.mul
           (get_local $1)
           (i64.const 2)
          )
         )
        )
       )
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (i32.load offset=52
      (get_local $2)
     )
     (get_local $3)
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=52
       (get_local $2)
      )
      (tee_local $3
       (i32.wrap/i64
        (i64.sub
         (i64.sub
          (get_local $4)
          (i64.mul
           (get_local $1)
           (i64.const 2)
          )
         )
         (i64.const 1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (i32.load offset=52
      (get_local $2)
     )
     (get_local $3)
     (i64.const 0)
    )
    (set_local $8
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=52
       (get_local $2)
      )
      (tee_local $3
       (i32.wrap/i64
        (i64.rem_u
         (tee_local $5
          (i64.div_u
           (get_local $5)
           (i64.const 10)
          )
         )
         (i64.sub
          (i64.sub
           (get_local $4)
           (i64.mul
            (get_local $1)
            (i64.const 2)
           )
          )
          (i64.const 1)
         )
        )
       )
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (i32.load offset=52
      (get_local $2)
     )
     (get_local $3)
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=52
       (get_local $2)
      )
      (get_local $3)
     )
    )
    (call $~lib/array/Array<u64>#__set
     (i32.load offset=52
      (get_local $2)
     )
     (get_local $3)
     (i64.const 0)
    )
    (drop
     (call $~lib/array/Array<DataItem<Account>>#push
      (i32.load offset=40
       (get_local $2)
      )
      (block (result i32)
       (call $~lib/array/Array<u64>#__unchecked_set
        (tee_local $3
         (call $~lib/array/Array<u64>#constructor
          (i32.const 0)
          (i32.const 2)
         )
        )
        (i32.const 0)
        (get_local $7)
       )
       (call $~lib/array/Array<u64>#__unchecked_set
        (get_local $3)
        (i32.const 1)
        (get_local $8)
       )
       (get_local $3)
      )
     )
    )
    (call $../../lib/events/emit
     (i32.const 9020)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (get_global $../../lib/events/EventObject)
           (i32.const 4472)
           (i64.load
            (get_local $0)
           )
          )
          (i32.const 9048)
          (i64.load
           (call $../../src/map/Map<u64_MatchInfo>#get
            (i32.load offset=44
             (get_local $2)
            )
            (get_local $7)
           )
          )
         )
         (i32.const 9072)
         (i64.load
          (call $../../src/map/Map<u64_MatchInfo>#get
           (i32.load offset=44
            (get_local $2)
           )
           (get_local $8)
          )
         )
        )
        (i32.const 8836)
        (i64.load offset=88
         (get_local $2)
        )
       )
       (i32.const 8852)
       (i64.add
        (get_local $9)
        (i64.shl
         (get_local $1)
         (i64.const 4)
        )
       )
      )
      (i32.const 9096)
      (get_local $4)
     )
    )
    (set_local $5
     (i64.div_u
      (get_local $5)
      (i64.const 10)
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i64.lt_u
    (get_local $6)
    (i64.div_u
     (get_local $4)
     (i64.const 2)
    )
   )
   (block
    (i64.store offset=64
     (get_local $2)
     (i64.add
      (i64.load offset=64
       (get_local $2)
      )
      (i64.load offset=32
       (get_local $0)
      )
     )
    )
    (call $../../lib/events/emit
     (i32.const 9116)
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4472)
      (i64.load
       (get_local $0)
      )
     )
    )
   )
   (block
    (i64.store offset=64
     (get_local $2)
     (i64.add
      (i64.load offset=64
       (get_local $2)
      )
      (i64.load offset=32
       (get_local $0)
      )
     )
    )
    (i32.store8
     (get_local $2)
     (i32.const 2)
    )
    (i32.store offset=52
     (get_local $2)
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (call $../../lib/events/emit
     (i32.const 9140)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4472)
       (i64.load
        (get_local $0)
       )
      )
      (i32.const 8836)
      (i64.load offset=88
       (get_local $2)
      )
     )
    )
   )
  )
 )
 (func $fightcore/FightCore#constructor (; 288 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store
     (tee_local $1
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 4)
      )
     )
     (i32.const 0)
    )
    (get_local $1)
   )
  )
 )
 (func $fightcore/DragonInfo#constructor (; 289 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $1
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 96)
       )
      )
      (i64.const 0)
     )
     (i64.store offset=8
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=16
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=24
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=32
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=40
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=48
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=56
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=64
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=72
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=80
      (get_local $1)
      (i64.const 0)
     )
     (i64.store offset=88
      (get_local $1)
      (i64.const 0)
     )
     (tee_local $0
      (get_local $1)
     )
    )
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=56
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=72
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $0)
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $fightcore/FightCore#getBlood (; 290 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (i64.extend_u/i32
   (call $genetype/GenType#get:blood
    (get_local $1)
   )
  )
 )
 (func $fightcore/FightCore#getSkills (; 291 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (call $genetype/GenType#get:skills
   (get_local $1)
  )
 )
 (func $fightcore/FightCore#getSkillsLevel (; 292 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (i64.extend_u/i32
   (call $genetype/GenType#get:skillsLevel
    (get_local $1)
   )
  )
 )
 (func $fightcore/FightCore#getAddition (; 293 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.or
    (i32.shl
     (call $genetype/GenType#get:schar
      (get_local $1)
     )
     (i32.const 4)
    )
    (i32.wrap/i64
     (i64.shr_u
      (call $genetype/GenType#get:color
       (get_local $1)
      )
      (i64.const 60)
     )
    )
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (i32.const 4)
     )
    )
    (if
     (i64.gt_u
      (tee_local $3
       (i64.extend_u/i32
        (i32.and
         (i32.shr_u
          (get_local $5)
          (i32.sub
           (i32.const 15)
           (i32.mul
            (get_local $1)
            (i32.const 5)
           )
          )
         )
         (i32.const 31)
        )
       )
      )
      (i64.const 0)
     )
     (block
      (set_local $4
       (i32.wrap/i64
        (i64.sub
         (get_local $3)
         (i64.const 1)
        )
       )
      )
      (set_local $3
       (if (result i64)
        (i32.lt_s
         (get_local $1)
         (i32.const 2)
        )
        (call $~lib/array/Array<u64>#__get
         (call $~lib/array/Array<Dragon>#__get
          (i32.load offset=48
           (i32.load
            (get_local $0)
           )
          )
          (i32.const 0)
         )
         (get_local $4)
        )
        (call $~lib/array/Array<u64>#__get
         (call $~lib/array/Array<Dragon>#__get
          (i32.load offset=48
           (i32.load
            (get_local $0)
           )
          )
          (i32.const 1)
         )
         (get_local $4)
        )
       )
      )
      (i64.store offset=48
       (get_local $2)
       (i64.add
        (i64.load offset=48
         (get_local $2)
        )
        (i64.const 1)
       )
      )
      (i64.store offset=64
       (get_local $2)
       (i64.add
        (i64.load offset=64
         (get_local $2)
        )
        (i64.and
         (i64.shr_u
          (get_local $3)
          (i64.const 24)
         )
         (i64.const 255)
        )
       )
      )
      (i64.store offset=56
       (get_local $2)
       (i64.add
        (i64.load offset=56
         (get_local $2)
        )
        (i64.and
         (i64.shr_u
          (get_local $3)
          (i64.const 16)
         )
         (i64.const 255)
        )
       )
      )
      (i64.store offset=72
       (get_local $2)
       (i64.add
        (i64.load offset=72
         (get_local $2)
        )
        (i64.and
         (i64.shr_u
          (get_local $3)
          (i64.const 8)
         )
         (i64.const 255)
        )
       )
      )
      (i64.store offset=80
       (get_local $2)
       (i64.add
        (i64.load offset=80
         (get_local $2)
        )
        (i64.and
         (get_local $3)
         (i64.const 255)
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
    (br $repeat|0)
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.sub
    (i64.add
     (i64.load offset=8
      (get_local $2)
     )
     (i64.div_u
      (i64.mul
       (i64.load offset=8
        (get_local $2)
       )
       (i64.load offset=64
        (get_local $2)
       )
      )
      (i64.const 1000)
     )
    )
    (i64.div_u
     (i64.mul
      (i64.mul
       (i64.load offset=48
        (get_local $2)
       )
       (i64.load offset=40
        (i32.load
         (get_local $0)
        )
       )
      )
      (i64.load offset=8
       (get_local $2)
      )
     )
     (i64.const 1000)
    )
   )
  )
 )
 (func $~lib/internal/hash/hash64 (; 294 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (i32.mul
   (i32.xor
    (i32.mul
     (i32.xor
      (i32.mul
       (i32.xor
        (i32.mul
         (i32.xor
          (i32.mul
           (i32.xor
            (i32.mul
             (i32.xor
              (i32.mul
               (i32.xor
                (i32.mul
                 (i32.xor
                  (i32.and
                   (tee_local $1
                    (i32.wrap/i64
                     (get_local $0)
                    )
                   )
                   (i32.const 255)
                  )
                  (i32.const -2128831035)
                 )
                 (i32.const 16777619)
                )
                (i32.and
                 (i32.shr_u
                  (get_local $1)
                  (i32.const 8)
                 )
                 (i32.const 255)
                )
               )
               (i32.const 16777619)
              )
              (i32.and
               (i32.shr_u
                (get_local $1)
                (i32.const 16)
               )
               (i32.const 255)
              )
             )
             (i32.const 16777619)
            )
            (i32.shr_u
             (get_local $1)
             (i32.const 24)
            )
           )
           (i32.const 16777619)
          )
          (i32.and
           (tee_local $1
            (i32.wrap/i64
             (i64.shr_u
              (get_local $0)
              (i64.const 32)
             )
            )
           )
           (i32.const 255)
          )
         )
         (i32.const 16777619)
        )
        (i32.and
         (i32.shr_u
          (get_local $1)
          (i32.const 8)
         )
         (i32.const 255)
        )
       )
       (i32.const 16777619)
      )
      (i32.and
       (i32.shr_u
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 255)
      )
     )
     (i32.const 16777619)
    )
    (i32.shr_u
     (get_local $1)
     (i32.const 24)
    )
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/map/Map<u64_SeedInfo>#find (; 295 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (set_local $0
   (i32.load offset=8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (i32.and
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 2)
     )
    )
   )
  )
  (loop $continue|0
   (if
    (get_local $0)
    (block
     (if
      (if (result i32)
       (tee_local $2
        (i32.eqz
         (i32.and
          (i32.load offset=12
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (i64.eq
        (i64.load
         (get_local $0)
        )
        (get_local $1)
       )
       (get_local $2)
      )
      (return
       (get_local $0)
      )
     )
     (set_local $0
      (i32.and
       (i32.load offset=12
        (get_local $0)
       )
       (i32.const -2)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 296 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  (set_local $3
   (call $~lib/internal/arraybuffer/allocUnsafe
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
   (call $~lib/memory/set_memory
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 0)
    (get_local $1)
   )
  )
  (get_local $3)
 )
 (func $~lib/map/Map<u64_SeedInfo>#rehash (; 297 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $6
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 4)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 4)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=12
         (tee_local $4
          (get_local $2)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (i64.store
        (get_local $3)
        (i64.load
         (get_local $4)
        )
       )
       (i32.store offset=8
        (get_local $3)
        (i32.load offset=8
         (get_local $4)
        )
       )
       (i32.store offset=12
        (get_local $3)
        (i32.load offset=8
         (tee_local $4
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.and
             (call $~lib/internal/hash/hash64
              (i64.load
               (get_local $4)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
          )
         )
        )
       )
       (i32.store offset=8
        (get_local $4)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $6)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<u64_SeedInfo>#set (; 298 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (tee_local $3
    (call $~lib/map/Map<u64_SeedInfo>#find
     (get_local $0)
     (get_local $1)
     (tee_local $5
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
    )
   )
   (i32.store offset=8
    (get_local $3)
    (get_local $2)
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
     (call $~lib/map/Map<u64_SeedInfo>#rehash
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
          (f64.const 0.75)
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
    (i64.store
     (tee_local $3
      (i32.add
       (i32.add
        (i32.load offset=8
         (get_local $0)
        )
        (i32.const 8)
       )
       (block (result i32)
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (tee_local $4
           (i32.load offset=16
            (get_local $0)
           )
          )
          (i32.const 1)
         )
        )
        (i32.shl
         (get_local $4)
         (i32.const 4)
        )
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
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
    (i32.store offset=12
     (get_local $3)
     (i32.load offset=8
      (tee_local $4
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (i32.and
          (get_local $5)
          (i32.load offset=4
           (get_local $0)
          )
         )
         (i32.const 2)
        )
       )
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (get_local $3)
    )
   )
  )
 )
 (func $fightcore/FightCore#attack (; 299 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (set_local $5
   (i64.and
    (i64.shr_u
     (i64.load offset=24
      (get_local $1)
     )
     (i64.sub
      (i64.const 16)
      (i64.mul
       (i64.load offset=32
        (get_local $1)
       )
       (i64.const 4)
      )
     )
    )
    (i64.const 15)
   )
  )
  (set_local $3
   (i64.extend_u/i32
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=32
      (i32.load
       (get_local $0)
      )
     )
     (tee_local $6
      (i32.wrap/i64
       (i64.and
        (i64.shr_u
         (i64.load offset=16
          (get_local $1)
         )
         (i64.sub
          (i64.const 32)
          (i64.mul
           (i64.load offset=32
            (get_local $1)
           )
           (i64.const 8)
          )
         )
        )
        (i64.const 255)
       )
      )
     )
    )
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=36
      (i32.load
       (get_local $0)
      )
     )
     (get_local $6)
    )
   )
  )
  (if
   (i64.gt_u
    (get_local $5)
    (i64.const 1)
   )
   (block
    (set_local $3
     (i64.add
      (get_local $3)
      (i64.div_u
       (i64.mul
        (i64.mul
         (i64.sub
          (get_local $5)
          (i64.const 1)
         )
         (i64.const 10)
        )
        (get_local $3)
       )
       (i64.const 100)
      )
     )
    )
    (set_local $4
     (i64.add
      (get_local $4)
      (i64.div_u
       (i64.mul
        (i64.mul
         (i64.sub
          (get_local $5)
          (i64.const 1)
         )
         (i64.const 10)
        )
        (get_local $4)
       )
       (i64.const 100)
      )
     )
    )
   )
  )
  (set_local $5
   (i64.sub
    (get_local $4)
    (get_local $3)
   )
  )
  (set_local $4
   (i64.load offset=40
    (i32.load
     (get_local $0)
    )
   )
  )
  (if
   (i32.gt_s
    (get_local $6)
    (i32.const 0)
   )
   (block
    (set_local $3
     (i64.add
      (get_local $3)
      (i64.rem_u
       (i64.load offset=40
        (get_local $1)
       )
       (i64.add
        (get_local $5)
        (i64.const 1)
       )
      )
     )
    )
    (i64.store offset=40
     (get_local $1)
     (i64.div_u
      (i64.load offset=40
       (get_local $1)
      )
      (i64.const 10)
     )
    )
   )
  )
  (if
   (i64.lt_u
    (i64.rem_u
     (i64.load offset=40
      (get_local $2)
     )
     (i64.const 1000)
    )
    (i64.sub
     (i64.add
      (i64.load offset=8
       (i32.load
        (get_local $0)
       )
      )
      (i64.load offset=72
       (get_local $2)
      )
     )
     (i64.mul
      (i64.load offset=48
       (get_local $2)
      )
      (get_local $4)
     )
    )
   )
   (set_local $3
    (i64.const 0)
   )
   (block
    (i64.store offset=40
     (get_local $1)
     (i64.div_u
      (i64.load offset=40
       (get_local $1)
      )
      (i64.const 10)
     )
    )
    (if
     (i64.lt_u
      (i64.rem_u
       (i64.load offset=40
        (get_local $1)
       )
       (i64.const 1000)
      )
      (i64.sub
       (i64.add
        (i64.load offset=16
         (i32.load
          (get_local $0)
         )
        )
        (i64.load offset=56
         (get_local $1)
        )
       )
       (i64.mul
        (i64.load offset=48
         (get_local $1)
        )
        (get_local $4)
       )
      )
     )
     (set_local $3
      (i64.mul
       (get_local $3)
       (i64.const 2)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (if (result i64)
    (i64.le_u
     (i64.sub
      (i64.load offset=8
       (get_local $2)
      )
      (get_local $3)
     )
     (i64.const 0)
    )
    (i64.const 0)
    (i64.sub
     (i64.load offset=8
      (get_local $2)
     )
     (get_local $3)
    )
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.div_u
    (i64.load offset=40
     (get_local $1)
    )
    (i64.const 10)
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.add
    (i64.load offset=32
     (get_local $1)
    )
    (i64.const 1)
   )
  )
  (if
   (i64.eq
    (i64.load offset=88
     (get_local $1)
    )
    (i64.const 0)
   )
   (block
    (if
     (i64.lt_u
      (i64.rem_u
       (i64.load offset=40
        (get_local $1)
       )
       (i64.const 1000)
      )
      (i64.sub
       (i64.add
        (i64.load offset=24
         (i32.load
          (get_local $0)
         )
        )
        (i64.load offset=80
         (get_local $1)
        )
       )
       (i64.mul
        (i64.load offset=48
         (get_local $1)
        )
        (get_local $4)
       )
      )
     )
     (block
      (i64.store offset=88
       (get_local $1)
       (i64.const 1)
      )
      (i64.store offset=32
       (get_local $1)
       (i64.sub
        (i64.load offset=32
         (get_local $1)
        )
        (i64.const 1)
       )
      )
     )
    )
    (i64.store offset=40
     (get_local $1)
     (i64.div_u
      (i64.load offset=40
       (get_local $1)
      )
      (i64.const 10)
     )
    )
   )
   (i64.store offset=88
    (get_local $1)
    (i64.const 0)
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.rem_u
    (i64.load offset=32
     (get_local $1)
    )
    (i64.const 5)
   )
  )
 )
 (func $fightcore/FightCore#startFight (; 300 ;) (type $iIIiIiII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32) (param $6 i64) (result i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (i64.store
   (tee_local $7
    (call $fightcore/DragonInfo#constructor
     (i32.const 0)
    )
   )
   (get_local $2)
  )
  (i64.store offset=8
   (get_local $7)
   (call $fightcore/FightCore#getBlood
    (get_local $0)
    (get_local $3)
   )
  )
  (i64.store offset=16
   (get_local $7)
   (call $fightcore/FightCore#getSkills
    (get_local $0)
    (get_local $3)
   )
  )
  (i64.store offset=24
   (get_local $7)
   (call $fightcore/FightCore#getSkillsLevel
    (get_local $0)
    (get_local $3)
   )
  )
  (i64.store offset=40
   (get_local $7)
   (call $../../internal/action.d/env.random_uint64
    (get_local $6)
   )
  )
  (i64.store
   (tee_local $8
    (call $fightcore/DragonInfo#constructor
     (i32.const 0)
    )
   )
   (get_local $4)
  )
  (i64.store offset=8
   (get_local $8)
   (call $fightcore/FightCore#getBlood
    (get_local $0)
    (get_local $5)
   )
  )
  (i64.store offset=16
   (get_local $8)
   (call $fightcore/FightCore#getSkills
    (get_local $0)
    (get_local $5)
   )
  )
  (i64.store offset=24
   (get_local $8)
   (call $fightcore/FightCore#getSkillsLevel
    (get_local $0)
    (get_local $5)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (call $../../internal/action.d/env.random_uint64
    (get_local $6)
   )
  )
  (call $fightcore/FightCore#getAddition
   (get_local $0)
   (get_local $3)
   (get_local $7)
  )
  (call $fightcore/FightCore#getAddition
   (get_local $0)
   (get_local $5)
   (get_local $8)
  )
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
  (i64.store
   (get_local $3)
   (i64.load offset=40
    (get_local $7)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=40
    (get_local $8)
   )
  )
  (call $~lib/map/Map<u64_SeedInfo>#set
   (i32.load
    (i32.load
     (get_local $0)
    )
   )
   (get_local $1)
   (get_local $3)
  )
  (set_local $1
   (if (result i64)
    (i64.gt_u
     (i64.load offset=40
      (get_local $7)
     )
     (i64.load offset=40
      (get_local $8)
     )
    )
    (i64.const 0)
    (i64.const 1)
   )
  )
  (i64.store offset=40
   (get_local $7)
   (i64.div_u
    (i64.load offset=40
     (get_local $7)
    )
    (i64.const 10)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.div_u
    (i64.load offset=40
     (get_local $8)
    )
    (i64.const 10)
   )
  )
  (loop $continue|0
   (if
    (if (result i32)
     (if (result i32)
      (tee_local $3
       (i64.gt_u
        (i64.load offset=8
         (get_local $7)
        )
        (i64.const 0)
       )
      )
      (tee_local $3
       (i64.gt_u
        (i64.load offset=8
         (get_local $8)
        )
        (i64.const 0)
       )
      )
      (get_local $3)
     )
     (i64.lt_u
      (get_local $9)
      (i64.const 80)
     )
     (get_local $3)
    )
    (block
     (if
      (i64.lt_u
       (i64.load offset=40
        (get_local $7)
       )
       (i64.const 100000)
      )
      (i64.store offset=40
       (get_local $7)
       (i64.div_u
        (call $../../internal/action.d/env.random_uint64
         (get_local $6)
        )
        (i64.const 3)
       )
      )
     )
     (if
      (i64.lt_u
       (i64.load offset=40
        (get_local $8)
       )
       (i64.const 100000)
      )
      (i64.store offset=40
       (get_local $8)
       (i64.div_u
        (call $../../internal/action.d/env.random_uint64
         (get_local $6)
        )
        (i64.const 3)
       )
      )
     )
     (if
      (i64.eq
       (i64.rem_u
        (get_local $1)
        (i64.const 2)
       )
       (i64.const 0)
      )
      (block
       (call $fightcore/FightCore#attack
        (get_local $0)
        (get_local $7)
        (get_local $8)
       )
       (if
        (i64.eq
         (i64.load offset=88
          (get_local $7)
         )
         (i64.const 0)
        )
        (set_local $1
         (i64.add
          (get_local $1)
          (i64.const 1)
         )
        )
       )
      )
      (block
       (call $fightcore/FightCore#attack
        (get_local $0)
        (get_local $8)
        (get_local $7)
       )
       (if
        (i64.eq
         (i64.load offset=88
          (get_local $8)
         )
         (i64.const 0)
        )
        (set_local $1
         (i64.add
          (get_local $1)
          (i64.const 1)
         )
        )
       )
      )
     )
     (set_local $9
      (i64.add
       (get_local $9)
       (i64.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if (result i64)
   (i64.gt_u
    (i64.load offset=8
     (get_local $7)
    )
    (i64.load offset=8
     (get_local $8)
    )
   )
   (get_local $2)
   (if (result i64)
    (i64.eq
     (i64.load offset=8
      (get_local $7)
     )
     (i64.load offset=8
      (get_local $8)
     )
    )
    (if (result i64)
     (i64.gt_u
      (i64.load
       (get_local $7)
      )
      (i64.load
       (get_local $8)
      )
     )
     (get_local $2)
     (get_local $4)
    )
    (get_local $4)
   )
  )
 )
 (func $match/MatchCore#transfer (; 301 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transfer
   (i32.load offset=64
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $match/MatchCore#fightWithOther (; 302 ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $7
   (call $../../src/map/Map<u64_MatchInfo>#get
    (i32.load offset=44
     (tee_local $8
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=48
        (get_local $0)
       )
       (i64.load
        (get_local $0)
       )
      )
     )
    )
    (get_local $2)
   )
  )
  (set_local $9
   (call $../../src/map/Map<u64_MatchInfo>#get
    (i32.load offset=44
     (get_local $8)
    )
    (get_local $3)
   )
  )
  (set_local $1
   (call $fightcore/FightCore#startFight
    (call $fightcore/FightCore#constructor
     (i32.const 0)
    )
    (get_local $1)
    (i64.load
     (get_local $7)
    )
    (i32.load offset=8
     (get_local $7)
    )
    (i64.load
     (get_local $9)
    )
    (i32.load offset=8
     (get_local $9)
    )
    (get_local $4)
   )
  )
  (i64.store
   (tee_local $5
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 16)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $5)
   (i64.const 0)
  )
  (if
   (i64.eq
    (get_local $1)
    (i64.load
     (get_local $7)
    )
   )
   (block
    (i64.store
     (get_local $5)
     (get_local $2)
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
   (block
    (i64.store
     (get_local $5)
     (get_local $3)
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
   )
  )
  (set_local $6
   (call $../../lib/time/Microseconds#constructor
    (i32.const 0)
    (i64.load offset=16
     (call $../../src/map/Map<u64_JoinUser>#_valueAt
      (i32.load offset=44
       (get_local $8)
      )
      (i64.load offset=8
       (get_local $5)
      )
     )
    )
   )
  )
  (set_local $7
   (call $../../src/map/Map<u64_MatchInfo>#get
    (i32.load offset=44
     (get_local $8)
    )
    (i64.load offset=8
     (get_local $5)
    )
   )
  )
  (set_local $9
   (call $../../src/map/Map<u64_MatchInfo>#get
    (i32.load offset=44
     (get_local $8)
    )
    (i64.load
     (get_local $5)
    )
   )
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (i32.load offset=52
     (get_local $8)
    )
    (i64.load
     (get_local $5)
    )
   )
  )
  (set_local $6
   (if (result i32)
    (i32.gt_u
     (i32.and
      (call $titles/Titles#get:count
       (get_local $6)
      )
      (i32.const 255)
     )
     (i32.const 0)
    )
    (i32.and
     (i32.sub
      (call $titles/Titles#get:count
       (get_local $6)
      )
      (i32.const 1)
     )
     (i32.const 255)
    )
    (i32.const 0)
   )
  )
  (set_local $1
   (call $~lib/array/Array<u64>#__get
    (i32.load offset=60
     (get_local $0)
    )
    (get_local $6)
   )
  )
  (call $dragoncore/DragonMatch#fightCooldown
   (i32.load offset=64
    (get_local $0)
   )
   (i64.load
    (get_local $7)
   )
   (i64.extend_u/i32
    (get_local $6)
   )
   (get_local $1)
  )
  (call $match/MatchCore#transfer
   (get_local $0)
   (i64.load offset=8
    (get_local $5)
   )
   (i64.load
    (get_local $7)
   )
  )
  (set_local $2
   (i64.div_u
    (i64.mul
     (i64.mul
      (call $Contract#get:_receiver
       (call $~lib/array/Array<Dragon>#__get
        (i32.load offset=8
         (get_local $0)
        )
        (tee_local $6
         (i32.wrap/i64
          (i64.sub
           (i64.load offset=16
            (get_local $8)
           )
           (i64.const 1)
          )
         )
        )
       )
      )
      (call $~lib/array/Array<u64>#__get
       (i32.load offset=52
        (get_local $0)
       )
       (get_local $6)
      )
     )
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=12
       (get_local $0)
      )
      (get_local $6)
     )
    )
    (i64.const 1000000)
   )
  )
  (if
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=40
      (get_local $8)
     )
    )
    (i32.const 1)
   )
   (block
    (set_local $6
     (if (result i32)
      (i32.gt_u
       (i32.and
        (call $titles/Titles#get:count
         (tee_local $6
          (call $../../lib/time/Microseconds#constructor
           (i32.const 0)
           (i64.load offset=16
            (get_local $9)
           )
          )
         )
        )
        (i32.const 255)
       )
       (i32.const 0)
      )
      (i32.and
       (i32.sub
        (call $titles/Titles#get:count
         (get_local $6)
        )
        (i32.const 1)
       )
       (i32.const 255)
      )
      (i32.const 0)
     )
    )
    (set_local $1
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=60
       (get_local $0)
      )
      (get_local $6)
     )
    )
    (call $dragoncore/DragonMatch#fightCooldown
     (i32.load offset=64
      (get_local $0)
     )
     (i64.load
      (get_local $9)
     )
     (i64.extend_u/i32
      (get_local $6)
     )
     (get_local $1)
    )
    (call $match/MatchCore#transfer
     (get_local $0)
     (i64.load
      (get_local $5)
     )
     (i64.load
      (get_local $9)
     )
    )
    (call $dragoncore/DragonMatch#setTitles
     (i32.load offset=64
      (get_local $0)
     )
     (i64.load
      (get_local $9)
     )
     (i64.load
      (get_local $0)
     )
     (i64.const 1)
    )
    (call $dragoncore/DragonMatch#setTitles
     (i32.load offset=64
      (get_local $0)
     )
     (i64.load
      (get_local $7)
     )
     (i64.load
      (get_local $0)
     )
     (i64.const 2)
    )
    (call $../../lib/events/emit
     (i32.const 9216)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4472)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 9244)
       (i64.load
        (get_local $9)
       )
      )
      (i32.const 9268)
      (i64.load
       (get_local $7)
      )
     )
    )
    (call $../../src/balance/send
     (get_global $consts/MatchAddress)
     (i64.load
      (get_local $5)
     )
     (call $../../src/asset/Asset#constructor
      (i32.const 0)
      (i64.mul
       (get_local $2)
       (i64.const 1500)
      )
      (get_global $../../internal/types/UGS)
     )
     (i32.const 9292)
    )
    (call $../../src/balance/send
     (get_global $consts/MatchAddress)
     (i64.load offset=8
      (get_local $5)
     )
     (call $../../src/asset/Asset#constructor
      (i32.const 0)
      (i64.mul
       (get_local $2)
       (i64.const 1000)
      )
      (get_global $../../internal/types/UGS)
     )
     (i32.const 9324)
    )
   )
  )
  (if
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=40
      (get_local $8)
     )
    )
    (i32.const 2)
   )
   (block
    (call $dragoncore/DragonMatch#setTitles
     (i32.load offset=64
      (get_local $0)
     )
     (i64.load
      (get_local $7)
     )
     (i64.load
      (get_local $0)
     )
     (i64.const 3)
    )
    (call $../../src/balance/send
     (get_global $consts/MatchAddress)
     (i64.load offset=8
      (get_local $5)
     )
     (call $../../src/asset/Asset#constructor
      (i32.const 0)
      (i64.mul
       (get_local $2)
       (i64.const 500)
      )
      (get_global $../../internal/types/UGS)
     )
     (i32.const 9364)
    )
   )
  )
  (get_local $5)
 )
 (func $match/MatchCore#fighting (; 303 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (i32.store8
   (tee_local $2
    (call $../../src/map/Map<u64_JoinUser>#_valueAt
     (i32.load offset=48
      (get_local $0)
     )
     (i64.load
      (get_local $0)
     )
    )
   )
   (i32.const 3)
  )
  (set_local $7
   (i64.add
    (i64.shl
     (i64.load
      (get_local $0)
     )
     (i64.const 12)
    )
    (i64.load offset=88
     (get_local $2)
    )
   )
  )
  (set_local $4
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $6
   (if (result i64)
    (i64.gt_u
     (i64.extend_u/i32
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load offset=40
        (get_local $2)
       )
      )
     )
     (i64.add
      (i64.load offset=56
       (get_local $2)
      )
      (i64.load offset=16
       (get_local $0)
      )
     )
    )
    (i64.add
     (i64.load offset=56
      (get_local $2)
     )
     (i64.load offset=16
      (get_local $0)
     )
    )
    (i64.extend_u/i32
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=40
       (get_local $2)
      )
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.wrap/i64
     (i64.load offset=56
      (get_local $2)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (i32.wrap/i64
       (get_local $6)
      )
     )
    )
    (set_local $5
     (call $match/MatchCore#fightWithOther
      (get_local $0)
      (tee_local $8
       (i64.add
        (get_local $7)
        (i64.extend_u/i32
         (i32.shl
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
      (call $~lib/array/Array<u64>#__get
       (call $~lib/array/Array<Dragon>#__get
        (i32.load offset=40
         (get_local $2)
        )
        (get_local $3)
       )
       (i32.const 0)
      )
      (call $~lib/array/Array<u64>#__get
       (call $~lib/array/Array<Dragon>#__get
        (i32.load offset=40
         (get_local $2)
        )
        (get_local $3)
       )
       (i32.const 1)
      )
      (get_local $1)
     )
    )
    (call $../../lib/events/emit
     (i32.const 9404)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4472)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 8836)
       (i64.load offset=88
        (get_local $2)
       )
      )
      (i32.const 2760)
      (i64.load
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=44
         (get_local $2)
        )
        (i64.load offset=8
         (get_local $5)
        )
       )
      )
     )
    )
    (call $../../lib/events/emit
     (i32.const 9428)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4472)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 8836)
       (i64.load offset=88
        (get_local $2)
       )
      )
      (i32.const 2760)
      (i64.load
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=44
         (get_local $2)
        )
        (i64.load offset=8
         (get_local $5)
        )
       )
      )
     )
    )
    (call $../../lib/events/emit
     (i32.const 9460)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4472)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 8836)
       (i64.load offset=88
        (get_local $2)
       )
      )
      (i32.const 9480)
      (get_local $8)
     )
    )
    (if
     (i32.eq
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load offset=40
        (get_local $2)
       )
      )
      (i32.const 2)
     )
     (drop
      (call $~lib/array/Array<u64>#push
       (get_local $4)
       (i64.load
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=44
          (get_local $2)
         )
         (i64.load offset=8
          (get_local $5)
         )
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
    (br $repeat|0)
   )
  )
  (if
   (i64.lt_u
    (get_local $6)
    (i64.extend_u/i32
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=40
       (get_local $2)
      )
     )
    )
   )
   (i64.store offset=56
    (get_local $2)
    (i64.add
     (i64.load offset=56
      (get_local $2)
     )
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (block
    (i64.store offset=56
     (get_local $2)
     (i64.extend_u/i32
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load offset=40
        (get_local $2)
       )
      )
     )
    )
    (i32.store8
     (get_local $2)
     (i32.const 4)
    )
   )
  )
  (if
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=40
      (get_local $2)
     )
    )
    (i32.const 2)
   )
   (call $../../lib/events/emit
    (i32.const 9496)
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4472)
       (i64.load
        (get_local $0)
       )
      )
      (i32.const 9532)
      (call $~lib/array/Array<u64>#__get
       (get_local $4)
       (i32.const 0)
      )
     )
     (i32.const 9556)
     (call $~lib/array/Array<u64>#__get
      (get_local $4)
      (i32.const 1)
     )
    )
   )
  )
  (call $../../lib/events/emit
   (i32.const 9116)
   (call $../../lib/events/_EventObject#set<u64>
    (get_global $../../lib/events/EventObject)
    (i32.const 4472)
    (i64.load
     (get_local $0)
    )
   )
  )
 )
 (func $match/MatchCore#sendOne (; 304 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (set_local $4
   (call $../../src/map/Map<u64_MatchInfo>#get
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=48
      (tee_local $5
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=48
         (get_local $0)
        )
        (i64.load
         (get_local $0)
        )
       )
      )
     )
     (get_local $1)
    )
    (get_local $2)
   )
  )
  (set_local $6
   (call $../../src/map/Map<u64_MatchInfo>#get
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=48
      (get_local $5)
     )
     (get_local $1)
    )
    (get_local $3)
   )
  )
  (if
   (i32.gt_s
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 0)
   )
   (block
    (set_local $8
     (select
      (i64.const 10000)
      (tee_local $8
       (if (result i64)
        (i64.gt_u
         (call $Contract#get:_receiver
          (i32.load
           (get_local $4)
          )
         )
         (i64.const 0)
        )
        (i64.div_u
         (i64.mul
          (i64.add
           (call $Contract#get:_receiver
            (i32.load
             (get_local $4)
            )
           )
           (call $Contract#get:_receiver
            (i32.load
             (get_local $6)
            )
           )
          )
          (i64.const 9500)
         )
         (call $Contract#get:_receiver
          (i32.load
           (get_local $4)
          )
         )
        )
        (i64.const 9500)
       )
      )
      (i64.lt_u
       (get_local $8)
       (i64.const 10000)
      )
     )
    )
    (set_local $7
     (get_local $2)
    )
   )
   (if
    (i32.gt_s
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=4
       (get_local $6)
      )
     )
     (i32.const 0)
    )
    (block
     (set_local $8
      (i64.const 10000)
     )
     (set_local $7
      (get_local $3)
     )
    )
    (i64.store offset=80
     (get_local $5)
     (i64.add
      (i64.load offset=80
       (get_local $5)
      )
      (i64.const 1)
     )
    )
   )
  )
  (if
   (i64.gt_u
    (get_local $7)
    (i64.const 0)
   )
   (block
    (set_local $9
     (if (result i64)
      (i64.gt_u
       (i64.extend_u/i32
        (call $~lib/array/Array<Dragon>#get:length
         (tee_local $6
          (i32.load offset=4
           (call $../../src/map/Map<u64_MatchInfo>#get
            (call $../../src/map/Map<u64_MatchInfo>#get
             (i32.load offset=48
              (get_local $5)
             )
             (get_local $1)
            )
            (get_local $7)
           )
          )
         )
        )
       )
       (i64.add
        (i64.load offset=72
         (get_local $5)
        )
        (i64.load offset=24
         (get_local $0)
        )
       )
      )
      (i64.add
       (i64.load offset=72
        (get_local $5)
       )
       (i64.load offset=24
        (get_local $0)
       )
      )
      (i64.extend_u/i32
       (call $~lib/array/Array<Dragon>#get:length
        (get_local $6)
       )
      )
     )
    )
    (block $break|0
     (set_local $4
      (i32.wrap/i64
       (i64.load offset=72
        (get_local $5)
       )
      )
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.ge_s
        (get_local $4)
        (i32.wrap/i64
         (get_local $9)
        )
       )
      )
      (set_local $3
       (i64.div_u
        (i64.mul
         (get_local $8)
         (call $Contract#get:_receiver
          (i32.load offset=8
           (call $~lib/array/Array<Dragon>#__get
            (get_local $6)
            (get_local $4)
           )
          )
         )
        )
        (i64.const 10000)
       )
      )
      (call $../../src/balance/send
       (get_global $consts/MatchAddress)
       (i64.load
        (call $~lib/array/Array<Dragon>#__get
         (get_local $6)
         (get_local $4)
        )
       )
       (call $../../src/asset/Asset#constructor
        (i32.const 0)
        (get_local $3)
        (get_global $../../internal/types/UGS)
       )
       (i32.const 9580)
      )
      (if
       (i64.eq
        (get_local $7)
        (get_local $2)
       )
       (call $../../lib/events/emit
        (i32.const 9616)
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (call $../../lib/events/_EventObject#set<u64>
            (call $../../lib/events/_EventObject#set<u64>
             (call $../../lib/events/_EventObject#set<u64>
              (get_global $../../lib/events/EventObject)
              (i32.const 9636)
              (i64.load
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
             (i32.const 9648)
             (call $Contract#get:_receiver
              (i32.load offset=8
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
            )
            (i32.const 2760)
            (get_local $7)
           )
           (i32.const 8852)
           (get_local $1)
          )
          (i32.const 4472)
          (i64.load
           (get_local $0)
          )
         )
         (i32.const 9664)
         (get_local $3)
        )
       )
       (call $../../lib/events/emit
        (i32.const 9680)
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (call $../../lib/events/_EventObject#set<u64>
            (call $../../lib/events/_EventObject#set<u64>
             (call $../../lib/events/_EventObject#set<u64>
              (get_global $../../lib/events/EventObject)
              (i32.const 9636)
              (i64.load
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
             (i32.const 9648)
             (call $Contract#get:_receiver
              (i32.load offset=8
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
            )
            (i32.const 2760)
            (get_local $7)
           )
           (i32.const 8852)
           (get_local $1)
          )
          (i32.const 4472)
          (i64.load
           (get_local $0)
          )
         )
         (i32.const 9664)
         (get_local $3)
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
    (if
     (i64.lt_u
      (get_local $9)
      (i64.extend_u/i32
       (call $~lib/array/Array<Dragon>#get:length
        (get_local $6)
       )
      )
     )
     (block
      (i64.store offset=72
       (get_local $5)
       (i64.add
        (i64.load offset=72
         (get_local $5)
        )
        (i64.load offset=24
         (get_local $0)
        )
       )
      )
      (call $../../lib/events/emit
       (i32.const 9116)
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4472)
        (i64.load
         (get_local $0)
        )
       )
      )
     )
     (block
      (i64.store offset=72
       (get_local $5)
       (i64.const 0)
      )
      (drop
       (call $../../src/map/Map<u64_Auction>#remove
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=48
          (get_local $5)
         )
         (get_local $1)
        )
        (get_local $7)
       )
      )
      (i64.store offset=80
       (get_local $5)
       (i64.add
        (i64.load offset=80
         (get_local $5)
        )
        (i64.const 1)
       )
      )
     )
    )
   )
  )
 )
 (func $match/MatchCore#sendReward (; 305 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_local $1
   (call $../../src/map/Map<u64_MatchInfo>#get
    (i32.load offset=48
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
   )
  )
  (set_local $6
   (i64.shl
    (i64.load
     (get_local $0)
    )
    (i64.add
     (i64.load offset=88
      (get_local $1)
     )
     (i64.const 12)
    )
   )
  )
  (set_local $7
   (i64.load offset=80
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $2
    (i32.wrap/i64
     (i64.load offset=80
      (get_local $1)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load offset=40
        (get_local $1)
       )
      )
     )
    )
    (set_local $3
     (call $~lib/array/Array<Dragon>#__get
      (i32.load offset=40
       (get_local $1)
      )
      (get_local $2)
     )
    )
    (if
     (i64.eq
      (call $~lib/array/Array<u64>#__get
       (i32.load offset=52
        (get_local $1)
       )
       (get_local $2)
      )
      (call $~lib/array/Array<u64>#__get
       (get_local $3)
       (i32.const 0)
      )
     )
     (block
      (set_local $4
       (i64.load
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=44
          (get_local $1)
         )
         (call $~lib/array/Array<u64>#__get
          (get_local $3)
          (i32.const 0)
         )
        )
       )
      )
      (set_local $5
       (i64.load
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=44
          (get_local $1)
         )
         (call $~lib/array/Array<u64>#__get
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
     )
     (block
      (set_local $5
       (i64.load
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=44
          (get_local $1)
         )
         (call $~lib/array/Array<u64>#__get
          (get_local $3)
          (i32.const 0)
         )
        )
       )
      )
      (set_local $4
       (i64.load
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=44
          (get_local $1)
         )
         (call $~lib/array/Array<u64>#__get
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (call $match/MatchCore#sendOne
     (get_local $0)
     (i64.add
      (get_local $6)
      (i64.extend_u/i32
       (i32.shl
        (get_local $2)
        (i32.const 4)
       )
      )
     )
     (get_local $4)
     (get_local $5)
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
  (if
   (i64.ge_u
    (get_local $7)
    (i64.extend_u/i32
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=40
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.gt_s
      (call $~lib/array/Array<Dragon>#get:length
       (i32.load offset=40
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (block
      (i32.store8
       (get_local $1)
       (i32.const 1)
      )
      (i64.store offset=88
       (get_local $1)
       (i64.add
        (i64.load offset=88
         (get_local $1)
        )
        (i64.const 1)
       )
      )
      (call $../../lib/events/emit
       (i32.const 9716)
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (get_global $../../lib/events/EventObject)
         (i32.const 4472)
         (i64.load
          (get_local $0)
         )
        )
        (i32.const 8836)
        (i64.load offset=88
         (get_local $1)
        )
       )
      )
      (call $../../lib/events/emit
       (i32.const 9740)
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (get_global $../../lib/events/EventObject)
         (i32.const 4472)
         (i64.load
          (get_local $0)
         )
        )
        (i32.const 8836)
        (i64.sub
         (i64.load offset=88
          (get_local $1)
         )
         (i64.const 1)
        )
       )
      )
      (i64.store offset=64
       (get_local $1)
       (i64.const 0)
      )
      (i64.store offset=56
       (get_local $1)
       (i64.const 0)
      )
      (i64.store offset=72
       (get_local $1)
       (i64.const 0)
      )
      (i64.store offset=80
       (get_local $1)
       (i64.const 0)
      )
     )
     (block
      (i32.store8 offset=24
       (get_local $1)
       (i32.const 0)
      )
      (call $../../lib/events/emit
       (i32.const 9764)
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4472)
        (i64.load
         (get_local $0)
        )
       )
      )
     )
    )
    (i32.store offset=40
     (get_local $1)
     (call $~lib/array/Array<String>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
  )
 )
 (func $match/MatchCore#nextStep (; 306 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i32.load8_u offset=24
    (tee_local $2
     (call $../../src/map/Map<u64_MatchInfo>#get
      (i32.load offset=48
       (get_local $0)
      )
      (i64.load
       (get_local $0)
      )
     )
    )
   )
   (i32.const 8936)
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_u
    (i32.load8_u
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 8984)
  )
  (if
   (i32.eq
    (i32.load8_u
     (get_local $2)
    )
    (i32.const 1)
   )
   (call $match/MatchCore#giveGroup
    (get_local $0)
    (get_local $1)
   )
   (if
    (if (result i32)
     (tee_local $3
      (i32.eq
       (i32.load8_u
        (get_local $2)
       )
       (i32.const 2)
      )
     )
     (get_local $3)
     (i32.eq
      (i32.load8_u
       (get_local $2)
      )
      (i32.const 3)
     )
    )
    (call $match/MatchCore#fighting
     (get_local $0)
     (get_local $1)
    )
    (if
     (i32.eq
      (i32.load8_u
       (get_local $2)
      )
      (i32.const 4)
     )
     (call $match/MatchCore#sendReward
      (get_local $0)
     )
    )
   )
  )
 )
 (func $dragoncore/DragonCore#nextStep (; 307 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $match/MatchCore#nextStep
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#nextStep (; 308 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#nextStep
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#getEntryFee (; 309 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.sub
    (i32.wrap/i64
     (i64.load offset=16
      (call $../../src/map/Map<u64_JoinUser>#_valueAt
       (i32.load offset=48
        (get_local $0)
       )
       (i64.extend_u/i32
        (i32.wrap/i64
         (i64.load
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<Dragon>#__get
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#getEntryFee (; 310 ;) (type $ii) (param $0 i32) (result i32)
  (call $match/MatchCore#getEntryFee
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#getEntryFee (; 311 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<u64>
   (call $Contract#get:_receiver
    (call $dragoncore/DragonCore#getEntryFee
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
 )
 (func $match/MatchCore#setFightLimit (; 312 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#setFightLimit (; 313 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $match/MatchCore#setFightLimit
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setFightLimit (; 314 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#setFightLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#setAwardLimit (; 315 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $genetype/GenType#set:color
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setAwardLimit (; 316 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#setAwardLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setGroupLimit (; 317 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (get_local $0)
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#setGroupLimit (; 318 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $match/MatchCore#setGroupLimit
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setGroupLimit (; 319 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#setGroupLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setJoinLimit (; 320 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=52
      (get_local $0)
     )
    )
   )
   (i32.const 9796)
  )
  (i32.store offset=52
   (get_local $0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $1)
      )
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load offset=52
       (get_local $0)
      )
      (call $~lib/array/Array<u64>#__get
       (get_local $1)
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
    (br $repeat|0)
   )
  )
 )
 (func $dragoncore/DragonCore#setJoinLimit (; 321 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $match/MatchCore#setJoinLimit
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setJoinLimit (; 322 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonCore#setJoinLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setRegfees (; 323 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (i32.const 9872)
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $1)
      )
     )
    )
    (drop
     (call $~lib/array/Array<DataItem<Account>>#push
      (i32.load offset=8
       (get_local $0)
      )
      (call $~lib/array/Array<Dragon>#__get
       (get_local $1)
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
    (br $repeat|0)
   )
  )
 )
 (func $dragoncore/DragonCore#setRegfees (; 324 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $match/MatchCore#setRegfees
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setRegfees (; 325 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonCore#setRegfees
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setRewardMultiple (; 326 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=12
      (get_local $0)
     )
    )
   )
   (i32.const 9956)
  )
  (i32.store offset=12
   (get_local $0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (call $~lib/array/Array<Dragon>#get:length
       (get_local $1)
      )
     )
    )
    (drop
     (call $~lib/array/Array<u64>#push
      (i32.load offset=12
       (get_local $0)
      )
      (call $~lib/array/Array<u64>#__get
       (get_local $1)
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
    (br $repeat|0)
   )
  )
 )
 (func $dragoncore/DragonCore#setRewardMultiple (; 327 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $match/MatchCore#setRewardMultiple
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setRewardMultiple (; 328 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonCore#setRewardMultiple
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setGenLimit (; 329 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=56
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonCore#setGenLimit (; 330 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $match/MatchCore#setGenLimit
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#setGenLimit (; 331 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $dragoncore/DragonCore#setGenLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $match/MatchCore#dissolve (; 332 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (i32.load8_u
       (tee_local $3
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=48
          (get_local $0)
         )
         (i64.load
          (get_local $0)
         )
        )
       )
      )
      (i32.const 2)
     )
    )
    (get_local $2)
    (i32.eq
     (i32.load8_u
      (get_local $3)
     )
     (i32.const 3)
    )
   )
   (block $break|0
    (set_local $2
     (i32.const 0)
    )
    (loop $repeat|0
     (br_if $break|0
      (i32.ge_s
       (get_local $2)
       (call $~lib/array/Array<Dragon>#get:length
        (i32.load offset=40
         (get_local $3)
        )
       )
      )
     )
     (set_local $1
      (call $~lib/array/Array<u64>#__get
       (call $~lib/array/Array<Dragon>#__get
        (i32.load offset=40
         (get_local $3)
        )
        (get_local $2)
       )
       (i32.const 0)
      )
     )
     (set_local $5
      (call $~lib/array/Array<u64>#__get
       (call $~lib/array/Array<Dragon>#__get
        (i32.load offset=40
         (get_local $3)
        )
        (get_local $2)
       )
       (i32.const 1)
      )
     )
     (set_local $4
      (i64.load
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=44
         (get_local $3)
        )
        (get_local $1)
       )
      )
     )
     (set_local $6
      (i64.load
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=44
         (get_local $3)
        )
        (get_local $5)
       )
      )
     )
     (if
      (i64.eq
       (call $dragoncore/DragonAssetControl#ownerOf
        (i32.load offset=64
         (get_local $0)
        )
        (get_local $4)
       )
       (get_global $consts/MatchAddress)
      )
      (call $match/MatchCore#transfer
       (get_local $0)
       (get_local $1)
       (get_local $4)
      )
      (if
       (i64.eq
        (call $dragoncore/DragonAssetControl#ownerOf
         (i32.load offset=64
          (get_local $0)
         )
         (get_local $6)
        )
        (get_global $consts/MatchAddress)
       )
       (call $match/MatchCore#transfer
        (get_local $0)
        (get_local $5)
        (get_local $6)
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
   (block $break|1
    (set_local $2
     (i32.const 0)
    )
    (loop $repeat|1
     (br_if $break|1
      (i32.ge_s
       (get_local $2)
       (call $~lib/array/Array<Dragon>#get:length
        (i32.load offset=52
         (get_local $3)
        )
       )
      )
     )
     (set_local $1
      (call $~lib/array/Array<u64>#__get
       (i32.load offset=52
        (get_local $3)
       )
       (get_local $2)
      )
     )
     (set_local $4
      (i64.load
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=44
         (get_local $3)
        )
        (get_local $1)
       )
      )
     )
     (if
      (i64.eq
       (call $dragoncore/DragonAssetControl#ownerOf
        (i32.load offset=64
         (get_local $0)
        )
        (get_local $4)
       )
       (get_global $consts/MatchAddress)
      )
      (call $match/MatchCore#transfer
       (get_local $0)
       (get_local $1)
       (get_local $4)
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $repeat|1)
    )
   )
  )
  (i32.store8 offset=24
   (get_local $3)
   (i32.const 0)
  )
 )
 (func $dragoncore/DragonCore#dissolve (; 333 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#dissolve
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#dissolve (; 334 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#dissolve
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/datastream/DataStream#read<u8> (; 335 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVarint32 (; 336 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVector<u64> (; 337 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/array/Array<u64>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $3
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (get_local $2)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $1)
      (get_local $2)
     )
    )
    (call $~lib/array/Array<u64>#__set
     (get_local $3)
     (get_local $1)
     (call $../../src/datastream/DataStream#read<u64>
      (get_local $0)
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
  (get_local $3)
 )
 (func $../../src/datastream/DataStream#readComplexVector<Asset> (; 338 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/array/Array<String>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $3
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (get_local $2)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $1)
      (get_local $2)
     )
    )
    (call $../../src/asset/Asset#deserialize
     (call $~lib/array/Array<Dragon>#__get
      (get_local $3)
      (get_local $1)
     )
     (get_local $0)
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
  (get_local $3)
 )
 (func $index/apply (; 339 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $3
     (call $../../lib/contract/Contract#getDataStream
      (tee_local $4
       (call $index/HyperDragonContract#constructor
        (i32.const 0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10056)
      )
     )
     (call $index/HyperDragonContract#getDragon
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10080)
      )
     )
     (call $index/HyperDragonContract#withdrawAuctionBalances
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10132)
      )
     )
     (call $index/HyperDragonContract#withdrawBalance
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10168)
      )
     )
     (call $index/HyperDragonContract#updteExtend
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10196)
      )
     )
     (call $index/HyperDragonContract#setTitles
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10220)
      )
     )
     (call $index/HyperDragonContract#fightCooldown
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10252)
      )
     )
     (block
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#joinMatch
       (get_local $4)
       (get_local $0)
       (get_local $5)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10276)
      )
     )
     (call $index/HyperDragonContract#setSpecialDragonLimit
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10324)
      )
     )
     (call $index/HyperDragonContract#increaseSpecialDragon
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10372)
      )
     )
     (call $index/HyperDragonContract#createGen0Auction
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10412)
      )
     )
     (call $index/HyperDragonContract#createPromoDragon
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10452)
      )
     )
     (block
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#bidOnSiringAuction
       (get_local $4)
       (get_local $1)
       (get_local $0)
       (get_local $5)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10492)
      )
     )
     (call $index/HyperDragonContract#setSaleAuctionAddress
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10540)
      )
     )
     (call $index/HyperDragonContract#setSiringAuctionAddress
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10592)
      )
     )
     (block
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $6
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#createSiringAuction
       (get_local $4)
       (get_local $0)
       (get_local $5)
       (get_local $6)
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10636)
      )
     )
     (block
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $6
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#createSaleAuction
       (get_local $4)
       (get_local $1)
       (get_local $6)
       (get_local $5)
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10676)
      )
     )
     (call $index/HyperDragonContract#updateGenes
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10704)
      )
     )
     (call $index/HyperDragonContract#giveBirth
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10728)
      )
     )
     (block
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#breedWithAuto
       (get_local $4)
       (get_local $0)
       (get_local $1)
       (get_local $5)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10760)
      )
     )
     (call $index/HyperDragonContract#canBreedWith
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10788)
      )
     )
     (call $index/HyperDragonContract#isPregnant
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10812)
      )
     )
     (call $index/HyperDragonContract#isReadyToBreed
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10844)
      )
     )
     (block
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#setAutoBirthFee
       (get_local $4)
       (get_local $5)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10880)
      )
     )
     (call $index/HyperDragonContract#approveSiring
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10912)
      )
     )
     (call $index/HyperDragonContract#balanceOf
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 2332)
      )
     )
     (call $saleclockauction/ClockAuctionBase#transfer
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10936)
      )
     )
     (call $index/HyperDragonContract#approve
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10956)
      )
     )
     (call $index/HyperDragonContract#transferFrom
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 10984)
      )
     )
     (call $index/HyperDragonContract#totalSupply
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11012)
      )
     )
     (call $index/HyperDragonContract#ownerOf
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11032)
      )
     )
     (call $index/HyperDragonContract#tokensOfOwner
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11064)
      )
     )
     (call $index/HyperDragonContract#startMatch
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11088)
      )
     )
     (call $index/HyperDragonContract#isCanJoin
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11112)
      )
     )
     (block
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $5
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $index/HyperDragonContract#guess
       (get_local $4)
       (get_local $1)
       (get_local $0)
       (get_local $5)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11128)
      )
     )
     (call $index/HyperDragonContract#nextStep
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11148)
      )
     )
     (call $index/HyperDragonContract#getEntryFee
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11176)
      )
     )
     (call $index/HyperDragonContract#setFightLimit
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11208)
      )
     )
     (call $index/HyperDragonContract#setAwardLimit
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11240)
      )
     )
     (call $index/HyperDragonContract#setGroupLimit
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11272)
      )
     )
     (call $index/HyperDragonContract#setJoinLimit
      (get_local $4)
      (call $../../src/datastream/DataStream#readVector<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11300)
      )
     )
     (call $index/HyperDragonContract#setRegfees
      (get_local $4)
      (call $../../src/datastream/DataStream#readComplexVector<Asset>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11324)
      )
     )
     (call $index/HyperDragonContract#setRewardMultiple
      (get_local $4)
      (call $../../src/datastream/DataStream#readVector<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11364)
      )
     )
     (call $index/HyperDragonContract#setGenLimit
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
      (call $../../src/datastream/DataStream#readVector<u64>
       (get_local $3)
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 11392)
      )
     )
     (call $index/HyperDragonContract#dissolve
      (get_local $4)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $start (; 340 ;) (type $v)
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
  (set_global $../../lib/events/EventObject
   (call $../../lib/events/_EventObject#constructor
    (i32.const 0)
   )
  )
  (set_global $../../src/balance/SYS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1380)
   )
  )
  (set_global $../../src/balance/SYS_NAME
   (i64.shr_u
    (get_global $../../src/balance/SYS)
    (i64.const 8)
   )
  )
  (set_global $consts/HyperDragonContract
   (call $../../src/utils/N
    (i32.const 1616)
   )
  )
  (set_global $consts/CEO
   (call $../../src/utils/N
    (i32.const 1644)
   )
  )
  (set_global $consts/CFO
   (call $../../src/utils/N
    (i32.const 1664)
   )
  )
  (set_global $consts/API
   (call $../../src/utils/N
    (i32.const 1684)
   )
  )
  (set_global $consts/SaleAuctionAddress
   (call $../../src/utils/N
    (i32.const 1704)
   )
  )
  (set_global $consts/SireAuctionAddress
   (call $../../src/utils/N
    (i32.const 1728)
   )
  )
  (set_global $consts/MatchAddress
   (call $../../src/utils/N
    (i32.const 1752)
   )
  )
  (set_global $../../internal/types/UGS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1380)
   )
  )
  (set_global $match/MatchInfoTable
   (call $../../src/utils/N
    (i32.const 1772)
   )
  )
  (set_global $match/MatchInfoTableScope
   (call $../../src/utils/N
    (i32.const 1796)
   )
  )
  (set_global $dragoncore/GEN0_STARTING_PRICE
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 80)
    (get_global $../../internal/types/UGS)
   )
  )
  (set_global $dragoncore/GEN0_AUCTION_DURATION
   (call $../../lib/time/Microseconds#toSeconds
    (call $../../lib/time/days
     (i64.const 1)
    )
   )
  )
 )
)
