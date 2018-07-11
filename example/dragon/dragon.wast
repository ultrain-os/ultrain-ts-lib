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
 (type $iI (func (param i32) (result i64)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $iIv (func (param i32 i64)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $I (func (result i64)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iIIIv (func (param i32 i64 i64 i64)))
 (type $III (func (param i64 i64) (result i64)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $iIIiIiv (func (param i32 i64 i64 i32 i64 i32)))
 (type $iIiIi (func (param i32 i64 i32 i64) (result i32)))
 (type $iIIIIIv (func (param i32 i64 i64 i64 i64 i64)))
 (type $iIIIIi (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $II (func (param i64) (result i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $iIIiiIIII (func (param i32 i64 i64 i32 i32 i64 i64 i64) (result i64)))
 (type $iIiiIIv (func (param i32 i64 i32 i32 i64 i64)))
 (type $iIIIIIIIv (func (param i32 i64 i64 i64 i64 i64 i64 i64)))
 (type $iiIIIv (func (param i32 i32 i64 i64 i64)))
 (type $iIIiv (func (param i32 i64 i64 i32)))
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
 (import "env" "random_uint64" (func $../../internal/action.d/env.random_uint64 (param i64) (result i64)))
 (import "env" "is_account" (func $../../internal/action.d/env.is_account (param i64) (result i32)))
 (import "env" "current_time" (func $../../internal/system.d/env.current_time (result i64)))
 (import "env" "set_result_int" (func $../../src/return/env.set_result_int (param i64)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $match/SYM (mut i64) (i64.const 0))
 (global $match/MatchInfoTable (mut i64) (i64.const 0))
 (global $match/MatchInfoTableScope (mut i64) (i64.const 0))
 (global $dragoncore/SYM (mut i64) (i64.const 0))
 (global $dragoncore/PROMO_CREATION_LIMIT (mut i64) (i64.const 15000))
 (global $dragoncore/GEN0_CREATION_LIMIT (mut i64) (i64.const 45000))
 (global $dragoncore/GEN0_STARTING_PRICE (mut i32) (i32.const 0))
 (global $dragoncore/GEN0_AUCTION_DURATION (mut i64) (i64.const 0))
 (global $HEAP_BASE i32 (i32.const 7024))
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
 (data (i32.const 1288) "\03\00\00\00U\00G\00S")
 (data (i32.const 1300) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.")
 (data (i32.const 1392) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1424) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1484) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1516) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 ")
 (data (i32.const 1616) "\n\00\00\00h\00d\00.\00m\00a\00t\00c\00h\00e\00s")
 (data (i32.const 1640) "\t\00\00\00m\00a\00t\00.\00s\00c\00o\00p\00e")
 (data (i32.const 1664) "\02\00\00\00H\00D")
 (data (i32.const 1672) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1732) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1744) "\"\00\00\00o\00n\00l\00y\00 \00C\00E\00O\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 1816) "\"\00\00\00o\00n\00l\00y\00 \00C\00F\00O\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 1888) "-\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00o\00m\00p\00a\00r\00e\00 \00A\00s\00s\00e\00t\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00_\00s\00y\00m\00b\00o\00l\00.")
 (data (i32.const 1984) "\"\00\00\00t\00h\00i\00s\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00c\00u\00r\00r\00e\00n\00t\00l\00y\00 \00p\00a\00u\00s\00e\00d\00.")
 (data (i32.const 2056) ")\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00h\00e\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 2144) "\"\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00j\00o\00i\00n\00s\00 \00t\00o\00o\00 \00m\00a\00n\00y\00 \00m\00a\00t\00c\00h\00e\00s\00.")
 (data (i32.const 2216) "\15\00\00\00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 2264) "\17\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00p\00r\00e\00g\00n\00a\00n\00t\00.")
 (data (i32.const 2316) "!\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00s\00t\00i\00l\00l\00 \00c\00o\00o\00l\00i\00n\00g\00 \00d\00o\00w\00n\00.")
 (data (i32.const 2388) "\"\00\00\00t\00h\00e\00 \00s\00e\00n\00d\00e\00r\00 \00c\00a\00n\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 2460) "\05\00\00\00M\00a\00t\00c\00h")
 (data (i32.const 2476) "4\00\00\00t\00h\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00p\00a\00u\00s\00e\00d\00 \00a\00n\00d\00 \00c\00a\00n\00 \00n\00o\00t\00 \00r\00u\00n\00 \00t\00h\00i\00s\00 \00r\00e\00q\00u\00e\00s\00t\00.")
 (data (i32.const 2584) "+\00\00\00s\00u\00p\00p\00l\00i\00e\00d\00 \00f\00e\00e\00 \00i\00s\00 \00s\00m\00a\00l\00l\00 \00t\00h\00a\00n\00 \00t\00h\00e\00 \00l\00o\00w\00e\00r\00 \00l\00i\00m\00i\00t\00.")
 (data (i32.const 2676) "\18\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00i\00s\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 2728) ".\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00g\00e\00n\00e\00 \00i\00s\00 \00n\00o\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \00t\00h\00e\00 \00g\00e\00n\00e\00 \00l\00i\00m\00i\00t\00.")
 (data (i32.const 2824) "\1f\00\00\00t\00o\00o\00 \00m\00a\00n\00y\00 \00g\00e\00n\000\00 \00a\00u\00c\00t\00i\00o\00n\00s\00 \00c\00r\00e\00a\00t\00e\00d\00.")
 (data (i32.const 2892) "1\00\00\00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00a\00n\00y\00 \00t\00o\00k\00e\00n\00 \00c\00a\00n\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00f\00r\00o\00m\00.")
 (data (i32.const 2996) "-\00\00\00t\00h\00e\00 \00a\00u\00c\00t\00i\00o\00n\00\'\00s\00 \00d\00u\00r\00a\00t\00i\00o\00n\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \001\00 \00m\00i\00n\00u\00t\00e\00.")
 (data (i32.const 3092) "\19\00\00\00t\00o\00o\00 \00m\00a\00n\00y\00 \00d\00r\00a\00g\00o\00n\00s\00 \00c\00r\00e\00a\00t\00e\00d\00.")
 (data (i32.const 3148) "0\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 3248) "\15\00\00\00d\00r\00a\00g\00o\00n\00 \00i\00d\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 3296) "(\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 3380) ";\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00r\00e\00e\00d\00 \00w\00i\00t\00h\00 \00t\00h\00e\00 \00s\00i\00r\00e\00 \00d\00r\00a\00g\00o\00n\00s\00 \00v\00i\00a\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 3504) "\1c\00\00\00t\00h\00e\00 \00t\00o\00k\00e\00n\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 3564) "\15\00\00\00b\00i\00d\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00t\00o\00o\00 \00l\00o\00w\00.")
 (data (i32.const 3612) " \00\00\00t\00h\00i\00s\00 \00t\00o\00k\00e\00n\00 \00i\00d\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 3680) "\'\00\00\00b\00i\00d\00 \00a\00m\00o\00u\00n\00t\00 \00i\00s\00 \00l\00o\00w\00e\00r\00 \00t\00h\00a\00n\00 \00c\00u\00r\00r\00e\00n\00t\00 \00p\00r\00i\00c\00e\00.")
 (data (i32.const 3764) ")\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 3852) "!\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 3924) ",\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00d\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 4016) "\18\00\00\00t\00h\00i\00s\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00p\00r\00e\00g\00n\00e\00n\00t\00.")
 (data (i32.const 4068) "\"\00\00\00o\00n\00l\00y\00 \00A\00P\00I\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 4140) ")\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00v\00a\00l\00i\00d\00,\00 \00i\00t\00s\00 \00b\00i\00r\00t\00h\00 \00t\00i\00m\00e\00 \00i\00s\00 \000\00.")
 (data (i32.const 4228) "!\00\00\00p\00a\00y\00e\00r\00 \00i\00s\00 \00l\00o\00w\00e\00r\00 \00t\00h\00a\00n\00 \00a\00u\00t\00o\00B\00i\00r\00t\00h\00F\00e\00e\00.")
 (data (i32.const 4300) "#\00\00\00t\00h\00x\00 \00s\00e\00n\00d\00e\00r\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00.")
 (data (i32.const 4376) ".\00\00\00m\00a\00t\00r\00o\00n\00I\00d\00 \00a\00n\00d\00 \00s\00i\00r\00e\00I\00d\00 \00i\00s\00 \00n\00o\00t\00 \00p\00r\00e\00m\00i\00t\00t\00e\00d\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 4472) "\1d\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 4536) "\1b\00\00\00s\00i\00r\00e\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 4596) "\1f\00\00\00m\00a\00t\00r\00o\00n\00 \00a\00n\00d\00 \00s\00i\00r\00e\00 \00c\00a\00n\00 \00n\00o\00t\00 \00m\00a\00t\00i\00n\00g\00.")
 (data (i32.const 4664) "\12\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00d\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 4704) "\13\00\00\00s\00i\00r\00e\00 \00i\00d\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 4748) "\04\00\00\00t\00r\00u\00e")
 (data (i32.const 4760) "\05\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 4776) "/\00\00\00t\00h\00e\00 \00s\00i\00r\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00s\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 4876) ",\00\00\00s\00t\00a\00r\00t\00M\00a\00t\00c\00h\00 \00f\00a\00i\00l\00e\00d\00,\00 \00_\00i\00d\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00m\00a\00t\00c\00h\00_\00i\00d")
 (data (i32.const 4968) "\15\00\00\00b\00e\00t\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 5016) "\1b\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00t\00 \00t\00h\00i\00s\00 \00m\00a\00t\00c\00h\00 \00n\00o\00w\00.")
 (data (i32.const 5076) ")\00\00\00r\00o\00u\00n\00d\00 \00d\00i\00s\00m\00a\00t\00c\00h\00e\00d\00 \00f\00o\00r\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00 \00a\00n\00d\00 \00b\00e\00t\00i\00d\00.")
 (data (i32.const 5164) "\1b\00\00\00y\00o\00u\00 \00d\00i\00d\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 5224) "\16\00\00\00m\00a\00t\00c\00h\00 \00s\00t\00a\00t\00u\00s\00 \00i\00s\00 \00f\00a\00l\00s\00e\00.")
 (data (i32.const 5272) "\0f\00\00\00m\00a\00t\00c\00h\00 \00s\00t\00e\00p\00 \00i\00s\00 \000")
 (data (i32.const 5308) " \00\00\00o\00n\00l\00y\00 \00o\00w\00n\00e\00r\00 \00c\00a\00n\00 \00r\00u\00n\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 5376) "5\00\00\00o\00n\00l\00y\00 \00t\00h\00e\00 \00o\00w\00n\00e\00r\00 \00o\00f\00 \00t\00h\00i\00s\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00c\00a\00n\00 \00r\00u\00n\00 \00t\00h\00i\00s\00 \00r\00e\00q\00u\00e\00s\00t\00.")
 (data (i32.const 5488) "$\00\00\00j\00o\00i\00n\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 5564) "\'\00\00\00r\00e\00g\00f\00e\00e\00s\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 5648) "/\00\00\00r\00e\00w\00a\00r\00d\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 5748) "\t\00\00\00g\00e\00t\00D\00r\00a\00g\00o\00n")
 (data (i32.const 5772) "\17\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00A\00u\00c\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e\00s")
 (data (i32.const 5824) "\0f\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00B\00a\00l\00a\00n\00c\00e")
 (data (i32.const 5860) "\0b\00\00\00u\00p\00d\00t\00e\00E\00x\00t\00e\00n\00d")
 (data (i32.const 5888) "\t\00\00\00s\00e\00t\00T\00i\00t\00l\00e\00s")
 (data (i32.const 5912) "\0d\00\00\00f\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n")
 (data (i32.const 5944) "\t\00\00\00j\00o\00i\00n\00M\00a\00t\00c\00h")
 (data (i32.const 5968) "\15\00\00\00s\00e\00t\00S\00p\00e\00c\00i\00a\00l\00D\00r\00a\00g\00o\00n\00L\00i\00m\00i\00t")
 (data (i32.const 6016) "\15\00\00\00i\00n\00c\00r\00e\00a\00s\00e\00S\00p\00e\00c\00i\00a\00l\00D\00r\00a\00g\00o\00n")
 (data (i32.const 6064) "\11\00\00\00c\00r\00e\00a\00t\00e\00G\00e\00n\000\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 6104) "\11\00\00\00c\00r\00e\00a\00t\00e\00P\00r\00o\00m\00o\00D\00r\00a\00g\00o\00n")
 (data (i32.const 6144) "\12\00\00\00b\00i\00d\00O\00n\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 6184) "\13\00\00\00c\00r\00e\00a\00t\00e\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 6228) "\11\00\00\00c\00r\00e\00a\00t\00e\00S\00a\00l\00e\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 6268) "\0b\00\00\00u\00p\00d\00a\00t\00e\00G\00e\00n\00e\00s")
 (data (i32.const 6296) "\t\00\00\00g\00i\00v\00e\00B\00i\00r\00t\00h")
 (data (i32.const 6320) "\0d\00\00\00b\00r\00e\00e\00d\00W\00i\00t\00h\00A\00u\00t\00o")
 (data (i32.const 6352) "\0c\00\00\00c\00a\00n\00B\00r\00e\00e\00d\00W\00i\00t\00h")
 (data (i32.const 6380) "\n\00\00\00i\00s\00P\00r\00e\00g\00n\00a\00n\00t")
 (data (i32.const 6404) "\0e\00\00\00i\00s\00R\00e\00a\00d\00y\00T\00o\00B\00r\00e\00e\00d")
 (data (i32.const 6436) "\0f\00\00\00s\00e\00t\00A\00u\00t\00o\00B\00i\00r\00t\00h\00F\00e\00e")
 (data (i32.const 6472) "\0d\00\00\00a\00p\00p\00r\00o\00v\00e\00S\00i\00r\00i\00n\00g")
 (data (i32.const 6504) "\t\00\00\00b\00a\00l\00a\00n\00c\00e\00O\00f")
 (data (i32.const 6528) "\08\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 6548) "\07\00\00\00a\00p\00p\00r\00o\00v\00e")
 (data (i32.const 6568) "\0c\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m")
 (data (i32.const 6596) "\0b\00\00\00t\00o\00t\00a\00l\00S\00u\00p\00p\00l\00y")
 (data (i32.const 6624) "\07\00\00\00o\00w\00n\00e\00r\00O\00f")
 (data (i32.const 6644) "\0d\00\00\00t\00o\00k\00e\00n\00s\00O\00f\00O\00w\00n\00e\00r")
 (data (i32.const 6676) "\n\00\00\00s\00t\00a\00r\00t\00M\00a\00t\00c\00h")
 (data (i32.const 6700) "\t\00\00\00i\00s\00C\00a\00n\00J\00o\00i\00n")
 (data (i32.const 6724) "\05\00\00\00g\00u\00e\00s\00s")
 (data (i32.const 6740) "\08\00\00\00n\00e\00x\00t\00S\00t\00e\00p")
 (data (i32.const 6760) "\0b\00\00\00g\00e\00t\00E\00n\00t\00r\00y\00F\00e\00e")
 (data (i32.const 6788) "\0d\00\00\00s\00e\00t\00F\00i\00g\00h\00t\00L\00i\00m\00i\00t")
 (data (i32.const 6820) "\0d\00\00\00s\00e\00t\00A\00w\00a\00r\00d\00L\00i\00m\00i\00t")
 (data (i32.const 6852) "\0d\00\00\00s\00e\00t\00G\00r\00o\00u\00p\00L\00i\00m\00i\00t")
 (data (i32.const 6884) "\0c\00\00\00s\00e\00t\00J\00o\00i\00n\00L\00i\00m\00i\00t")
 (data (i32.const 6912) "\n\00\00\00s\00e\00t\00R\00e\00g\00f\00e\00e\00s")
 (data (i32.const 6936) "\11\00\00\00s\00e\00t\00R\00e\00w\00a\00r\00d\00M\00u\00l\00t\00i\00p\00l\00e")
 (data (i32.const 6976) "\0b\00\00\00s\00e\00t\00G\00e\00n\00L\00i\00m\00i\00t")
 (data (i32.const 7004) "\08\00\00\00d\00i\00s\00s\00o\00l\00v\00e")
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
 (export "HyperDragonContract#transfer" (func $match/MatchCore#_escrow))
 (export "HyperDragonContract#approve" (func $match/MatchCore#_escrow))
 (export "HyperDragonContract#transferFrom" (func $dragoncore/DragonAssetControl#transferFrom))
 (export "HyperDragonContract#totalSupply" (func $saleclockauction/ClockAuction#withdrawBalance))
 (export "HyperDragonContract#ownerOf" (func $index/HyperDragonContract#balanceOf))
 (export "HyperDragonContract#tokensOfOwner" (func $index/HyperDragonContract#balanceOf))
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
 (func $~lib/allocator/arena/allocate_memory (; 14 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/computeSize (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 16 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/set_memory (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<u8>#constructor (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#charCodeAt (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/memory/copy_memory (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/move_memory (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u8>#push (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/utils/toUTF8Array (; 24 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/utils/string2cstr (; 25 ;) (type $ii) (param $0 i32) (result i32)
  (i32.add
   (i32.load
    (call $../../src/utils/toUTF8Array
     (get_local $0)
    )
   )
   (i32.const 8)
  )
 )
 (func $../../src/utils/ultrain_assert (; 26 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/log/Logger#s (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/log/Logger#i (; 28 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../src/log/env.ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#flush (; 29 ;) (type $iv) (param $0 i32)
  (call $../../src/log/env.ts_log_done)
 )
 (func $../../src/asset/StringToSymbol (; 30 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
   (i32.const 1300)
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
 (func $../../src/utils/char_to_symbol (; 31 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/utils/N (; 32 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#constructor (; 33 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $../../lib/time/Microseconds#constructor (; 34 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../lib/time/milliseconds (; 35 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/Microseconds#constructor
   (i32.const 0)
   (i64.mul
    (get_local $0)
    (i64.const 1000)
   )
  )
 )
 (func $../../lib/time/seconds (; 36 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/milliseconds
   (i64.mul
    (get_local $0)
    (i64.const 1000)
   )
  )
 )
 (func $../../lib/time/minutes (; 37 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/seconds
   (i64.mul
    (get_local $0)
    (i64.const 60)
   )
  )
 )
 (func $../../lib/time/hours (; 38 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/minutes
   (i64.mul
    (get_local $0)
    (i64.const 60)
   )
  )
 )
 (func $../../lib/time/days (; 39 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/hours
   (i64.mul
    (get_local $0)
    (i64.const 24)
   )
  )
 )
 (func $../../lib/time/Microseconds#toSeconds (; 40 ;) (type $iI) (param $0 i32) (result i64)
  (i64.div_u
   (i64.load
    (get_local $0)
   )
   (i64.const 1000000)
  )
 )
 (func $~lib/array/Array<Dragon>#constructor (; 41 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u64>#constructor (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u64>#__unchecked_set (; 43 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $dragoncore/DragonCore#constructor (; 44 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i64.store
     (tee_local $1
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 0)
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
    (i32.store8 offset=24
     (get_local $1)
     (i32.const 0)
    )
    (i32.store offset=28
     (get_local $1)
     (call $~lib/array/Array<Dragon>#constructor
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
      (get_global $dragoncore/SYM)
     )
    )
    (i64.store offset=80
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
    (i32.store offset=88
     (get_local $1)
     (get_local $0)
    )
    (i64.store offset=96
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
 (func $index/HyperDragonContract#constructor (; 45 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $Contract#get:_receiver (; 46 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $Contract#set:_receiver (; 47 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/datastream/DataStream#constructor (; 49 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $../../lib/contract/DataStreamFromCurrentAction (; 50 ;) (type $i) (result i32)
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
 (func $../../lib/contract/Contract#getDataStream (; 51 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../lib/contract/DataStreamFromCurrentAction)
 )
 (func $~lib/array/Array<Dragon>#get:length (; 52 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=4
   (get_local $0)
  )
 )
 (func $dragoncore/DragonBase#containsDragon (; 53 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/array/Array<Dragon>#__get (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonCore#getDragon (; 55 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $dragoncore/InterestDragon#toString (; 56 ;) (type $ii) (param $0 i32) (result i32)
  (i32.const 8)
 )
 (func $../../src/return/Return<String> (; 57 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_str
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#getDragon (; 58 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
    (i32.const 1732)
   )
  )
 )
 (func $dragoncore/DragonAccessControl#onlyCEO (; 59 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 1744)
  )
 )
 (func $saleclockauction/ClockAuction#withdrawBalance (; 60 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $dragoncore/DragonCore#withdrawAuctionBalances (; 61 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (call $saleclockauction/ClockAuction#withdrawBalance
   (i32.load offset=104
    (get_local $0)
   )
  )
  (call $saleclockauction/ClockAuction#withdrawBalance
   (i32.load offset=108
    (get_local $0)
   )
  )
  (call $saleclockauction/ClockAuction#withdrawBalance
   (i32.load offset=116
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#withdrawAuctionBalances (; 62 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonCore#withdrawAuctionBalances
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $dragoncore/DragonAccessControl#onlyCFO (; 63 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 1816)
  )
 )
 (func $../../src/asset/Asset#getSymbol (; 64 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#setSymbol (; 65 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset.checkOperaotrCondition (; 66 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $1)
    )
   )
   (i32.const 1888)
  )
 )
 (func $../../src/asset/Asset._gt (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonCore#withdrawBalance (; 68 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (call $dragoncore/DragonAccessControl#onlyCFO
   (get_local $0)
  )
  (set_local $2
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
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
  (drop
   (call $../../src/asset/Asset._gt
    (get_local $2)
    (get_local $1)
   )
  )
 )
 (func $index/HyperDragonContract#withdrawBalance (; 69 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonCore#withdrawBalance
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $dragoncore/DragonExtend#updateExtend (; 70 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 )
 (func $index/HyperDragonContract#updteExtend (; 71 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonExtend#updateExtend
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $titles/Titles#get:count (; 72 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const 15)
   )
  )
 )
 (func $titles/Titles#set:count (; 73 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $titles/Titles.compositeMatchIdAndRank (; 74 ;) (type $III) (param $0 i64) (param $1 i64) (result i64)
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
 (func $titles/Titles#setAMatch (; 75 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $dragoncore/DragonMatch#setTitles (; 76 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
   )
  )
 )
 (func $index/HyperDragonContract#setTitles (; 77 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonMatch#setTitles
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonMatch#fightCooldown (; 78 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
       (i64.load offset=96
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
   )
  )
 )
 (func $index/HyperDragonContract#fightCooldown (; 79 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonMatch#fightCooldown
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAccessControl#whenNotPaused (; 80 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (i32.load8_u offset=24
     (get_local $0)
    )
   )
   (i32.const 1984)
  )
 )
 (func $~lib/array/Array<u64>#__get (; 81 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
 (func $../../src/map/Map<u64_u64>#find (; 82 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/map/Map<u64_u64>#contains (; 83 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $../../src/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $../../src/map/Map<u64_u64>#get (; 84 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
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
 (func $dragoncore/DragonOwnership#_owns (; 85 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $dragoncore/DragonBreeding#isPregnant (; 86 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 2216)
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
 (func $dragoncore/DragonMatch#_isNotCooldownIng (; 87 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/map/Map<u64_MatchInfo>#get (; 88 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/map/Map<u64_JoinUser>#_valueAt (; 89 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $match/MatchCore#isCanJoin (; 90 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (i32.load8_u offset=24
     (tee_local $2
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=64
        (get_local $0)
       )
       (i64.load offset=16
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
     (i32.load offset=68
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
 (func $~lib/array/Array<u64>#push (; 91 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/array/Array<u64>#__set (; 92 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $../../src/map/Map<u64_u64>#set (; 93 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $dragoncore/DragonOwnership#_approve (; 94 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=40
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $pausable/Pausable#whenNotPaused (; 95 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (i32.load8_u offset=8
     (get_local $0)
    )
   )
   (i32.const 2476)
  )
 )
 (func $match/MatchCore#_escrow (; 96 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (nop)
 )
 (func $../../src/asset/Asset._gte (; 97 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $match/MatchCore#getDragonGene (; 98 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (i64.load offset=56
   (call $dragoncore/DragonCore#getDragon
    (i32.load offset=80
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $match/JoinUser#constructor (; 99 ;) (type $iIiIi) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (result i32)
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
 (func $~lib/array/Array<JoinUser>#push (; 100 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<JoinUser>#__set (; 101 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $../../src/map/Map<u64_JoinUser>#set (; 102 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
     (call $~lib/array/Array<JoinUser>#push
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
 (func $match/MatchCore#joinMatch (; 103 ;) (type $iIIiIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (call $pausable/Pausable#whenNotPaused
   (get_local $0)
  )
  (call $match/MatchCore#_escrow
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
  (set_local $6
   (call $../../src/map/Map<u64_JoinUser>#_valueAt
    (i32.load offset=64
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $5)
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=24
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
   (i32.const 2584)
  )
  (call $../../src/utils/ultrain_assert
   (call $match/MatchCore#isCanJoin
    (get_local $0)
    (get_local $1)
   )
   (i32.const 2676)
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
       (i32.load offset=72
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
    (i32.const 2728)
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
  (if
   (i64.ge_u
    (i64.load offset=32
     (get_local $6)
    )
    (call $~lib/array/Array<u64>#__get
     (i32.load offset=68
      (get_local $0)
     )
     (i32.wrap/i64
      (i64.load offset=16
       (get_local $0)
      )
     )
    )
   )
   (i32.store8
    (get_local $6)
    (i32.const 1)
   )
  )
 )
 (func $dragoncore/DragonMatch#joinMatch (; 104 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
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
     (call $dragoncore/DragonOwnership#_owns
      (get_local $0)
      (get_local $3)
      (get_local $1)
     )
     (i32.const 2056)
    )
    (call $../../src/utils/ultrain_assert
     (i64.lt_u
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
      (i64.const 10)
     )
     (i32.const 2144)
    )
    (call $../../src/utils/ultrain_assert
     (i32.eqz
      (call $dragoncore/DragonBreeding#isPregnant
       (get_local $0)
       (get_local $1)
      )
     )
     (i32.const 2264)
    )
    (call $../../src/utils/ultrain_assert
     (call $dragoncore/DragonMatch#_isNotCooldownIng
      (get_local $0)
      (get_local $4)
     )
     (i32.const 2316)
    )
    (call $../../src/utils/ultrain_assert
     (call $match/MatchCore#isCanJoin
      (i32.load offset=116
       (get_local $0)
      )
      (get_local $3)
     )
     (i32.const 2388)
    )
    (call $dragoncore/DragonOwnership#_approve
     (get_local $0)
     (get_local $1)
     (call $../../src/utils/N
      (i32.const 2460)
     )
    )
    (call $match/MatchCore#joinMatch
     (i32.load offset=116
      (get_local $0)
     )
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
 (func $index/HyperDragonContract#joinMatch (; 105 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $dragoncore/DragonMatch#joinMatch
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonMinting#setSpecialDragonLimit (; 106 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $index/HyperDragonContract#setSpecialDragonLimit (; 107 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonMinting#setSpecialDragonLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonMinting#increaseSpecialDragon (; 108 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $index/HyperDragonContract#increaseSpecialDragon (; 109 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonMinting#increaseSpecialDragon
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $genetype/GenType#constructor (; 110 ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
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
 (func $genetype/GenType#get:blood (; 111 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:blood (; 112 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genetype/GenType#get:type (; 113 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:type (; 114 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u16>#__get (; 115 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $genescience/GeneScience#createSkillAndLevel (; 116 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
 (func $genetype/GenType#get:skills (; 117 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $genetype/GenType#set:skills (; 118 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $genetype/GenType#get:skillsLevel (; 119 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:skillsLevel (; 120 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genescience/GeneScience#gen0Genes (; 121 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $genetype/GenType#get:subtype (; 122 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:subtype (; 123 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genescience/GeneScience#confirmGene (; 124 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../internal/system.d/env.now (; 125 ;) (type $i) (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $../../internal/system.d/env.current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $~lib/array/Array<u64>#splice (; 126 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $../../src/map/Map<u64_u64>#remove (; 127 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $dragoncore/DragonBase#_transfer (; 128 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
     (i32.ne
      (call $../../src/map/Map<u64_u64>#contains
       (i32.load offset=36
        (get_local $0)
       )
       (get_local $1)
      )
      (i32.const -1)
     )
     (i32.const 2892)
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
 )
 (func $dragoncore/DragonBase#_createDragon (; 129 ;) (type $iIIiiIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (result i64)
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
    (call $genescience/GeneScience#confirmGene
     (i32.load offset=112
      (get_local $0)
     )
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
  (call $dragoncore/DragonBase#_transfer
   (get_local $0)
   (i64.const 0)
   (get_local $6)
   (i64.extend_u/i32
    (tee_local $0
     (i32.sub
      (call $~lib/array/Array<JoinUser>#push
       (i32.load offset=28
        (get_local $0)
       )
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
  )
  (i64.extend_u/i32
   (get_local $0)
  )
 )
 (func $saleclockauction/SaleClockAuction#averageGen0SalePrice (; 130 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/asset/Asset#clone (; 131 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $dragoncore/DragonMinting#_computeNextGen0Price (; 132 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (if
   (i64.lt_u
    (tee_local $1
     (i64.add
      (tee_local $1
       (call $Contract#get:_receiver
        (tee_local $0
         (call $saleclockauction/SaleClockAuction#averageGen0SalePrice
          (i32.load offset=104
           (get_local $0)
          )
         )
        )
       )
      )
      (i64.div_u
       (get_local $1)
       (i64.const 2)
      )
     )
    )
    (call $Contract#get:_receiver
     (get_global $dragoncore/GEN0_STARTING_PRICE)
    )
   )
   (set_local $1
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
   (get_local $1)
  )
  (get_local $0)
 )
 (func $dragoncore/DragonAssetControl#transferFrom (; 133 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (nop)
 )
 (func $saleclockauction/ClockAuctionBase#escrow (; 134 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transferFrom
   (i32.load
    (get_local $0)
   )
   (get_local $1)
   (i64.const 0)
   (get_local $2)
  )
 )
 (func $saleclockauction/ClockAuctionBase#addAuction (; 135 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (i64.load offset=16
     (get_local $2)
    )
    (i64.const 60)
   )
   (i32.const 2996)
  )
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=16
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $saleclockauction/SaleClockAuction#createAuction (; 136 ;) (type $iIiiIIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i64)
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
 (func $dragoncore/DragonMinting#createGen0Auction (; 137 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i64)
  (call $../../src/utils/ultrain_assert
   (i64.lt_u
    (i64.load offset=64
     (get_local $0)
    )
    (get_global $dragoncore/GEN0_CREATION_LIMIT)
   )
   (i32.const 2824)
  )
  (call $dragoncore/DragonOwnership#_approve
   (get_local $0)
   (tee_local $2
    (call $dragoncore/DragonBase#_createDragon
     (get_local $0)
     (i64.const 0)
     (i64.const 0)
     (i32.const 0)
     (call $genescience/GeneScience#gen0Genes
      (i32.load offset=112
       (get_local $0)
      )
      (get_local $1)
     )
     (i64.const 0)
     (tee_local $3
      (i64.load offset=8
       (get_local $0)
      )
     )
     (get_local $2)
    )
   )
   (get_local $3)
  )
  (call $saleclockauction/SaleClockAuction#createAuction
   (i32.load offset=104
    (get_local $0)
   )
   (get_local $2)
   (call $dragoncore/DragonMinting#_computeNextGen0Price
    (get_local $0)
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
 (func $index/HyperDragonContract#createGen0Auction (; 138 ;) (type $iIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
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
  (call $dragoncore/DragonMinting#createGen0Auction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $6)
   (get_local $5)
  )
 )
 (func $dragoncore/DragonMinting#createPromoDragon (; 139 ;) (type $iiIIIv) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64)
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
   (i32.const 3092)
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
   (call $dragoncore/DragonBase#_createDragon
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
 (func $index/HyperDragonContract#createPromoDragon (; 140 ;) (type $iIIIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64)
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
  (call $dragoncore/DragonMinting#createPromoDragon
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $8)
   (get_local $5)
   (get_local $6)
   (get_local $7)
  )
 )
 (func $dragoncore/DragonBreeding#_isReadyToBreed (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonBreeding#isReadyToBreed (; 142 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 3248)
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
 (func $dragoncore/DragonBreeding#_isValidMatingPair (; 143 ;) (type $iiIiIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (result i32)
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
 (func $dragoncore/DragonBreeding#_canBreedWithViaAuction (; 144 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $saleclockauction/ClockAuctionBase#isOnAuction (; 145 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i64.gt_u
   (i64.load offset=24
    (get_local $1)
   )
   (i64.const 0)
  )
 )
 (func $saleclockauction/ClockAuctionBase#computeCurrentPrice (; 146 ;) (type $iiiIIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64) (result i32)
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
 (func $saleclockauction/ClockAuctionBase#currentPrice (; 147 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $saleclockauction/ClockAuction#getcurrentPrice (; 148 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (call $saleclockauction/ClockAuctionBase#isOnAuction
    (get_local $0)
    (tee_local $2
     (call $../../src/map/Map<u64_JoinUser>#_valueAt
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $1)
     )
    )
   )
   (i32.const 3504)
  )
  (call $saleclockauction/ClockAuctionBase#currentPrice
   (get_local $0)
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset#add (; 149 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $1)
    )
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 1888)
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
 (func $~lib/array/Array<Auction>#splice (; 150 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $../../src/map/Map<u64_Auction>#remove (; 151 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $saleclockauction/ClockAuctionBase#removeAuction (; 152 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (drop
   (call $../../src/map/Map<u64_Auction>#remove
    (i32.load offset=16
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $saleclockauction/ClockAuctionBase#computeCut (; 153 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (set_local $2
   (i64.div_u
    (i64.mul
     (call $Contract#get:_receiver
      (get_local $1)
     )
     (i64.load offset=8
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
 (func $saleclockauction/ClockAuctionBase#_bid (; 154 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (call $saleclockauction/ClockAuctionBase#isOnAuction
    (get_local $0)
    (tee_local $4
     (call $../../src/map/Map<u64_MatchInfo>#get
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $1)
     )
    )
   )
   (i32.const 3612)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $2)
    (tee_local $3
     (call $saleclockauction/ClockAuctionBase#currentPrice
      (get_local $0)
      (get_local $4)
     )
    )
   )
   (i32.const 3680)
  )
  (drop
   (i64.load
    (get_local $4)
   )
  )
  (call $saleclockauction/ClockAuctionBase#removeAuction
   (get_local $0)
   (get_local $1)
  )
  (if
   (i64.gt_u
    (call $Contract#get:_receiver
     (get_local $3)
    )
    (i64.const 0)
   )
   (block
    (set_local $0
     (call $saleclockauction/ClockAuctionBase#computeCut
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $../../src/asset/Asset#add
      (call $../../src/asset/Asset#clone
       (get_local $3)
      )
      (get_local $0)
     )
    )
   )
  )
  (drop
   (call $../../src/asset/Asset#add
    (call $../../src/asset/Asset#clone
     (get_local $2)
    )
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $saleclockauction/ClockAuctionBase#transfer (; 155 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $match/MatchCore#_escrow
   (i32.load
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $saleclockauction/SireClockAuction#bid (; 156 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (set_local $3
   (i64.load
    (call $../../src/map/Map<u64_JoinUser>#_valueAt
     (i32.load offset=16
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
 (func $dragoncore/DragonBreeding#_triggerCooldown (; 157 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store offset=16
   (get_local $1)
   (i64.div_u
    (call $~lib/array/Array<u64>#__get
     (i32.load offset=88
      (get_local $0)
     )
     (i32.load16_u offset=56
      (get_local $1)
     )
    )
    (i64.load offset=96
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
 (func $dragoncore/DragonBreeding#_breedWith (; 158 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
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
   (get_local $2)
  )
  (call $dragoncore/DragonBreeding#_triggerCooldown
   (get_local $0)
   (get_local $3)
  )
  (call $dragoncore/DragonBreeding#_triggerCooldown
   (get_local $0)
   (get_local $4)
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
 )
 (func $dragoncore/DragonAuction#bidOnSiringAuction (; 159 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (set_local $4
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonOwnership#_owns
    (get_local $0)
    (get_local $4)
    (get_local $2)
   )
   (i32.const 3148)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#isReadyToBreed
    (get_local $0)
    (get_local $2)
   )
   (i32.const 3296)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_canBreedWithViaAuction
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (i32.const 3380)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset._gte
    (get_local $3)
    (call $../../src/asset/Asset#add
     (call $saleclockauction/ClockAuction#getcurrentPrice
      (i32.load offset=108
       (get_local $0)
      )
      (get_local $1)
     )
     (i32.load offset=72
      (get_local $0)
     )
    )
   )
   (i32.const 3564)
  )
  (set_local $3
   (call $../../src/asset/Asset#add
    (get_local $3)
    (i32.load offset=72
     (get_local $0)
    )
   )
  )
  (call $saleclockauction/SireClockAuction#bid
   (i32.load offset=108
    (get_local $0)
   )
   (get_local $1)
   (get_local $3)
  )
  (call $dragoncore/DragonBreeding#_breedWith
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#bidOnSiringAuction (; 160 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonAuction#bidOnSiringAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAuction#createSiringAuction (; 161 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (set_local $5
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonOwnership#_owns
    (get_local $0)
    (get_local $5)
    (get_local $1)
   )
   (i32.const 3764)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#isReadyToBreed
    (get_local $0)
    (get_local $1)
   )
   (i32.const 3852)
  )
  (call $dragoncore/DragonOwnership#_approve
   (get_local $0)
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $saleclockauction/SaleClockAuction#createAuction
   (i32.load offset=108
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
   (get_local $5)
  )
 )
 (func $index/HyperDragonContract#createSiringAuction (; 162 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (call $dragoncore/DragonAuction#createSiringAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $dragoncore/DragonAuction#createSaleAuction (; 163 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (set_local $5
   (call $../../internal/action.d/env.current_sender)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonOwnership#_owns
    (get_local $0)
    (get_local $5)
    (get_local $1)
   )
   (i32.const 3924)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $dragoncore/DragonBreeding#isPregnant
     (get_local $0)
     (get_local $1)
    )
   )
   (i32.const 4016)
  )
  (call $dragoncore/DragonOwnership#_approve
   (get_local $0)
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $saleclockauction/SaleClockAuction#createAuction
   (i32.load offset=104
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
   (get_local $5)
  )
 )
 (func $index/HyperDragonContract#createSaleAuction (; 164 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (call $dragoncore/DragonAuction#createSaleAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $dragoncore/DragonBreeding#updateGenes (; 165 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
 )
 (func $index/HyperDragonContract#updateGenes (; 166 ;) (type $iIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
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
 (func $dragoncore/DragonAccessControl#onlyAPI (; 167 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load offset=16
     (get_local $0)
    )
   )
   (i32.const 4068)
  )
 )
 (func $genetype/GenType#get:color (; 168 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=24
   (get_local $0)
  )
 )
 (func $genetype/GenType#set:color (; 169 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (get_local $0)
   (get_local $1)
  )
 )
 (func $genescience/GeneScience#mixSkills (; 170 ;) (type $iIiiIi) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
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
 (func $genescience/GeneScience#createCharacter (; 171 ;) (type $iIIiI) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (result i64)
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
 (func $genescience/GeneScience#specicalCharacter (; 172 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $genetype/GenType#get:hchar (; 173 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const 65535)
   )
  )
 )
 (func $genetype/GenType#get:schar (; 174 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 65535)
   )
  )
 )
 (func $genescience/GeneScience#getUnRepeatArr (; 175 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $genescience/GeneScience#joint (; 176 ;) (type $iIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
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
 (func $genescience/GeneScience#mixCharacter (; 177 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
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
 (func $genetype/GenType#set:schar (; 178 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genetype/GenType#set:hchar (; 179 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genescience/GeneScience#mixGenes (; 180 ;) (type $iiIiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i64) (result i32)
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
 (func $genescience/GeneScience#mixExtend (; 181 ;) (type $iIIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i64)
  (i64.const 0)
 )
 (func $dragoncore/DragonBreeding#giveBirth (; 182 ;) (type $iIII) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
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
   (i32.const 4140)
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
  (set_local $6
   (call $genescience/GeneScience#mixGenes
    (i32.load offset=112
     (get_local $0)
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
    (i32.load offset=112
     (get_local $0)
    )
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
  (set_local $7
   (call $../../src/map/Map<u64_u64>#get
    (i32.load offset=32
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $1
   (call $dragoncore/DragonBase#_createDragon
    (get_local $0)
    (get_local $1)
    (i64.load offset=48
     (get_local $3)
    )
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
    (get_local $6)
    (i64.const 0)
    (get_local $7)
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
  (get_local $1)
 )
 (func $index/HyperDragonContract#giveBirth (; 183 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (drop
   (call $dragoncore/DragonBreeding#giveBirth
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $dragoncore/DragonBreeding#_isSiringPermitted (; 184 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $dragoncore/DragonBreeding#breedWithAuto (; 185 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
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
   (i32.const 4228)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonOwnership#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $1)
   )
   (i32.const 4300)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isSiringPermitted
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (i32.const 4376)
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
   (i32.const 4472)
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
   (i32.const 4536)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isValidMatingPair
    (get_local $0)
    (get_local $3)
    (get_local $1)
    (get_local $4)
    (get_local $2)
   )
   (i32.const 4596)
  )
  (call $dragoncore/DragonBreeding#_breedWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#breedWithAuto (; 186 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonBreeding#breedWithAuto
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonBreeding#canBreedWith (; 187 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 4664)
  )
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $2)
    (i64.const 0)
   )
   (i32.const 4704)
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
 (func $index/HyperDragonContract#canBreedWith (; 188 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 4748)
    (i32.const 4760)
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
 (func $index/HyperDragonContract#isPregnant (; 189 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 4748)
    (i32.const 4760)
    (call $dragoncore/DragonBreeding#isPregnant
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $index/HyperDragonContract#isReadyToBreed (; 190 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 4748)
    (i32.const 4760)
    (call $dragoncore/DragonBreeding#isReadyToBreed
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $dragoncore/DragonBreeding#setAutoBirthFee (; 191 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $0)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setAutoBirthFee (; 192 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonBreeding#setAutoBirthFee
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $dragoncore/DragonBreeding#approvesiring (; 193 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonOwnership#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 4776)
  )
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=44
    (get_local $0)
   )
   (get_local $2)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#approveSiring (; 194 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonBreeding#approvesiring
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#balanceOf (; 195 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (nop)
 )
 (func $../../src/asset/Asset#multi (; 196 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $match/MatchCore#startMatch (; 197 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (call $pausable/Pausable#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.load offset=16
     (get_local $0)
    )
   )
   (i32.const 4876)
  )
  (i64.store offset=16
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
   (i32.load offset=64
    (get_local $0)
   )
   (i64.load offset=16
    (get_local $0)
   )
   (get_local $4)
  )
  (set_local $1
   (i64.div_u
    (i64.mul
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=68
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
      (i32.load offset=28
       (get_local $0)
      )
      (get_local $4)
     )
    )
    (i64.const 10000)
   )
  )
  (drop
   (call $../../src/asset/Asset#multi
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=24
      (get_local $0)
     )
     (get_local $4)
    )
    (i64.mul
     (get_local $1)
     (i64.const 15)
    )
   )
  )
  (drop
   (call $../../src/asset/Asset#multi
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=24
      (get_local $0)
     )
     (get_local $4)
    )
    (i64.mul
     (get_local $1)
     (i64.const 10)
    )
   )
  )
  (drop
   (call $../../src/asset/Asset#multi
    (call $~lib/array/Array<Dragon>#__get
     (i32.load offset=24
      (get_local $0)
     )
     (get_local $4)
    )
    (i64.mul
     (get_local $1)
     (i64.const 5)
    )
   )
  )
 )
 (func $index/HyperDragonContract#startMatch (; 198 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $match/MatchCore#startMatch
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $index/HyperDragonContract#isCanJoin (; 199 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 4748)
    (i32.const 4760)
    (call $match/MatchCore#isCanJoin
     (i32.load offset=116
      (i32.load offset=8
       (get_local $0)
      )
     )
     (get_local $1)
    )
   )
  )
 )
 (func $../../src/asset/Asset._lte (; 200 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $betid/BetId#get:index (; 201 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $match/GuessUser#constructor (; 202 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $match/MatchCore#guess (; 203 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (call $pausable/Pausable#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $4
     (call $../../src/asset/Asset._gte
      (get_local $3)
      (i32.load offset=56
       (get_local $0)
      )
     )
    )
    (call $../../src/asset/Asset._lte
     (get_local $3)
     (i32.load offset=60
      (get_local $0)
     )
    )
    (get_local $4)
   )
   (i32.const 4968)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (i32.load8_u
     (tee_local $4
      (call $../../src/map/Map<u64_MatchInfo>#get
       (i32.load offset=64
        (get_local $0)
       )
       (i64.load offset=16
        (get_local $0)
       )
      )
     )
    )
    (i32.const 2)
   )
   (i32.const 5016)
  )
  (set_local $0
   (call $betid/BetId#get:index
    (tee_local $5
     (call $../../lib/time/Microseconds#constructor
      (i32.const 0)
      (get_local $1)
     )
    )
   )
  )
  (set_local $5
   (call $titles/Titles#get:count
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=88
     (get_local $4)
    )
    (i64.extend_u/i32
     (get_local $5)
    )
   )
   (i32.const 5076)
  )
  (set_local $5
   (call $match/GuessUser#constructor
    (i32.const 0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $3)
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
       (get_local $0)
      )
      (i32.const 0)
     )
    )
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
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (if (result i32)
    (tee_local $0
     (i64.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (get_local $0)
    (i64.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (i32.const 5164)
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
   (call $~lib/array/Array<JoinUser>#push
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
    (get_local $5)
   )
  )
  (set_local $0
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
  (set_local $3
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
  (set_local $1
   (if (result i64)
    (i64.gt_u
     (call $Contract#get:_receiver
      (i32.load
       (get_local $0)
      )
     )
     (i64.const 0)
    )
    (i64.div_u
     (i64.mul
      (i64.add
       (call $Contract#get:_receiver
        (i32.load
         (get_local $0)
        )
       )
       (call $Contract#get:_receiver
        (i32.load
         (get_local $3)
        )
       )
      )
      (i64.const 9500)
     )
     (call $Contract#get:_receiver
      (i32.load
       (get_local $0)
      )
     )
    )
    (i64.const 19500)
   )
  )
  (set_local $1
   (if (result i64)
    (i64.gt_u
     (call $Contract#get:_receiver
      (i32.load
       (get_local $3)
      )
     )
     (i64.const 0)
    )
    (i64.div_u
     (i64.mul
      (i64.add
       (call $Contract#get:_receiver
        (i32.load
         (get_local $0)
        )
       )
       (call $Contract#get:_receiver
        (i32.load
         (get_local $3)
        )
       )
      )
      (i64.const 9500)
     )
     (call $Contract#get:_receiver
      (i32.load
       (get_local $3)
      )
     )
    )
    (i64.const 19500)
   )
  )
 )
 (func $index/HyperDragonContract#guess (; 204 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $match/MatchCore#guess
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $match/MatchCore#giveGroup (; 205 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (set_local $4
   (i64.extend_u/i32
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=52
      (tee_local $2
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=64
         (get_local $0)
        )
        (i64.load offset=16
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (drop
   (i64.add
    (i64.shl
     (i64.load offset=16
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
      (i64.load offset=48
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
     (call $~lib/array/Array<JoinUser>#push
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
   (i64.store offset=64
    (get_local $2)
    (i64.add
     (i64.load offset=64
      (get_local $2)
     )
     (i64.load offset=48
      (get_local $0)
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
      (i64.load offset=48
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
   )
  )
 )
 (func $match/MatchCore#fighting (; 206 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 5308)
  )
  (i32.store8
   (tee_local $2
    (call $../../src/map/Map<u64_JoinUser>#_valueAt
     (i32.load offset=64
      (get_local $0)
     )
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i32.const 3)
  )
  (drop
   (i64.add
    (i64.shl
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 12)
    )
    (i64.load offset=88
     (get_local $2)
    )
   )
  )
  (drop
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $3
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
      (i64.load offset=32
       (get_local $0)
      )
     )
    )
    (i64.add
     (i64.load offset=56
      (get_local $2)
     )
     (i64.load offset=32
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
   (set_local $1
    (i64.load offset=56
     (get_local $2)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i64.ge_u
      (get_local $1)
      (get_local $3)
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
    (get_local $3)
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
     (i64.load offset=32
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
  (drop
   (call $~lib/array/Array<Dragon>#get:length
    (i32.load offset=40
     (get_local $2)
    )
   )
  )
 )
 (func $match/MatchCore#sendOne (; 207 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (set_local $5
   (call $../../src/map/Map<u64_MatchInfo>#get
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=48
      (tee_local $4
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=64
         (get_local $0)
        )
        (i64.load offset=16
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
  (set_local $8
   (call $../../src/map/Map<u64_MatchInfo>#get
    (call $../../src/map/Map<u64_MatchInfo>#get
     (i32.load offset=48
      (get_local $4)
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
      (get_local $5)
     )
    )
    (i32.const 0)
   )
   (block
    (set_local $7
     (select
      (i64.const 10000)
      (tee_local $7
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
             (get_local $8)
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
        (i64.const 9500)
       )
      )
      (i64.lt_u
       (get_local $7)
       (i64.const 10000)
      )
     )
    )
    (set_local $6
     (get_local $2)
    )
   )
   (if
    (i32.gt_s
     (call $~lib/array/Array<Dragon>#get:length
      (i32.load offset=4
       (get_local $8)
      )
     )
     (i32.const 0)
    )
    (block
     (set_local $7
      (i64.const 10000)
     )
     (set_local $6
      (get_local $3)
     )
    )
    (i64.store offset=80
     (get_local $4)
     (i64.add
      (i64.load offset=80
       (get_local $4)
      )
      (i64.const 1)
     )
    )
   )
  )
  (if
   (i64.gt_u
    (get_local $6)
    (i64.const 0)
   )
   (block
    (set_local $3
     (if (result i64)
      (i64.gt_u
       (i64.extend_u/i32
        (call $~lib/array/Array<Dragon>#get:length
         (tee_local $5
          (i32.load offset=4
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
         )
        )
       )
       (i64.add
        (i64.load offset=72
         (get_local $4)
        )
        (i64.load offset=40
         (get_local $0)
        )
       )
      )
      (i64.add
       (i64.load offset=72
        (get_local $4)
       )
       (i64.load offset=40
        (get_local $0)
       )
      )
      (i64.extend_u/i32
       (call $~lib/array/Array<Dragon>#get:length
        (get_local $5)
       )
      )
     )
    )
    (block $break|0
     (set_local $2
      (i64.load offset=72
       (get_local $4)
      )
     )
     (loop $repeat|0
      (br_if $break|0
       (i64.ge_u
        (get_local $2)
        (get_local $3)
       )
      )
      (drop
       (i64.div_u
        (i64.mul
         (get_local $7)
         (call $Contract#get:_receiver
          (i32.load offset=8
           (call $~lib/array/Array<Dragon>#__get
            (get_local $5)
            (i32.wrap/i64
             (get_local $2)
            )
           )
          )
         )
        )
        (i64.const 10000)
       )
      )
      (set_local $2
       (i64.add
        (get_local $2)
        (i64.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    (if
     (i64.lt_u
      (get_local $3)
      (i64.extend_u/i32
       (call $~lib/array/Array<Dragon>#get:length
        (get_local $5)
       )
      )
     )
     (i64.store offset=72
      (get_local $4)
      (i64.add
       (i64.load offset=72
        (get_local $4)
       )
       (i64.load offset=40
        (get_local $0)
       )
      )
     )
     (block
      (i64.store offset=72
       (get_local $4)
       (i64.const 0)
      )
      (drop
       (call $../../src/map/Map<u64_Auction>#remove
        (call $../../src/map/Map<u64_MatchInfo>#get
         (i32.load offset=48
          (get_local $4)
         )
         (get_local $1)
        )
        (get_local $6)
       )
      )
      (i64.store offset=80
       (get_local $4)
       (i64.add
        (i64.load offset=80
         (get_local $4)
        )
        (i64.const 1)
       )
      )
     )
    )
   )
  )
 )
 (func $match/MatchCore#sendReward (; 208 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_local $1
   (call $../../src/map/Map<u64_MatchInfo>#get
    (i32.load offset=64
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
   )
  )
  (set_local $6
   (i64.shl
    (i64.load offset=16
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
     (i32.store8 offset=24
      (get_local $1)
      (i32.const 0)
     )
    )
    (i32.store offset=40
     (get_local $1)
     (call $~lib/array/Array<Dragon>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
  )
 )
 (func $match/MatchCore#nextStep (; 209 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $pausable/Pausable#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (i32.load8_u offset=24
    (tee_local $2
     (call $../../src/map/Map<u64_MatchInfo>#get
      (i32.load offset=64
       (get_local $0)
      )
      (i64.load offset=16
       (get_local $0)
      )
     )
    )
   )
   (i32.const 5224)
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_u
    (i32.load8_u
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 5272)
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
 (func $index/HyperDragonContract#nextStep (; 210 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#nextStep
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#getEntryFee (; 211 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.sub
    (i32.wrap/i64
     (i64.load offset=16
      (call $../../src/map/Map<u64_JoinUser>#_valueAt
       (i32.load offset=64
        (get_local $0)
       )
       (i64.extend_u/i32
        (i32.wrap/i64
         (i64.load offset=16
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
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/return/Return<u64> (; 212 ;) (type $Iv) (param $0 i64)
  (call $../../src/return/env.set_result_int
   (get_local $0)
  )
 )
 (func $index/HyperDragonContract#getEntryFee (; 213 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<u64>
   (call $Contract#get:_receiver
    (call $match/MatchCore#getEntryFee
     (i32.load offset=116
      (i32.load offset=8
       (get_local $0)
      )
     )
    )
   )
  )
 )
 (func $pausable/Ownable#onlyOwner (; 214 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 5376)
  )
 )
 (func $match/MatchCore#setFightLimit (; 215 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (i64.store offset=32
   (get_local $0)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setFightLimit (; 216 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#setFightLimit
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setAwardLimit (; 217 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (i64.store offset=40
   (get_local $0)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setAwardLimit (; 218 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#setAwardLimit
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setGroupLimit (; 219 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (i64.store offset=48
   (get_local $0)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#setGroupLimit (; 220 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#setGroupLimit
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setJoinLimit (; 221 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=68
      (get_local $0)
     )
    )
   )
   (i32.const 5488)
  )
  (i32.store offset=68
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
      (i32.load offset=68
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
 (func $index/HyperDragonContract#setJoinLimit (; 222 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $match/MatchCore#setJoinLimit
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setRegfees (; 223 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=24
      (get_local $0)
     )
    )
   )
   (i32.const 5564)
  )
  (i32.store offset=24
   (get_local $0)
   (call $~lib/array/Array<Dragon>#constructor
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
     (call $~lib/array/Array<JoinUser>#push
      (i32.load offset=24
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
 (func $index/HyperDragonContract#setRegfees (; 224 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $match/MatchCore#setRegfees
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setRewardMultiple (; 225 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eq
    (call $~lib/array/Array<Dragon>#get:length
     (get_local $1)
    )
    (call $~lib/array/Array<Dragon>#get:length
     (i32.load offset=28
      (get_local $0)
     )
    )
   )
   (i32.const 5648)
  )
  (i32.store offset=28
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
      (i32.load offset=28
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
 (func $index/HyperDragonContract#setRewardMultiple (; 226 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $match/MatchCore#setRewardMultiple
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setGenLimit (; 227 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=72
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#setGenLimit (; 228 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $match/MatchCore#setGenLimit
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $match/MatchCore#dissolve (; 229 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $pausable/Ownable#onlyOwner
   (get_local $0)
  )
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $2
      (i32.eq
       (i32.load8_u
        (tee_local $3
         (call $../../src/map/Map<u64_MatchInfo>#get
          (i32.load offset=64
           (get_local $0)
          )
          (i64.load offset=16
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
        (i32.load offset=52
         (get_local $3)
        )
       )
      )
     )
     (call $match/MatchCore#_escrow
      (get_local $0)
      (tee_local $1
       (call $~lib/array/Array<u64>#__get
        (i32.load offset=52
         (get_local $3)
        )
        (get_local $2)
       )
      )
      (i64.load
       (call $../../src/map/Map<u64_MatchInfo>#get
        (i32.load offset=44
         (get_local $3)
        )
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
     (br $repeat|0)
    )
   )
  )
  (i32.store8 offset=24
   (get_local $3)
   (i32.const 0)
  )
 )
 (func $index/HyperDragonContract#dissolve (; 230 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#dissolve
   (i32.load offset=116
    (i32.load offset=8
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $../../src/datastream/DataStream#read<u64> (; 231 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#deserialize (; 232 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#read<u8> (; 233 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVarint32 (; 234 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVector<u64> (; 235 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readComplexVector<Asset> (; 236 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/array/Array<Dragon>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $3
   (call $~lib/array/Array<Dragon>#constructor
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
 (func $index/apply (; 237 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
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
       (i32.const 5748)
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
       (i32.const 5772)
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
       (i32.const 5824)
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
       (i32.const 5860)
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
       (i32.const 5888)
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
       (i32.const 5912)
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
       (i32.const 5944)
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
       (i32.const 5968)
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
       (i32.const 6016)
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
       (i32.const 6064)
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
       (i32.const 6104)
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
       (i32.const 6144)
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
       (i32.const 6184)
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
       (i32.const 6228)
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
       (i32.const 6268)
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
       (i32.const 6296)
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
       (i32.const 6320)
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
       (i32.const 6352)
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
       (i32.const 6380)
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
       (i32.const 6404)
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
       (i32.const 6436)
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
       (i32.const 6472)
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
       (i32.const 6504)
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
       (i32.const 6528)
      )
     )
     (call $match/MatchCore#_escrow
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
       (i32.const 6548)
      )
     )
     (call $match/MatchCore#_escrow
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
       (i32.const 6568)
      )
     )
     (call $dragoncore/DragonAssetControl#transferFrom
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
       (i32.const 6596)
      )
     )
     (call $saleclockauction/ClockAuction#withdrawBalance
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../../src/utils/N
       (i32.const 6624)
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
       (i32.const 6644)
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
       (i32.const 6676)
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
       (i32.const 6700)
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
       (i32.const 6724)
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
       (i32.const 6740)
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
       (i32.const 6760)
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
       (i32.const 6788)
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
       (i32.const 6820)
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
       (i32.const 6852)
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
       (i32.const 6884)
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
       (i32.const 6912)
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
       (i32.const 6936)
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
       (i32.const 6976)
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
       (i32.const 7004)
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
 (func $start (; 238 ;) (type $v)
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
  (set_global $match/SYM
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1288)
   )
  )
  (set_global $match/MatchInfoTable
   (call $../../src/utils/N
    (i32.const 1616)
   )
  )
  (set_global $match/MatchInfoTableScope
   (call $../../src/utils/N
    (i32.const 1640)
   )
  )
  (set_global $dragoncore/SYM
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1664)
   )
  )
  (set_global $dragoncore/GEN0_STARTING_PRICE
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 80)
    (get_global $dragoncore/SYM)
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
