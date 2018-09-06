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
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $Iv (func (param i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $iiiIi (func (param i32 i32 i32 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $I (func (result i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $iIiiiiv (func (param i32 i64 i32 i32 i32 i32)))
 (type $iIIiiii (func (param i32 i64 i64 i32 i32 i32) (result i32)))
 (type $iIIIiiiv (func (param i32 i64 i64 i64 i32 i32 i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iIiiIv (func (param i32 i64 i32 i32 i64)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $iIIIiv (func (param i32 i64 i64 i64 i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIIiv (func (param i32 i64 i64 i32)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $iIiiI (func (param i32 i64 i32 i32) (result i64)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (import "env" "abort" (func $~lib/env/abort))
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
 (import "env" "is_account" (func $../../internal/action.d/env.is_account (param i64) (result i32)))
 (import "env" "require_recipient" (func $../../internal/action.d/env.require_recipient (param i64)))
 (import "env" "db_remove_i64" (func $../../internal/db.d/env.db_remove_i64 (param i32)))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $../../src/utils/PrintableChar i32 (i32.const 1272))
 (global $../../src/asset/CHAR_A i32 (i32.const 65))
 (global $../../src/asset/CHAR_Z i32 (i32.const 90))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $../../src/asset/SYS (mut i64) (i64.const 0))
 (global $../../src/asset/SYS_NAME (mut i64) (i64.const 0))
 (global $../../src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $nft/STATSTABLE i32 (i32.const 1624))
 (global $nft/ACCOUNTTABLE i32 (i32.const 1640))
 (global $nft/TOKENTABLE i32 (i32.const 1664))
 (global $nft/Nft.token_scope (mut i64) (i64.const 0))
 (global $nft/Nft.TOKEN_PRIMARY_ID (mut i64) (i64.const 0))
 (global $nft/Nft.TOKEN_START (mut i64) (i64.const 1))
 (global $~lib/datastream/HEADER_SIZE i32 (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 4996))
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
 (data (i32.const 1280) "\03\00\00\00S\00Y\00S\00")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 1392) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1424) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1488) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1520) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 1624) "\04\00\00\00s\00t\00a\00t\00")
 (data (i32.const 1640) "\07\00\00\00a\00c\00c\00o\00u\00n\00t\00")
 (data (i32.const 1664) "\05\00\00\00t\00o\00k\00e\00n\00")
 (data (i32.const 1680) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1744) "\"\00\00\00t\00o\00k\00e\00n\00.\00c\00r\00e\00a\00t\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00.\00")
 (data (i32.const 1816) "5\00\00\00t\00o\00k\00e\00n\00.\00c\00r\00e\00a\00t\00e\00:\00 \00s\00y\00m\00b\00o\00l\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00u\00s\00t\00 \00b\00e\00 \00a\00 \00w\00h\00o\00l\00e\00 \00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 1928) "\1d\00\00\00t\00o\00k\00e\00n\00.\00c\00r\00e\00a\00t\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00u\00p\00p\00l\00y\00.\00")
 (data (i32.const 1992) "!\00\00\00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00y\00m\00b\00o\00l\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00.\00")
 (data (i32.const 2064) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00")
 (data (i32.const 2176) " \00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00")
 (data (i32.const 2248) "4\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00s\00y\00m\00b\00o\00l\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00u\00s\00t\00 \00b\00e\00 \00a\00 \00w\00h\00o\00l\00e\00 \00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 2360) "*\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00m\00e\00m\00o\00 \00h\00a\00s\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \002\005\006\00 \00b\00y\00t\00e\00s\00.\00")
 (data (i32.const 2448) "&\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00")
 (data (i32.const 2528) "\1e\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y\00.\00")
 (data (i32.const 2592) "\'\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00s\00y\00m\00b\00o\00l\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h\00.\00")
 (data (i32.const 2680) "/\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00e\00x\00c\00e\00e\00d\00s\00 \00a\00v\00a\00i\00l\00a\00b\00l\00e\00 \00s\00u\00p\00p\00l\00y\00.\00")
 (data (i32.const 2784) "@\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00m\00i\00s\00m\00a\00t\00c\00h\00 \00b\00e\00t\00w\00e\00e\00n\00 \00n\00u\00m\00b\00e\00r\00 \00o\00f\00 \00t\00o\00k\00e\00n\00s\00 \00a\00n\00d\00 \00u\00r\00i\00s\00 \00p\00r\00o\00v\00i\00d\00e\00d\00")
 (data (i32.const 2920) "*\00\00\00t\00o\00k\00e\00n\00.\00i\00s\00s\00u\00e\00:\00 \00i\00s\00s\00u\00e\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00z\00e\00r\00o\00.\00")
 (data (i32.const 3008) "\00\00\00\00")
 (data (i32.const 3016) "(\00\00\00s\00u\00b\00S\00u\00p\00p\00l\00y\00 \00f\00a\00i\00l\00e\00d\00,\00 \00s\00t\00a\00t\00e\00s\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00e\00d\00.\00")
 (data (i32.const 3104) "7\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.\00")
 (data (i32.const 3224) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 3336) "U\00\00\00u\00p\00d\00a\00t\00e\00M\00a\00x\00P\00r\00i\00m\00a\00r\00y\00K\00e\00y\00 \00f\00a\00i\00l\00e\00d\00:\00 \00t\00h\00e\00 \00u\00p\00d\00a\00t\00e\00d\00 \00p\00r\00i\00m\00a\00r\00y\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00t\00h\00e\00 \00e\00x\00i\00s\00t\00i\00n\00g\00 \00p\00r\00i\00m\00a\00y\00 \00k\00e\00y\00.\00")
 (data (i32.const 3512) "6\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00p\00e\00c\00i\00f\00i\00e\00d\00 \00I\00D\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 3624) "(\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00c\00a\00n\00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00e\00l\00f\00.\00")
 (data (i32.const 3712) "*\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00t\00o\00 \00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00")
 (data (i32.const 3800) "(\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00")
 (data (i32.const 3888) "<\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00s\00e\00n\00d\00e\00r\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00o\00w\00n\00 \00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00p\00e\00c\00i\00f\00i\00e\00d\00 \00I\00D\00.\00")
 (data (i32.const 4016) "-\00\00\00t\00o\00k\00e\00n\00.\00t\00r\00a\00n\00s\00f\00e\00r\00:\00 \00m\00e\00m\00o\00 \00h\00a\00s\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \002\005\006\00 \00b\00y\00t\00e\00s\00.\00")
 (data (i32.const 4112) ",\00\00\00t\00o\00k\00e\00n\00.\00s\00u\00b\00B\00a\00l\00a\00n\00c\00e\00:\00 \00f\00r\00o\00m\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00.\00")
 (data (i32.const 4208) "&\00\00\00t\00o\00k\00e\00n\00.\00s\00u\00b\00B\00a\00l\00a\00n\00c\00e\00:\00 \00o\00v\00e\00r\00d\00r\00a\00w\00i\00n\00g\00 \00b\00a\00l\00a\00n\00c\00e\00.\00")
 (data (i32.const 4288) "\11\00\00\00s\00u\00b\00 \00B\00a\00l\00a\00n\00c\00e\00 \00e\00r\00a\00s\00e\00")
 (data (i32.const 4328) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00e\00r\00a\00s\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 4440) "*\00\00\00g\00e\00t\00B\00a\00l\00a\00n\00c\00e\00 \00f\00a\00i\00l\00e\00d\00,\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00e\00d\00.\00")
 (data (i32.const 4528) "3\00\00\00t\00o\00k\00e\00n\00O\00f\00O\00w\00n\00e\00r\00B\00y\00I\00n\00d\00e\00x\00 \00f\00a\00i\00l\00e\00d\00,\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00e\00d\00.\00")
 (data (i32.const 4640) "7\00\00\00t\00o\00k\00e\00n\00O\00f\00O\00w\00n\00e\00r\00B\00y\00I\00n\00d\00e\00x\00 \00f\00a\00i\00l\00e\00d\00,\00 \00t\00h\00e\00 \00i\00n\00d\00e\00x\00 \00b\00e\00y\00o\00n\00d\00 \00t\00h\00e\00 \00r\00a\00n\00g\00e\00.\00")
 (data (i32.const 4760) "(\00\00\00g\00e\00t\00S\00u\00p\00p\00l\00y\00 \00f\00a\00i\00l\00e\00d\00,\00 \00s\00t\00a\00t\00e\00s\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00e\00d\00.\00")
 (data (i32.const 4848) "+\00\00\00g\00e\00t\00B\00a\00l\00a\00n\00c\00e\00 \00f\00a\00i\00l\00e\00d\00,\00 \00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00n\00 \00o\00t\00 \00e\00x\00i\00s\00t\00e\00d\00.\00")
 (data (i32.const 4944) "\06\00\00\00c\00r\00e\00a\00t\00e\00")
 (data (i32.const 4960) "\05\00\00\00i\00s\00s\00u\00e\00")
 (data (i32.const 4976) "\08\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00")
 (export "memory" (memory $0))
 (export "Nft#constructor" (func $nft/Nft#constructor))
 (export "Nft#get:_receiver" (func $Nft#get:_receiver))
 (export "Nft#set:_receiver" (func $Nft#set:_receiver))
 (export "Nft#get:receiver" (func $../../src/contract/Contract#get:receiver))
 (export "Nft#setActionName" (func $../../src/contract/Contract#setActionName))
 (export "Nft#isAction" (func $../../src/contract/Contract#isAction))
 (export "Nft#getDataStream" (func $../../src/contract/Contract#getDataStream))
 (export "Nft#onInit" (func $../../src/contract/Contract#onInit))
 (export "Nft#onStop" (func $../../src/contract/Contract#onStop))
 (export "Nft#_super" (func $nft/Nft#_super))
 (export "Nft#create" (func $nft/Nft#create))
 (export "Nft#issue" (func $nft/Nft#issue))
 (export "Nft#transfer" (func $nft/Nft#transfer))
 (export "Nft#ownerof" (func $nft/Nft#ownerof))
 (export "Nft#uriof" (func $nft/Nft#uriof))
 (export "Nft#tokenbyindex" (func $nft/Nft#tokenbyindex))
 (export "Nft#getsupply" (func $nft/Nft#getsupply))
 (export "Nft#getbalance" (func $nft/Nft#getbalance))
 (export "apply" (func $nft/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 16 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 18 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 19 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/memory/memset (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<u8>#constructor (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#charCodeAt (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/memory/memcpy (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/memory/memmove (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u8>#push (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/utils/toUTF8Array (; 27 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/utils/string2cstr (; 28 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../src/utils/ultrain_assert (; 29 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $../../src/log/Logger#s (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../lib/name/char_to_symbol (; 34 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../lib/name/N (; 35 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/account/NAME (; 36 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../lib/name/N
   (get_local $0)
  )
 )
 (func $nft/Nft#_super (; 37 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $nft/Nft#constructor (; 38 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $nft/Nft#_super
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 12)
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
       (get_local $2)
      )
     )
    )
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $../../src/contract/Contract#get:receiver (; 39 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../lib/name_ex/NameEx#constructor (; 40 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $../../src/contract/Contract#setActionName (; 41 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (i32.store offset=8
   (get_local $0)
   (call $../../lib/name_ex/NameEx#constructor
    (i32.const 0)
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $../../lib/name_ex/char_to_symbol_ex (; 42 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../lib/name_ex/NEX (; 43 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../../lib/name_ex/NameEx._eq (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/contract/Contract#isAction (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../lib/name_ex/NameEx._eq
   (i32.load offset=8
    (get_local $0)
   )
   (call $../../lib/name_ex/NEX
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/datastream/DataStream#constructor (; 47 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $../../src/contract/DataStreamFromCurrentAction (; 48 ;) (type $i) (result i32)
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
 (func $../../src/contract/Contract#getDataStream (; 49 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../src/contract/DataStreamFromCurrentAction)
 )
 (func $../../src/contract/Contract#onInit (; 50 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $../../src/contract/Contract#onStop (; 51 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $../../src/action/Action.requireAuth (; 52 ;) (type $Iv) (param $0 i64)
  (call $../../internal/action.d/env.require_auth
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#symbolName (; 53 ;) (type $iI) (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load offset=8
    (get_local $0)
   )
   (i64.const 8)
  )
 )
 (func $../../src/asset/Asset#isSymbolValid (; 54 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i64.load offset=8
    (get_local $0)
   )
  )
  (set_local $1
   (i64.shr_u
    (get_local $1)
    (i64.const 8)
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
       (i32.const 7)
      )
     )
    )
    (block
     (set_local $3
      (i32.wrap/i64
       (i64.and
        (get_local $1)
        (i64.const 255)
       )
      )
     )
     (if
      (if (result i32)
       (tee_local $4
        (i32.lt_u
         (i32.and
          (get_local $3)
          (i32.const 255)
         )
         (get_global $../../src/asset/CHAR_A)
        )
       )
       (get_local $4)
       (i32.gt_u
        (i32.and
         (get_local $3)
         (i32.const 255)
        )
        (get_global $../../src/asset/CHAR_Z)
       )
      )
      (return
       (i32.const 0)
      )
     )
     (set_local $1
      (i64.shr_u
       (get_local $1)
       (i64.const 8)
      )
     )
     (if
      (i64.eq
       (i64.and
        (get_local $1)
        (i64.const 255)
       )
       (i64.const 0)
      )
      (block $break|1
       (loop $continue|1
        (block
         (set_local $1
          (i64.shr_u
           (get_local $1)
           (i64.const 8)
          )
         )
         (if
          (i64.ne
           (i64.and
            (get_local $1)
            (i64.const 255)
           )
           (i64.const 0)
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
        )
        (br_if $continue|1
         (i32.lt_s
          (get_local $2)
          (i32.const 7)
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
  (i32.const 1)
 )
 (func $../../src/asset/Asset#symbolPrecision (; 55 ;) (type $iI) (param $0 i32) (result i64)
  (i64.and
   (i64.load offset=8
    (get_local $0)
   )
   (i64.const 255)
  )
 )
 (func $../../src/asset/Asset#isAmountWithinRange (; 56 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i64.le_u
     (i64.extend_u/i32
      (i32.const 0)
     )
     (get_local $1)
    )
   )
   (i64.le_u
    (get_local $1)
    (get_global $../../src/asset/MAX_AMOUNT)
   )
   (get_local $2)
  )
 )
 (func $../../src/asset/Asset#isValid (; 57 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (tee_local $1
    (call $../../src/asset/Asset#isAmountWithinRange
     (get_local $0)
     (i64.load
      (get_local $0)
     )
    )
   )
   (call $../../src/asset/Asset#isSymbolValid
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#constructor (; 58 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
 (func $../../src/asset/Asset#constructor (; 59 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $nft/CurrencyStats#constructor (; 60 ;) (type $iiiIi) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (i32.store offset=4
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 16)
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
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $~lib/datastream/DataStream#read<u64> (; 61 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../src/asset/Asset#deserialize (; 62 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $nft/CurrencyStats#deserialize (; 63 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#loadObjectByPrimaryIterator (; 64 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  (call $nft/CurrencyStats#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#get (; 65 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  (call $../../src/dbmanager/DBManager<CurrencyStats>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $../../src/asset/Asset#getSymbol (; 66 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/asset/Asset#setSymbol (; 67 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/datastream/DataStream#isMeasureMode (; 68 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eq
   (i32.load
    (get_local $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/datastream/DataStream#write<u64> (; 69 ;) (type $iIv) (param $0 i32) (param $1 i64)
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
 (func $../../src/asset/Asset#serialize (; 70 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 )
 (func $nft/CurrencyStats#serialize (; 71 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  (call $~lib/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<CurrencyStats> (; 72 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $nft/CurrencyStats#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $nft/CurrencyStats#primaryKey (; 73 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/asset/Asset#symbolName
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#emplace (; 74 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
   (i32.const 2064)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<CurrencyStats>
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
  (call $nft/CurrencyStats#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $nft/CurrencyStats#primaryKey
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
 (func $nft/Nft#create (; 75 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $../../src/action/Action.requireAuth
   (call $../../src/contract/Contract#get:receiver
    (get_local $0)
   )
  )
  (set_local $3
   (call $../../src/asset/Asset#symbolName
    (get_local $2)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isSymbolValid
    (get_local $2)
   )
   (i32.const 1744)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#symbolPrecision
     (get_local $2)
    )
    (i64.const 0)
   )
   (i32.const 1816)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $2)
   )
   (i32.const 1928)
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/STATSTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $3)
   )
  )
  (set_local $5
   (call $nft/CurrencyStats#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i64.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $4)
    (get_local $3)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (get_local $6)
   )
   (i32.const 1992)
  )
  (call $../../src/asset/Asset#setSymbol
   (i32.load
    (get_local $5)
   )
   (call $../../src/asset/Asset#getSymbol
    (get_local $2)
   )
  )
  (i32.store offset=4
   (get_local $5)
   (get_local $2)
  )
  (i64.store offset=8
   (get_local $5)
   (get_local $1)
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#emplace
   (get_local $4)
   (call $../../src/contract/Contract#get:receiver
    (get_local $0)
   )
   (get_local $5)
  )
 )
 (func $../../src/asset/Asset#getAmount (; 76 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u64>#constructor (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../src/dbmanager/DBManager<Token>#constructor (; 78 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
 (func $nft/Token#constructor (; 79 ;) (type $iIIiiii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $6
        (call $~lib/memory/memory.allocate
         (i32.const 40)
        )
       )
       (i64.store
        (get_local $6)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $6)
        (i64.const 0)
       )
       (i32.store offset=16
        (get_local $6)
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $6)
        (i32.const 0)
       )
       (i32.store offset=24
        (get_local $6)
        (i32.const 0)
       )
       (i64.store offset=32
        (get_local $6)
        (i64.const 0)
       )
       (get_local $6)
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
  (i32.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (i32.store offset=20
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=24
   (get_local $0)
   (get_local $5)
  )
  (i64.store offset=32
   (get_local $0)
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $~lib/datastream/DataStream#read<u8> (; 80 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/datastream/DataStream#readVarint32 (; 81 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/datastream/DataStream#readString (; 82 ;) (type $ii) (param $0 i32) (result i32)
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
    (i32.const 3008)
   )
  )
  (set_local $3
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (set_local $2
     (i32.add
      (get_global $~lib/datastream/HEADER_SIZE)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.1
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
 (func $nft/Token#deserialize (; 83 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  (call $../../src/asset/Asset#deserialize
   (i32.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store offset=20
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
  (i64.store offset=32
   (get_local $0)
   (call $~lib/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Token>#loadObjectByPrimaryIterator (; 84 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  (call $nft/Token#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<Token>#get (; 85 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  (call $../../src/dbmanager/DBManager<Token>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $nft/Token#increaseId (; 86 ;) (type $iI) (param $0 i32) (result i64)
  (i64.store offset=32
   (get_local $0)
   (i64.add
    (i64.load offset=32
     (get_local $0)
    )
    (i64.const 1)
   )
  )
  (i64.load offset=32
   (get_local $0)
  )
 )
 (func $nft/Nft#availablePrimaryKey (; 87 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (set_local $1
   (call $../../src/dbmanager/DBManager<Token>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/TOKENTABLE)
    )
    (i64.load
     (get_local $0)
    )
    (get_global $nft/Nft.token_scope)
   )
  )
  (set_local $2
   (call $nft/Token#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i32.const 3008)
    (i32.const 3008)
   )
  )
  (set_local $3
   (call $../../src/dbmanager/DBManager<Token>#get
    (get_local $1)
    (get_global $nft/Nft.TOKEN_PRIMARY_ID)
    (get_local $2)
   )
  )
  (set_local $4
   (if (result i64)
    (get_local $3)
    (call $nft/Token#increaseId
     (get_local $2)
    )
    (get_global $nft/Nft.TOKEN_START)
   )
  )
  (get_local $4)
 )
 (func $~lib/array/Array<String>#__get (; 88 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u64>#push (; 89 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/datastream/DataStream#write<u8> (; 90 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/datastream/DataStream#writeVarint32 (; 91 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/utf8util/toUTF8Array (; 92 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/datastream/DataStream#writeString (; 93 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    (block $~lib/memory/memory.copy|inlined.1
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
 (func $nft/Token#serialize (; 94 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  (call $../../src/asset/Asset#serialize
   (i32.load offset=16
    (get_local $0)
   )
   (get_local $1)
  )
  (call $~lib/datastream/DataStream#writeString
   (get_local $1)
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#writeString
   (get_local $1)
   (i32.load offset=24
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
 (func $~lib/datastream/DataStream.measure<Token> (; 95 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $nft/Token#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $nft/Token#primaryKey (; 96 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<Token>#emplace (; 97 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
   (i32.const 2064)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<Token>
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
  (call $nft/Token#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $nft/Token#primaryKey
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
 (func $nft/Nft#mint (; 98 ;) (type $iIIIiiiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $7
   (call $../../src/dbmanager/DBManager<Token>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/TOKENTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_global $nft/Nft.token_scope)
   )
  )
  (set_local $8
   (call $nft/Token#constructor
    (i32.const 0)
    (get_local $1)
    (get_local $2)
    (get_local $4)
    (get_local $5)
    (get_local $6)
   )
  )
  (set_local $9
   (call $../../src/dbmanager/DBManager<Token>#get
    (get_local $7)
    (get_local $1)
    (get_local $8)
   )
  )
  (call $../../src/dbmanager/DBManager<Token>#emplace
   (get_local $7)
   (get_local $3)
   (get_local $8)
  )
 )
 (func $../../src/asset/Asset#setAmount (; 99 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (if
   (call $../../src/asset/Asset#isAmountWithinRange
    (get_local $0)
    (get_local $1)
   )
   (i64.store
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<CurrencyStats>#find (; 100 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/dbmanager/DBManager<CurrencyStats>#modify (; 101 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<CurrencyStats>#find
    (get_local $0)
    (call $nft/CurrencyStats#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3104)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3224)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<CurrencyStats>
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
  (call $nft/CurrencyStats#serialize
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
 (func $nft/Nft#subSupply (; 102 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (set_local $3
   (call $../../src/asset/Asset#symbolName
    (get_local $2)
   )
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/STATSTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $3)
   )
  )
  (set_local $5
   (call $nft/CurrencyStats#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i64.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $4)
    (get_local $3)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 3016)
  )
  (set_local $7
   (i64.add
    (call $../../src/asset/Asset#getAmount
     (i32.load
      (get_local $5)
     )
    )
    (call $../../src/asset/Asset#getAmount
     (get_local $2)
    )
   )
  )
  (call $../../src/asset/Asset#setAmount
   (i32.load
    (get_local $5)
   )
   (get_local $7)
  )
  (call $../../src/dbmanager/DBManager<CurrencyStats>#modify
   (get_local $4)
   (get_local $1)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<NftAccount>#constructor (; 103 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
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
 (func $nft/NftAccount#constructor (; 104 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store offset=4
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u64>#__set (; 105 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $~lib/datastream/DataStream#readVector<u64> (; 106 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $nft/NftAccount#deserialize (; 107 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#deserialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (call $~lib/datastream/DataStream#readVector<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<NftAccount>#loadObjectByPrimaryIterator (; 108 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  (call $nft/NftAccount#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<NftAccount>#get (; 109 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  (call $../../src/dbmanager/DBManager<NftAccount>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (i32.const 1)
 )
 (func $~lib/array/Array<u64>#__get (; 110 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
 (func $~lib/datastream/DataStream#writeVector<u64> (; 111 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<u64>#get:length|inlined.0 (result i32)
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
 (func $nft/NftAccount#serialize (; 112 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/asset/Asset#serialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (call $~lib/datastream/DataStream#writeVector<u64>
   (get_local $1)
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $~lib/datastream/DataStream.measure<NftAccount> (; 113 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $nft/NftAccount#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $nft/NftAccount#primaryKey (; 114 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/asset/Asset#symbolName
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<NftAccount>#emplace (; 115 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
   (i32.const 2064)
  )
  (set_local $3
   (call $~lib/datastream/DataStream.measure<NftAccount>
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
  (call $nft/NftAccount#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $nft/NftAccount#primaryKey
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
 (func $../../src/dbmanager/DBManager<NftAccount>#find (; 116 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/dbmanager/DBManager<NftAccount>#modify (; 117 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<NftAccount>#find
    (get_local $0)
    (call $nft/NftAccount#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3104)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3224)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<NftAccount>
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
  (call $nft/NftAccount#serialize
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
 (func $nft/Nft#addBalance (; 118 ;) (type $iIiiIv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (set_local $5
   (call $../../src/dbmanager/DBManager<NftAccount>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/ACCOUNTTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $6
   (call $nft/NftAccount#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
   )
  )
  (set_local $7
   (call $../../src/dbmanager/DBManager<NftAccount>#get
    (get_local $5)
    (call $../../src/asset/Asset#symbolName
     (get_local $3)
    )
    (get_local $6)
   )
  )
  (if
   (i32.eqz
    (get_local $7)
   )
   (block
    (set_local $8
     (call $nft/NftAccount#constructor
      (i32.const 0)
      (get_local $3)
     )
    )
    (i32.store offset=4
     (get_local $8)
     (get_local $2)
    )
    (call $../../src/dbmanager/DBManager<NftAccount>#emplace
     (get_local $5)
     (get_local $4)
     (get_local $8)
    )
   )
   (block
    (set_local $9
     (i64.add
      (call $../../src/asset/Asset#getAmount
       (i32.load
        (get_local $6)
       )
      )
      (call $../../src/asset/Asset#getAmount
       (get_local $3)
      )
     )
    )
    (call $../../src/asset/Asset#setAmount
     (i32.load
      (get_local $6)
     )
     (get_local $9)
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
         (block $~lib/array/Array<u64>#get:length|inlined.2 (result i32)
          (i32.load offset=4
           (get_local $2)
          )
         )
        )
       )
      )
      (drop
       (call $~lib/array/Array<u64>#push
        (i32.load offset=4
         (get_local $6)
        )
        (call $~lib/array/Array<u64>#__get
         (get_local $2)
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
    (call $../../src/dbmanager/DBManager<NftAccount>#modify
     (get_local $5)
     (get_local $4)
     (get_local $6)
    )
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Token>#find (; 119 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../../src/dbmanager/DBManager<Token>#modify (; 120 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<Token>#find
    (get_local $0)
    (call $nft/Token#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3104)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3224)
  )
  (set_local $4
   (call $~lib/datastream/DataStream.measure<Token>
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
  (call $nft/Token#serialize
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
 (func $nft/Nft#updateMaxPrimaryKey (; 121 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<Token>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/TOKENTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_global $nft/Nft.token_scope)
   )
  )
  (set_local $4
   (call $nft/Token#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i32.const 3008)
    (i32.const 3008)
   )
  )
  (set_local $5
   (call $../../src/dbmanager/DBManager<Token>#get
    (get_local $3)
    (get_global $nft/Nft.TOKEN_PRIMARY_ID)
    (get_local $4)
   )
  )
  (if
   (i32.eqz
    (get_local $5)
   )
   (block
    (set_local $6
     (call $nft/Token#constructor
      (i32.const 0)
      (get_global $nft/Nft.TOKEN_PRIMARY_ID)
      (i64.const 0)
      (call $../../src/asset/Asset#constructor
       (i32.const 0)
       (i64.const 0)
       (i64.const 1397183748)
      )
      (i32.const 3008)
      (i32.const 3008)
     )
    )
    (i64.store offset=32
     (get_local $6)
     (get_local $2)
    )
    (call $../../src/dbmanager/DBManager<Token>#emplace
     (get_local $3)
     (get_local $1)
     (get_local $6)
    )
   )
   (block
    (call $../../src/utils/ultrain_assert
     (i64.gt_u
      (get_local $2)
      (i64.load offset=32
       (get_local $4)
      )
     )
     (i32.const 3336)
    )
    (i64.store offset=32
     (get_local $4)
     (get_local $2)
    )
    (call $../../src/dbmanager/DBManager<Token>#modify
     (get_local $3)
     (i64.const 0)
     (get_local $4)
    )
   )
  )
 )
 (func $nft/Nft#issue (; 122 ;) (type $iIiiiiv) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isSymbolValid
    (get_local $2)
   )
   (i32.const 2176)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#symbolPrecision
     (get_local $2)
    )
    (i64.const 0)
   )
   (i32.const 2248)
  )
  (call $../../src/utils/ultrain_assert
   (i32.le_s
    (i32.load
     (get_local $5)
    )
    (i32.const 256)
   )
   (i32.const 2360)
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/STATSTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (call $../../src/asset/Asset#symbolName
     (get_local $2)
    )
   )
  )
  (set_local $7
   (call $nft/CurrencyStats#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i64.const 0)
   )
  )
  (set_local $8
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $6)
    (call $../../src/asset/Asset#symbolName
     (get_local $2)
    )
    (get_local $7)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $8)
   (i32.const 2448)
  )
  (call $../../src/action/Action.requireAuth
   (i64.load offset=8
    (get_local $7)
   )
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/asset/Asset#isValid
    (get_local $2)
   )
   (i32.const 2528)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#getSymbol
     (get_local $2)
    )
    (call $../../src/asset/Asset#getSymbol
     (i32.load offset=4
      (get_local $7)
     )
    )
   )
   (i32.const 2592)
  )
  (call $../../src/utils/ultrain_assert
   (i64.le_u
    (call $../../src/asset/Asset#getAmount
     (get_local $2)
    )
    (i64.sub
     (call $../../src/asset/Asset#getAmount
      (i32.load offset=4
       (get_local $7)
      )
     )
     (call $../../src/asset/Asset#getAmount
      (i32.load
       (get_local $7)
      )
     )
    )
   )
   (i32.const 2680)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (call $../../src/asset/Asset#getAmount
     (get_local $2)
    )
    (i64.extend_s/i32
     (block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
      (i32.load offset=4
       (get_local $3)
      )
     )
    )
   )
   (i32.const 2784)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (block $~lib/array/Array<String>#get:length|inlined.1 (result i32)
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 2920)
  )
  (set_local $9
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $10
   (call $nft/Nft#availablePrimaryKey
    (get_local $0)
   )
  )
  (set_local $11
   (call $../../src/asset/Asset#constructor
    (i32.const 0)
    (i64.const 1)
    (call $../../src/asset/Asset#getSymbol
     (get_local $2)
    )
   )
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
    )
    (block
     (set_local $13
      (call $~lib/array/Array<String>#__get
       (get_local $3)
       (get_local $12)
      )
     )
     (drop
      (call $~lib/array/Array<u64>#push
       (get_local $9)
       (get_local $10)
      )
     )
     (call $nft/Nft#mint
      (get_local $0)
      (get_local $10)
      (get_local $1)
      (i64.load offset=8
       (get_local $7)
      )
      (get_local $11)
      (get_local $13)
      (get_local $4)
     )
     (set_local $10
      (i64.add
       (get_local $10)
       (i64.const 1)
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $nft/Nft#subSupply
   (get_local $0)
   (i64.load offset=8
    (get_local $7)
   )
   (get_local $2)
  )
  (call $nft/Nft#addBalance
   (get_local $0)
   (get_local $1)
   (get_local $9)
   (get_local $2)
   (i64.load offset=8
    (get_local $7)
   )
  )
  (call $nft/Nft#updateMaxPrimaryKey
   (get_local $0)
   (i64.load offset=8
    (get_local $7)
   )
   (tee_local $10
    (i64.sub
     (get_local $10)
     (i64.const 1)
    )
   )
  )
 )
 (func $nft/Token#symbolName (; 123 ;) (type $iI) (param $0 i32) (result i64)
  (call $../../src/asset/Asset#symbolName
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $../../src/account/Account.isValid (; 124 ;) (type $Ii) (param $0 i64) (result i32)
  (call $../../internal/action.d/env.is_account
   (get_local $0)
  )
 )
 (func $../../src/action/Action.requireRecipient (; 125 ;) (type $Iv) (param $0 i64)
  (call $../../internal/action.d/env.require_recipient
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<NftAccount>#erase (; 126 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 4328)
  )
  (set_local $2
   (call $../../src/dbmanager/DBManager<NftAccount>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (if
   (i32.ge_s
    (get_local $2)
    (i32.const 0)
   )
   (call $../../internal/db.d/env.db_remove_i64
    (get_local $2)
   )
   (nop)
  )
 )
 (func $nft/Nft#subBalance (; 127 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $4
   (call $../../src/dbmanager/DBManager<NftAccount>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/ACCOUNTTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $5
   (call $nft/NftAccount#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<NftAccount>#get
    (get_local $4)
    (call $../../src/asset/Asset#symbolName
     (get_local $3)
    )
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 4112)
  )
  (call $../../src/utils/ultrain_assert
   (i64.ge_u
    (call $../../src/asset/Asset#getAmount
     (i32.load
      (get_local $5)
     )
    )
    (call $../../src/asset/Asset#getAmount
     (get_local $3)
    )
   )
   (i32.const 4208)
  )
  (if
   (i64.eq
    (call $../../src/asset/Asset#getAmount
     (i32.load
      (get_local $5)
     )
    )
    (call $../../src/asset/Asset#getAmount
     (get_local $3)
    )
   )
   (block
    (call $../../src/log/Logger#flush
     (call $../../src/log/Logger#s
      (get_global $../../src/log/Log)
      (i32.const 4288)
     )
    )
    (call $../../src/dbmanager/DBManager<NftAccount>#erase
     (get_local $4)
     (call $nft/NftAccount#primaryKey
      (get_local $5)
     )
    )
   )
   (block
    (set_local $7
     (i64.sub
      (call $../../src/asset/Asset#getAmount
       (i32.load
        (get_local $5)
       )
      )
      (call $../../src/asset/Asset#getAmount
       (get_local $3)
      )
     )
    )
    (call $../../src/asset/Asset#setAmount
     (i32.load
      (get_local $5)
     )
     (get_local $7)
    )
    (set_local $8
     (call $~lib/array/Array<u64>#constructor
      (i32.const 0)
      (i32.sub
       (block $~lib/array/Array<u64>#get:length|inlined.3 (result i32)
        (set_local $8
         (i32.load offset=4
          (get_local $5)
         )
        )
        (i32.load offset=4
         (get_local $8)
        )
       )
       (i32.const 1)
      )
     )
    )
    (block $break|0
     (set_local $9
      (i32.const 0)
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.eqz
        (i32.lt_s
         (get_local $9)
         (block $~lib/array/Array<u64>#get:length|inlined.5 (result i32)
          (set_local $10
           (i32.load offset=4
            (get_local $5)
           )
          )
          (i32.load offset=4
           (get_local $10)
          )
         )
        )
       )
      )
      (if
       (i64.ne
        (call $~lib/array/Array<u64>#__get
         (i32.load offset=4
          (get_local $5)
         )
         (get_local $9)
        )
        (get_local $2)
       )
       (drop
        (call $~lib/array/Array<u64>#push
         (get_local $8)
         (call $~lib/array/Array<u64>#__get
          (i32.load offset=4
           (get_local $5)
          )
          (get_local $9)
         )
        )
       )
      )
      (set_local $9
       (i32.add
        (get_local $9)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    (i32.store offset=4
     (get_local $5)
     (get_local $8)
    )
    (call $../../src/dbmanager/DBManager<NftAccount>#modify
     (get_local $4)
     (get_local $1)
     (get_local $5)
    )
   )
  )
 )
 (func $nft/Nft#transfer (; 128 ;) (type $iIIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (set_local $5
   (call $../../src/dbmanager/DBManager<Token>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/TOKENTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_global $nft/Nft.token_scope)
   )
  )
  (set_local $6
   (call $nft/Token#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i32.const 3008)
    (i32.const 3008)
   )
  )
  (set_local $7
   (call $../../src/dbmanager/DBManager<Token>#get
    (get_local $5)
    (get_local $3)
    (get_local $6)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $7)
   (i32.const 3512)
  )
  (set_local $8
   (call $nft/Token#symbolName
    (get_local $6)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.ne
    (get_local $1)
    (get_local $2)
   )
   (i32.const 3624)
  )
  (call $../../src/action/Action.requireAuth
   (get_local $1)
  )
  (call $../../src/utils/ultrain_assert
   (call $../../src/account/Account.isValid
    (get_local $2)
   )
   (i32.const 3712)
  )
  (set_local $9
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/STATSTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $nft/CurrencyStats#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i64.const 0)
   )
  )
  (set_local $11
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $9)
    (get_local $8)
    (get_local $10)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $11)
   (i32.const 3800)
  )
  (call $../../src/action/Action.requireRecipient
   (get_local $1)
  )
  (call $../../src/action/Action.requireRecipient
   (get_local $2)
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (get_local $1)
    (i64.load offset=8
     (get_local $6)
    )
   )
   (i32.const 3888)
  )
  (call $../../src/utils/ultrain_assert
   (i32.le_s
    (i32.load
     (get_local $4)
    )
    (i32.const 256)
   )
   (i32.const 4016)
  )
  (i64.store offset=8
   (get_local $6)
   (get_local $2)
  )
  (call $../../src/dbmanager/DBManager<Token>#modify
   (get_local $5)
   (i64.const 0)
   (get_local $6)
  )
  (set_local $12
   (i32.load offset=16
    (get_local $6)
   )
  )
  (call $nft/Nft#subBalance
   (get_local $0)
   (get_local $1)
   (get_local $3)
   (get_local $12)
  )
  (set_local $13
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/array/Array<u64>#push
    (get_local $13)
    (get_local $3)
   )
  )
  (call $nft/Nft#addBalance
   (get_local $0)
   (get_local $2)
   (get_local $13)
   (get_local $12)
   (get_local $1)
  )
 )
 (func $nft/Nft#ownerof (; 129 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Token>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/TOKENTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_global $nft/Nft.token_scope)
   )
  )
  (set_local $3
   (call $nft/Token#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i32.const 3008)
    (i32.const 3008)
   )
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<Token>#get
    (get_local $2)
    (get_local $1)
    (get_local $3)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $4)
   (i32.const 4440)
  )
  (i64.load offset=8
   (get_local $3)
  )
 )
 (func $nft/Nft#uriof (; 130 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $../../src/dbmanager/DBManager<Token>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/TOKENTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_global $nft/Nft.token_scope)
   )
  )
  (set_local $3
   (call $nft/Token#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i32.const 3008)
    (i32.const 3008)
   )
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<Token>#get
    (get_local $2)
    (get_local $1)
    (get_local $3)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $4)
   (i32.const 4440)
  )
  (i32.load offset=20
   (get_local $3)
  )
 )
 (func $nft/Nft#tokenbyindex (; 131 ;) (type $iIiiI) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $../../src/account/NAME
    (get_local $2)
   )
  )
  (set_local $5
   (call $../../src/dbmanager/DBManager<NftAccount>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/ACCOUNTTABLE)
    )
    (get_local $1)
    (get_local $4)
   )
  )
  (set_local $6
   (call $nft/NftAccount#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
   )
  )
  (set_local $7
   (call $../../src/dbmanager/DBManager<NftAccount>#get
    (get_local $5)
    (get_local $4)
    (get_local $6)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $7)
   (i32.const 4528)
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (block $~lib/array/Array<u64>#get:length|inlined.6 (result i32)
     (set_local $8
      (i32.load offset=4
       (get_local $6)
      )
     )
     (i32.load offset=4
      (get_local $8)
     )
    )
    (get_local $3)
   )
   (i32.const 4640)
  )
  (call $~lib/array/Array<u64>#__get
   (i32.load offset=4
    (get_local $6)
   )
   (get_local $3)
  )
 )
 (func $nft/Nft#getsupply (; 132 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $../../src/account/NAME
    (get_local $1)
   )
  )
  (set_local $3
   (call $../../src/dbmanager/DBManager<CurrencyStats>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/STATSTABLE)
    )
    (call $../../src/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $2)
   )
  )
  (set_local $4
   (call $nft/CurrencyStats#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
    (i64.const 0)
   )
  )
  (set_local $5
   (call $../../src/dbmanager/DBManager<CurrencyStats>#get
    (get_local $3)
    (get_local $2)
    (get_local $4)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $5)
   (i32.const 4760)
  )
  (i32.load
   (get_local $4)
  )
 )
 (func $nft/Nft#getbalance (; 133 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/account/NAME
    (get_local $2)
   )
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<NftAccount>#constructor
    (i32.const 0)
    (call $../../src/account/NAME
     (get_global $nft/ACCOUNTTABLE)
    )
    (get_local $1)
    (get_local $3)
   )
  )
  (set_local $5
   (call $nft/NftAccount#constructor
    (i32.const 0)
    (call $../../src/asset/Asset#constructor
     (i32.const 0)
     (i64.const 0)
     (i64.const 1397183748)
    )
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<NftAccount>#get
    (get_local $4)
    (get_local $3)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 4848)
  )
  (i32.load
   (get_local $5)
  )
 )
 (func $~lib/array/Array<String>#constructor (; 134 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<String>#__set (; 135 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/datastream/DataStream#readStringVector (; 136 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $nft/apply (; 137 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $4
     (call $nft/Nft#constructor
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
      (i32.const 4944)
     )
     (block
      (set_local $6
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $7
       (call $../../src/asset/Asset#constructor
        (i32.const 0)
        (i64.const 0)
        (i64.const 1397183748)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (get_local $7)
       (get_local $5)
      )
      (call $nft/Nft#create
       (get_local $4)
       (get_local $6)
       (get_local $7)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 4960)
     )
     (block
      (set_local $6
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $7
       (call $../../src/asset/Asset#constructor
        (i32.const 0)
        (i64.const 0)
        (i64.const 1397183748)
       )
      )
      (call $../../src/asset/Asset#deserialize
       (get_local $7)
       (get_local $5)
      )
      (set_local $8
       (call $~lib/datastream/DataStream#readStringVector
        (get_local $5)
       )
      )
      (set_local $9
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (call $nft/Nft#issue
       (get_local $4)
       (get_local $6)
       (get_local $7)
       (get_local $8)
       (get_local $9)
       (get_local $10)
      )
     )
    )
    (if
     (call $../../src/contract/Contract#isAction
      (get_local $4)
      (i32.const 4976)
     )
     (block
      (set_local $6
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $11
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $12
       (call $~lib/datastream/DataStream#read<u64>
        (get_local $5)
       )
      )
      (set_local $10
       (call $~lib/datastream/DataStream#readString
        (get_local $5)
       )
      )
      (call $nft/Nft#transfer
       (get_local $4)
       (get_local $6)
       (get_local $11)
       (get_local $12)
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
 (func $start (; 138 ;) (type $v)
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
  (nop)
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
  (set_global $nft/Nft.token_scope
   (call $../../src/account/NAME
    (i32.const 1664)
   )
  )
 )
 (func $null (; 139 ;) (type $v)
 )
 (func $Nft#get:_receiver (; 140 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $Nft#set:_receiver (; 141 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
)
