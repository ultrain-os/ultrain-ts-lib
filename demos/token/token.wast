(module
 (type $ii (func (param i32) (result i32)))
 (type $IIIv (func (param i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (type $I (func (result i64)))
 (type $iI (func (param i32) (result i64)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiiiiv (func (param i32 i64 i32 i32 i32 i32)))
 (type $Iv (func (param i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $iIiIv (func (param i32 i64 i32 i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $iIiiIv (func (param i32 i64 i32 i32 i64)))
 (type $iIIiiv (func (param i32 i64 i64 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "ts_action_init" (func $../../lib/action/ts_action_init (result i32)))
 (import "env" "ts_log_print_s" (func $../../lib/log/ts_log_print_s (param i32)))
 (import "env" "ts_log_done" (func $../../lib/log/ts_log_done))
 (import "env" "ts_action_name_length" (func $../../lib/action/ts_action_name_length (result i64)))
 (import "env" "ts_action_name_read_char" (func $../../lib/action/ts_action_name_read_char (param i32) (result i32)))
 (import "env" "ts_action_params_count" (func $../../lib/action/ts_action_params_count (result i64)))
 (import "env" "ts_action_params_nth_type" (func $../../lib/action/ts_action_params_nth_type (param i32) (result i64)))
 (import "env" "ts_action_params_nth_as_int" (func $../../lib/action/ts_action_params_nth_as_int (param i32) (result i64)))
 (import "env" "ts_action_params_nth_string_length" (func $../../lib/action/ts_action_params_nth_string_length (param i32) (result i64)))
 (import "env" "ts_action_params_nth_string_read_char" (func $../../lib/action/ts_action_params_nth_string_read_char (param i32 i32) (result i32)))
 (import "env" "ts_log_print_i" (func $../../lib/log/ts_log_print_i (param i64 i32)))
 (import "env" "eosio_assert" (func $../../lib/system/eosio_assert (param i32 i32)))
 (import "env" "require_auth" (func $../../lib/action/require_auth (param i64)))
 (import "env" "db_find_i64" (func $../../lib/db.d/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $../../lib/db.d/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_receiver" (func $../../lib/action/current_receiver (result i64)))
 (import "env" "db_store_i64" (func $../../lib/db.d/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $../../lib/db.d/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "require_recipient" (func $../../lib/action/require_recipient (param i64)))
 (import "env" "has_auth" (func $../../lib/action/has_auth (param i64) (result i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../lib/log/Log (mut i32) (i32.const 0))
 (global $../../src/asset/Asset.max_amount (mut i64) (i64.const 0))
 (global $HEAP_BASE i32 (i32.const 5128))
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
 (data (i32.const 1280) "\04\00\00\00s\00t\00a\00t")
 (data (i32.const 1292) "\08\00\00\00a\00c\00c\00o\00u\00n\00t\00s")
 (data (i32.const 1312) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1344) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1404) "\16\00\00\00t\00s\00_\00a\00c\00t\00i\00o\00n\00_\00i\00n\00i\00t\00 \00f\00a\00i\00l\00e\00d\00.")
 (data (i32.const 1452) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1488) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1500) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1552) "*\00\00\00 \00:\00:\00 \00I\00t\00 \00i\00s\00 \00n\00o\00t\00 \00s\00u\00p\00p\00o\00r\00t\00 \00f\00o\00r\00 \00p\00a\00r\00a\00m\00e\00t\00e\00r\00s\00 \00t\00y\00p\00e\00 ")
 (data (i32.const 1640) "\1e\00\00\00d\00e\00m\00o\00 \00t\00o\00k\00e\00n\00 \00i\00n\00i\00t\00 \00a\00c\00t\00i\00o\00n\00 \00f\00a\00i\00l\00e\00d\00.")
 (data (i32.const 1704) "\03\00\00\00U\00T\00R")
 (data (i32.const 1716) "*\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.")
 (data (i32.const 1804) "/\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 ")
 (data (i32.const 1904) "\17\00\00\00t\00o\00k\00e\00n\00.\00m\00a\00i\00n\00 \00g\00e\00t\00 \00a\00c\00t\00i\00o\00n\00:\00 ")
 (data (i32.const 1956) "$\00\00\00t\00o\00k\00e\00n\00.\00m\00a\00i\00n\00 \00a\00c\00t\00i\00o\00n\00.\00i\00_\00p\00a\00r\00a\00m\00s\00.\00l\00e\00n\00g\00t\00h\00 \00=\00 ")
 (data (i32.const 2032) "$\00\00\00t\00o\00k\00e\00n\00.\00m\00a\00i\00n\00 \00a\00c\00t\00i\00o\00n\00.\00s\00_\00p\00a\00r\00a\00m\00s\00.\00l\00e\00n\00g\00t\00h\00 \00=\00 ")
 (data (i32.const 2108) "\06\00\00\00c\00r\00e\00a\00t\00e")
 (data (i32.const 2124) "C\00\00\00A\00s\00s\00e\00t\00.\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00:\00 \00m\00a\00g\00n\00i\00t\00u\00d\00e\00 \00o\00f\00 \00a\00s\00s\00e\00t\00 \00a\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \002\00^\006\002")
 (data (i32.const 2264) "&\00\00\00A\00s\00s\00e\00t\00.\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2344) "\"\00\00\00T\00o\00k\00e\00n\00.\00c\00r\00e\00a\00t\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00.")
 (data (i32.const 2416) "\15\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00g\00e\00t\00 \00c\00o\00d\00e\00 \00=\00 ")
 (data (i32.const 2464) "\t\00\00\00 \00s\00c\00o\00p\00e\00 \00=\00 ")
 (data (i32.const 2488) "\t\00\00\00 \00t\00a\00b\00l\00e\00 \00=\00 ")
 (data (i32.const 2512) "\06\00\00\00 \00i\00d\00 \00=\00 ")
 (data (i32.const 2528) "\14\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00g\00e\00t\00 \00i\00t\00r\00 \00=\00 ")
 (data (i32.const 2572) "\1d\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00l\00o\00a\00d\00_\00o\00b\00j\00e\00c\00t\00 \00s\00i\00z\00e\00 \00=\00 ")
 (data (i32.const 2636) "\13\00\00\00A\00s\00s\00e\00r\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00.")
 (data (i32.const 2680) "\1b\00\00\00d\00a\00t\00a\00s\00t\00r\00e\00a\00m\00 \00g\00e\00t\00 \00o\00v\00e\00r\00 \00b\00o\00u\00n\00d\00s\00.")
 (data (i32.const 2740) "\"\00\00\00d\00a\00t\00a\00s\00t\00r\00e\00a\00m\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\006\004\00.\00 \00v\00a\00l\00 \00=\00 ")
 (data (i32.const 2812) "\17\00\00\00S\00y\00m\00b\00o\00l\00T\00y\00p\00e\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00.")
 (data (i32.const 2864) "!\00\00\00d\00a\00t\00a\00s\00t\00r\00e\00a\00m\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00b\00o\00o\00l\00e\00a\00n\00 \00=\00 ")
 (data (i32.const 2936) "!\00\00\00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00y\00m\00b\00o\00l\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00.")
 (data (i32.const 3008) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t")
 (data (i32.const 3116) "\16\00\00\00A\00s\00s\00e\00r\00t\00 \00s\00t\00a\00r\00t\00 \00s\00e\00r\00i\00a\00l\00i\00z\00e")
 (data (i32.const 3164) "\1e\00\00\00d\00a\00t\00a\00s\00t\00r\00e\00a\00m\00.\00s\00e\00r\00i\00a\00l\00i\00z\00e\006\004\00:\00 \00v\00a\00l\00 \00=\00 ")
 (data (i32.const 3228) "\1f\00\00\00d\00a\00t\00a\00s\00t\00r\00e\00a\00m\00.\00s\00e\00r\00i\00a\00l\00i\00z\00e\00b\00o\00o\00l\00 \00v\00a\00l\00 \00=\00 ")
 (data (i32.const 3296) "\1a\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00e\00m\00p\00l\00a\00c\00e\00 \00s\00c\00o\00p\00e\00 \00=\00 ")
 (data (i32.const 3352) "\t\00\00\00 \00p\00a\00y\00e\00r\00 \00=\00 ")
 (data (i32.const 3376) "\0f\00\00\00 \00b\00u\00f\00f\00e\00r\00_\00s\00i\00z\00e\00 \00=\00 ")
 (data (i32.const 3412) "\05\00\00\00i\00s\00s\00u\00e")
 (data (i32.const 3428) "%\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 3508) "\11\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y\00.")
 (data (i32.const 3548) "\1d\00\00\00m\00u\00s\00t\00 \00i\00s\00s\00u\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e\00 \00q\00u\00a\00n\00t\00i\00t\00y\00.")
 (data (i32.const 3612) "1\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.")
 (data (i32.const 3716) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.")
 (data (i32.const 3824) ";\00\00\00u\00p\00d\00a\00t\00e\00r\00 \00c\00a\00n\00n\00o\00t\00 \00c\00h\00a\00n\00g\00e\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00w\00h\00e\00n\00 \00m\00o\00d\00i\00f\00y\00i\00n\00g\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00.")
 (data (i32.const 3948) "\1d\00\00\00A\00c\00c\00o\00u\00n\00t\00 \00s\00t\00a\00r\00t\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00.")
 (data (i32.const 4012) "+\00\00\00c\00a\00n\00 \00o\00n\00l\00y\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00w\00h\00i\00t\00e\00 \00l\00i\00s\00t\00e\00d\00 \00a\00c\00c\00o\00u\00n\00t\00s\00.")
 (data (i32.const 4104) "&\00\00\00r\00e\00c\00e\00i\00v\00e\00r\00 \00r\00e\00q\00u\00i\00r\00e\00s\00 \00w\00h\00i\00t\00e\00l\00i\00s\00t\00 \00b\00y\00 \00i\00s\00s\00u\00e\00r\00.")
 (data (i32.const 4184) "\08\00\00\00i\00s\00s\00u\00e\00 \00 \003")
 (data (i32.const 4204) "5\00\00\00i\00s\00s\00u\00e\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00r\00u\00n\00 \00h\00e\00r\00e\00,\00 \00s\00h\00o\00u\00l\00d\00 \00c\00a\00l\00l\00 \00d\00i\00s\00p\00a\00t\00c\00h\00_\00i\00n\00l\00i\00n\00e\00.")
 (data (i32.const 4316) "\08\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 4336) "(\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 4420) " \00\00\00m\00u\00s\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00p\00o\00s\00i\00t\00i\00v\00e\00 \00q\00u\00a\00n\00t\00i\00t\00y\00.")
 (data (i32.const 4488) ",\00\00\00t\00o\00k\00e\00n\00.\00s\00u\00b\00_\00b\00a\00l\00a\00n\00c\00e\00 \00f\00r\00o\00m\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.")
 (data (i32.const 4580) "\14\00\00\00o\00v\00e\00r\00d\00r\00a\00w\00i\00n\00g\00 \00b\00a\00l\00a\00n\00c\00e\00.")
 (data (i32.const 4624) "\1d\00\00\00c\00h\00e\00c\00k\00 \00h\00a\00s\00 \00a\00u\00t\00h\00o\00r\00i\00t\00y\00 \00o\00r\00 \00n\00o\00t\00 \00:\00 ")
 (data (i32.const 4688) "\1c\00\00\00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00f\00r\00o\00z\00e\00n\00 \00b\00y\00 \00i\00s\00s\00u\00e\00r\00.")
 (data (i32.const 4748) "$\00\00\00a\00l\00l\00 \00t\00r\00a\00n\00s\00f\00r\00e\00r\00s\00 \00a\00r\00e\00 \00f\00r\00o\00z\00e\00n\00 \00b\00y\00 \00i\00s\00s\00u\00e\00r\00.")
 (data (i32.const 4824) "\19\00\00\00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00o\00t\00 \00w\00h\00i\00t\00e\00l\00i\00s\00t\00.")
 (data (i32.const 4880) "\1c\00\00\00i\00s\00s\00u\00e\00r\00 \00m\00a\00y\00 \00n\00o\00t\00 \00r\00e\00c\00a\00l\00l\00 \00t\00o\00k\00e\00n\00.")
 (data (i32.const 4940) "\17\00\00\00i\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00a\00u\00t\00h\00o\00r\00i\00t\00y\00.")
 (data (i32.const 4992) "\"\00\00\00d\00e\00m\00o\00 \00t\00o\00k\00e\00n\00 \00c\00a\00n\00 \00n\00o\00t\00 \00a\00c\00c\00e\00p\00t\00 \00a\00c\00t\00i\00o\00n\00 \00\'")
 (data (i32.const 5064) "\1d\00\00\00\'\00,\00 \00p\00l\00e\00a\00s\00e\00 \00c\00h\00e\00c\00k\00 \00y\00o\00u\00r\00 \00c\00o\00m\00m\00a\00n\00d\00.")
 (export "apply" (func $main/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 21 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/computeSize (; 22 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1344)
     (i32.const 22)
     (i32.const 2)
    )
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
 (func $~lib/memory/set_memory (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<String>#constructor (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1312)
     (i32.const 23)
     (i32.const 39)
    )
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
 (func $~lib/array/Array<i64>#constructor (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 134217727)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1312)
     (i32.const 23)
     (i32.const 39)
    )
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
 (func $../../lib/action/Action#constructor (; 27 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i64.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 21)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (get_local $2)
      (i32.const 0)
     )
     (i32.store offset=12
      (get_local $2)
      (call $~lib/array/Array<String>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store offset=16
      (get_local $2)
      (call $~lib/array/Array<i64>#constructor
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.store8 offset=20
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
 (func $~lib/string/String#charCodeAt (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1452)
     (i32.const 37)
     (i32.const 4)
    )
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
 (func $../../lib/log/Logger#s (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (i32.load
       (get_local $1)
      )
     )
    )
    (call $../../lib/log/ts_log_print_s
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
    (br $loop|0)
   )
  )
  (get_local $0)
 )
 (func $../../lib/log/Logger#flush (; 30 ;) (type $iv) (param $0 i32)
  (call $../../lib/log/ts_log_done)
 )
 (func $~lib/array/Array<String>#__get (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/string/allocate (; 32 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1500)
     (i32.const 20)
     (i32.const 2)
    )
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
 (func $~lib/memory/copy_memory (; 33 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/move_memory (; 34 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String#concat (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1452)
     (i32.const 74)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 1488)
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
    (i32.const 1484)
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
 (func $~lib/string/String.__concat (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 1488)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../lib/action/Action#parseName (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.wrap/i64
    (call $../../lib/action/ts_action_name_length)
   )
  )
  (set_local $2
   (i32.const 1484)
  )
  (block $break|0
   (loop $loop|0
    (block $continue|0
     (br_if $break|0
      (i32.ge_s
       (get_local $1)
       (get_local $3)
      )
     )
     (br_if $continue|0
      (i32.eq
       (tee_local $4
        (call $../../lib/action/ts_action_name_read_char
         (get_local $1)
        )
       )
       (i32.const -1)
      )
     )
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (call $~lib/array/Array<String>#__get
        (i32.const 760)
        (i32.and
         (i32.sub
          (i32.and
           (get_local $4)
           (i32.const 255)
          )
          (i32.const 32)
         )
         (i32.const 255)
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
    (br $loop|0)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i32.ne
   (i32.load
    (i32.load offset=8
     (get_local $0)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 1344)
       (i32.const 32)
       (i32.const 4)
      )
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
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 1344)
        (i32.const 56)
        (i32.const 4)
       )
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
 (func $~lib/array/Array<i64>#push (; 39 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 1312)
       (i32.const 143)
       (i32.const 42)
      )
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
 (func $../../lib/action/Action#read_params_nth_string (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (set_local $3
   (call $../../lib/action/ts_action_params_nth_string_length
    (get_local $1)
   )
  )
  (set_local $2
   (i32.const 1484)
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $loop|0
    (block $continue|0
     (br_if $break|0
      (i64.ge_s
       (i64.extend_s/i32
        (get_local $0)
       )
       (get_local $3)
      )
     )
     (br_if $continue|0
      (i64.eq
       (tee_local $4
        (i64.extend_s/i32
         (call $../../lib/action/ts_action_params_nth_string_read_char
          (get_local $1)
          (get_local $0)
         )
        )
       )
       (i64.const -1)
      )
     )
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (call $~lib/array/Array<String>#__get
        (i32.const 760)
        (i32.and
         (i32.sub
          (i32.wrap/i64
           (i64.and
            (get_local $4)
            (i64.const 255)
           )
          )
          (i32.const 32)
         )
         (i32.const 255)
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
    (br $loop|0)
   )
  )
  (get_local $2)
 )
 (func $~lib/array/Array<String>#push (; 41 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 1312)
       (i32.const 143)
       (i32.const 42)
      )
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
 (func $../../lib/log/Logger#i (; 42 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../lib/log/ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../lib/action/Action#parseParams (; 43 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (set_local $4
   (call $../../lib/action/ts_action_params_count)
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i64.ge_s
      (i64.extend_s/i32
       (get_local $1)
      )
      (get_local $4)
     )
    )
    (block $break|1
     (block $case3|1
      (block $case2|1
       (if
        (i32.eqz
         (i32.or
          (i32.eq
           (tee_local $2
            (i32.wrap/i64
             (tee_local $3
              (call $../../lib/action/ts_action_params_nth_type
               (get_local $1)
              )
             )
            )
           )
           (i32.const 1)
          )
          (i32.eq
           (get_local $2)
           (i32.const 2)
          )
         )
        )
        (block
         (br_if $case2|1
          (i32.eq
           (get_local $2)
           (i32.const 5)
          )
         )
         (br $case3|1)
        )
       )
       (set_local $3
        (call $../../lib/action/ts_action_params_nth_as_int
         (get_local $1)
        )
       )
       (drop
        (call $~lib/array/Array<i64>#push
         (i32.load offset=16
          (get_local $0)
         )
         (get_local $3)
        )
       )
       (br $break|1)
      )
      (set_local $2
       (call $../../lib/action/Action#read_params_nth_string
        (get_local $0)
        (get_local $1)
       )
      )
      (drop
       (call $~lib/array/Array<String>#push
        (i32.load offset=12
         (get_local $0)
        )
        (get_local $2)
       )
      )
      (br $break|1)
     )
     (call $../../lib/log/Logger#flush
      (call $../../lib/log/Logger#i
       (call $../../lib/log/Logger#s
        (get_global $../../lib/log/Log)
        (i32.const 1552)
       )
       (get_local $3)
       (i32.const 10)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $loop|0)
   )
  )
  (i32.const 1)
 )
 (func $../../lib/action/Action#init (; 44 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (call $../../lib/action/ts_action_init)
   (block
    (call $../../lib/log/Logger#flush
     (call $../../lib/log/Logger#s
      (get_global $../../lib/log/Log)
      (i32.const 1404)
     )
    )
    (i32.store8 offset=20
     (get_local $0)
     (i32.const 0)
    )
   )
   (i32.store8 offset=20
    (get_local $0)
    (if (result i32)
     (tee_local $1
      (call $../../lib/action/Action#parseName
       (get_local $0)
      )
     )
     (call $../../lib/action/Action#parseParams
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
  (i32.load8_u offset=20
   (get_local $0)
  )
 )
 (func $token/Token#constructor (; 45 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../lib/utils/TSString2CharArray (; 46 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (tee_local $4
    (call $~lib/allocator/arena/allocate_memory
     (i32.add
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
   )
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $3)
     )
    )
    (i32.store8
     (get_local $1)
     (call $~lib/string/String#charCodeAt
      (get_local $0)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $loop|0)
   )
  )
  (i32.store8
   (get_local $1)
   (i32.const 0)
  )
  (get_local $4)
 )
 (func $~lib/allocator/arena/free_memory (; 47 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $../../lib/utils/ReleaseCharArrayMem (; 48 ;) (type $iv) (param $0 i32)
  (if
   (get_local $0)
   (call $~lib/allocator/arena/free_memory
    (get_local $0)
   )
  )
 )
 (func $../../lib/system/ultrain_assert (; 49 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $../../lib/system/eosio_assert
   (get_local $0)
   (tee_local $2
    (call $../../lib/utils/TSString2CharArray
     (get_local $1)
    )
   )
  )
  (call $../../lib/utils/ReleaseCharArrayMem
   (get_local $2)
  )
 )
 (func $../../src/asset/string_to_symbol (; 50 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $../../lib/system/ultrain_assert
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
   (i32.const 1716)
  )
  (block $break|0
   (loop $loop|0
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
     (call $../../lib/log/Logger#flush
      (call $../../lib/log/Logger#i
       (call $../../lib/log/Logger#s
        (get_global $../../lib/log/Log)
        (i32.const 1804)
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
    (br $loop|0)
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
 (func $../../lib/action/Action#get:name (; 51 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=8
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i64>#get:length (; 52 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=4
   (get_local $0)
  )
 )
 (func $~lib/memory/compare_memory (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../lib/name/char_to_symbol (; 55 ;) (type $ii) (param $0 i32) (result i32)
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
    (i32.add
     (get_local $0)
     (i32.const -91)
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
    (i32.add
     (get_local $0)
     (i32.const -48)
    )
   )
  )
  (i32.const 0)
 )
 (func $../../lib/name/StringToName (; 56 ;) (type $iI) (param $0 i32) (result i64)
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
   (loop $loop|0
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
      (i64.extend_u/i32
       (call $../../lib/name/char_to_symbol
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
    (br $loop|0)
   )
  )
  (get_local $3)
 )
 (func $../../lib/name/N (; 57 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../lib/name/StringToName
   (get_local $0)
  )
 )
 (func $../../src/asset/SymbolType#constructor (; 58 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store offset=8
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store8
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 16)
       )
      )
      (i32.const 0)
     )
     (i64.store offset=8
      (get_local $2)
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
 (func $../../src/asset/Asset#isAmountWithinRange (; 59 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (tee_local $1
    (i64.le_s
     (i64.sub
      (i64.const 0)
      (get_global $../../src/asset/Asset.max_amount)
     )
     (i64.load offset=8
      (get_local $0)
     )
    )
   )
   (i64.le_s
    (i64.load offset=8
     (get_local $0)
    )
    (get_global $../../src/asset/Asset.max_amount)
   )
   (get_local $1)
  )
 )
 (func $../../src/asset/is_valid_symbol (; 60 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $0
   (i64.shr_u
    (get_local $0)
    (i64.const 8)
   )
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (i32.const 7)
     )
    )
    (if
     (i32.eqz
      (if (result i32)
       (tee_local $3
        (i32.le_u
         (i32.const 65)
         (i32.and
          (tee_local $2
           (i32.wrap/i64
            (i64.and
             (get_local $0)
             (i64.const 255)
            )
           )
          )
          (i32.const 255)
         )
        )
       )
       (i32.le_u
        (i32.and
         (get_local $2)
         (i32.const 255)
        )
        (i32.const 90)
       )
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (if
     (i64.eq
      (i64.and
       (tee_local $0
        (i64.shr_u
         (get_local $0)
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
         (tee_local $0
          (i64.shr_u
           (get_local $0)
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
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 7)
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
    (br $loop|0)
   )
  )
  (i32.const 1)
 )
 (func $../../src/asset/SymbolType#is_valid (; 61 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../src/asset/is_valid_symbol
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../src/asset/Asset#constructor (; 62 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store offset=8
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store8
      (tee_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 20)
       )
      )
      (i32.const 0)
     )
     (i64.store offset=8
      (get_local $3)
      (i64.const 0)
     )
     (i32.store offset=16
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
  (i32.store offset=16
   (get_local $0)
   (call $../../src/asset/SymbolType#constructor
    (i32.const 0)
    (get_local $2)
   )
  )
  (call $../../lib/system/ultrain_assert
   (call $../../src/asset/Asset#isAmountWithinRange
    (get_local $0)
   )
   (i32.const 2124)
  )
  (call $../../lib/system/ultrain_assert
   (call $../../src/asset/SymbolType#is_valid
    (i32.load offset=16
     (get_local $0)
    )
   )
   (i32.const 2264)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i64>#__get (; 63 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
 (func $../../lib/action/requireAuth (; 64 ;) (type $Iv) (param $0 i64)
  (call $../../lib/action/require_auth
   (get_local $0)
  )
 )
 (func $../../src/asset/SymbolType#name (; 65 ;) (type $iI) (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load offset=8
    (get_local $0)
   )
   (i64.const 8)
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#constructor (; 66 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
 (func $../../utils/serializer/ISerializer#primary_key (; 67 ;) (type $iI) (param $0 i32) (result i64)
  (i64.const 0)
 )
 (func $../../utils/datastream/Bytes#alloc (; 68 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (call $~lib/allocator/arena/allocate_memory
    (get_local $1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../utils/datastream/DataStream#get (; 69 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $../../lib/system/ultrain_assert
   (i32.lt_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
   (i32.const 2680)
  )
  (set_local $1
   (i32.load8_u
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func $../../utils/datastream/DataStream#deserialize8 (; 70 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../utils/datastream/DataStream#get
   (get_local $0)
  )
 )
 (func $../../utils/datastream/DataStream#deserialize16 (; 71 ;) (type $ii) (param $0 i32) (result i32)
  (i32.or
   (i32.shl
    (call $../../utils/datastream/DataStream#deserialize8
     (get_local $0)
    )
    (i32.const 8)
   )
   (call $../../utils/datastream/DataStream#deserialize8
    (get_local $0)
   )
  )
 )
 (func $../../utils/datastream/DataStream#deserialize32 (; 72 ;) (type $ii) (param $0 i32) (result i32)
  (i32.or
   (i32.shl
    (i32.and
     (call $../../utils/datastream/DataStream#deserialize16
      (get_local $0)
     )
     (i32.const 65535)
    )
    (i32.const 16)
   )
   (i32.and
    (call $../../utils/datastream/DataStream#deserialize16
     (get_local $0)
    )
    (i32.const 65535)
   )
  )
 )
 (func $../../utils/datastream/DataStream#deserialize64 (; 73 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  (set_local $1
   (i64.or
    (i64.shl
     (i64.extend_u/i32
      (call $../../utils/datastream/DataStream#deserialize32
       (get_local $0)
      )
     )
     (i64.const 32)
    )
    (i64.extend_u/i32
     (call $../../utils/datastream/DataStream#deserialize32
      (get_local $0)
     )
    )
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 2740)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (get_local $1)
 )
 (func $../../src/asset/SymbolType#deserialize (; 74 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#s
    (get_global $../../lib/log/Log)
    (i32.const 2812)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserialize64
    (get_local $1)
   )
  )
 )
 (func $../../src/asset/Asset#deserialize (; 75 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#s
    (get_global $../../lib/log/Log)
    (i32.const 2636)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserialize64
    (get_local $1)
   )
  )
  (call $../../src/asset/SymbolType#deserialize
   (i32.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../utils/datastream/DataStream#deserializebool (; 76 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $../../utils/datastream/DataStream#deserialize8
    (get_local $0)
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 2864)
    )
    (i64.extend_s/i32
     (get_local $1)
    )
    (i32.const 10)
   )
  )
  (select
   (i32.const 1)
   (i32.const 0)
   (i32.eq
    (get_local $1)
    (i32.const 1)
   )
  )
 )
 (func $token/CurrencyStats#deserialize (; 77 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#deserialize
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/asset/Asset#deserialize
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
  (i64.store offset=16
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserialize64
    (get_local $1)
   )
  )
  (i32.store8 offset=24
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
  (i32.store8 offset=25
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
  (i32.store8 offset=26
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
  (i32.store8 offset=27
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
  (i32.store8 offset=28
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
 )
 (func $../../utils/datastream/unpack<CurrencyStats> (; 78 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=8
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=12
   (get_local $1)
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (call $token/CurrencyStats#deserialize
   (get_local $2)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $../../utils/datastream/Bytes#free (; 79 ;) (type $iv) (param $0 i32)
  (if
   (i32.load
    (get_local $0)
   )
   (call $~lib/allocator/arena/free_memory
    (i32.load
     (get_local $0)
    )
   )
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#load_object_by_primary_iterator (; 80 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $0
   (call $../../lib/db.d/db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 2572)
    )
    (i64.extend_s/i32
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (call $../../utils/datastream/Bytes#alloc
   (get_local $2)
   (get_local $0)
  )
  (drop
   (call $../../lib/db.d/db_get_i64
    (get_local $1)
    (i32.load
     (get_local $2)
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (i32.store8
   (tee_local $0
    (call $../../utils/datastream/unpack<CurrencyStats>
     (get_local $2)
    )
   )
   (i32.const 1)
  )
  (call $../../utils/datastream/Bytes#free
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DItem<CurrencyStats>#constructor (; 81 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/dbmanager/DBManager<CurrencyStats>#get (; 82 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store8
   (get_local $3)
   (i32.const 0)
  )
  (set_local $4
   (call $~lib/array/Array<i64>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (call $../../utils/serializer/ISerializer#primary_key
       (i32.load offset=12
        (call $~lib/array/Array<String>#__get
         (i32.load offset=24
          (get_local $0)
         )
         (get_local $2)
        )
       )
      )
      (get_local $1)
     )
     (block
      (i32.store8
       (tee_local $3
        (i32.load offset=12
         (call $~lib/array/Array<String>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $2)
         )
        )
       )
       (i32.const 1)
      )
      (return
       (get_local $3)
      )
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $loop|0)
     )
    )
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (call $../../lib/log/Logger#i
      (call $../../lib/log/Logger#s
       (call $../../lib/log/Logger#i
        (call $../../lib/log/Logger#s
         (call $../../lib/log/Logger#i
          (call $../../lib/log/Logger#s
           (get_global $../../lib/log/Log)
           (i32.const 2416)
          )
          (i64.load offset=8
           (get_local $0)
          )
          (i32.const 16)
         )
         (i32.const 2464)
        )
        (i64.load offset=16
         (get_local $0)
        )
        (i32.const 16)
       )
       (i32.const 2488)
      )
      (i64.load
       (get_local $0)
      )
      (i32.const 16)
     )
     (i32.const 2512)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $2
   (call $../../lib/db.d/db_find_i64
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
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 2528)
    )
    (i64.extend_s/i32
     (get_local $2)
    )
    (i32.const 10)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (get_local $3)
   )
  )
  (i32.store8
   (tee_local $3
    (call $../../src/dbmanager/DBManager<CurrencyStats>#load_object_by_primary_iterator
     (get_local $0)
     (get_local $2)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (tee_local $4
    (call $../../src/dbmanager/DItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $3)
  )
  (drop
   (call $~lib/array/Array<String>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
  (get_local $3)
 )
 (func $../../lib/action/currentReceiver (; 83 ;) (type $I) (result i64)
  (call $../../lib/action/current_receiver)
 )
 (func $../../utils/datastream/DataStream#valueIsNull (; 84 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eqz
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../utils/datastream/DataStream#put (; 85 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $../../utils/datastream/DataStream#valueIsNull
     (get_local $0)
    )
   )
   (i32.store8
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.const 1)
 )
 (func $../../utils/datastream/DataStream#serialize8 (; 86 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $../../utils/datastream/DataStream#put
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $../../utils/datastream/DataStream#serialize16 (; 87 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $../../utils/datastream/DataStream#serialize8
    (get_local $0)
    (i32.shr_u
     (i32.and
      (get_local $1)
      (i32.const 65280)
     )
     (i32.const 8)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize8
    (get_local $0)
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  (get_local $0)
 )
 (func $../../utils/datastream/DataStream#serialize32 (; 88 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $../../utils/datastream/DataStream#serialize16
    (get_local $0)
    (i32.shr_u
     (i32.and
      (get_local $1)
      (i32.const -65536)
     )
     (i32.const 16)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize16
    (get_local $0)
    (i32.and
     (get_local $1)
     (i32.const 65535)
    )
   )
  )
  (get_local $0)
 )
 (func $../../utils/datastream/DataStream#serialize64 (; 89 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 3164)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize32
    (get_local $0)
    (i32.wrap/i64
     (i64.shr_u
      (i64.and
       (get_local $1)
       (i64.const -4294967296)
      )
      (i64.const 32)
     )
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize32
    (get_local $0)
    (i32.wrap/i64
     (i64.and
      (get_local $1)
      (i64.const 4294967295)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $../../src/asset/SymbolType#serialize (; 90 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (drop
   (call $../../utils/datastream/DataStream#serialize64
    (get_local $1)
    (i64.load offset=8
     (get_local $0)
    )
   )
  )
 )
 (func $../../src/asset/Asset#serialize (; 91 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#s
    (get_global $../../lib/log/Log)
    (i32.const 3116)
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize64
    (get_local $1)
    (i64.load offset=8
     (get_local $0)
    )
   )
  )
  (call $../../src/asset/SymbolType#serialize
   (i32.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../utils/datastream/DataStream#serializebool (; 92 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 3228)
    )
    (i64.extend_s/i32
     (tee_local $2
      (select
       (i32.const 1)
       (i32.const 0)
       (i32.and
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (i32.const 10)
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $token/CurrencyStats#serialize (; 93 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#serialize
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../../src/asset/Asset#serialize
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
  (drop
   (call $../../utils/datastream/DataStream#serialize64
    (get_local $1)
    (i64.load offset=16
     (get_local $0)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=24
     (get_local $0)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=25
     (get_local $0)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=26
     (get_local $0)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=27
     (get_local $0)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=28
     (get_local $0)
    )
   )
  )
 )
 (func $../../utils/datastream/DataStream#pos (; 94 ;) (type $ii) (param $0 i32) (result i32)
  (i32.sub
   (i32.load offset=4
    (get_local $0)
   )
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../utils/datastream/DataStream#tellp (; 95 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../utils/datastream/DataStream#pos
   (get_local $0)
  )
 )
 (func $../../utils/datastream/packSize<CurrencyStats> (; 96 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=12
   (get_local $1)
   (i32.const 0)
  )
  (call $token/CurrencyStats#serialize
   (get_local $0)
   (get_local $1)
  )
  (call $../../utils/datastream/DataStream#tellp
   (get_local $1)
  )
 )
 (func $../../utils/datastream/pack<CurrencyStats> (; 97 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store
   (get_local $1)
   (tee_local $2
    (call $~lib/allocator/arena/allocate_memory
     (tee_local $3
      (call $../../utils/datastream/packSize<CurrencyStats>
       (get_local $0)
      )
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=12
   (get_local $1)
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (call $token/CurrencyStats#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $4)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $4)
   (get_local $3)
  )
  (get_local $4)
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#emplace (; 98 ;) (type $iIiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (call $../../lib/system/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../lib/action/currentReceiver)
   )
   (i32.const 3008)
  )
  (i32.store offset=12
   (tee_local $4
    (call $../../src/dbmanager/DItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (set_local $2
   (call $../../utils/datastream/pack<CurrencyStats>
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (call $../../lib/log/Logger#i
      (call $../../lib/log/Logger#s
       (call $../../lib/log/Logger#i
        (call $../../lib/log/Logger#s
         (call $../../lib/log/Logger#i
          (call $../../lib/log/Logger#s
           (call $../../lib/log/Logger#i
            (call $../../lib/log/Logger#s
             (get_global $../../lib/log/Log)
             (i32.const 3296)
            )
            (i64.load offset=16
             (get_local $0)
            )
            (i32.const 16)
           )
           (i32.const 2488)
          )
          (i64.load
           (get_local $0)
          )
          (i32.const 16)
         )
         (i32.const 3352)
        )
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 2512)
      )
      (get_local $3)
      (i32.const 16)
     )
     (i32.const 3376)
    )
    (i64.extend_s/i32
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (call $../../lib/db.d/db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $3)
    (i32.load
     (get_local $2)
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $../../utils/datastream/Bytes#free
   (get_local $2)
  )
  (drop
   (call $~lib/array/Array<String>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
 )
 (func $token/Token#create (; 99 ;) (type $iIiiiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $../../lib/action/requireAuth
   (i64.load
    (get_local $0)
   )
  )
  (call $../../lib/system/ultrain_assert
   (call $../../src/asset/SymbolType#is_valid
    (tee_local $7
     (i32.load offset=16
      (get_local $2)
     )
    )
   )
   (i32.const 2344)
  )
  (call $../../lib/system/ultrain_assert
   (i32.eqz
    (i32.load8_u
     (tee_local $6
      (call $../../src/dbmanager/DBManager<CurrencyStats>#get
       (tee_local $8
        (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
         (i32.const 0)
         (call $../../lib/name/N
          (i32.const 1280)
         )
         (i64.load
          (get_local $0)
         )
         (call $../../src/asset/SymbolType#name
          (get_local $7)
         )
        )
       )
       (call $../../src/asset/SymbolType#name
        (get_local $7)
       )
      )
     )
    )
   )
   (i32.const 2936)
  )
  (i32.store offset=16
   (i32.load offset=4
    (get_local $6)
   )
   (get_local $7)
  )
  (i32.store offset=8
   (get_local $6)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $6)
   (get_local $1)
  )
  (i32.store8 offset=24
   (get_local $6)
   (i32.and
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store8 offset=25
   (get_local $6)
   (i32.and
    (get_local $4)
    (i32.const 1)
   )
  )
  (i32.store8 offset=26
   (get_local $6)
   (i32.and
    (get_local $5)
    (i32.const 1)
   )
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#emplace
   (get_local $8)
   (i64.load
    (get_local $0)
   )
   (get_local $6)
   (call $../../src/asset/SymbolType#name
    (get_local $7)
   )
  )
 )
 (func $../../src/asset/Asset#isValid (; 100 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (tee_local $1
    (call $../../src/asset/Asset#isAmountWithinRange
     (get_local $0)
    )
   )
   (call $../../src/asset/SymbolType#is_valid
    (i32.load offset=16
     (get_local $0)
    )
   )
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#modify (; 101 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (set_local $5
   (call $~lib/array/Array<i64>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $5)
     )
    )
    (if
     (i64.eq
      (call $../../utils/serializer/ISerializer#primary_key
       (get_local $1)
      )
      (call $../../utils/serializer/ISerializer#primary_key
       (i32.load offset=12
        (call $~lib/array/Array<String>#__get
         (i32.load offset=24
          (get_local $0)
         )
         (get_local $3)
        )
       )
      )
     )
     (set_local $4
      (call $~lib/array/Array<String>#__get
       (i32.load offset=24
        (get_local $0)
       )
       (get_local $3)
      )
     )
     (block
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $loop|0)
     )
    )
   )
  )
  (call $../../lib/system/ultrain_assert
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
   (i32.const 3612)
  )
  (call $../../lib/system/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../lib/action/currentReceiver)
   )
   (i32.const 3716)
  )
  (set_local $6
   (call $../../utils/serializer/ISerializer#primary_key
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $1)
  )
  (call $../../lib/system/ultrain_assert
   (i64.eq
    (get_local $6)
    (call $../../utils/serializer/ISerializer#primary_key
     (i32.load offset=12
      (get_local $4)
     )
    )
   )
   (i32.const 3824)
  )
  (set_local $3
   (call $../../utils/datastream/pack<CurrencyStats>
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (call $../../lib/db.d/db_update_i64
   (i32.load offset=4
    (get_local $4)
   )
   (get_local $2)
   (i32.load
    (get_local $3)
   )
   (i32.load offset=4
    (get_local $3)
   )
  )
  (call $../../utils/datastream/Bytes#free
   (get_local $3)
  )
 )
 (func $token/Account#deserialize (; 102 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#s
    (get_global $../../lib/log/Log)
    (i32.const 3948)
   )
  )
  (call $../../src/asset/Asset#deserialize
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store8 offset=8
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
  (i32.store8 offset=9
   (get_local $0)
   (call $../../utils/datastream/DataStream#deserializebool
    (get_local $1)
   )
  )
 )
 (func $../../utils/datastream/unpack<Account> (; 103 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=8
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=12
   (get_local $1)
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (call $token/Account#deserialize
   (get_local $2)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<Account>#load_object_by_primary_iterator (; 104 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $0
   (call $../../lib/db.d/db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 2572)
    )
    (i64.extend_s/i32
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (call $../../utils/datastream/Bytes#alloc
   (get_local $2)
   (get_local $0)
  )
  (drop
   (call $../../lib/db.d/db_get_i64
    (get_local $1)
    (i32.load
     (get_local $2)
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (i32.store8
   (tee_local $0
    (call $../../utils/datastream/unpack<Account>
     (get_local $2)
    )
   )
   (i32.const 1)
  )
  (call $../../utils/datastream/Bytes#free
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/dbmanager/DBManager<Account>#get (; 105 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store8
   (get_local $3)
   (i32.const 0)
  )
  (set_local $4
   (call $~lib/array/Array<i64>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $4)
     )
    )
    (if
     (i64.eq
      (call $../../utils/serializer/ISerializer#primary_key
       (i32.load offset=12
        (call $~lib/array/Array<String>#__get
         (i32.load offset=24
          (get_local $0)
         )
         (get_local $2)
        )
       )
      )
      (get_local $1)
     )
     (block
      (i32.store8
       (tee_local $3
        (i32.load offset=12
         (call $~lib/array/Array<String>#__get
          (i32.load offset=24
           (get_local $0)
          )
          (get_local $2)
         )
        )
       )
       (i32.const 1)
      )
      (return
       (get_local $3)
      )
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $loop|0)
     )
    )
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (call $../../lib/log/Logger#i
      (call $../../lib/log/Logger#s
       (call $../../lib/log/Logger#i
        (call $../../lib/log/Logger#s
         (call $../../lib/log/Logger#i
          (call $../../lib/log/Logger#s
           (get_global $../../lib/log/Log)
           (i32.const 2416)
          )
          (i64.load offset=8
           (get_local $0)
          )
          (i32.const 16)
         )
         (i32.const 2464)
        )
        (i64.load offset=16
         (get_local $0)
        )
        (i32.const 16)
       )
       (i32.const 2488)
      )
      (i64.load
       (get_local $0)
      )
      (i32.const 16)
     )
     (i32.const 2512)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $2
   (call $../../lib/db.d/db_find_i64
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
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 2528)
    )
    (i64.extend_s/i32
     (get_local $2)
    )
    (i32.const 10)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (get_local $3)
   )
  )
  (i32.store8
   (tee_local $3
    (call $../../src/dbmanager/DBManager<Account>#load_object_by_primary_iterator
     (get_local $0)
     (get_local $2)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (tee_local $4
    (call $../../src/dbmanager/DItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $3)
  )
  (drop
   (call $~lib/array/Array<String>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
  (get_local $3)
 )
 (func $token/Account#constructor (; 106 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store8
     (tee_local $1
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 10)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $1)
     (i32.const 0)
    )
    (i32.store8 offset=8
     (get_local $1)
     (i32.const 0)
    )
    (i32.store8 offset=9
     (get_local $1)
     (i32.const 1)
    )
    (get_local $1)
   )
  )
 )
 (func $token/Account#serialize (; 107 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#serialize
   (i32.load offset=4
    (get_local $0)
   )
   (get_local $1)
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=8
     (get_local $0)
    )
   )
  )
  (drop
   (call $../../utils/datastream/DataStream#serializebool
    (get_local $1)
    (i32.load8_u offset=9
     (get_local $0)
    )
   )
  )
 )
 (func $../../utils/datastream/packSize<Account> (; 108 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=12
   (get_local $1)
   (i32.const 0)
  )
  (call $token/Account#serialize
   (get_local $0)
   (get_local $1)
  )
  (call $../../utils/datastream/DataStream#tellp
   (get_local $1)
  )
 )
 (func $../../utils/datastream/pack<Account> (; 109 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store
   (get_local $1)
   (tee_local $2
    (call $~lib/allocator/arena/allocate_memory
     (tee_local $3
      (call $../../utils/datastream/packSize<Account>
       (get_local $0)
      )
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=12
   (get_local $1)
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (call $token/Account#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $4)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $4)
   (get_local $3)
  )
  (get_local $4)
 )
 (func $../../src/dbmanager/DBManager<Account>#emplace (; 110 ;) (type $iIiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (call $../../lib/system/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../lib/action/currentReceiver)
   )
   (i32.const 3008)
  )
  (i32.store offset=12
   (tee_local $4
    (call $../../src/dbmanager/DItem<CurrencyStats>#constructor
     (i32.const 0)
     (get_local $0)
    )
   )
   (get_local $2)
  )
  (set_local $2
   (call $../../utils/datastream/pack<Account>
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (call $../../lib/log/Logger#i
      (call $../../lib/log/Logger#s
       (call $../../lib/log/Logger#i
        (call $../../lib/log/Logger#s
         (call $../../lib/log/Logger#i
          (call $../../lib/log/Logger#s
           (call $../../lib/log/Logger#i
            (call $../../lib/log/Logger#s
             (get_global $../../lib/log/Log)
             (i32.const 3296)
            )
            (i64.load offset=16
             (get_local $0)
            )
            (i32.const 16)
           )
           (i32.const 2488)
          )
          (i64.load
           (get_local $0)
          )
          (i32.const 16)
         )
         (i32.const 3352)
        )
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 2512)
      )
      (get_local $3)
      (i32.const 16)
     )
     (i32.const 3376)
    )
    (i64.extend_s/i32
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (call $../../lib/db.d/db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $3)
    (i32.load
     (get_local $2)
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $../../utils/datastream/Bytes#free
   (get_local $2)
  )
  (drop
   (call $~lib/array/Array<String>#push
    (i32.load offset=24
     (get_local $0)
    )
    (get_local $4)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Account>#modify (; 111 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (set_local $5
   (call $~lib/array/Array<i64>#get:length
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $break|0
   (loop $loop|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $5)
     )
    )
    (if
     (i64.eq
      (call $../../utils/serializer/ISerializer#primary_key
       (get_local $1)
      )
      (call $../../utils/serializer/ISerializer#primary_key
       (i32.load offset=12
        (call $~lib/array/Array<String>#__get
         (i32.load offset=24
          (get_local $0)
         )
         (get_local $3)
        )
       )
      )
     )
     (set_local $4
      (call $~lib/array/Array<String>#__get
       (i32.load offset=24
        (get_local $0)
       )
       (get_local $3)
      )
     )
     (block
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $loop|0)
     )
    )
   )
  )
  (call $../../lib/system/ultrain_assert
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
   (i32.const 3612)
  )
  (call $../../lib/system/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../lib/action/currentReceiver)
   )
   (i32.const 3716)
  )
  (set_local $6
   (call $../../utils/serializer/ISerializer#primary_key
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $1)
  )
  (call $../../lib/system/ultrain_assert
   (i64.eq
    (get_local $6)
    (call $../../utils/serializer/ISerializer#primary_key
     (i32.load offset=12
      (get_local $4)
     )
    )
   )
   (i32.const 3824)
  )
  (set_local $3
   (call $../../utils/datastream/pack<Account>
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (call $../../lib/db.d/db_update_i64
   (i32.load offset=4
    (get_local $4)
   )
   (get_local $2)
   (i32.load
    (get_local $3)
   )
   (i32.load offset=4
    (get_local $3)
   )
  )
  (call $../../utils/datastream/Bytes#free
   (get_local $3)
  )
 )
 (func $token/Token#add_balance (; 112 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (if
   (i32.load8_u
    (tee_local $0
     (call $../../src/dbmanager/DBManager<Account>#get
      (tee_local $5
       (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
        (i32.const 0)
        (call $../../lib/name/N
         (i32.const 1292)
        )
        (i64.load
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (call $../../src/asset/SymbolType#name
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
   )
   (block
    (call $../../lib/system/ultrain_assert
     (if (result i32)
      (tee_local $3
       (i32.eqz
        (i32.load8_u offset=28
         (get_local $3)
        )
       )
      )
      (get_local $3)
      (i32.load8_u offset=9
       (get_local $0)
      )
     )
     (i32.const 4104)
    )
    (i64.store offset=8
     (i32.load offset=4
      (get_local $0)
     )
     (i64.add
      (i64.load offset=8
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i64.load offset=8
       (get_local $2)
      )
     )
    )
    (call $../../src/dbmanager/DBManager<Account>#modify
     (get_local $5)
     (get_local $0)
     (i64.const 0)
    )
   )
   (block
    (call $../../lib/system/ultrain_assert
     (i32.eqz
      (i32.load8_u offset=28
       (get_local $3)
      )
     )
     (i32.const 4012)
    )
    (i32.store offset=4
     (tee_local $3
      (call $token/Account#constructor
       (i32.const 0)
      )
     )
     (get_local $2)
    )
    (call $../../src/dbmanager/DBManager<Account>#emplace
     (get_local $5)
     (get_local $4)
     (get_local $3)
     (call $../../src/asset/SymbolType#name
      (i32.load offset=16
       (i32.load offset=4
        (get_local $3)
       )
      )
     )
    )
   )
  )
 )
 (func $token/Token#issue (; 113 ;) (type $iIiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $4
   (call $../../src/asset/SymbolType#name
    (i32.load offset=16
     (get_local $2)
    )
   )
  )
  (call $../../lib/system/ultrain_assert
   (i32.load8_u
    (tee_local $3
     (call $../../src/dbmanager/DBManager<CurrencyStats>#get
      (tee_local $5
       (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
        (i32.const 0)
        (call $../../lib/name/N
         (i32.const 1280)
        )
        (i64.load
         (get_local $0)
        )
        (get_local $4)
       )
      )
      (get_local $4)
     )
    )
   )
   (i32.const 3428)
  )
  (call $../../lib/action/requireAuth
   (i64.load offset=16
    (get_local $3)
   )
  )
  (call $../../lib/system/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $2)
   )
   (i32.const 3508)
  )
  (call $../../lib/system/ultrain_assert
   (i64.gt_s
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 0)
   )
   (i32.const 3548)
  )
  (i64.store offset=8
   (i32.load offset=4
    (get_local $3)
   )
   (i64.add
    (i64.load offset=8
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i64.load offset=8
     (get_local $2)
    )
   )
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#modify
   (get_local $5)
   (get_local $3)
   (i64.const 0)
  )
  (call $token/Token#add_balance
   (get_local $0)
   (i64.load offset=16
    (get_local $3)
   )
   (get_local $2)
   (get_local $3)
   (i64.load offset=16
    (get_local $3)
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#s
    (get_global $../../lib/log/Log)
    (i32.const 4184)
   )
  )
  (if
   (i64.ne
    (get_local $1)
    (i64.load offset=16
     (get_local $3)
    )
   )
   (call $../../lib/log/Logger#flush
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 4204)
    )
   )
  )
 )
 (func $../../lib/action/requireRecipient (; 114 ;) (type $Iv) (param $0 i64)
  (call $../../lib/action/require_recipient
   (get_local $0)
  )
 )
 (func $../../lib/action/hasAuth (; 115 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (set_local $1
   (call $../../lib/action/has_auth
    (get_local $0)
   )
  )
  (call $../../lib/log/Logger#flush
   (call $../../lib/log/Logger#i
    (call $../../lib/log/Logger#s
     (get_global $../../lib/log/Log)
     (i32.const 4624)
    )
    (i64.extend_s/i32
     (get_local $1)
    )
    (i32.const 10)
   )
  )
  (i32.ne
   (call $../../lib/action/has_auth
    (get_local $0)
   )
   (i32.const 0)
  )
 )
 (func $token/Token#sub_balance (; 116 ;) (type $iIiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $../../lib/system/ultrain_assert
   (i32.load8_u
    (tee_local $0
     (call $../../src/dbmanager/DBManager<Account>#get
      (tee_local $5
       (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
        (i32.const 0)
        (call $../../lib/name/N
         (i32.const 1292)
        )
        (i64.load
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (call $../../src/asset/SymbolType#name
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
   )
   (i32.const 4488)
  )
  (call $../../lib/system/ultrain_assert
   (i64.ge_s
    (i64.load offset=8
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i64.load offset=8
     (get_local $2)
    )
   )
   (i32.const 4580)
  )
  (if
   (call $../../lib/action/hasAuth
    (get_local $1)
   )
   (block
    (call $../../lib/system/ultrain_assert
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.load8_u offset=24
         (get_local $3)
        )
       )
      )
      (get_local $4)
      (i32.eqz
       (i32.load8_u offset=8
        (get_local $0)
       )
      )
     )
     (i32.const 4688)
    )
    (call $../../lib/system/ultrain_assert
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.load8_u offset=24
         (get_local $3)
        )
       )
      )
      (get_local $4)
      (i32.eqz
       (i32.load8_u offset=27
        (get_local $3)
       )
      )
     )
     (i32.const 4748)
    )
    (call $../../lib/system/ultrain_assert
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.load8_u offset=28
         (get_local $3)
        )
       )
      )
      (get_local $4)
      (i32.load8_u offset=9
       (get_local $0)
      )
     )
     (i32.const 4824)
    )
   )
   (if
    (call $../../lib/action/hasAuth
     (i64.load offset=16
      (get_local $3)
     )
    )
    (call $../../lib/system/ultrain_assert
     (i32.load8_u offset=25
      (get_local $3)
     )
     (i32.const 4880)
    )
    (call $../../lib/system/ultrain_assert
     (i32.const 0)
     (i32.const 4940)
    )
   )
  )
  (i64.store offset=8
   (i32.load offset=4
    (get_local $0)
   )
   (i64.sub
    (i64.load offset=8
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i64.load offset=8
     (get_local $2)
    )
   )
  )
  (call $../../src/dbmanager/DBManager<Account>#modify
   (get_local $5)
   (get_local $0)
   (get_local $1)
  )
 )
 (func $token/Token#transfer (; 117 ;) (type $iIIiiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i64)
  (call $../../lib/action/requireAuth
   (get_local $1)
  )
  (set_local $5
   (call $../../src/asset/SymbolType#name
    (i32.load offset=16
     (get_local $3)
    )
   )
  )
  (call $../../lib/system/ultrain_assert
   (i32.load8_u
    (tee_local $4
     (call $../../src/dbmanager/DBManager<CurrencyStats>#get
      (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
       (i32.const 0)
       (call $../../lib/name/N
        (i32.const 1280)
       )
       (i64.load
        (get_local $0)
       )
       (get_local $5)
      )
      (get_local $5)
     )
    )
   )
   (i32.const 4336)
  )
  (call $../../lib/action/requireRecipient
   (get_local $1)
  )
  (call $../../lib/action/requireRecipient
   (get_local $2)
  )
  (call $../../lib/system/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $3)
   )
   (i32.const 3508)
  )
  (call $../../lib/system/ultrain_assert
   (i64.gt_s
    (i64.load offset=8
     (get_local $3)
    )
    (i64.const 0)
   )
   (i32.const 4420)
  )
  (call $token/Token#sub_balance
   (get_local $0)
   (get_local $1)
   (get_local $3)
   (get_local $4)
  )
  (call $token/Token#add_balance
   (get_local $0)
   (get_local $2)
   (get_local $3)
   (get_local $4)
   (get_local $1)
  )
 )
 (func $main/apply (; 118 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eqz
      (call $../../lib/action/Action#init
       (tee_local $3
        (call $../../lib/action/Action#constructor
         (i32.const 0)
         (get_local $2)
        )
       )
      )
     )
     (block
      (call $../../lib/log/Logger#flush
       (call $../../lib/log/Logger#s
        (get_global $../../lib/log/Log)
        (i32.const 1640)
       )
      )
      (return)
     )
    )
    (set_local $4
     (call $token/Token#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (set_local $0
     (call $../../src/asset/string_to_symbol
      (i32.const 4)
      (i32.const 1704)
     )
    )
    (call $../../lib/log/Logger#flush
     (call $../../lib/log/Logger#s
      (call $../../lib/log/Logger#s
       (get_global $../../lib/log/Log)
       (i32.const 1904)
      )
      (call $../../lib/action/Action#get:name
       (get_local $3)
      )
     )
    )
    (call $../../lib/log/Logger#flush
     (call $../../lib/log/Logger#i
      (call $../../lib/log/Logger#s
       (get_global $../../lib/log/Log)
       (i32.const 1956)
      )
      (i64.extend_s/i32
       (call $~lib/array/Array<i64>#get:length
        (i32.load offset=16
         (get_local $3)
        )
       )
      )
      (i32.const 10)
     )
    )
    (call $../../lib/log/Logger#flush
     (call $../../lib/log/Logger#i
      (call $../../lib/log/Logger#s
       (get_global $../../lib/log/Log)
       (i32.const 2032)
      )
      (i64.extend_s/i32
       (call $~lib/array/Array<i64>#get:length
        (i32.load offset=12
         (get_local $3)
        )
       )
      )
      (i32.const 10)
     )
    )
    (if
     (call $~lib/string/String.__eq
      (call $../../lib/action/Action#get:name
       (get_local $3)
      )
      (i32.const 2108)
     )
     (call $token/Token#create
      (get_local $4)
      (call $../../lib/name/N
       (call $~lib/array/Array<String>#__get
        (i32.load offset=12
         (get_local $3)
        )
        (i32.const 0)
       )
      )
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 6666)
       (get_local $0)
      )
      (i64.ne
       (call $~lib/array/Array<i64>#__get
        (i32.load offset=16
         (get_local $3)
        )
        (i32.const 0)
       )
       (i64.const 0)
      )
      (i64.ne
       (call $~lib/array/Array<i64>#__get
        (i32.load offset=16
         (get_local $3)
        )
        (i32.const 1)
       )
       (i64.const 0)
      )
      (i64.ne
       (call $~lib/array/Array<i64>#__get
        (i32.load offset=16
         (get_local $3)
        )
        (i32.const 2)
       )
       (i64.const 0)
      )
     )
     (if
      (call $~lib/string/String.__eq
       (call $../../lib/action/Action#get:name
        (get_local $3)
       )
       (i32.const 3412)
      )
      (call $token/Token#issue
       (get_local $4)
       (call $../../lib/name/N
        (call $~lib/array/Array<String>#__get
         (i32.load offset=12
          (get_local $3)
         )
         (i32.const 0)
        )
       )
       (call $../../src/asset/Asset#constructor
        (i32.const 0)
        (i64.const 66)
        (get_local $0)
       )
       (call $~lib/array/Array<String>#__get
        (i32.load offset=12
         (get_local $3)
        )
        (i32.const 2)
       )
      )
      (if
       (call $~lib/string/String.__eq
        (call $../../lib/action/Action#get:name
         (get_local $3)
        )
        (i32.const 4316)
       )
       (call $token/Token#transfer
        (get_local $4)
        (call $../../lib/name/N
         (call $~lib/array/Array<String>#__get
          (i32.load offset=12
           (get_local $3)
          )
          (i32.const 0)
         )
        )
        (call $../../lib/name/N
         (call $~lib/array/Array<String>#__get
          (i32.load offset=12
           (get_local $3)
          )
          (i32.const 1)
         )
        )
        (call $../../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 6)
         (get_local $0)
        )
        (call $~lib/array/Array<String>#__get
         (i32.load offset=12
          (get_local $3)
         )
         (i32.const 3)
        )
       )
       (call $../../lib/log/Logger#flush
        (call $../../lib/log/Logger#s
         (call $../../lib/log/Logger#s
          (call $../../lib/log/Logger#s
           (get_global $../../lib/log/Log)
           (i32.const 4992)
          )
          (call $../../lib/action/Action#get:name
           (get_local $3)
          )
         )
         (i32.const 5064)
        )
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 119 ;) (type $v)
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
  (set_global $../../lib/log/Log
   (call $~lib/allocator/arena/allocate_memory
    (i32.const 0)
   )
  )
  (set_global $../../src/asset/Asset.max_amount
   (i64.const 4611686018427387903)
  )
 )
)
