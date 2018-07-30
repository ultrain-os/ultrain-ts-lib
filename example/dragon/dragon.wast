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
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $I (func (result i64)))
 (type $iiIIi (func (param i32 i32 i64 i64) (result i32)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $IIiiv (func (param i64 i64 i32 i32)))
 (type $iIIiii (func (param i32 i64 i64 i32 i32) (result i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iiIi (func (param i32 i32 i64) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
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
 (type $Iv (func (param i64)))
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
 (type $iIIiIiII (func (param i32 i64 i64 i32 i64 i32 i64) (result i64)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
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
 (import "env" "emit_event" (func $../../internal/system.d/env.emit_event (param i32 i32 i32 i32)))
 (import "env" "is_account" (func $../../internal/action.d/env.is_account (param i64) (result i32)))
 (import "env" "random_uint64" (func $../../internal/action.d/env.random_uint64 (param i64) (result i64)))
 (import "env" "current_time" (func $../../internal/system.d/env.current_time (result i64)))
 (import "env" "set_result_int" (func $../../src/return/env.set_result_int (param i64)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $../../src/balance/SYS (mut i64) (i64.const 0))
 (global $../../src/balance/SYS_NAME (mut i64) (i64.const 0))
 (global $../../lib/events/EventObject (mut i32) (i32.const 0))
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
 (global $~argc (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 ")
 (data (i32.const 16) "\01\00\00\00!")
 (data (i32.const 24) "\01\00\00\00\"")
 (data (i32.const 32) "\01\00\00\00#")
 (data (i32.const 40) "\01\00\00\00$")
 (data (i32.const 48) "\01\00\00\00%")
 (data (i32.const 56) "\01\00\00\00&")
 (data (i32.const 64) "\01\00\00\00\'")
 (data (i32.const 72) "\01\00\00\00(")
 (data (i32.const 80) "\01\00\00\00)")
 (data (i32.const 88) "\01\00\00\00*")
 (data (i32.const 96) "\01\00\00\00+")
 (data (i32.const 104) "\01\00\00\00,")
 (data (i32.const 112) "\01\00\00\00-")
 (data (i32.const 120) "\01\00\00\00.")
 (data (i32.const 128) "\01\00\00\00/")
 (data (i32.const 136) "\01\00\00\000")
 (data (i32.const 144) "\01\00\00\001")
 (data (i32.const 152) "\01\00\00\002")
 (data (i32.const 160) "\01\00\00\003")
 (data (i32.const 168) "\01\00\00\004")
 (data (i32.const 176) "\01\00\00\005")
 (data (i32.const 184) "\01\00\00\006")
 (data (i32.const 192) "\01\00\00\007")
 (data (i32.const 200) "\01\00\00\008")
 (data (i32.const 208) "\01\00\00\009")
 (data (i32.const 216) "\01\00\00\00:")
 (data (i32.const 224) "\01\00\00\00;")
 (data (i32.const 232) "\01\00\00\00<")
 (data (i32.const 240) "\01\00\00\00=")
 (data (i32.const 248) "\01\00\00\00>")
 (data (i32.const 256) "\01\00\00\00?")
 (data (i32.const 264) "\01\00\00\00@")
 (data (i32.const 272) "\01\00\00\00A")
 (data (i32.const 280) "\01\00\00\00B")
 (data (i32.const 288) "\01\00\00\00C")
 (data (i32.const 296) "\01\00\00\00D")
 (data (i32.const 304) "\01\00\00\00E")
 (data (i32.const 312) "\01\00\00\00F")
 (data (i32.const 320) "\01\00\00\00G")
 (data (i32.const 328) "\01\00\00\00H")
 (data (i32.const 336) "\01\00\00\00I")
 (data (i32.const 344) "\01\00\00\00J")
 (data (i32.const 352) "\01\00\00\00K")
 (data (i32.const 360) "\01\00\00\00L")
 (data (i32.const 368) "\01\00\00\00M")
 (data (i32.const 376) "\01\00\00\00N")
 (data (i32.const 384) "\01\00\00\00O")
 (data (i32.const 392) "\01\00\00\00P")
 (data (i32.const 400) "\01\00\00\00Q")
 (data (i32.const 408) "\01\00\00\00R")
 (data (i32.const 416) "\01\00\00\00T")
 (data (i32.const 424) "\01\00\00\00U")
 (data (i32.const 432) "\01\00\00\00V")
 (data (i32.const 440) "\01\00\00\00W")
 (data (i32.const 448) "\01\00\00\00X")
 (data (i32.const 456) "\01\00\00\00Y")
 (data (i32.const 464) "\01\00\00\00Z")
 (data (i32.const 472) "\01\00\00\00[")
 (data (i32.const 480) "\01\00\00\00\\")
 (data (i32.const 488) "\01\00\00\00]")
 (data (i32.const 496) "\01\00\00\00^")
 (data (i32.const 504) "\01\00\00\00_")
 (data (i32.const 512) "\01\00\00\00`")
 (data (i32.const 520) "\01\00\00\00a")
 (data (i32.const 528) "\01\00\00\00b")
 (data (i32.const 536) "\01\00\00\00c")
 (data (i32.const 544) "\01\00\00\00d")
 (data (i32.const 552) "\01\00\00\00e")
 (data (i32.const 560) "\01\00\00\00f")
 (data (i32.const 568) "\01\00\00\00g")
 (data (i32.const 576) "\01\00\00\00h")
 (data (i32.const 584) "\01\00\00\00i")
 (data (i32.const 592) "\01\00\00\00j")
 (data (i32.const 600) "\01\00\00\00k")
 (data (i32.const 608) "\01\00\00\00l")
 (data (i32.const 616) "\01\00\00\00m")
 (data (i32.const 624) "\01\00\00\00n")
 (data (i32.const 632) "\01\00\00\00o")
 (data (i32.const 640) "\01\00\00\00p")
 (data (i32.const 648) "\01\00\00\00q")
 (data (i32.const 656) "\01\00\00\00r")
 (data (i32.const 664) "\01\00\00\00s")
 (data (i32.const 672) "\01\00\00\00t")
 (data (i32.const 680) "\01\00\00\00u")
 (data (i32.const 688) "\01\00\00\00v")
 (data (i32.const 696) "\01\00\00\00w")
 (data (i32.const 704) "\01\00\00\00x")
 (data (i32.const 712) "\01\00\00\00y")
 (data (i32.const 720) "\01\00\00\00z")
 (data (i32.const 728) "\01\00\00\00{")
 (data (i32.const 736) "\01\00\00\00|")
 (data (i32.const 744) "\01\00\00\00}")
 (data (i32.const 752) "\01\00\00\00~")
 (data (i32.const 761) "\03\00\00_\00\00\00|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02")
 (data (i32.const 1280) "\03\00\00\00U\00G\00S")
 (data (i32.const 1292) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.")
 (data (i32.const 1384) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1416) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1476) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1508) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 ")
 (data (i32.const 1608) "\0b\00\00\00m\00i\00m\00a\00.\00d\00r\00a\00g\00o\00n")
 (data (i32.const 1636) "\08\00\00\00m\00i\00m\00a\00.\00c\00e\00o")
 (data (i32.const 1656) "\08\00\00\00m\00i\00m\00a\00.\00c\00f\00o")
 (data (i32.const 1676) "\08\00\00\00m\00i\00m\00a\00.\00a\00p\00i")
 (data (i32.const 1696) "\n\00\00\00m\00m\00.\00s\00a\00l\00e\00a\00u\00c")
 (data (i32.const 1720) "\n\00\00\00m\00m\00.\00s\00i\00r\00e\00a\00u\00c")
 (data (i32.const 1744) "\08\00\00\00m\00m\00.\00m\00a\00t\00c\00h")
 (data (i32.const 1764) "\n\00\00\00h\00d\00.\00m\00a\00t\00c\00h\00e\00s")
 (data (i32.const 1788) "\t\00\00\00m\00a\00t\00.\00s\00c\00o\00p\00e")
 (data (i32.const 1812) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1876) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1888) "\"\00\00\00o\00n\00l\00y\00 \00C\00E\00O\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 1960) "2\00\00\00t\00h\00e\00 \00c\00u\00t\00 \00i\00s\00 \00l\00a\00r\00g\00e\00r\00 \00t\00h\00a\00n\00 \001\000\000\000\000\00,\00 \00a\00n\00d\00 \00i\00t\00 \00i\00s\00 \00f\00o\00r\00b\00i\00d\00d\00e\00n\00.")
 (data (i32.const 2064) "\18\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 2116) "\08\00\00\00a\00c\00c\00o\00u\00n\00t\00s")
 (data (i32.const 2136) "\0b\00\00\00u\00t\00r\00i\00o\00.\00t\00o\00k\00e\00n")
 (data (i32.const 2164) "\18\00\00\00a\00u\00c\00t\00i\00o\00n\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 2216) "\06\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 2232) "\02\00\00\00=\00=")
 (data (i32.const 2240) "0\00\00\00 \00:\00 \00c\00a\00n\00 \00n\00o\00t\00 \00c\00o\00m\00p\00a\00r\00e\00 \00A\00s\00s\00e\00t\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00_\00s\00y\00m\00b\00o\00l\00.")
 (data (i32.const 2340) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 2392) "\08\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 2412) "\08\00\00\00 \00a\00c\00t\00o\00r\00:\00 ")
 (data (i32.const 2432) "\0d\00\00\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00:\00 ")
 (data (i32.const 2464) "\a8\t\00\00\05\00\00\00(\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00d")
 (data (i32.const 2536) "\f0\t\00\00\05\00\00\00(\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 2608) "\16\00\00\00m\00a\00t\00c\00h\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 2656) "\"\00\00\00o\00n\00l\00y\00 \00C\00F\00O\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 2728) "\1c\00\00\00d\00r\00a\00g\00o\00n\00c\00o\00r\00e\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00b\00a\00l\00a\00n\00c\00e\00.")
 (data (i32.const 2788) "\0c\00\00\00U\00p\00d\00a\00t\00e\00E\00x\00t\00e\00n\00d")
 (data (i32.const 2816) "\08\00\00\00d\00r\00a\00g\00o\00n\00I\00d")
 (data (i32.const 2836) "0\00\00\00p\00a\00r\00a\00m\00e\00t\00e\00r\00 \00\'\00k\00e\00y\00\'\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00 \00o\00r\00 \00e\00m\00p\00t\00y\00 \00s\00t\00r\00i\00n\00g\00.")
 (data (i32.const 2936) "\06\00\00\00e\00x\00t\00e\00n\00d")
 (data (i32.const 2952) "\1d\00\00\00e\00v\00e\00n\00t\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00p\00e\00c\00i\00f\00i\00e\00d\00.")
 (data (i32.const 3016) "!\00\00\00e\00v\00e\00n\00t\00s\00 \00s\00t\00r\00i\00n\00g\00 \00i\00s\00 \00l\00o\00n\00g\00e\00r\00 \00t\00h\00a\00n\00 \001\002\007\00.")
 (data (i32.const 3088) "&\00\00\00e\00v\00e\00n\00t\00 \00k\00e\00y\00\'\00s\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00l\00o\00n\00g\00e\00r\00 \00t\00h\00a\00n\00 \001\002\007\00.")
 (data (i32.const 3168) "\0b\00\00\00U\00p\00d\00a\00t\00e\00T\00i\00t\00l\00e")
 (data (i32.const 3196) "\06\00\00\00t\00i\00t\00l\00e\00s")
 (data (i32.const 3212) "\0d\00\00\00F\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n")
 (data (i32.const 3244) "\0d\00\00\00c\00o\00o\00l\00d\00o\00w\00n\00I\00n\00d\00e\00x")
 (data (i32.const 3276) "\0c\00\00\00c\00o\00o\00l\00d\00o\00w\00n\00T\00i\00m\00e")
 (data (i32.const 3304) "\15\00\00\00f\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n\00E\00n\00d\00b\00l\00o\00c\00k")
 (data (i32.const 3352) "\"\00\00\00t\00h\00i\00s\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00c\00u\00r\00r\00e\00n\00t\00l\00y\00 \00p\00a\00u\00s\00e\00d\00.")
 (data (i32.const 3424) ")\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00h\00e\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 3512) "\"\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00j\00o\00i\00n\00s\00 \00t\00o\00o\00 \00m\00a\00n\00y\00 \00m\00a\00t\00c\00h\00e\00s\00.")
 (data (i32.const 3584) "\15\00\00\00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 3632) "\17\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00p\00r\00e\00g\00n\00a\00n\00t\00.")
 (data (i32.const 3684) "!\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00s\00t\00i\00l\00l\00 \00c\00o\00o\00l\00i\00n\00g\00 \00d\00o\00w\00n\00.")
 (data (i32.const 3756) "\"\00\00\00t\00h\00e\00 \00s\00e\00n\00d\00e\00r\00 \00c\00a\00n\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 3828) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3896) "@\0f\00\00\0d\00\00\004\00\00\00\00\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.\00\00\00.")
 (data (i32.const 3968) "\1b\00\00\00 \00:\00 \00\'\00t\00o\00\'\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 4028) "&\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00d\00r\00a\00g\00o\00n\00 \00t\00o\00 \00m\00i\00m\00a\00.\00d\00r\00a\00g\00o\00n")
 (data (i32.const 4108) "\0e\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00 \001")
 (data (i32.const 4140) "\0e\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00 \002")
 (data (i32.const 4172) ".\00\00\00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00s\00 \00t\00o\00 \00m\00e\00s\00s\00a\00g\00e\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 4268) "\0e\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00 \003")
 (data (i32.const 4300) "\"\00\00\00 \00:\00 \00\'\00f\00r\00o\00m\00\'\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 4372) "1\00\00\00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00a\00n\00y\00 \00t\00o\00k\00e\00n\00 \00c\00a\00n\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00f\00r\00o\00m\00.")
 (data (i32.const 4476) "\08\00\00\00T\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 4496) "\04\00\00\00f\00r\00o\00m")
 (data (i32.const 4508) "\02\00\00\00t\00o")
 (data (i32.const 4516) "\07\00\00\00t\00o\00k\00e\00n\00I\00d")
 (data (i32.const 4536) "\0e\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00 \004")
 (data (i32.const 4568) "\02\00\00\00>\00=")
 (data (i32.const 4576) "+\00\00\00s\00u\00p\00p\00l\00i\00e\00d\00 \00f\00e\00e\00 \00i\00s\00 \00s\00m\00a\00l\00l\00 \00t\00h\00a\00n\00 \00t\00h\00e\00 \00l\00o\00w\00e\00r\00 \00l\00i\00m\00i\00t\00.")
 (data (i32.const 4668) "\18\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00i\00s\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 4720) ".\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00g\00e\00n\00e\00 \00i\00s\00 \00n\00o\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \00t\00h\00e\00 \00g\00e\00n\00e\00 \00l\00i\00m\00i\00t\00.")
 (data (i32.const 4816) "\07\00\00\00m\00a\00t\00c\00h\00I\00d")
 (data (i32.const 4836) "\08\00\00\00j\00o\00i\00n\00U\00s\00e\00r")
 (data (i32.const 4856) "\t\00\00\00d\00r\00a\00g\00o\00n\00_\00i\00d")
 (data (i32.const 4880) "\t\00\00\00J\00o\00i\00n\00M\00a\00t\00c\00h")
 (data (i32.const 4904) "\0c\00\00\00C\00o\00m\00p\00l\00e\00t\00e\00J\00o\00i\00n")
 (data (i32.const 4932) "\1f\00\00\00t\00o\00o\00 \00m\00a\00n\00y\00 \00g\00e\00n\000\00 \00a\00u\00c\00t\00i\00o\00n\00s\00 \00c\00r\00e\00a\00t\00e\00d\00.")
 (data (i32.const 5000) "\90\13\00\00\0f\00\00\00<\00\00\00\00\00\00\00\a8\05\00\00\d0\04\00\00<\04\00\00\ba\03\00\00H\03\00\00\e3\02\00\00\8a\02\00\00<\02\00\00\f7\01\00\00\bb\01\00\00\86\01\00\00W\01\00\00.\01\00\00\n\01\00\00\ea")
 (data (i32.const 5136) "\18\14\00\00\03\00\00\00\18\00\00\00\00\00\00\00F\00\00\00\00\00\00\00\1d\00\00\00\00\00\00\00\01")
 (data (i32.const 5176) "@\14\00\00\1e\00\00\00\f0\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\"\00\00\00\00\00\00\00\"\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\"\00\00\00\00\00\00\00\17")
 (data (i32.const 5440) "H\15\00\00\1e\00\00\00\f0\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00\"")
 (data (i32.const 5704) "\05\00\00\00B\00i\00r\00t\00h")
 (data (i32.const 5720) "\05\00\00\00o\00w\00n\00e\00r")
 (data (i32.const 5736) "\08\00\00\00m\00a\00t\00r\00o\00n\00I\00d")
 (data (i32.const 5756) "\06\00\00\00s\00i\00r\00e\00I\00d")
 (data (i32.const 5772) "\03\00\00\00g\00e\00n")
 (data (i32.const 5784) "\10\00\00\00a\00d\00d\00A\00u\00c\00t\00i\00o\00n\00 \00s\00t\00a\00r\00t")
 (data (i32.const 5820) "-\00\00\00t\00h\00e\00 \00a\00u\00c\00t\00i\00o\00n\00\'\00s\00 \00d\00u\00r\00a\00t\00i\00o\00n\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \001\00 \00m\00i\00n\00u\00t\00e\00.")
 (data (i32.const 5916) "$\00\00\00s\00t\00a\00r\00t\00 \00e\00m\00i\00t\00t\00i\00n\00g\00 \00e\00v\00e\00n\00t\00 \00f\00o\00r\00 \00a\00d\00d\00 \00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 5992) "\0e\00\00\00A\00u\00c\00t\00i\00o\00n\00C\00r\00e\00a\00t\00e\00d")
 (data (i32.const 6024) "\0d\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00P\00r\00i\00c\00e")
 (data (i32.const 6056) "\0b\00\00\00e\00n\00d\00i\00n\00g\00P\00r\00i\00c\00e")
 (data (i32.const 6084) "\08\00\00\00d\00u\00r\00a\00t\00i\00o\00n")
 (data (i32.const 6104) "\19\00\00\00t\00o\00o\00 \00m\00a\00n\00y\00 \00d\00r\00a\00g\00o\00n\00s\00 \00c\00r\00e\00a\00t\00e\00d\00.")
 (data (i32.const 6160) "0\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 6260) "\15\00\00\00d\00r\00a\00g\00o\00n\00 \00i\00d\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 6308) "(\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 6392) ";\00\00\00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00r\00e\00e\00d\00 \00w\00i\00t\00h\00 \00t\00h\00e\00 \00s\00i\00r\00e\00 \00d\00r\00a\00g\00o\00n\00s\00 \00v\00i\00a\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 6516) "\1c\00\00\00t\00h\00e\00 \00t\00o\00k\00e\00n\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 6576) "2\00\00\00a\00d\00d\00:\00 \00c\00a\00n\00 \00n\00o\00t\00 \00c\00o\00m\00p\00a\00r\00e\00 \00A\00s\00s\00e\00t\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00_\00s\00y\00m\00b\00o\00l\00.")
 (data (i32.const 6680) "\15\00\00\00b\00i\00d\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00t\00o\00o\00 \00l\00o\00w\00.")
 (data (i32.const 6728) "2\00\00\00s\00u\00b\00:\00 \00c\00a\00n\00 \00n\00o\00t\00 \00c\00o\00m\00p\00a\00r\00e\00 \00A\00s\00s\00e\00t\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00_\00s\00y\00m\00b\00o\00l\00.")
 (data (i32.const 6832) "*\00\00\00s\00u\00b\00:\00 \00t\00h\00e\00 \00a\00m\00o\00u\00n\00t\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00t\00a\00r\00g\00e\00t\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 6920) " \00\00\00t\00h\00i\00s\00 \00t\00o\00k\00e\00n\00 \00i\00d\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00a\00u\00c\00t\00i\00o\00n\00.")
 (data (i32.const 6988) "\'\00\00\00b\00i\00d\00 \00a\00m\00o\00u\00n\00t\00 \00i\00s\00 \00l\00o\00w\00e\00r\00 \00t\00h\00a\00n\00 \00c\00u\00r\00r\00e\00n\00t\00 \00p\00r\00i\00c\00e\00.")
 (data (i32.const 7072) "\0f\00\00\00s\00e\00l\00l\00e\00r\00 \00p\00r\00o\00c\00e\00e\00d\00s")
 (data (i32.const 7108) "\n\00\00\00b\00i\00d\00 \00e\00x\00c\00e\00s\00s")
 (data (i32.const 7132) "\11\00\00\00A\00u\00c\00t\00i\00o\00n\00S\00u\00c\00c\00e\00s\00s\00f\00u\00l")
 (data (i32.const 7172) "\n\00\00\00t\00o\00t\00a\00l\00P\00r\00i\00c\00e")
 (data (i32.const 7196) "\06\00\00\00w\00i\00n\00n\00e\00r")
 (data (i32.const 7212) "\06\00\00\00s\00e\00l\00l\00e\00r")
 (data (i32.const 7228) "\1d\00\00\00\'\00t\00o\00\'\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00 \00a\00c\00c\00o\00u\00n\00t\00 \00n\00a\00m\00e\00.")
 (data (i32.const 7292) " \00\00\00c\00a\00n\00 \00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00\'\00t\00o\00\'\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 7360) "\'\00\00\00c\00a\00n\00\'\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00a\00l\00e\00 \00a\00u\00c\00t\00i\00o\00n\00 \00a\00d\00d\00r\00e\00s\00s\00.")
 (data (i32.const 7444) "\'\00\00\00c\00a\00n\00\'\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00i\00r\00e\00 \00a\00u\00c\00t\00i\00o\00n\00 \00a\00d\00d\00r\00e\00s\00s\00.")
 (data (i32.const 7528) "\19\00\00\00y\00o\00u\00 \00d\00o\00n\00\'\00t\00 \00o\00w\00n\00 \00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 7584) "\n\00\00\00G\00i\00v\00e\00D\00r\00a\00g\00o\00n")
 (data (i32.const 7608) "\08\00\00\00P\00r\00e\00g\00n\00a\00n\00t")
 (data (i32.const 7628) "\10\00\00\00c\00o\00o\00l\00d\00o\00w\00n\00E\00n\00d\00B\00l\00o\00c\00k")
 (data (i32.const 7664) ")\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 7752) "!\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 7824) ",\00\00\00t\00h\00e\00 \00d\00r\00a\00g\00o\00n\00 \00i\00d\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 7916) "\18\00\00\00t\00h\00i\00s\00 \00d\00r\00a\00g\00o\00n\00 \00i\00s\00 \00p\00r\00e\00g\00n\00e\00n\00t\00.")
 (data (i32.const 7968) "\0b\00\00\00U\00p\00d\00a\00t\00e\00G\00e\00n\00e\00s")
 (data (i32.const 7996) "\05\00\00\00g\00e\00n\00e\00s")
 (data (i32.const 8012) "\"\00\00\00o\00n\00l\00y\00 \00A\00P\00I\00 \00c\00a\00n\00 \00e\00x\00e\00c\00u\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (data (i32.const 8084) ")\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00v\00a\00l\00i\00d\00,\00 \00i\00t\00s\00 \00b\00i\00r\00t\00h\00 \00t\00i\00m\00e\00 \00i\00s\00 \000\00.")
 (data (i32.const 8172) "\0f\00\00\00g\00i\00v\00e\00 \00b\00i\00r\00t\00h\00 \00f\00e\00e\00.")
 (data (i32.const 8208) "!\00\00\00p\00a\00y\00e\00r\00 \00i\00s\00 \00l\00o\00w\00e\00r\00 \00t\00h\00a\00n\00 \00a\00u\00t\00o\00B\00i\00r\00t\00h\00F\00e\00e\00.")
 (data (i32.const 8280) "#\00\00\00t\00h\00x\00 \00s\00e\00n\00d\00e\00r\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00e\00 \00m\00a\00t\00r\00o\00n\00.")
 (data (i32.const 8356) ".\00\00\00m\00a\00t\00r\00o\00n\00I\00d\00 \00a\00n\00d\00 \00s\00i\00r\00e\00I\00d\00 \00i\00s\00 \00n\00o\00t\00 \00p\00r\00e\00m\00i\00t\00t\00e\00d\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 8452) "\1d\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 8516) "\1b\00\00\00s\00i\00r\00e\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00a\00d\00y\00 \00t\00o\00 \00b\00r\00e\00e\00d\00.")
 (data (i32.const 8576) "\1f\00\00\00m\00a\00t\00r\00o\00n\00 \00a\00n\00d\00 \00s\00i\00r\00e\00 \00c\00a\00n\00 \00n\00o\00t\00 \00m\00a\00t\00i\00n\00g\00.")
 (data (i32.const 8644) "\12\00\00\00m\00a\00t\00r\00o\00n\00 \00i\00d\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 8684) "\13\00\00\00s\00i\00r\00e\00 \00i\00d\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 8728) "\04\00\00\00t\00r\00u\00e")
 (data (i32.const 8740) "\05\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 8756) "\0b\00\00\00S\00e\00t\00B\00i\00r\00t\00h\00F\00e\00e")
 (data (i32.const 8784) "\03\00\00\00f\00e\00e")
 (data (i32.const 8796) "/\00\00\00t\00h\00e\00 \00s\00i\00r\00e\00 \00d\00r\00a\00g\00o\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00b\00e\00l\00o\00n\00g\00s\00 \00t\00o\00 \00t\00r\00x\00 \00s\00e\00n\00d\00e\00r\00.")
 (data (i32.const 8896) "\1a\00\00\00y\00o\00u\00 \00d\00o\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00h\00i\00s\00 \00a\00s\00s\00e\00t\00.")
 (data (i32.const 8952) "\08\00\00\00A\00p\00p\00r\00o\00v\00a\00l")
 (data (i32.const 8972) ",\00\00\00s\00t\00a\00r\00t\00M\00a\00t\00c\00h\00 \00f\00a\00i\00l\00e\00d\00,\00 \00_\00i\00d\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00m\00a\00t\00c\00h\00_\00i\00d")
 (data (i32.const 9064) "\n\00\00\00M\00a\00t\00c\00h\00S\00t\00a\00r\00t")
 (data (i32.const 9088) "\t\00\00\00m\00a\00t\00c\00h\00T\00y\00p\00e")
 (data (i32.const 9112) "\n\00\00\00m\00a\00t\00c\00h\00L\00e\00v\00e\00l")
 (data (i32.const 9136) "\06\00\00\00m\00a\00x\00N\00u\00m")
 (data (i32.const 9152) "\06\00\00\00r\00e\00g\00f\00e\00e")
 (data (i32.const 9168) "\0c\00\00\00a\00w\00a\00r\00d\00f\00e\00e\00_\001\00s\00t")
 (data (i32.const 9196) "\0c\00\00\00a\00w\00a\00r\00d\00f\00e\00e\00_\002\00s\00t")
 (data (i32.const 9224) "\0c\00\00\00a\00w\00a\00r\00d\00f\00e\00e\00_\003\00s\00t")
 (data (i32.const 9252) "\02\00\00\00<\00=")
 (data (i32.const 9260) "\15\00\00\00b\00e\00t\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00i\00n\00v\00a\00l\00i\00d\00.")
 (data (i32.const 9308) "\1b\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00t\00 \00t\00h\00i\00s\00 \00m\00a\00t\00c\00h\00 \00n\00o\00w\00.")
 (data (i32.const 9368) ")\00\00\00r\00o\00u\00n\00d\00 \00d\00i\00s\00m\00a\00t\00c\00h\00e\00d\00 \00f\00o\00r\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00 \00a\00n\00d\00 \00b\00e\00t\00i\00d\00.")
 (data (i32.const 9456) "\1b\00\00\00y\00o\00u\00 \00d\00i\00d\00 \00n\00o\00t\00 \00j\00o\00i\00n\00 \00t\00h\00e\00 \00m\00a\00t\00c\00h\00.")
 (data (i32.const 9516) "\0b\00\00\00G\00u\00e\00s\00s\00D\00r\00a\00g\00o\00n")
 (data (i32.const 9544) "\05\00\00\00r\00o\00u\00n\00d")
 (data (i32.const 9560) "\05\00\00\00b\00e\00t\00I\00d")
 (data (i32.const 9576) "\07\00\00\00b\00e\00t\00u\00s\00e\00r")
 (data (i32.const 9596) "\06\00\00\00b\00e\00t\00f\00e\00e")
 (data (i32.const 9612) "\05\00\00\00r\00a\00t\00e\001")
 (data (i32.const 9628) "\05\00\00\00r\00a\00g\00e\002")
 (data (i32.const 9644) "\16\00\00\00m\00a\00t\00c\00h\00 \00s\00t\00a\00t\00u\00s\00 \00i\00s\00 \00f\00a\00l\00s\00e\00.")
 (data (i32.const 9692) "\0f\00\00\00m\00a\00t\00c\00h\00 \00s\00t\00e\00p\00 \00i\00s\00 \000")
 (data (i32.const 9728) "\0b\00\00\00C\00r\00e\00a\00t\00e\00G\00r\00o\00u\00p")
 (data (i32.const 9756) "\t\00\00\00d\00r\00a\00g\00o\00n\00I\00d\001")
 (data (i32.const 9780) "\t\00\00\00d\00r\00a\00g\00o\00n\00I\00d\002")
 (data (i32.const 9804) "\07\00\00\00l\00e\00f\00t\00_\00c\00n")
 (data (i32.const 9824) "\n\00\00\00M\00a\00t\00c\00h\00P\00a\00u\00s\00e")
 (data (i32.const 9848) "\0d\00\00\00C\00o\00m\00p\00l\00e\00t\00e\00G\00r\00o\00u\00p")
 (data (i32.const 9880) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 9924) "\0b\00\00\00F\00i\00n\00a\00l\00R\00e\00s\00u\00l\00t")
 (data (i32.const 9952) "\n\00\00\00d\00r\00a\00g\00o\00n\00I\00d\00_\001")
 (data (i32.const 9976) "\n\00\00\00d\00r\00a\00g\00o\00n\00I\00d\00_\002")
 (data (i32.const 10000) "\0d\00\00\00w\00i\00n\00n\00e\00r\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 10032) "\11\00\00\002\00n\00d\00 \00w\00i\00n\00n\00e\00r\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 10072) "\11\00\00\002\00r\00d\00 \00w\00i\00n\00n\00e\00r\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 10112) "\n\00\00\00D\00r\00a\00g\00o\00n\00L\00o\00s\00e")
 (data (i32.const 10136) "\0d\00\00\00D\00r\00a\00g\00o\00n\00V\00i\00c\00t\00o\00r\00y")
 (data (i32.const 10168) "\07\00\00\00B\00e\00t\00O\00v\00e\00r")
 (data (i32.const 10188) "\05\00\00\00b\00e\00t\00i\00d")
 (data (i32.const 10204) "\0f\00\00\00S\00e\00m\00i\00f\00i\00n\00a\00l\00R\00e\00s\00u\00l\00t")
 (data (i32.const 10240) "\n\00\00\00d\00r\00a\00g\00o\00n\00i\00d\00_\003")
 (data (i32.const 10264) "\n\00\00\00d\00r\00a\00g\00o\00n\00I\00d\00_\004")
 (data (i32.const 10288) "\10\00\00\00b\00e\00t\00t\00e\00r\00 \00t\00r\00a\00n\00s\00f\00e\00r\00.")
 (data (i32.const 10324) "\08\00\00\00G\00u\00e\00s\00s\00W\00i\00n")
 (data (i32.const 10344) "\04\00\00\00u\00s\00e\00r")
 (data (i32.const 10356) "\05\00\00\00p\00r\00i\00c\00e")
 (data (i32.const 10372) "\05\00\00\00m\00o\00n\00e\00y")
 (data (i32.const 10388) "\0f\00\00\00G\00u\00e\00s\00s\00L\00o\00s\00s\00R\00e\00t\00u\00r\00n")
 (data (i32.const 10424) "\t\00\00\00N\00e\00x\00t\00R\00o\00u\00n\00d")
 (data (i32.const 10448) "\t\00\00\00R\00o\00u\00n\00d\00O\00v\00e\00r")
 (data (i32.const 10472) "\0d\00\00\00C\00o\00m\00p\00l\00e\00t\00e\00M\00a\00t\00c\00h")
 (data (i32.const 10504) "$\00\00\00j\00o\00i\00n\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 10580) "\'\00\00\00r\00e\00g\00f\00e\00e\00s\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 10664) "/\00\00\00r\00e\00w\00a\00r\00d\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00l\00i\00m\00i\00t\00 \00a\00r\00r\00a\00y\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00n\00o\00t\00 \00s\00a\00m\00e\00.")
 (data (i32.const 10764) "\t\00\00\00g\00e\00t\00D\00r\00a\00g\00o\00n")
 (data (i32.const 10788) "\13\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00A\00u\00c\00B\00a\00l\00a\00n\00c\00e\00s")
 (data (i32.const 10832) "\0f\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00B\00a\00l\00a\00n\00c\00e")
 (data (i32.const 10868) "\0b\00\00\00u\00p\00d\00t\00e\00E\00x\00t\00e\00n\00d")
 (data (i32.const 10896) "\t\00\00\00s\00e\00t\00T\00i\00t\00l\00e\00s")
 (data (i32.const 10920) "\0d\00\00\00f\00i\00g\00h\00t\00C\00o\00o\00l\00d\00o\00w\00n")
 (data (i32.const 10952) "\t\00\00\00j\00o\00i\00n\00M\00a\00t\00c\00h")
 (data (i32.const 10976) "\15\00\00\00s\00e\00t\00S\00p\00e\00c\00i\00a\00l\00D\00r\00a\00g\00o\00n\00L\00i\00m\00i\00t")
 (data (i32.const 11024) "\15\00\00\00i\00n\00c\00r\00e\00a\00s\00e\00S\00p\00e\00c\00i\00a\00l\00D\00r\00a\00g\00o\00n")
 (data (i32.const 11072) "\11\00\00\00c\00r\00e\00a\00t\00e\00G\00e\00n\000\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 11112) "\11\00\00\00c\00r\00e\00a\00t\00e\00P\00r\00o\00m\00o\00D\00r\00a\00g\00o\00n")
 (data (i32.const 11152) "\12\00\00\00b\00i\00d\00O\00n\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 11192) "\15\00\00\00s\00e\00t\00S\00a\00l\00e\00A\00u\00c\00t\00i\00o\00n\00A\00d\00d\00r\00e\00s\00s")
 (data (i32.const 11240) "\13\00\00\00s\00e\00t\00S\00i\00r\00i\00n\00g\00A\00u\00c\00A\00d\00d\00r\00e\00s\00s")
 (data (i32.const 11284) "\13\00\00\00c\00r\00e\00a\00t\00e\00S\00i\00r\00i\00n\00g\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 11328) "\11\00\00\00c\00r\00e\00a\00t\00e\00S\00a\00l\00e\00A\00u\00c\00t\00i\00o\00n")
 (data (i32.const 11368) "\0b\00\00\00u\00p\00d\00a\00t\00e\00G\00e\00n\00e\00s")
 (data (i32.const 11396) "\t\00\00\00g\00i\00v\00e\00B\00i\00r\00t\00h")
 (data (i32.const 11420) "\0d\00\00\00b\00r\00e\00e\00d\00W\00i\00t\00h\00A\00u\00t\00o")
 (data (i32.const 11452) "\0c\00\00\00c\00a\00n\00B\00r\00e\00e\00d\00W\00i\00t\00h")
 (data (i32.const 11480) "\n\00\00\00i\00s\00P\00r\00e\00g\00n\00a\00n\00t")
 (data (i32.const 11504) "\0e\00\00\00i\00s\00R\00e\00a\00d\00y\00T\00o\00B\00r\00e\00e\00d")
 (data (i32.const 11536) "\0f\00\00\00s\00e\00t\00A\00u\00t\00o\00B\00i\00r\00t\00h\00F\00e\00e")
 (data (i32.const 11572) "\0d\00\00\00a\00p\00p\00r\00o\00v\00e\00S\00i\00r\00i\00n\00g")
 (data (i32.const 11604) "\t\00\00\00b\00a\00l\00a\00n\00c\00e\00O\00f")
 (data (i32.const 11628) "\07\00\00\00a\00p\00p\00r\00o\00v\00e")
 (data (i32.const 11648) "\0c\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m")
 (data (i32.const 11676) "\0b\00\00\00t\00o\00t\00a\00l\00S\00u\00p\00p\00l\00y")
 (data (i32.const 11704) "\07\00\00\00o\00w\00n\00e\00r\00O\00f")
 (data (i32.const 11724) "\0d\00\00\00t\00o\00k\00e\00n\00s\00O\00f\00O\00w\00n\00e\00r")
 (data (i32.const 11756) "\n\00\00\00s\00t\00a\00r\00t\00M\00a\00t\00c\00h")
 (data (i32.const 11780) "\t\00\00\00i\00s\00C\00a\00n\00J\00o\00i\00n")
 (data (i32.const 11804) "\05\00\00\00g\00u\00e\00s\00s")
 (data (i32.const 11820) "\08\00\00\00n\00e\00x\00t\00S\00t\00e\00p")
 (data (i32.const 11840) "\0b\00\00\00g\00e\00t\00E\00n\00t\00r\00y\00F\00e\00e")
 (data (i32.const 11868) "\0d\00\00\00s\00e\00t\00F\00i\00g\00h\00t\00L\00i\00m\00i\00t")
 (data (i32.const 11900) "\0d\00\00\00s\00e\00t\00A\00w\00a\00r\00d\00L\00i\00m\00i\00t")
 (data (i32.const 11932) "\0d\00\00\00s\00e\00t\00G\00r\00o\00u\00p\00L\00i\00m\00i\00t")
 (data (i32.const 11964) "\0c\00\00\00s\00e\00t\00J\00o\00i\00n\00L\00i\00m\00i\00t")
 (data (i32.const 11992) "\n\00\00\00s\00e\00t\00R\00e\00g\00f\00e\00e\00s")
 (data (i32.const 12016) "\11\00\00\00s\00e\00t\00R\00e\00w\00a\00r\00d\00M\00u\00l\00t\00i\00p\00l\00e")
 (data (i32.const 12056) "\0b\00\00\00s\00e\00t\00G\00e\00n\00L\00i\00m\00i\00t")
 (data (i32.const 12084) "\08\00\00\00d\00i\00s\00s\00o\00l\00v\00e")
 (export "memory" (memory $0))
 (export "HyperDragonContract#constructor" (func $index/HyperDragonContract#constructor))
 (export "HyperDragonContract#get:_receiver" (func $../../lib/contract/Contract#get:receiver))
 (export "HyperDragonContract#set:_receiver" (func $../../src/asset/Asset#setAmount))
 (export "HyperDragonContract#get:receiver" (func $../../lib/contract/Contract#get:receiver))
 (export "HyperDragonContract#getDataStream" (func $../../lib/contract/Contract#getDataStream))
 (export "HyperDragonContract#getDragon" (func $index/HyperDragonContract#getDragon))
 (export "HyperDragonContract#withdrawAucBalances" (func $index/HyperDragonContract#withdrawAucBalances))
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
 (export "HyperDragonContract#setSiringAucAddress" (func $index/HyperDragonContract#setSiringAucAddress))
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
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 18 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 20 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 21 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/memory/memory.allocate
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memset (; 22 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.fill (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/memory/memset
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/array/Array<u8>#constructor (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
       (call $~lib/memory/memory.allocate
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
  (call $~lib/memory/memory.fill
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/string/String#charCodeAt (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/memory/memcpy (; 26 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memmove (; 27 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call $~lib/memory/memcpy
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
 (func $~lib/memory/memory.copy (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/memory/memmove
   (get_local $0)
   (get_local $1)
   (get_local $2)
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
      (call $~lib/memory/memory.fill
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
      (call $~lib/memory/memory.copy
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
      (call $~lib/memory/memory.fill
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
   (i32.const 1292)
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
        (i32.const 1508)
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
 (func $~lib/array/Array<String>#constructor (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
       (call $~lib/memory/memory.allocate
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
  (call $~lib/memory/memory.fill
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u64>#constructor (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
       (call $~lib/memory/memory.allocate
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
  (call $~lib/memory/memory.fill
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $../../lib/events/_EventObject#constructor (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store
     (tee_local $1
      (call $~lib/memory/memory.allocate
       (i32.const 8)
      )
     )
     (block (result i32)
      (i32.store
       (tee_local $0
        (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
 (func $../../src/utils/char_to_symbol (; 41 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/utils/N (; 42 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#constructor (; 43 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $3
       (call $~lib/memory/memory.allocate
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
 (func $../../lib/time/Microseconds#constructor (; 44 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/memory/memory.allocate
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
 (func $../../lib/time/milliseconds (; 45 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/Microseconds#constructor
   (i32.const 0)
   (i64.mul
    (get_local $0)
    (i64.const 1000)
   )
  )
 )
 (func $../../lib/time/seconds (; 46 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/milliseconds
   (i64.mul
    (get_local $0)
    (i64.const 1000)
   )
  )
 )
 (func $../../lib/time/minutes (; 47 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/seconds
   (i64.mul
    (get_local $0)
    (i64.const 60)
   )
  )
 )
 (func $../../lib/time/hours (; 48 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/minutes
   (i64.mul
    (get_local $0)
    (i64.const 60)
   )
  )
 )
 (func $../../lib/time/days (; 49 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../lib/time/hours
   (i64.mul
    (get_local $0)
    (i64.const 24)
   )
  )
 )
 (func $../../lib/time/Microseconds#toSeconds (; 50 ;) (type $iI) (param $0 i32) (result i64)
  (i64.div_u
   (i64.load
    (get_local $0)
   )
   (i64.const 1000000)
  )
 )
 (func $~lib/array/Array<u64>#__unchecked_set (; 51 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $dragoncore/DragonCore#constructor (; 52 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i64.store
     (tee_local $1
      (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
      (call $~lib/memory/memory.allocate
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
     (get_global $consts/SaleAuctionAddress)
    )
    (i64.store offset=96
     (get_local $1)
     (i64.const 0)
    )
    (i64.store offset=104
     (get_local $1)
     (get_global $consts/SireAuctionAddress)
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
 (func $index/HyperDragonContract#constructor (; 53 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/memory/memory.allocate
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
 (func $../../lib/contract/Contract#get:receiver (; 54 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/memory/memory.fill
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
       (call $~lib/memory/memory.allocate
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
 (func $../../src/datastream/DataStream#constructor (; 56 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $3
       (call $~lib/memory/memory.allocate
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
 (func $../../lib/contract/DataStreamFromCurrentAction (; 57 ;) (type $i) (result i32)
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
 (func $../../lib/contract/Contract#getDataStream (; 58 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../lib/contract/DataStreamFromCurrentAction)
 )
 (func $~lib/array/Array<Dragon>#get:length (; 59 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=4
   (get_local $0)
  )
 )
 (func $dragoncore/DragonBase#containsDragon (; 60 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/array/Array<Dragon>#__get (; 61 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonCore#getDragon (; 62 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
    (call $~lib/memory/memory.allocate
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
 (func $dragoncore/InterestDragon#toString (; 63 ;) (type $ii) (param $0 i32) (result i32)
  (i32.const 1872)
 )
 (func $../../src/return/Return<String> (; 64 ;) (type $iv) (param $0 i32)
  (call $../../src/return/env.set_result_str
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#getDragon (; 65 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
    (i32.const 1876)
   )
  )
 )
 (func $dragoncore/DragonAccessControl#onlyCEO (; 66 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 1888)
  )
 )
 (func $~lib/array/Array<Asset>#__set (; 67 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $saleclockauction/SaleClockAuction#constructor (; 68 ;) (type $iiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i32.store offset=8
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/memory/memory.allocate
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
     (i32.store
      (tee_local $0
       (call $~lib/memory/memory.allocate
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
     (i32.store offset=24
      (get_local $4)
      (get_local $0)
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
   (i32.const 1960)
  )
  (i64.store
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (i32.const 5)
     )
    )
    (call $~lib/array/Array<Asset>#__set
     (i32.load offset=40
      (get_local $0)
     )
     (get_local $4)
     (call $../../src/asset/Asset#constructor
      (i32.const 0)
      (i64.const 0)
      (get_global $../../src/balance/SYS)
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
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<Account>#constructor (; 69 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/memory/memory.allocate
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
 (func $../../src/balance/Account#constructor (; 70 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/memory/memory.allocate
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
 (func $../../src/balance/Account#constructor|trampoline (; 71 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (call $../../src/asset/Asset#constructor
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
 (func $../../src/asset/Asset#symbolName (; 72 ;) (type $iI) (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load offset=8
    (get_local $0)
   )
   (i64.const 8)
  )
 )
 (func $../../src/balance/Account#primaryKey (; 73 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/asset/Asset#symbolName
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream#read<u64> (; 74 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#deserialize (; 75 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/balance/Account#deserialize (; 76 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#deserialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#loadObjectByPrimaryIterator (; 77 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $../../src/dbmanager/DataItem<Account>#constructor (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/memory/memory.allocate
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
 (func $~lib/array/Array<DataItem<Account>>#push (; 79 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/dbmanager/DBManager<Account>#get (; 80 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $../../src/balance/queryBalance (; 81 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Account>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2116)
    )
    (call $../../src/utils/N
     (i32.const 2136)
    )
    (get_local $0)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (set_local $1
   (call $../../src/balance/Account#constructor|trampoline
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
 (func $~lib/internal/string/allocate (; 82 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/memory/memory.allocate
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
 (func $~lib/string/String#concat (; 83 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 1876)
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
    (i32.const 1872)
   )
  )
  (call $~lib/memory/memory.copy
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
  (call $~lib/memory/memory.copy
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
 (func $~lib/string/String.__concat (; 84 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 1876)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset.checkOperaotrCondition (; 85 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (i32.const 2240)
   )
  )
 )
 (func $../../src/asset/Asset._eq (; 86 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
   (i32.const 2232)
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
 (func $../../src/action/TransferParams#constructor (; 87 ;) (type $iIIiii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $5
       (call $~lib/memory/memory.allocate
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
 (func $../../src/name_ex/char_to_symbol_ex (; 88 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/name_ex/NEX (; 89 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $3
   (call $../../src/asset/Asset#constructor
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
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $5)
     )
    )
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
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $../../src/action/ActionImpl#constructor (; 90 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $1
       (call $~lib/memory/memory.allocate
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
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (call $~lib/array/Array<String>#constructor
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
 (func $../../src/datastream/DataStream#isMesureMode (; 91 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eqz
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream#write<u64> (; 92 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $../../src/asset/Asset#serialize (; 93 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#write<u8> (; 94 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#writeVarint32 (; 95 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream#writeString (; 96 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (call $~lib/memory/memory.copy
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
 (func $../../src/action/TransferParams#serialize (; 97 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream.measure<TransferParams> (; 98 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<u8>#__set (; 99 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $../../src/datastream/DataStream#toArray<u8> (; 100 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/permission-level/PermissionLevel#serialize (; 101 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 2412)
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
     (i32.const 2432)
    )
    (i64.load offset=8
     (get_local $0)
    )
    (i32.const 16)
   )
  )
 )
 (func $../../src/datastream/DataStream#writeComplexVector<PermissionLevel> (; 102 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    (call $../../src/permission-level/PermissionLevel#serialize
     (call $~lib/array/Array<Dragon>#__get
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
    (br $repeat|0)
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (; 103 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/datastream/DataStream#writeVector<u8> (; 104 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/action/ActionImpl#serialize (; 105 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/datastream/DataStream.measure<ActionImpl> (; 106 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/action/dispatchInline (; 107 ;) (type $iIiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (drop
   (call $~lib/array/Array<DataItem<Account>>#push
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
 (func $../../src/balance/send (; 108 ;) (type $IIiiv) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32)
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
    (i32.const 2216)
   )
  )
  (i64.store
   (tee_local $4
    (call $../../src/action/TransferParams#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 0)
     (i32.const 0)
     (i32.const 1872)
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
    (i32.const 2136)
   )
   (call $../../src/name_ex/NEX
    (i32.const 2392)
   )
   (get_local $4)
  )
 )
 (func $saleclockauction/ClockAuction#withdrawBalance (; 109 ;) (type $iv) (param $0 i32)
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
   (i32.const 2064)
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
   (i32.const 2164)
  )
 )
 (func $saleclockauction/SireClockAuction#constructor (; 110 ;) (type $iiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i32.store offset=8
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $0
       (call $~lib/memory/memory.allocate
        (i32.const 29)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (get_local $0)
      (i32.const 0)
     )
     (i64.store offset=16
      (get_local $0)
      (i64.const 0)
     )
     (i32.store
      (tee_local $4
       (call $~lib/memory/memory.allocate
        (i32.const 8)
       )
      )
      (call $~lib/array/Array<u64>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=4
      (get_local $4)
      (call $~lib/array/Array<String>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=24
      (get_local $0)
      (get_local $4)
     )
     (i32.store8 offset=28
      (get_local $0)
      (i32.const 1)
     )
     (get_local $0)
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
   (i32.const 1960)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Asset>#__unchecked_set (; 111 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $match/MatchCore#constructor (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store offset=64
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/memory/memory.allocate
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
      (i32.const 2464)
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
       (call $~lib/memory/memory.allocate
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
      (i32.const 2536)
     )
     (i32.store
      (tee_local $0
       (call $~lib/memory/memory.allocate
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
 (func $match/MatchCore#withdrawBalance (; 113 ;) (type $iv) (param $0 i32)
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
   (i32.const 2064)
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
   (i32.const 2608)
  )
 )
 (func $dragoncore/DragonCore#withdrawAuctionBalances (; 114 ;) (type $iv) (param $0 i32)
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
 (func $index/HyperDragonContract#withdrawAucBalances (; 115 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonCore#withdrawAuctionBalances
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $dragoncore/DragonAccessControl#onlyCFO (; 116 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 2656)
  )
 )
 (func $../../src/asset/Asset#setAmount (; 117 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset#getSymbol (; 118 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#setSymbol (; 119 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/asset/Asset._gt (; 120 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
   (i32.const 248)
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
 (func $dragoncore/DragonCore#withdrawBalance (; 121 ;) (type $iv) (param $0 i32)
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
  (call $../../src/asset/Asset#setAmount
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
    (call $../../lib/contract/Contract#get:receiver
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
    (call $../../src/asset/Asset#setAmount
     (get_local $1)
     (i64.sub
      (call $../../lib/contract/Contract#get:receiver
       (get_local $2)
      )
      (call $../../lib/contract/Contract#get:receiver
       (get_local $1)
      )
     )
    )
    (call $../../src/balance/send
     (get_global $consts/HyperDragonContract)
     (get_global $consts/CFO)
     (get_local $1)
     (i32.const 2728)
    )
   )
  )
 )
 (func $index/HyperDragonContract#withdrawBalance (; 122 ;) (type $iv) (param $0 i32)
  (call $dragoncore/DragonCore#withdrawBalance
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $~lib/memory/memcmp (; 123 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
     (tee_local $3
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
     )
     (i32.eq
      (i32.load8_u
       (get_local $0)
      )
      (i32.load8_u
       (get_local $1)
      )
     )
     (get_local $3)
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
 (func $~lib/memory/memory.compare (; 124 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $~lib/memory/memcmp
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String.__eq (; 125 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (call $~lib/memory/memory.compare
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
 (func $~lib/string/String.__ne (; 126 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $../../src/map/Map<String_u64>#find (; 127 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u64>#push (; 128 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/array/Array<u64>#__set (; 129 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $../../src/map/Map<String_u64>#set (; 130 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $../../lib/events/_EventObject#set<u64> (; 131 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
   (i32.const 2836)
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
 (func $../../src/map/Map<String_String>#keys (; 132 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u64>#__get (; 133 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
 (func $../../lib/events/_EventObject#serialize (; 134 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 3016)
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
     (i32.const 3088)
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
 (func $../../src/datastream/DataStream.measure<_EventObject> (; 135 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DSHelper.getDataStreamWithLength (; 136 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#size (; 137 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=8
   (get_local $0)
  )
 )
 (func $../../lib/events/emit (; 138 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.const 2952)
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
  (call $../../internal/system.d/env.emit_event
   (call $../../src/utils/string2cstr
    (get_local $0)
   )
   (i32.load
    (get_local $0)
   )
   (call $../../src/map/Map<String_String>#keys
    (get_local $1)
   )
   (call $../../src/datastream/DataStream#size
    (get_local $1)
   )
  )
 )
 (func $dragoncore/DragonExtend#updateExtend (; 139 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
   (i32.const 2788)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (get_global $../../lib/events/EventObject)
     (i32.const 2816)
     (get_local $1)
    )
    (i32.const 2936)
    (get_local $2)
   )
  )
 )
 (func $index/HyperDragonContract#updteExtend (; 140 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonExtend#updateExtend
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $titles/Titles#get:count (; 141 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const 15)
   )
  )
 )
 (func $titles/Titles#set:count (; 142 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $titles/Titles.compositeMatchIdAndRank (; 143 ;) (type $III) (param $0 i64) (param $1 i64) (result i64)
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
 (func $titles/Titles#setAMatch (; 144 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $dragoncore/DragonMatch#setTitles (; 145 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
     (call $../../lib/contract/Contract#get:receiver
      (get_local $0)
     )
    )
    (call $../../lib/events/emit
     (i32.const 3168)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 2816)
       (get_local $1)
      )
      (i32.const 3196)
      (i64.load offset=80
       (get_local $4)
      )
     )
    )
   )
  )
 )
 (func $index/HyperDragonContract#setTitles (; 146 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonMatch#setTitles
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonMatch#fightCooldown (; 147 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
     (i32.const 3212)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (get_global $../../lib/events/EventObject)
         (i32.const 2816)
         (get_local $1)
        )
        (i32.const 3244)
        (get_local $2)
       )
       (i32.const 3276)
       (get_local $3)
      )
      (i32.const 3304)
      (i64.load offset=24
       (get_local $4)
      )
     )
    )
   )
  )
 )
 (func $index/HyperDragonContract#fightCooldown (; 148 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonMatch#fightCooldown
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAccessControl#whenNotPaused (; 149 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (i32.load8_u offset=24
     (get_local $0)
    )
   )
   (i32.const 3352)
  )
 )
 (func $../../src/map/Map<u64_u64>#find (; 150 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/map/Map<u64_u64>#contains (; 151 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $../../src/map/Map<u64_u64>#find
    (get_local $0)
    (get_local $1)
   )
   (i32.const -1)
  )
 )
 (func $../../src/map/Map<u64_u64>#get (; 152 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
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
 (func $dragoncore/DragonAssetControl#_owns (; 153 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $dragoncore/DragonBreeding#isPregnant (; 154 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 3584)
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
 (func $dragoncore/DragonMatch#_isNotCooldownIng (; 155 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/map/Map<u64_MatchInfo>#get (; 156 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/map/Map<u64_JoinUser>#_valueAt (; 157 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $match/MatchCore#isCanJoin (; 158 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/map/Map<u64_u64>#set (; 159 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $dragoncore/DragonAssetControl#_approve (; 160 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=40
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $../../src/utils/RN (; 161 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (i32.const 3896)
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.gt_u
      (get_local $1)
      (i32.const 12)
     )
    )
    (call $~lib/array/Array<u8>#__set
     (get_local $3)
     (i32.sub
      (i32.const 12)
      (get_local $1)
     )
     (i32.and
      (call $~lib/string/String#charCodeAt
       (i32.const 3828)
       (i32.wrap/i64
        (i64.and
         (get_local $0)
         (select
          (i64.const 31)
          (i64.const 15)
          (get_local $1)
         )
        )
       )
      )
      (i32.const 255)
     )
    )
    (set_local $0
     (i64.shr_u
      (get_local $0)
      (select
       (i64.const 5)
       (i64.const 4)
       (get_local $1)
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
  (set_local $1
   (i32.const 1872)
  )
  (set_local $4
   (i32.const 1)
  )
  (block $break|1
   (set_local $2
    (i32.const 12)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.lt_s
      (get_local $2)
      (i32.const 0)
     )
    )
    (if
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.eq
         (i32.and
          (call $~lib/array/Array<u8>#__get
           (get_local $3)
           (get_local $2)
          )
          (i32.const 255)
         )
         (i32.const 46)
        )
       )
       (get_local $4)
       (get_local $5)
      )
     )
     (block
      (set_local $4
       (i32.const 0)
      )
      (set_local $1
       (call $~lib/string/String.__concat
        (call $~lib/array/Array<Dragon>#__get
         (i32.const 760)
         (i32.and
          (i32.sub
           (call $~lib/array/Array<u8>#__get
            (get_local $3)
            (get_local $2)
           )
           (i32.const 32)
          )
          (i32.const 255)
         )
        )
        (get_local $1)
       )
      )
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (get_local $1)
 )
 (func $dragoncore/DragonAssetControl#_approvedFor (; 162 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $~lib/array/Array<u64>#splice (; 163 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  (call $~lib/memory/memory.copy
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
 (func $../../src/map/Map<u64_u64>#remove (; 164 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $dragoncore/DragonBase#_transfer (; 165 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
     (i32.const 4372)
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
   (i32.const 4476)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4496)
      (get_local $1)
     )
     (i32.const 4508)
     (get_local $2)
    )
    (i32.const 4516)
    (get_local $3)
   )
  )
 )
 (func $dragoncore/DragonAssetControl#transferFrom (; 166 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (call $../../src/utils/ultrain_assert
   (call $../../internal/action.d/env.is_account
    (get_local $2)
   )
   (call $~lib/string/String.__concat
    (call $../../src/utils/RN
     (get_local $2)
    )
    (i32.const 3968)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $2)
    (get_global $consts/HyperDragonContract)
   )
   (i32.const 4028)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 4108)
   )
  )
  (set_local $4
   (call $dragoncore/DragonAssetControl#_approvedFor
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 4140)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $4)
   (i32.const 4172)
  )
  (set_local $4
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 4268)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $4)
   (call $~lib/string/String.__concat
    (call $../../src/utils/RN
     (get_local $1)
    )
    (i32.const 4300)
   )
  )
  (call $dragoncore/DragonBase#_transfer
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 4536)
   )
  )
 )
 (func $match/MatchCore#_escrow (; 167 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transferFrom
   (i32.load offset=64
    (get_local $0)
   )
   (get_local $1)
   (get_global $consts/MatchAddress)
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset._gte (; 168 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
   (i32.const 4568)
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
 (func $match/MatchCore#getDragonGene (; 169 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (i64.load offset=56
   (call $dragoncore/DragonCore#getDragon
    (i32.load offset=64
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $match/JoinUser#constructor (; 170 ;) (type $iIiIi) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $4
       (call $~lib/memory/memory.allocate
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
 (func $../../src/map/Map<u64_JoinUser>#set (; 171 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
   (call $~lib/array/Array<Asset>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $match/MatchCore#joinMatch (; 172 ;) (type $iIIiIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32)
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
   (i32.const 4576)
  )
  (call $../../src/utils/ultrain_assert
   (call $match/MatchCore#isCanJoin
    (get_local $0)
    (get_local $1)
   )
   (i32.const 4668)
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
    (i32.const 4720)
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
   (i32.const 4880)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4816)
      (i64.load
       (get_local $0)
      )
     )
     (i32.const 4836)
     (get_local $1)
    )
    (i32.const 4856)
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
     (i32.const 4904)
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4816)
      (i64.load
       (get_local $0)
      )
     )
    )
   )
  )
 )
 (func $dragoncore/DragonCore#joinMatch (; 173 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
     (i32.const 3424)
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
     (i32.const 3512)
    )
    (call $../../src/utils/ultrain_assert
     (i32.eqz
      (call $dragoncore/DragonBreeding#isPregnant
       (get_local $0)
       (get_local $1)
      )
     )
     (i32.const 3632)
    )
    (call $../../src/utils/ultrain_assert
     (call $dragoncore/DragonMatch#_isNotCooldownIng
      (get_local $0)
      (get_local $4)
     )
     (i32.const 3684)
    )
    (call $../../src/utils/ultrain_assert
     (call $match/MatchCore#isCanJoin
      (get_local $5)
      (get_local $3)
     )
     (i32.const 3756)
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
 (func $index/HyperDragonContract#joinMatch (; 174 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $dragoncore/DragonCore#joinMatch
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonMinting#setSpecialDragonLimit (; 175 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $index/HyperDragonContract#setSpecialDragonLimit (; 176 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonMinting#setSpecialDragonLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonMinting#increaseSpecialDragon (; 177 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $index/HyperDragonContract#increaseSpecialDragon (; 178 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonMinting#increaseSpecialDragon
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $genetype/GenType#constructor (; 179 ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $5
       (call $~lib/memory/memory.allocate
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
 (func $genescience/GeneScience#constructor (; 180 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store offset=32
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/memory/memory.allocate
        (i32.const 36)
       )
      )
      (i32.const 5000)
     )
     (i32.store offset=4
      (get_local $2)
      (i32.const 5136)
     )
     (i32.store offset=8
      (get_local $2)
      (i32.const 5176)
     )
     (i32.store offset=12
      (get_local $2)
      (i32.const 5440)
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
 (func $genetype/GenType#get:blood (; 181 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:blood (; 182 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genetype/GenType#get:type (; 183 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:type (; 184 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u16>#__get (; 185 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $genescience/GeneScience#createSkillAndLevel (; 186 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
   (tee_local $7
    (call $~lib/memory/memory.allocate
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $7)
   (i32.const 0)
  )
  (set_local $6
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
     (get_local $6)
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
         (get_local $6)
        )
       )
      )
      (if
       (i64.lt_u
        (get_local $3)
        (call $~lib/array/Array<u64>#__get
         (get_local $6)
         (get_local $4)
        )
       )
       (block
        (i32.store
         (get_local $7)
         (i32.add
          (i32.load
           (get_local $7)
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
         (get_local $7)
         (i32.add
          (i32.load offset=4
           (get_local $7)
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
        (set_local $10
         (i64.extend_u/i32
          (get_local $4)
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
         (get_local $6)
         (get_local $4)
         (i64.const 0)
        )
        (set_local $4
         (call $~lib/array/Array<Dragon>#get:length
          (get_local $6)
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
      (br $repeat|3)
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
         (get_local $6)
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
          (get_local $6)
          (get_local $4)
         )
         (i64.const 0)
        )
        (get_local $11)
       )
       (call $~lib/array/Array<u64>#__set
        (get_local $6)
        (get_local $4)
        (i64.sub
         (call $~lib/array/Array<u64>#__get
          (get_local $6)
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
  (get_local $7)
 )
 (func $genetype/GenType#get:skills (; 187 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $genetype/GenType#set:skills (; 188 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $genetype/GenType#get:skillsLevel (; 189 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:skillsLevel (; 190 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genescience/GeneScience#gen0Genes (; 191 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
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
  (set_local $4
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
      (get_local $4)
      (tee_local $6
       (i64.add
        (get_local $6)
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
       (get_local $4)
      )
     )
    )
    (if
     (i64.lt_u
      (i64.rem_u
       (get_local $3)
       (get_local $6)
      )
      (call $~lib/array/Array<u64>#__get
       (get_local $4)
       (get_local $2)
      )
     )
     (block
      (set_local $5
       (i64.extend_u/i32
        (get_local $2)
       )
      )
      (set_local $2
       (call $~lib/array/Array<Dragon>#get:length
        (get_local $4)
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
  (if
   (i64.gt_u
    (get_local $5)
    (i64.const 0)
   )
   (block
    (set_local $2
     (call $genescience/GeneScience#createSkillAndLevel
      (get_local $0)
      (get_local $3)
      (get_local $5)
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
 (func $genetype/GenType#get:subtype (; 192 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $genetype/GenType#set:subtype (; 193 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genescience/GeneScience#confirmGene (; 194 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonCore#confirmGene (; 195 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $genescience/GeneScience#confirmGene
   (call $genescience/GeneScience#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../lib/time/now (; 196 ;) (type $i) (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $../../internal/system.d/env.current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $../../src/utils/intToString (; 197 ;) (type $Ii) (param $0 i64) (result i32)
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
    (i32.const 760)
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
        (i32.const 760)
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
 (func $genetype/GenType#toString (; 198 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/map/Map<String_String>#set (; 199 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
   (call $~lib/array/Array<Asset>#__set
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $../../lib/events/_EventObject#set<String> (; 200 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (i32.const 2836)
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
 (func $dragoncore/DragonCore#_createDragon (; 201 ;) (type $iIIiiIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (result i64)
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
    (call $~lib/memory/memory.allocate
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
   (call $../../lib/time/now)
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
   (i32.const 5704)
   (call $../../lib/events/_EventObject#set<String>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 5720)
        (get_local $6)
       )
       (i32.const 2816)
       (i64.extend_u/i32
        (get_local $3)
       )
      )
      (i32.const 5736)
      (get_local $1)
     )
     (i32.const 5756)
     (get_local $2)
    )
    (i32.const 5772)
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
 (func $saleclockauction/SaleClockAuction#averageGen0SalePrice (; 202 ;) (type $ii) (param $0 i32) (result i32)
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
      (call $../../lib/contract/Contract#get:receiver
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
 (func $../../src/asset/Asset#clone (; 203 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $dragoncore/DragonCore#_computeNextGen0Price (; 204 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i64.lt_u
    (tee_local $2
     (i64.add
      (tee_local $2
       (call $../../lib/contract/Contract#get:receiver
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
    (call $../../lib/contract/Contract#get:receiver
     (get_global $dragoncore/GEN0_STARTING_PRICE)
    )
   )
   (set_local $2
    (call $../../lib/contract/Contract#get:receiver
     (get_global $dragoncore/GEN0_STARTING_PRICE)
    )
   )
  )
  (call $../../src/asset/Asset#setAmount
   (tee_local $0
    (call $../../src/asset/Asset#clone
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (get_local $0)
 )
 (func $saleclockauction/ClockAuctionBase#escrow (; 205 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $saleclockauction/ClockAuctionBase#addAuction (; 206 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5784)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (i64.load offset=16
     (get_local $2)
    )
    (i64.const 60)
   )
   (i32.const 5820)
  )
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=24
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
  (drop
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 5916)
   )
  )
  (call $../../lib/events/emit
   (i32.const 5992)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4516)
       (get_local $1)
      )
      (i32.const 6024)
      (call $../../lib/contract/Contract#get:receiver
       (i32.load offset=8
        (get_local $2)
       )
      )
     )
     (i32.const 6056)
     (call $../../lib/contract/Contract#get:receiver
      (i32.load offset=12
       (get_local $2)
      )
     )
    )
    (i32.const 6084)
    (i64.load offset=16
     (get_local $2)
    )
   )
  )
 )
 (func $saleclockauction/SaleClockAuction#createAuction (; 207 ;) (type $iIiiIIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i64)
  (local $6 i32)
  (call $saleclockauction/ClockAuctionBase#escrow
   (get_local $0)
   (get_local $5)
   (get_local $1)
  )
  (i64.store
   (tee_local $6
    (call $~lib/memory/memory.allocate
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
    (call $../../lib/time/now)
   )
  )
  (call $saleclockauction/ClockAuctionBase#addAuction
   (get_local $0)
   (get_local $1)
   (get_local $6)
  )
 )
 (func $../../src/return/Return<u64> (; 208 ;) (type $Iv) (param $0 i64)
  (call $../../src/return/env.set_result_int
   (get_local $0)
  )
 )
 (func $dragoncore/DragonCore#createGen0Auction (; 209 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i64)
  (call $../../src/utils/ultrain_assert
   (i64.lt_u
    (i64.load offset=64
     (get_local $0)
    )
    (get_global $dragoncore/GEN0_CREATION_LIMIT)
   )
   (i32.const 4932)
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
  (call $../../src/return/Return<u64>
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#createGen0Auction (; 210 ;) (type $iIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
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
 (func $dragoncore/DragonCore#createPromoDragon (; 211 ;) (type $iiIIIv) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64)
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
   (i32.const 6104)
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
 (func $index/HyperDragonContract#createPromoDragon (; 212 ;) (type $iIIIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64)
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
 (func $dragoncore/DragonBreeding#_isReadyToBreed (; 213 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $dragoncore/DragonBreeding#isReadyToBreed (; 214 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 6260)
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
 (func $dragoncore/DragonBreeding#_isValidMatingPair (; 215 ;) (type $iiIiIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (result i32)
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
 (func $dragoncore/DragonBreeding#_canBreedWithViaAuction (; 216 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $saleclockauction/ClockAuctionBase#isOnAuction (; 217 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i64.gt_u
   (i64.load offset=24
    (get_local $1)
   )
   (i64.const 0)
  )
 )
 (func $saleclockauction/ClockAuctionBase#computeCurrentPrice (; 218 ;) (type $iiiIIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64) (result i32)
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
         (call $../../lib/contract/Contract#get:receiver
          (get_local $2)
         )
         (call $../../lib/contract/Contract#get:receiver
          (get_local $1)
         )
        )
        (i64.sub
         (call $../../lib/contract/Contract#get:receiver
          (get_local $1)
         )
         (call $../../lib/contract/Contract#get:receiver
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
     (call $../../lib/contract/Contract#get:receiver
      (get_local $0)
     )
    )
    (call $../../src/asset/Asset#setAmount
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
 (func $saleclockauction/ClockAuctionBase#currentPrice (; 219 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i64.gt_u
    (i64.extend_u/i32
     (call $../../lib/time/now)
    )
    (i64.load offset=24
     (get_local $1)
    )
   )
   (set_local $2
    (i64.sub
     (i64.extend_u/i32
      (call $../../lib/time/now)
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
 (func $saleclockauction/ClockAuction#getcurrentPrice (; 220 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
   (i32.const 6516)
  )
  (call $saleclockauction/ClockAuctionBase#currentPrice
   (get_local $0)
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset#add (; 221 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $1)
    )
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 6576)
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
 (func $../../src/asset/Asset#sub (; 222 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $1)
    )
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 6728)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ge_u
    (i64.load
     (get_local $0)
    )
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 6832)
  )
  (i64.store
   (get_local $0)
   (i64.sub
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
 (func $~lib/array/Array<Auction>#splice (; 223 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  (call $~lib/memory/memory.copy
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
 (func $../../src/map/Map<u64_Auction>#remove (; 224 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $saleclockauction/ClockAuctionBase#removeAuction (; 225 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (drop
   (call $../../src/map/Map<u64_Auction>#remove
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $saleclockauction/ClockAuctionBase#computeCut (; 226 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (set_local $2
   (i64.div_u
    (i64.mul
     (call $../../lib/contract/Contract#get:receiver
      (get_local $1)
     )
     (i64.load offset=16
      (get_local $0)
     )
    )
    (i64.const 10000)
   )
  )
  (call $../../src/asset/Asset#setAmount
   (tee_local $0
    (call $../../src/asset/Asset#clone
     (get_local $1)
    )
   )
   (get_local $2)
  )
  (get_local $0)
 )
 (func $saleclockauction/ClockAuctionBase#_bid (; 227 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
   (i32.const 6920)
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
   (i32.const 6988)
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
    (call $../../lib/contract/Contract#get:receiver
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
     (call $../../src/asset/Asset#sub
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
     (i32.const 7072)
    )
   )
  )
  (drop
   (call $../../src/asset/Asset#sub
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
   (i32.const 7108)
  )
  (call $../../lib/events/emit
   (i32.const 7132)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4516)
       (get_local $1)
      )
      (i32.const 7172)
      (call $../../lib/contract/Contract#get:receiver
       (get_local $4)
      )
     )
     (i32.const 7196)
     (call $../../internal/action.d/env.current_sender)
    )
    (i32.const 7212)
    (get_local $5)
   )
  )
  (get_local $4)
 )
 (func $dragoncore/DragonAssetControl#transfer (; 228 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../internal/action.d/env.is_account
    (get_local $1)
   )
   (i32.const 7228)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_global $consts/HyperDragonContract)
   )
   (i32.const 7292)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_global $consts/SaleAuctionAddress)
   )
   (i32.const 7360)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_global $consts/SireAuctionAddress)
   )
   (i32.const 7444)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 7528)
  )
  (call $../../lib/events/emit
   (i32.const 7584)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4496)
      (call $../../internal/action.d/env.current_sender)
     )
     (i32.const 4508)
     (get_local $1)
    )
    (i32.const 4516)
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
 (func $saleclockauction/ClockAuctionBase#transfer (; 229 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transfer
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $saleclockauction/SireClockAuction#bid (; 230 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
 (func $dragoncore/DragonBreeding#_triggerCooldown (; 231 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $dragoncore/DragonBreeding#_breedWith (; 232 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
   (i32.const 7608)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 5720)
       (call $../../src/map/Map<u64_u64>#get
        (i32.load offset=32
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (i32.const 5736)
      (get_local $1)
     )
     (i32.const 5756)
     (get_local $2)
    )
    (i32.const 7628)
    (i64.load offset=16
     (get_local $3)
    )
   )
  )
 )
 (func $dragoncore/DragonCore#bidOnSiringAuction (; 233 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
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
   (i32.const 6160)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#isReadyToBreed
    (get_local $0)
    (get_local $2)
   )
   (i32.const 6308)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_canBreedWithViaAuction
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (i32.const 6392)
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
   (i32.const 6680)
  )
  (call $saleclockauction/SireClockAuction#bid
   (get_local $5)
   (get_local $1)
   (call $../../src/asset/Asset#sub
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
 (func $index/HyperDragonContract#bidOnSiringAuction (; 234 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonCore#bidOnSiringAuction
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAuction#setSaleAuctionAddress (; 235 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $index/HyperDragonContract#setSaleAuctionAddress (; 236 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAuction#setSaleAuctionAddress
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonAuction#setSiringAuctionAddress (; 237 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $index/HyperDragonContract#setSiringAucAddress (; 238 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAuction#setSiringAuctionAddress
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonCore#createSiringAuction (; 239 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
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
   (i32.const 7664)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#isReadyToBreed
    (get_local $0)
    (get_local $1)
   )
   (i32.const 7752)
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
 (func $index/HyperDragonContract#createSiringAuction (; 240 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
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
 (func $dragoncore/DragonCore#createSaleAuction (; 241 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
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
   (i32.const 7824)
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (call $dragoncore/DragonBreeding#isPregnant
     (get_local $0)
     (get_local $1)
    )
   )
   (i32.const 7916)
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
 (func $index/HyperDragonContract#createSaleAuction (; 242 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
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
 (func $dragoncore/DragonBreeding#updateGenes (; 243 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
   (i32.const 7968)
   (call $../../lib/events/_EventObject#set<String>
    (call $../../lib/events/_EventObject#set<u64>
     (get_global $../../lib/events/EventObject)
     (i32.const 2816)
     (get_local $1)
    )
    (i32.const 7996)
    (call $genetype/GenType#toString
     (get_local $2)
    )
   )
  )
 )
 (func $index/HyperDragonContract#updateGenes (; 244 ;) (type $iIIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
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
 (func $dragoncore/DragonAccessControl#onlyAPI (; 245 ;) (type $iv) (param $0 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../internal/action.d/env.current_sender)
    (i64.load offset=16
     (get_local $0)
    )
   )
   (i32.const 8012)
  )
 )
 (func $genetype/GenType#get:color (; 246 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=24
   (get_local $0)
  )
 )
 (func $genetype/GenType#set:color (; 247 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (get_local $0)
   (get_local $1)
  )
 )
 (func $genescience/GeneScience#mixSkills (; 248 ;) (type $iIiiIi) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
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
    (set_local $2
     (i32.const 1)
    )
    (loop $continue|2
     (if
      (if (result i32)
       (tee_local $3
        (i64.lt_u
         (get_local $6)
         (i64.const 5)
        )
       )
       (get_local $2)
       (get_local $3)
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
       (if
        (i64.lt_u
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
        (set_local $6
         (i64.add
          (get_local $6)
          (i64.const 1)
         )
        )
        (set_local $2
         (i32.const 0)
        )
       )
       (br $continue|2)
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
 (func $genescience/GeneScience#createCharacter (; 249 ;) (type $iIIiI) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (result i64)
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
         (set_local $4
          (call $~lib/array/Array<Dragon>#get:length
           (get_local $6)
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
       (br $repeat|6)
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
 (func $genescience/GeneScience#specicalCharacter (; 250 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
    (call $~lib/memory/memory.allocate
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
 (func $genetype/GenType#get:hchar (; 251 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load
     (get_local $0)
    )
    (i64.const 65535)
   )
  )
 )
 (func $genetype/GenType#get:schar (; 252 ;) (type $ii) (param $0 i32) (result i32)
  (i32.wrap/i64
   (i64.and
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 65535)
   )
  )
 )
 (func $genescience/GeneScience#getUnRepeatArr (; 253 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i64)
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
       (set_local $2
        (i32.const 0)
       )
       (loop $repeat|1
        (br_if $break|1
         (i32.ge_s
          (get_local $2)
          (i32.const 8)
         )
        )
        (if
         (i64.eq
          (get_local $7)
          (i64.and
           (i64.shr_u
            (get_local $3)
            (i64.sub
             (i64.const 35)
             (i64.extend_u/i32
              (i32.mul
               (get_local $2)
               (i32.const 5)
              )
             )
            )
           )
           (i64.const 31)
          )
         )
         (block
          (set_local $6
           (i32.const 1)
          )
          (set_local $2
           (i32.const 9)
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
      (if
       (i32.eqz
        (get_local $6)
       )
       (block
        (set_local $3
         (i64.add
          (get_local $3)
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
        (get_local $3)
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
 (func $genescience/GeneScience#joint (; 254 ;) (type $iIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
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
 (func $genescience/GeneScience#mixCharacter (; 255 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
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
    (call $~lib/memory/memory.allocate
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
 (func $genetype/GenType#set:schar (; 256 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genetype/GenType#set:hchar (; 257 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $genescience/GeneScience#mixGenes (; 258 ;) (type $iiIiIIi) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i64) (result i32)
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
 (func $genescience/GeneScience#mixExtend (; 259 ;) (type $iIIIII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i64)
  (i64.const 0)
 )
 (func $dragoncore/DragonCore#giveBirth (; 260 ;) (type $iIII) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
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
   (i32.const 8084)
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
   (i32.const 8172)
  )
  (get_local $1)
 )
 (func $index/HyperDragonContract#giveBirth (; 261 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
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
 (func $dragoncore/DragonBreeding#_isSiringPermitted (; 262 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $dragoncore/DragonBreeding#breedWithAuto (; 263 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
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
   (i32.const 8208)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $1)
   )
   (i32.const 8280)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isSiringPermitted
    (get_local $0)
    (get_local $2)
    (get_local $1)
   )
   (i32.const 8356)
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
   (i32.const 8452)
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
   (i32.const 8516)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonBreeding#_isValidMatingPair
    (get_local $0)
    (get_local $3)
    (get_local $1)
    (get_local $4)
    (get_local $2)
   )
   (i32.const 8576)
  )
  (call $dragoncore/DragonBreeding#_breedWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#breedWithAuto (; 264 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonBreeding#breedWithAuto
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonBreeding#canBreedWith (; 265 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 8644)
  )
  (call $../../src/utils/ultrain_assert
   (i64.gt_u
    (get_local $2)
    (i64.const 0)
   )
   (i32.const 8684)
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
 (func $index/HyperDragonContract#canBreedWith (; 266 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8728)
    (i32.const 8740)
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
 (func $index/HyperDragonContract#isPregnant (; 267 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8728)
    (i32.const 8740)
    (call $dragoncore/DragonBreeding#isPregnant
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $index/HyperDragonContract#isReadyToBreed (; 268 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8728)
    (i32.const 8740)
    (call $dragoncore/DragonBreeding#isReadyToBreed
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $dragoncore/DragonBreeding#setAutoBirthFee (; 269 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonAccessControl#onlyCEO
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $0)
   (get_local $1)
  )
  (call $../../lib/events/emit
   (i32.const 8756)
   (call $../../lib/events/_EventObject#set<u64>
    (get_global $../../lib/events/EventObject)
    (i32.const 8784)
    (call $../../lib/contract/Contract#get:receiver
     (get_local $1)
    )
   )
  )
 )
 (func $index/HyperDragonContract#setAutoBirthFee (; 270 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonBreeding#setAutoBirthFee
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $dragoncore/DragonBreeding#approvesiring (; 271 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 8796)
  )
  (call $../../src/map/Map<u64_u64>#set
   (i32.load offset=44
    (get_local $0)
   )
   (get_local $2)
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#approveSiring (; 272 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonBreeding#approvesiring
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonAssetControl#balanceOf (; 273 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
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
 (func $index/HyperDragonContract#balanceOf (; 274 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<u64>
   (call $dragoncore/DragonAssetControl#balanceOf
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $dragoncore/DragonAssetControl#approve (; 275 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAccessControl#whenNotPaused
   (get_local $0)
  )
  (call $../../src/utils/ultrain_assert
   (call $dragoncore/DragonAssetControl#_owns
    (get_local $0)
    (call $../../internal/action.d/env.current_sender)
    (get_local $2)
   )
   (i32.const 8896)
  )
  (call $dragoncore/DragonAssetControl#_approve
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
  (call $../../lib/events/emit
   (i32.const 8952)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 5720)
      (call $../../internal/action.d/env.current_sender)
     )
     (i32.const 4508)
     (get_local $1)
    )
    (i32.const 4516)
    (get_local $2)
   )
  )
 )
 (func $index/HyperDragonContract#approve (; 276 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#approve
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $index/HyperDragonContract#transferFrom (; 277 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonAssetControl#transferFrom
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonAssetControl#totalSupply (; 278 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $index/HyperDragonContract#totalSupply (; 279 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<u64>
   (call $dragoncore/DragonAssetControl#totalSupply
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
 )
 (func $dragoncore/DragonAssetControl#ownerOf (; 280 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
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
 (func $index/HyperDragonContract#ownerOf (; 281 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<u64>
   (call $dragoncore/DragonAssetControl#ownerOf
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $dragoncore/DragonAssetControl#tokensOfOwner (; 282 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/return/ReturnArray<u64> (; 283 ;) (type $iv) (param $0 i32)
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
 (func $index/HyperDragonContract#tokensOfOwner (; 284 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/ReturnArray<u64>
   (call $dragoncore/DragonAssetControl#tokensOfOwner
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $../../src/asset/Asset#multi (; 285 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $match/MatchCore#startMatch (; 286 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
   (i32.const 8972)
  )
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (tee_local $4
    (call $~lib/memory/memory.allocate
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
   (i32.const 9064)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (get_global $../../lib/events/EventObject)
           (i32.const 4816)
           (get_local $1)
          )
          (i32.const 9088)
          (get_local $2)
         )
         (i32.const 9112)
         (get_local $3)
        )
        (i32.const 9136)
        (call $~lib/array/Array<u64>#__get
         (i32.load offset=52
          (get_local $0)
         )
         (get_local $4)
        )
       )
       (i32.const 9152)
       (call $../../lib/contract/Contract#get:receiver
        (call $~lib/array/Array<Dragon>#__get
         (i32.load offset=8
          (get_local $0)
         )
         (get_local $4)
        )
       )
      )
      (i32.const 9168)
      (call $../../lib/contract/Contract#get:receiver
       (get_local $6)
      )
     )
     (i32.const 9196)
     (call $../../lib/contract/Contract#get:receiver
      (get_local $7)
     )
    )
    (i32.const 9224)
    (call $../../lib/contract/Contract#get:receiver
     (get_local $8)
    )
   )
  )
 )
 (func $dragoncore/DragonCore#startMatch (; 287 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
 (func $index/HyperDragonContract#startMatch (; 288 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $dragoncore/DragonCore#startMatch
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $dragoncore/DragonCore#isCanJoin (; 289 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $match/MatchCore#isCanJoin
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#isCanJoin (; 290 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../src/return/Return<String>
   (select
    (i32.const 8728)
    (i32.const 8740)
    (call $dragoncore/DragonCore#isCanJoin
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $../../src/asset/Asset._lte (; 291 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../src/asset/Asset.checkOperaotrCondition
   (get_local $0)
   (get_local $1)
   (i32.const 9252)
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
 (func $betid/BetId#get:index (; 292 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $match/GuessUser#constructor (; 293 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $3
       (call $~lib/memory/memory.allocate
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
 (func $match/MatchCore#guess (; 294 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
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
   (i32.const 9260)
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
   (i32.const 9308)
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
   (i32.const 9368)
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
   (i32.const 9456)
  )
  (call $../../src/asset/Asset#setAmount
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
    (call $../../lib/contract/Contract#get:receiver
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
    (call $../../lib/contract/Contract#get:receiver
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
     (call $../../lib/contract/Contract#get:receiver
      (i32.load
       (get_local $5)
      )
     )
     (i64.const 0)
    )
    (i64.div_u
     (i64.mul
      (i64.add
       (call $../../lib/contract/Contract#get:receiver
        (i32.load
         (get_local $5)
        )
       )
       (call $../../lib/contract/Contract#get:receiver
        (i32.load
         (get_local $4)
        )
       )
      )
      (i64.const 9500)
     )
     (call $../../lib/contract/Contract#get:receiver
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
       (call $../../lib/contract/Contract#get:receiver
        (i32.load
         (get_local $4)
        )
       )
       (i64.const 0)
      )
      (i64.div_u
       (i64.mul
        (i64.add
         (call $../../lib/contract/Contract#get:receiver
          (i32.load
           (get_local $5)
          )
         )
         (call $../../lib/contract/Contract#get:receiver
          (i32.load
           (get_local $4)
          )
         )
        )
        (i64.const 9500)
       )
       (call $../../lib/contract/Contract#get:receiver
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
   (i32.const 9516)
   (call $../../lib/events/_EventObject#set<u64>
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (get_global $../../lib/events/EventObject)
           (i32.const 4816)
           (i64.load
            (get_local $0)
           )
          )
          (i32.const 9544)
          (i64.extend_u/i32
           (get_local $8)
          )
         )
         (i32.const 9560)
         (get_local $1)
        )
        (i32.const 9576)
        (i64.load
         (get_local $9)
        )
       )
       (i32.const 2816)
       (get_local $2)
      )
      (i32.const 9596)
      (call $../../lib/contract/Contract#get:receiver
       (get_local $3)
      )
     )
     (i32.const 9612)
     (select
      (i64.const 10000)
      (get_local $7)
      (i64.lt_u
       (get_local $7)
       (i64.const 10000)
      )
     )
    )
    (i32.const 9628)
    (get_local $6)
   )
  )
 )
 (func $dragoncore/DragonCore#guess (; 295 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
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
 (func $index/HyperDragonContract#guess (; 296 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (call $dragoncore/DragonCore#guess
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $match/MatchCore#giveGroup (; 297 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
     (i32.const 9728)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (get_global $../../lib/events/EventObject)
           (i32.const 4816)
           (i64.load
            (get_local $0)
           )
          )
          (i32.const 9756)
          (i64.load
           (call $../../src/map/Map<u64_MatchInfo>#get
            (i32.load offset=44
             (get_local $2)
            )
            (get_local $7)
           )
          )
         )
         (i32.const 9780)
         (i64.load
          (call $../../src/map/Map<u64_MatchInfo>#get
           (i32.load offset=44
            (get_local $2)
           )
           (get_local $8)
          )
         )
        )
        (i32.const 9544)
        (i64.load offset=88
         (get_local $2)
        )
       )
       (i32.const 9560)
       (i64.add
        (get_local $9)
        (i64.shl
         (get_local $1)
         (i64.const 4)
        )
       )
      )
      (i32.const 9804)
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
     (i32.const 9824)
     (call $../../lib/events/_EventObject#set<u64>
      (get_global $../../lib/events/EventObject)
      (i32.const 4816)
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
     (i32.const 9848)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4816)
       (i64.load
        (get_local $0)
       )
      )
      (i32.const 9544)
      (i64.load offset=88
       (get_local $2)
      )
     )
    )
   )
  )
 )
 (func $fightcore/FightCore#constructor (; 298 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store
     (tee_local $1
      (call $~lib/memory/memory.allocate
       (i32.const 4)
      )
     )
     (i32.const 0)
    )
    (get_local $1)
   )
  )
 )
 (func $fightcore/DragonInfo#constructor (; 299 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $1
       (call $~lib/memory/memory.allocate
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
 (func $fightcore/FightCore#getBlood (; 300 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (i64.extend_u/i32
   (call $genetype/GenType#get:blood
    (get_local $1)
   )
  )
 )
 (func $fightcore/FightCore#getSkills (; 301 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (call $genetype/GenType#get:skills
   (get_local $1)
  )
 )
 (func $fightcore/FightCore#getSkillsLevel (; 302 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (i64.extend_u/i32
   (call $genetype/GenType#get:skillsLevel
    (get_local $1)
   )
  )
 )
 (func $fightcore/FightCore#getAddition (; 303 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/hash/hash64 (; 304 ;) (type $Ii) (param $0 i64) (result i32)
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
 (func $~lib/map/Map<u64_SeedInfo>#find (; 305 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 306 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $~lib/memory/memory.fill
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
 (func $~lib/map/Map<u64_SeedInfo>#rehash (; 307 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<u64_SeedInfo>#set (; 308 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
 (func $fightcore/FightCore#attack (; 309 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $fightcore/FightCore#startFight (; 310 ;) (type $iIIiIiII) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32) (param $6 i64) (result i64)
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
    (call $~lib/memory/memory.allocate
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
 (func $match/MatchCore#transfer (; 311 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (call $dragoncore/DragonAssetControl#transfer
   (i32.load offset=64
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $match/MatchCore#fightWithOther (; 312 ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
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
    (call $~lib/memory/memory.allocate
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
      (call $../../lib/contract/Contract#get:receiver
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
     (i32.const 9924)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4816)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 9952)
       (i64.load
        (get_local $9)
       )
      )
      (i32.const 9976)
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
     (i32.const 10000)
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
     (i32.const 10032)
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
     (i32.const 10072)
    )
   )
  )
  (get_local $5)
 )
 (func $match/MatchCore#fighting (; 313 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
     (i32.const 10112)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4816)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 9544)
       (i64.load offset=88
        (get_local $2)
       )
      )
      (i32.const 2816)
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
     (i32.const 10136)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4816)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 9544)
       (i64.load offset=88
        (get_local $2)
       )
      )
      (i32.const 2816)
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
     (i32.const 10168)
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4816)
        (i64.load
         (get_local $0)
        )
       )
       (i32.const 9544)
       (i64.load offset=88
        (get_local $2)
       )
      )
      (i32.const 10188)
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
    (i32.const 10204)
    (call $../../lib/events/_EventObject#set<u64>
     (call $../../lib/events/_EventObject#set<u64>
      (call $../../lib/events/_EventObject#set<u64>
       (get_global $../../lib/events/EventObject)
       (i32.const 4816)
       (i64.load
        (get_local $0)
       )
      )
      (i32.const 10240)
      (call $~lib/array/Array<u64>#__get
       (get_local $4)
       (i32.const 0)
      )
     )
     (i32.const 10264)
     (call $~lib/array/Array<u64>#__get
      (get_local $4)
      (i32.const 1)
     )
    )
   )
  )
  (call $../../lib/events/emit
   (i32.const 9824)
   (call $../../lib/events/_EventObject#set<u64>
    (get_global $../../lib/events/EventObject)
    (i32.const 4816)
    (i64.load
     (get_local $0)
    )
   )
  )
 )
 (func $match/MatchCore#sendOne (; 314 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
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
         (call $../../lib/contract/Contract#get:receiver
          (i32.load
           (get_local $4)
          )
         )
         (i64.const 0)
        )
        (i64.div_u
         (i64.mul
          (i64.add
           (call $../../lib/contract/Contract#get:receiver
            (i32.load
             (get_local $4)
            )
           )
           (call $../../lib/contract/Contract#get:receiver
            (i32.load
             (get_local $6)
            )
           )
          )
          (i64.const 9500)
         )
         (call $../../lib/contract/Contract#get:receiver
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
         (call $../../lib/contract/Contract#get:receiver
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
       (i32.const 10288)
      )
      (if
       (i64.eq
        (get_local $7)
        (get_local $2)
       )
       (call $../../lib/events/emit
        (i32.const 10324)
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (call $../../lib/events/_EventObject#set<u64>
            (call $../../lib/events/_EventObject#set<u64>
             (call $../../lib/events/_EventObject#set<u64>
              (get_global $../../lib/events/EventObject)
              (i32.const 10344)
              (i64.load
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
             (i32.const 10356)
             (call $../../lib/contract/Contract#get:receiver
              (i32.load offset=8
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
            )
            (i32.const 2816)
            (get_local $7)
           )
           (i32.const 9560)
           (get_local $1)
          )
          (i32.const 4816)
          (i64.load
           (get_local $0)
          )
         )
         (i32.const 10372)
         (get_local $3)
        )
       )
       (call $../../lib/events/emit
        (i32.const 10388)
        (call $../../lib/events/_EventObject#set<u64>
         (call $../../lib/events/_EventObject#set<u64>
          (call $../../lib/events/_EventObject#set<u64>
           (call $../../lib/events/_EventObject#set<u64>
            (call $../../lib/events/_EventObject#set<u64>
             (call $../../lib/events/_EventObject#set<u64>
              (get_global $../../lib/events/EventObject)
              (i32.const 10344)
              (i64.load
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
             (i32.const 10356)
             (call $../../lib/contract/Contract#get:receiver
              (i32.load offset=8
               (call $~lib/array/Array<Dragon>#__get
                (get_local $6)
                (get_local $4)
               )
              )
             )
            )
            (i32.const 2816)
            (get_local $7)
           )
           (i32.const 9560)
           (get_local $1)
          )
          (i32.const 4816)
          (i64.load
           (get_local $0)
          )
         )
         (i32.const 10372)
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
       (i32.const 9824)
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4816)
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
 (func $match/MatchCore#sendReward (; 315 ;) (type $iv) (param $0 i32)
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
       (i32.const 10424)
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (get_global $../../lib/events/EventObject)
         (i32.const 4816)
         (i64.load
          (get_local $0)
         )
        )
        (i32.const 9544)
        (i64.load offset=88
         (get_local $1)
        )
       )
      )
      (call $../../lib/events/emit
       (i32.const 10448)
       (call $../../lib/events/_EventObject#set<u64>
        (call $../../lib/events/_EventObject#set<u64>
         (get_global $../../lib/events/EventObject)
         (i32.const 4816)
         (i64.load
          (get_local $0)
         )
        )
        (i32.const 9544)
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
       (i32.const 10472)
       (call $../../lib/events/_EventObject#set<u64>
        (get_global $../../lib/events/EventObject)
        (i32.const 4816)
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
 (func $match/MatchCore#nextStep (; 316 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
   (i32.const 9644)
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_u
    (i32.load8_u
     (get_local $2)
    )
    (i32.const 0)
   )
   (i32.const 9692)
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
 (func $dragoncore/DragonCore#nextStep (; 317 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $index/HyperDragonContract#nextStep (; 318 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#nextStep
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#getEntryFee (; 319 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $dragoncore/DragonCore#getEntryFee (; 320 ;) (type $ii) (param $0 i32) (result i32)
  (call $match/MatchCore#getEntryFee
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
 )
 (func $index/HyperDragonContract#getEntryFee (; 321 ;) (type $iv) (param $0 i32)
  (call $../../src/return/Return<u64>
   (call $../../lib/contract/Contract#get:receiver
    (call $dragoncore/DragonCore#getEntryFee
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
 )
 (func $match/MatchCore#setFightLimit (; 322 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#setFightLimit (; 323 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $index/HyperDragonContract#setFightLimit (; 324 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#setFightLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#setAwardLimit (; 325 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $index/HyperDragonContract#setAwardLimit (; 326 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#setAwardLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setGroupLimit (; 327 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (get_local $0)
   (get_local $1)
  )
 )
 (func $dragoncore/DragonCore#setGroupLimit (; 328 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $index/HyperDragonContract#setGroupLimit (; 329 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#setGroupLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setJoinLimit (; 330 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.const 10504)
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
 (func $dragoncore/DragonCore#setJoinLimit (; 331 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $index/HyperDragonContract#setJoinLimit (; 332 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonCore#setJoinLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setRegfees (; 333 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.const 10580)
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
 (func $dragoncore/DragonCore#setRegfees (; 334 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $index/HyperDragonContract#setRegfees (; 335 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonCore#setRegfees
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setRewardMultiple (; 336 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.const 10664)
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
 (func $dragoncore/DragonCore#setRewardMultiple (; 337 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $index/HyperDragonContract#setRewardMultiple (; 338 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $dragoncore/DragonCore#setRewardMultiple
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $match/MatchCore#setGenLimit (; 339 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $../../src/map/Map<u64_JoinUser>#set
   (i32.load offset=56
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $dragoncore/DragonCore#setGenLimit (; 340 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
 (func $index/HyperDragonContract#setGenLimit (; 341 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $dragoncore/DragonCore#setGenLimit
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
  )
 )
 (func $match/MatchCore#dissolve (; 342 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $dragoncore/DragonCore#dissolve (; 343 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $match/MatchCore#dissolve
   (call $match/MatchCore#constructor
    (i32.const 0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $index/HyperDragonContract#dissolve (; 344 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $dragoncore/DragonCore#dissolve
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/name_ex/NameEx._eq (; 345 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/datastream/DataStream#read<u8> (; 346 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVarint32 (; 347 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readVector<u64> (; 348 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/datastream/DataStream#readComplexVector<Asset> (; 349 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $index/apply (; 350 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $4
     (call $../../lib/contract/Contract#getDataStream
      (tee_local $5
       (call $index/HyperDragonContract#constructor
        (i32.const 0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (tee_local $6
       (call $../../src/asset/Asset#constructor
        (i32.const 0)
        (get_local $2)
        (get_local $3)
       )
      )
      (call $../../src/name_ex/NEX
       (i32.const 10764)
      )
     )
     (call $index/HyperDragonContract#getDragon
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10788)
      )
     )
     (call $index/HyperDragonContract#withdrawAucBalances
      (get_local $5)
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10832)
      )
     )
     (call $index/HyperDragonContract#withdrawBalance
      (get_local $5)
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10868)
      )
     )
     (call $index/HyperDragonContract#updteExtend
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10896)
      )
     )
     (call $index/HyperDragonContract#setTitles
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10920)
      )
     )
     (call $index/HyperDragonContract#fightCooldown
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10952)
      )
     )
     (block
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#joinMatch
       (get_local $5)
       (get_local $0)
       (get_local $7)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 10976)
      )
     )
     (call $index/HyperDragonContract#setSpecialDragonLimit
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11024)
      )
     )
     (call $index/HyperDragonContract#increaseSpecialDragon
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11072)
      )
     )
     (call $index/HyperDragonContract#createGen0Auction
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11112)
      )
     )
     (call $index/HyperDragonContract#createPromoDragon
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11152)
      )
     )
     (block
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#bidOnSiringAuction
       (get_local $5)
       (get_local $1)
       (get_local $0)
       (get_local $7)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11192)
      )
     )
     (call $index/HyperDragonContract#setSaleAuctionAddress
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11240)
      )
     )
     (call $index/HyperDragonContract#setSiringAucAddress
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11284)
      )
     )
     (block
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $8
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#createSiringAuction
       (get_local $5)
       (get_local $0)
       (get_local $7)
       (get_local $8)
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11328)
      )
     )
     (block
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $8
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#createSaleAuction
       (get_local $5)
       (get_local $1)
       (get_local $8)
       (get_local $7)
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11368)
      )
     )
     (call $index/HyperDragonContract#updateGenes
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11396)
      )
     )
     (call $index/HyperDragonContract#giveBirth
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11420)
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
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#breedWithAuto
       (get_local $5)
       (get_local $0)
       (get_local $1)
       (get_local $7)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11452)
      )
     )
     (call $index/HyperDragonContract#canBreedWith
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11480)
      )
     )
     (call $index/HyperDragonContract#isPregnant
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11504)
      )
     )
     (call $index/HyperDragonContract#isReadyToBreed
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11536)
      )
     )
     (block
      (call $../../src/asset/Asset#deserialize
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#setAutoBirthFee
       (get_local $5)
       (get_local $7)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11572)
      )
     )
     (call $index/HyperDragonContract#approveSiring
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11604)
      )
     )
     (call $index/HyperDragonContract#balanceOf
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 2392)
      )
     )
     (call $saleclockauction/ClockAuctionBase#transfer
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11628)
      )
     )
     (call $index/HyperDragonContract#approve
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11648)
      )
     )
     (call $index/HyperDragonContract#transferFrom
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11676)
      )
     )
     (call $index/HyperDragonContract#totalSupply
      (get_local $5)
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11704)
      )
     )
     (call $index/HyperDragonContract#ownerOf
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11724)
      )
     )
     (call $index/HyperDragonContract#tokensOfOwner
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11756)
      )
     )
     (call $index/HyperDragonContract#startMatch
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11780)
      )
     )
     (call $index/HyperDragonContract#isCanJoin
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11804)
      )
     )
     (block
      (set_local $1
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (set_local $0
       (call $../../src/datastream/DataStream#read<u64>
        (get_local $4)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (tee_local $7
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $4)
      )
      (call $index/HyperDragonContract#guess
       (get_local $5)
       (get_local $1)
       (get_local $0)
       (get_local $7)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11820)
      )
     )
     (call $index/HyperDragonContract#nextStep
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11840)
      )
     )
     (call $index/HyperDragonContract#getEntryFee
      (get_local $5)
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11868)
      )
     )
     (call $index/HyperDragonContract#setFightLimit
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11900)
      )
     )
     (call $index/HyperDragonContract#setAwardLimit
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11932)
      )
     )
     (call $index/HyperDragonContract#setGroupLimit
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11964)
      )
     )
     (call $index/HyperDragonContract#setJoinLimit
      (get_local $5)
      (call $../../src/datastream/DataStream#readVector<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 11992)
      )
     )
     (call $index/HyperDragonContract#setRegfees
      (get_local $5)
      (call $../../src/datastream/DataStream#readComplexVector<Asset>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 12016)
      )
     )
     (call $index/HyperDragonContract#setRewardMultiple
      (get_local $5)
      (call $../../src/datastream/DataStream#readVector<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 12056)
      )
     )
     (call $index/HyperDragonContract#setGenLimit
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
      (call $../../src/datastream/DataStream#readVector<u64>
       (get_local $4)
      )
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 12084)
      )
     )
     (call $index/HyperDragonContract#dissolve
      (get_local $5)
      (call $../../src/datastream/DataStream#read<u64>
       (get_local $4)
      )
     )
    )
   )
  )
 )
 (func $start (; 351 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 12104)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $../../src/log/Log
   (call $~lib/memory/memory.allocate
    (i32.const 0)
   )
  )
  (set_global $../../src/balance/SYS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1280)
   )
  )
  (set_global $../../src/balance/SYS_NAME
   (i64.shr_u
    (get_global $../../src/balance/SYS)
    (i64.const 8)
   )
  )
  (set_global $../../lib/events/EventObject
   (call $../../lib/events/_EventObject#constructor
    (i32.const 0)
   )
  )
  (set_global $consts/HyperDragonContract
   (call $../../src/utils/N
    (i32.const 1608)
   )
  )
  (set_global $consts/CEO
   (call $../../src/utils/N
    (i32.const 1636)
   )
  )
  (set_global $consts/CFO
   (call $../../src/utils/N
    (i32.const 1656)
   )
  )
  (set_global $consts/API
   (call $../../src/utils/N
    (i32.const 1676)
   )
  )
  (set_global $consts/SaleAuctionAddress
   (call $../../src/utils/N
    (i32.const 1696)
   )
  )
  (set_global $consts/SireAuctionAddress
   (call $../../src/utils/N
    (i32.const 1720)
   )
  )
  (set_global $consts/MatchAddress
   (call $../../src/utils/N
    (i32.const 1744)
   )
  )
  (set_global $../../internal/types/UGS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1280)
   )
  )
  (set_global $match/MatchInfoTable
   (call $../../src/utils/N
    (i32.const 1764)
   )
  )
  (set_global $match/MatchInfoTableScope
   (call $../../src/utils/N
    (i32.const 1788)
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
