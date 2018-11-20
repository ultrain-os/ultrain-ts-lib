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
 (type $iIIv (func (param i32 i64 i64)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $I (func (result i64)))
 (type $iIv (func (param i32 i64)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "ultrainio_assert" (func $~lib/env/ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $../../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $../../../src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $../../../src/log/env.ts_log_done))
 (import "env" "action_data_size" (func $../../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $../../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "db_find_i64" (func $~lib/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_receiver" (func $~lib/env/current_receiver (result i64)))
 (import "env" "db_update_i64" (func $~lib/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
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
 (data (i32.const 1280) "\04\00\00\00U\00G\00A\00S\00")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 1392) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1424) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1488) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1520) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 1624) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1688) "\n\00\00\00t\00e\00s\00t\00I\00n\00s\00e\00r\00t\00")
 (data (i32.const 1712) "\00\00\00\00")
 (data (i32.const 1720) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1728) "\b8\06\00\00\00\00\00\00")
 (data (i32.const 1736) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1744) "\c8\06\00\00\00\00\00\00")
 (data (i32.const 1752) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1760) "\d8\06\00\00\00\00\00\00")
 (data (i32.const 1768) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1776) "\e8\06\00\00\00\00\00\00")
 (data (i32.const 1784) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1792) "\f8\06\00\00\00\00\00\00")
 (data (i32.const 1800) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1808) "\08\07\00\00\00\00\00\00")
 (data (i32.const 1816) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1824) "\18\07\00\00\00\00\00\00")
 (data (i32.const 1832) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1840) "(\07\00\00\00\00\00\00")
 (data (i32.const 1848) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1856) "8\07\00\00\00\00\00\00")
 (data (i32.const 1864) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1872) "H\07\00\00\00\00\00\00")
 (data (i32.const 1880) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1888) "X\07\00\00\00\00\00\00")
 (data (i32.const 1896) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1904) "h\07\00\00\00\00\00\00")
 (data (i32.const 1912) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1920) "x\07\00\00\00\00\00\00")
 (data (i32.const 1928) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1936) "\88\07\00\00\00\00\00\00")
 (data (i32.const 1944) "\13\00\00\00t\00e\00s\00t\00I\00n\00s\00e\00r\00t\00 \00m\00o\00d\00i\00f\00y\00:\00 \00")
 (data (i32.const 1992) "7\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.\00")
 (data (i32.const 2112) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 2224) "\04\00\00\00\00\00\00\00\00\01\02\03\00\00\00\00")
 (data (i32.const 2240) "\b0\08\00\00\04\00\00\00")
 (data (i32.const 2248) "\04\00\00\00\00\00\00\00\04\05\06\07\00\00\00\00")
 (data (i32.const 2264) "\c8\08\00\00\04\00\00\00")
 (data (i32.const 2272) "\03\00\00\00a\00a\00a\00")
 (data (i32.const 2288) "\03\00\00\00b\00b\00b\00")
 (data (i32.const 2304) "\03\00\00\00c\00c\00c\00")
 (data (i32.const 2320) "\0c\00\00\00\00\00\00\00\e0\08\00\00\f0\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2352) "\10\t\00\00\03\00\00\00")
 (data (i32.const 2360) "\03\00\00\00d\00d\00d\00")
 (data (i32.const 2376) "\03\00\00\00e\00e\00e\00")
 (data (i32.const 2392) "\03\00\00\00f\00f\00f\00")
 (data (i32.const 2408) "\0c\00\00\00\00\00\00\008\t\00\00H\t\00\00X\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2440) "h\t\00\00\03\00\00\00")
 (data (i32.const 2448) "\14\00\00\00t\00e\00s\00t\00I\00n\00s\00e\00r\00t\00 \00e\00m\00p\00l\00a\00c\00e\00:\00 \00")
 (data (i32.const 2496) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00")
 (data (i32.const 2608) "\08\00\00\00p\00r\00i\00n\00t\00M\00a\00p\00")
 (data (i32.const 2632) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2640) "H\n\00\00\00\00\00\00")
 (data (i32.const 2648) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2656) "X\n\00\00\00\00\00\00")
 (data (i32.const 2664) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2672) "h\n\00\00\00\00\00\00")
 (data (i32.const 2680) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2688) "x\n\00\00\00\00\00\00")
 (data (i32.const 2696) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2704) "\88\n\00\00\00\00\00\00")
 (data (i32.const 2712) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2720) "\98\n\00\00\00\00\00\00")
 (data (i32.const 2728) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2736) "\a8\n\00\00\00\00\00\00")
 (data (i32.const 2744) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2752) "\b8\n\00\00\00\00\00\00")
 (data (i32.const 2760) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2768) "\c8\n\00\00\00\00\00\00")
 (data (i32.const 2776) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2784) "\d8\n\00\00\00\00\00\00")
 (data (i32.const 2792) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2800) "\e8\n\00\00\00\00\00\00")
 (data (i32.const 2808) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2816) "\f8\n\00\00\00\00\00\00")
 (data (i32.const 2824) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2832) "\08\0b\00\00\00\00\00\00")
 (data (i32.const 2840) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2848) "\18\0b\00\00\00\00\00\00")
 (data (i32.const 2856) "\14\00\00\00p\00r\00i\00n\00t\00 \00m\00a\00p\00 \00e\00x\00i\00s\00t\00i\00n\00g\00:\00 \00")
 (data (i32.const 2904) "\1b\00\00\00D\00a\00t\00a\00b\00a\00s\00e\00 \00d\00a\00t\00a\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00i\00n\00g\00!\00")
 (data (i32.const 2968) "\t\00\00\00m\00a\00p\00 \00s\00i\00z\00e\00:\00")
 (data (i32.const 2992) "\t\00\00\00s\00t\00r\00 \00k\00e\00y\00:\00 \00")
 (data (i32.const 3016) "\t\00\00\00.\00 \00v\00a\00l\00u\00e\00:\00 \00")
 (data (i32.const 3040) "\0b\00\00\00a\00r\00r\00 \00v\00a\00l\00u\00e\00:\00 \00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../../src/utils/PrintableChar i32 (i32.const 1272))
 (global $../../../src/log/Log (mut i32) (i32.const 0))
 (global $../../../src/asset/CHAR_A i32 (i32.const 65))
 (global $../../../src/asset/CHAR_Z i32 (i32.const 90))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $../../../src/asset/SYS (mut i64) (i64.const 0))
 (global $../../../src/asset/SYS_NAME (mut i64) (i64.const 0))
 (global $../../../src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $~lib/datastream/HEADER_SIZE i32 (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 3068))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "apply" (func $test_map_db/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 13 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/arraybuffer/computeSize (; 14 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<u8>#constructor (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.0
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/string/String#charCodeAt (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  i32.ge_u
  if
   i32.const -1
   return
  end
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
 )
 (func $~lib/internal/memory/memcpy (; 19 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    get_local $2
    if (result i32)
     get_local $1
     i32.const 3
     i32.and
    else     
     get_local $2
    end
    if
     block
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
     end
     br $continue|0
    end
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     get_local $2
     i32.const 16
     i32.ge_u
     if
      block
       get_local $0
       get_local $1
       i32.load
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
      end
      br $continue|1
     end
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    block (result i32)
     get_local $0
     tee_local $5
     i32.const 1
     i32.add
     set_local $0
     get_local $5
    end
    block (result i32)
     get_local $1
     tee_local $5
     i32.const 1
     i32.add
     set_local $1
     get_local $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       get_local $0
       i32.const 3
       i32.and
       set_local $5
       get_local $5
       i32.const 1
       i32.eq
       br_if $case0|2
       get_local $5
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       get_local $1
       i32.load
       set_local $3
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 3
       i32.sub
       set_local $2
       block $break|3
        loop $continue|3
         get_local $2
         i32.const 17
         i32.ge_u
         if
          block
           get_local $1
           i32.const 1
           i32.add
           i32.load
           set_local $4
           get_local $0
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 5
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 4
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 9
           i32.add
           i32.load
           set_local $4
           get_local $0
           i32.const 8
           i32.add
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 13
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 12
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 16
           i32.add
           set_local $1
           get_local $0
           i32.const 16
           i32.add
           set_local $0
           get_local $2
           i32.const 16
           i32.sub
           set_local $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      get_local $1
      i32.load
      set_local $3
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 2
      i32.sub
      set_local $2
      block $break|4
       loop $continue|4
        get_local $2
        i32.const 18
        i32.ge_u
        if
         block
          get_local $1
          i32.const 2
          i32.add
          i32.load
          set_local $4
          get_local $0
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 6
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 4
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 10
          i32.add
          i32.load
          set_local $4
          get_local $0
          i32.const 8
          i32.add
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 14
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 12
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 16
          i32.add
          set_local $1
          get_local $0
          i32.const 16
          i32.add
          set_local $0
          get_local $2
          i32.const 16
          i32.sub
          set_local $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     get_local $1
     i32.load
     set_local $3
     block (result i32)
      get_local $0
      tee_local $5
      i32.const 1
      i32.add
      set_local $0
      get_local $5
     end
     block (result i32)
      get_local $1
      tee_local $5
      i32.const 1
      i32.add
      set_local $1
      get_local $5
     end
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     block $break|5
      loop $continue|5
       get_local $2
       i32.const 19
       i32.ge_u
       if
        block
         get_local $1
         i32.const 3
         i32.add
         i32.load
         set_local $4
         get_local $0
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 7
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 4
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 11
         i32.add
         i32.load
         set_local $4
         get_local $0
         i32.const 8
         i32.add
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 15
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 12
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 16
         i32.add
         set_local $1
         get_local $0
         i32.const 16
         i32.add
         set_local $0
         get_local $2
         i32.const 16
         i32.sub
         set_local $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  if (result i32)
   get_local $3
  else   
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
  end
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      get_local $0
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $2
        i32.const 1
        i32.sub
        set_local $2
        block (result i32)
         get_local $0
         tee_local $3
         i32.const 1
         i32.add
         set_local $0
         get_local $3
        end
        block (result i32)
         get_local $1
         tee_local $3
         i32.const 1
         i32.add
         set_local $1
         get_local $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $0
        get_local $1
        i64.load
        i64.store
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        i32.const 8
        i32.add
        set_local $0
        get_local $1
        i32.const 8
        i32.add
        set_local $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     get_local $2
     if
      block
       block (result i32)
        get_local $0
        tee_local $3
        i32.const 1
        i32.add
        set_local $0
        get_local $3
       end
       block (result i32)
        get_local $1
        tee_local $3
        i32.const 1
        i32.add
        set_local $1
        get_local $3
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 1
       i32.sub
       set_local $2
      end
      br $continue|2
     end
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      get_local $0
      get_local $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $0
        get_local $2
        i32.const 1
        i32.sub
        tee_local $2
        i32.add
        get_local $1
        get_local $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        get_local $2
        i32.add
        get_local $1
        get_local $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     get_local $2
     if
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.gt_s
  if
   get_local $1
   get_global $~lib/internal/arraybuffer/MAX_BLENGTH
   i32.le_s
   i32.eqz
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   get_local $2
   call $~lib/internal/arraybuffer/computeSize
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
    block $~lib/memory/memory.fill|inlined.1
     get_local $0
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     get_local $2
     i32.add
     set_local $3
     i32.const 0
     set_local $4
     get_local $1
     get_local $2
     i32.sub
     set_local $5
     get_local $3
     get_local $4
     get_local $5
     call $~lib/internal/memory/memset
    end
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    set_local $5
    block $~lib/memory/memory.copy|inlined.0
     get_local $5
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     set_local $4
     get_local $0
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     set_local $3
     get_local $4
     get_local $3
     get_local $2
     call $~lib/internal/memory/memmove
    end
    block $~lib/memory/memory.fill|inlined.2
     get_local $5
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     get_local $2
     i32.add
     set_local $3
     i32.const 0
     set_local $4
     get_local $1
     get_local $2
     i32.sub
     set_local $6
     get_local $3
     get_local $4
     get_local $6
     call $~lib/internal/memory/memset
    end
    get_local $5
    return
   end
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<u8>#push (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 0
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 1073741816
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 0
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.0
   get_local $3
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   get_local $1
   i32.store8 offset=8
  end
  get_local $5
 )
 (func $~lib/utf8util/toUTF8Array (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_local $0
    i32.load
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $2
     call $~lib/string/String#charCodeAt
     set_local $3
     get_local $3
     i32.const 128
     i32.lt_s
     if
      get_local $1
      get_local $3
      call $~lib/array/Array<u8>#push
      drop
     else      
      get_local $3
      i32.const 2048
      i32.lt_s
      if
       get_local $1
       i32.const 192
       get_local $3
       i32.const 6
       i32.shr_s
       i32.or
       call $~lib/array/Array<u8>#push
       drop
       get_local $1
       i32.const 128
       get_local $3
       i32.const 63
       i32.and
       i32.or
       call $~lib/array/Array<u8>#push
       drop
      else       
       get_local $3
       i32.const 55296
       i32.lt_s
       tee_local $4
       if (result i32)
        get_local $4
       else        
        get_local $3
        i32.const 57344
        i32.ge_s
       end
       if
        get_local $1
        i32.const 224
        get_local $3
        i32.const 12
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       else        
        get_local $2
        i32.const 1
        i32.add
        set_local $2
        i32.const 65536
        get_local $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        get_local $0
        get_local $2
        call $~lib/string/String#charCodeAt
        i32.const 1023
        i32.and
        i32.or
        i32.add
        set_local $3
        get_local $1
        i32.const 240
        get_local $3
        i32.const 18
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 12
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       end
      end
     end
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 0
  call $~lib/array/Array<u8>#push
  drop
  get_local $1
 )
 (func $~lib/utf8util/string2cstr (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  call $~lib/utf8util/toUTF8Array
  set_local $1
  get_local $1
  i32.load
  set_local $2
  get_local $2
  i32.const 8
  i32.add
 )
 (func $~lib/env/ultrain_assert (; 25 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  i32.const 1
  i32.and
  i32.const 0
  i32.eq
  if
   i32.const 0
   get_local $1
   call $~lib/utf8util/string2cstr
   call $~lib/env/ultrainio_assert
  end
 )
 (func $../../../src/utils/toUTF8Array (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_local $0
    i32.load
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $2
     call $~lib/string/String#charCodeAt
     set_local $3
     get_local $3
     i32.const 128
     i32.lt_s
     if
      get_local $1
      get_local $3
      call $~lib/array/Array<u8>#push
      drop
     else      
      get_local $3
      i32.const 2048
      i32.lt_s
      if
       get_local $1
       i32.const 192
       get_local $3
       i32.const 6
       i32.shr_s
       i32.or
       call $~lib/array/Array<u8>#push
       drop
       get_local $1
       i32.const 128
       get_local $3
       i32.const 63
       i32.and
       i32.or
       call $~lib/array/Array<u8>#push
       drop
      else       
       get_local $3
       i32.const 55296
       i32.lt_s
       tee_local $4
       if (result i32)
        get_local $4
       else        
        get_local $3
        i32.const 57344
        i32.ge_s
       end
       if
        get_local $1
        i32.const 224
        get_local $3
        i32.const 12
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       else        
        get_local $2
        i32.const 1
        i32.add
        set_local $2
        i32.const 65536
        get_local $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        get_local $0
        get_local $2
        call $~lib/string/String#charCodeAt
        i32.const 1023
        i32.and
        i32.or
        i32.add
        set_local $3
        get_local $1
        i32.const 240
        get_local $3
        i32.const 18
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 12
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       end
      end
     end
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 0
  call $~lib/array/Array<u8>#push
  drop
  get_local $1
 )
 (func $../../../src/utils/string2cstr (; 27 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  call $../../../src/utils/toUTF8Array
  set_local $1
  get_local $1
  i32.load
  set_local $2
  get_local $2
  i32.const 8
  i32.add
 )
 (func $../../../src/log/Logger#s (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  call $../../../src/utils/string2cstr
  call $../../../src/log/env.ts_log_print_s
  get_local $0
 )
 (func $../../../src/log/Logger#i (; 29 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  get_local $1
  get_local $2
  call $../../../src/log/env.ts_log_print_i
  get_local $0
 )
 (func $../../../src/log/Logger#flush (; 30 ;) (type $iv) (param $0 i32)
  call $../../../src/log/env.ts_log_done
 )
 (func $../../../src/asset/StringToSymbol (; 31 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.load
  set_local $2
  get_local $2
  i32.const 255
  i32.and
  i32.const 7
  i32.le_u
  i32.const 1296
  call $~lib/env/ultrain_assert
  i64.const 0
  set_local $3
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.const 255
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $1
     get_local $4
     i32.const 255
     i32.and
     call $~lib/string/String#charCodeAt
     i32.const 255
     i32.and
     set_local $5
     get_local $5
     get_global $../../../src/asset/CHAR_A
     i32.lt_u
     tee_local $6
     if (result i32)
      get_local $6
     else      
      get_local $5
      get_global $../../../src/asset/CHAR_Z
      i32.gt_u
     end
     if
      get_global $../../../src/log/Log
      i32.const 1520
      call $../../../src/log/Logger#s
      get_local $5
      i64.extend_u/i32
      i32.const 16
      call $../../../src/log/Logger#i
      call $../../../src/log/Logger#flush
     else      
      get_local $3
      get_local $5
      i64.extend_u/i32
      i64.const 8
      get_local $4
      i32.const 1
      i32.add
      i32.const 255
      i32.and
      i64.extend_u/i32
      i64.mul
      i64.shl
      i64.or
      set_local $3
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
  get_local $0
  i32.const 255
  i32.and
  i64.extend_u/i32
  i64.or
  set_local $3
  get_local $3
 )
 (func $../../../src/contract/Contract#constructor (; 32 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i64.const 0
    i64.store
    get_local $2
    i32.const 0
    i32.store offset=8
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i64.store
  get_local $0
 )
 (func $../../../lib/name_ex/NameEx#constructor (; 33 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 16
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    i64.const 0
    i64.store
    get_local $3
    i64.const 0
    i64.store offset=8
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i64.store
  get_local $0
  get_local $2
  i64.store offset=8
  get_local $0
 )
 (func $../../../src/contract/Contract#setActionName (; 34 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  get_local $0
  i32.const 0
  get_local $1
  get_local $2
  call $../../../lib/name_ex/NameEx#constructor
  i32.store offset=8
 )
 (func $../../../src/contract/Contract#onInit (; 35 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  block $~lib/memory/memory.fill|inlined.3
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/datastream/DataStream#constructor (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    i32.const 0
    i32.store
    get_local $3
    i32.const 0
    i32.store offset=4
    get_local $3
    i32.const 0
    i32.store offset=8
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i32.store
  get_local $0
  get_local $2
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
 )
 (func $../../../src/contract/DataStreamFromCurrentAction (; 38 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $../../../internal/action.d/env.action_data_size
  set_local $0
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $1
  get_local $1
  i32.load
  get_local $0
  call $../../../internal/action.d/env.read_action_data
  drop
  i32.const 0
  get_local $1
  i32.load
  get_local $0
  call $~lib/datastream/DataStream#constructor
  set_local $2
  get_local $2
 )
 (func $../../../src/contract/Contract#getDataStream (; 39 ;) (type $ii) (param $0 i32) (result i32)
  call $../../../src/contract/DataStreamFromCurrentAction
 )
 (func $../../../lib/name_ex/char_to_symbol_ex (; 40 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 46
  i32.eq
  if
   i64.const 0
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 95
  i32.eq
  if
   i64.const 1
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 48
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 57
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 48
   i32.sub
   i32.const 2
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 97
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 122
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 97
   i32.sub
   i32.const 12
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 65
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 90
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 65
   i32.sub
   i32.const 38
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  i64.const 255
 )
 (func $../../../lib/name_ex/NEX (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  i32.const 0
  i64.const 0
  i64.const 0
  call $../../../lib/name_ex/NameEx#constructor
  set_local $1
  i64.const 0
  set_local $2
  get_local $0
  i32.load
  set_local $3
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $4
     call $~lib/string/String#charCodeAt
     call $../../../lib/name_ex/char_to_symbol_ex
     set_local $5
     get_local $4
     i32.const 9
     i32.le_s
     if
      get_local $2
      get_local $5
      i64.const 6
      get_local $4
      i64.extend_s/i32
      i64.mul
      i64.shl
      i64.or
      set_local $2
     else      
      get_local $4
      i32.const 10
      i32.eq
      if
       get_local $5
       i64.const 15
       i64.and
       set_local $6
       get_local $2
       get_local $6
       i64.const 6
       get_local $4
       i64.extend_s/i32
       i64.mul
       i64.shl
       i64.or
       set_local $2
       get_local $1
       get_local $2
       i64.store offset=8
       get_local $5
       i64.const 48
       i64.and
       i64.const 4
       i64.shr_u
       set_local $7
       get_local $7
       set_local $2
      else       
       get_local $2
       get_local $5
       i64.const 6
       get_local $4
       i32.const 11
       i32.sub
       i64.extend_s/i32
       i64.mul
       i64.const 2
       i64.add
       i64.shl
       i64.or
       set_local $2
      end
     end
     get_local $3
     i32.const 10
     i32.le_s
     if
      get_local $1
      get_local $2
      i64.store offset=8
     else      
      get_local $1
      get_local $2
      i64.store
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $../../../lib/name_ex/NameEx._eq (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.eq
  tee_local $2
  if (result i32)
   get_local $0
   i64.load offset=8
   get_local $1
   i64.load offset=8
   i64.eq
  else   
   get_local $2
  end
 )
 (func $../../../src/contract/Contract#isAction (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.load offset=8
  get_local $1
  call $../../../lib/name_ex/NEX
  call $../../../lib/name_ex/NameEx._eq
 )
 (func $~lib/datastream/DataStream#read<u8> (; 44 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=8
  i32.add
  i32.load8_u
  set_local $1
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
  get_local $1
 )
 (func $~lib/datastream/DataStream#readVarint32 (; 45 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  set_local $1
  i32.const 0
  set_local $2
  block $break|0
   loop $continue|0
    block
     get_local $0
     call $~lib/datastream/DataStream#read<u8>
     set_local $3
     get_local $1
     get_local $3
     i32.const 127
     i32.and
     i32.const 7
     block (result i32)
      get_local $2
      tee_local $4
      i32.const 1
      i32.add
      set_local $2
      get_local $4
     end
     i32.mul
     i32.shl
     i32.or
     set_local $1
    end
    get_local $3
    i32.const 128
    i32.and
    br_if $continue|0
   end
  end
  get_local $1
 )
 (func $~lib/datastream/DataStream#readString (; 46 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  call $~lib/datastream/DataStream#readVarint32
  set_local $1
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 1712
   return
  end
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   get_global $~lib/datastream/HEADER_SIZE
   get_local $1
   i32.const 1
   i32.shl
   i32.add
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  set_local $3
  get_local $3
  get_local $1
  i32.store
  get_local $3
  set_local $2
  i32.const 0
  set_local $4
  block $break|0
   loop $continue|0
    get_local $4
    get_local $1
    i32.lt_u
    if
     block
      get_local $0
      call $~lib/datastream/DataStream#read<u8>
      set_local $5
      get_local $2
      i32.const 2
      get_local $4
      i32.mul
      i32.add
      get_local $5
      i32.store16 offset=4
      get_local $4
      i32.const 1
      i32.add
      set_local $4
     end
     br $continue|0
    end
   end
  end
  get_local $2
 )
 (func $~lib/datastream/DataStream#read<u32> (; 47 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=8
  i32.add
  i32.load
  set_local $1
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 4
  i32.add
  i32.store offset=8
  get_local $1
 )
 (func $~lib/array/Array<String>#constructor (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.4
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<Array<u8>>#constructor (; 49 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.5
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#constructor (; 50 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 0
    i32.store
    get_local $2
    i32.const 0
    i32.store offset=4
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
  i32.const 0
  get_local $1
  call $~lib/array/Array<u8>#constructor
  i32.store
  get_local $0
  i32.const 0
  get_local $1
  call $~lib/array/Array<Array<u8>>#constructor
  i32.store offset=4
  get_local $0
 )
 (func $~lib/array/Array<Array<String>>#constructor (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.6
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#constructor (; 52 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 0
    i32.store
    get_local $2
    i32.const 0
    i32.store offset=4
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
  i32.const 0
  get_local $1
  call $~lib/array/Array<u8>#constructor
  i32.store
  get_local $0
  i32.const 0
  get_local $1
  call $~lib/array/Array<Array<String>>#constructor
  i32.store offset=4
  get_local $0
 )
 (func $~lib/array/Array<Array<Obj>>#constructor (; 53 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.7
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#constructor (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 0
    i32.store
    get_local $2
    i32.const 0
    i32.store offset=4
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
  i32.const 0
  get_local $1
  call $~lib/array/Array<u8>#constructor
  i32.store
  get_local $0
  i32.const 0
  get_local $1
  call $~lib/array/Array<Array<Obj>>#constructor
  i32.store offset=4
  get_local $0
 )
 (func $../../../lib/name/char_to_symbol (; 55 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 97
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 122
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 97
   i32.sub
   i32.const 6
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 49
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 53
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 49
   i32.sub
   i32.const 1
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  i64.const 0
 )
 (func $../../../lib/name/N (; 56 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $1
  i64.const 0
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    i32.const 12
    i32.le_u
    i32.eqz
    br_if $break|0
    block
     i64.const 0
     set_local $4
     get_local $3
     get_local $1
     i32.lt_u
     tee_local $5
     if (result i32)
      get_local $3
      i32.const 12
      i32.le_u
     else      
      get_local $5
     end
     if
      get_local $0
      get_local $3
      call $~lib/string/String#charCodeAt
      i32.const 255
      i32.and
      call $../../../lib/name/char_to_symbol
      set_local $4
     end
     get_local $3
     i32.const 12
     i32.lt_u
     if
      get_local $4
      i64.const 31
      i64.and
      set_local $4
      get_local $4
      i64.const 64
      i64.const 5
      get_local $3
      i32.const 1
      i32.add
      i64.extend_u/i32
      i64.mul
      i64.sub
      i64.shl
      set_local $4
     else      
      get_local $4
      i64.const 15
      i64.and
      set_local $4
     end
     get_local $2
     get_local $4
     i64.or
     set_local $2
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $../../../src/account/NAME (; 57 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  call $../../../lib/name/N
 )
 (func $../../../src/contract/Contract#get:receiver (; 58 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<A>#constructor (; 59 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i64.const 0
    i64.store
    get_local $4
    i64.const 0
    i64.store offset=8
    get_local $4
    i64.const 0
    i64.store offset=16
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i64.store
  get_local $0
  get_local $2
  i64.store offset=8
  get_local $0
  get_local $3
  i64.store offset=16
  get_local $0
 )
 (func $~lib/dbmanager/DBManager<A>#find (; 60 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load offset=16
  get_local $0
  i64.load
  get_local $1
  call $~lib/env/db_find_i64
  set_local $2
  get_local $2
 )
 (func $~lib/dbmanager/DBManager<A>#exists (; 61 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  call $~lib/dbmanager/DBManager<A>#find
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $~lib/array/Array<String>#__set (; 62 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<String_String>|inlined.0
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/datastream/DataStream#readStringVector (; 63 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  call $~lib/datastream/DataStream#readVarint32
  set_local $1
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<String>#constructor
   return
  end
  i32.const 0
  get_local $1
  call $~lib/array/Array<String>#constructor
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_local $2
    get_local $3
    get_local $0
    call $~lib/datastream/DataStream#readString
    call $~lib/array/Array<String>#__set
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $~lib/array/Array<String>#__get (; 64 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<String>#push (; 65 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<String_String>|inlined.1
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/map/Map<String_String>#readKey<String> (; 66 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<String>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<String>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readString
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<String>#push
  drop
 )
 (func $../../../lib/map/Map<String_String>#readValue<String> (; 67 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<String>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<String>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readString
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<String>#push
  drop
 )
 (func $../../../lib/map/Map<String_String>#deserialize (; 68 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/map/Map<String_String>#readKey<String>
     get_local $0
     get_local $1
     call $../../../lib/map/Map<String_String>#readValue<String>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<String_u32>#readKey<String> (; 69 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<String>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<String>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readString
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<String>#push
  drop
 )
 (func $~lib/array/Array<u32>#constructor (; 70 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.8
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<u32>#__get (; 71 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<u32>#push (; 72 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<u32_u32>|inlined.0
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/map/Map<String_u32>#readValue<u32> (; 73 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u32>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u32>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<u32>#push
  drop
 )
 (func $../../../lib/map/Map<String_u32>#deserialize (; 74 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/map/Map<String_u32>#readKey<String>
     get_local $0
     get_local $1
     call $../../../lib/map/Map<String_u32>#readValue<u32>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<u32_String>#readKey<u32> (; 75 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u32>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u32>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<u32>#push
  drop
 )
 (func $../../../lib/map/Map<u32_String>#readValue<String> (; 76 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<String>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<String>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readString
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<String>#push
  drop
 )
 (func $../../../lib/map/Map<u32_String>#deserialize (; 77 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/map/Map<u32_String>#readKey<u32>
     get_local $0
     get_local $1
     call $../../../lib/map/Map<u32_String>#readValue<String>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<u64>#constructor (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 134217727
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 3
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.9
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<u64>#__get (; 79 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result i64)
   get_local $2
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   i64.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/datastream/DataStream#read<u64> (; 80 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=8
  i32.add
  i64.load
  set_local $1
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  i32.store offset=8
  get_local $1
 )
 (func $~lib/array/Array<u64>#push (; 81 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 3
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 134217727
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 3
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<u64_u64>|inlined.0
   get_local $3
   get_local $2
   i32.const 3
   i32.shl
   i32.add
   get_local $1
   i64.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/map/Map<u64_String>#readKey<u64> (; 82 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u64>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u64>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u64>
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<u64>#push
  drop
 )
 (func $../../../lib/map/Map<u64_String>#readValue<String> (; 83 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<String>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<String>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readString
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<String>#push
  drop
 )
 (func $../../../lib/map/Map<u64_String>#deserialize (; 84 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/map/Map<u64_String>#readKey<u64>
     get_local $0
     get_local $1
     call $../../../lib/map/Map<u64_String>#readValue<String>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<u64_Obj>#readKey<u64> (; 85 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u64>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u64>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u64>
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<u64>#push
  drop
 )
 (func $~lib/array/Array<Obj>#constructor (; 86 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.10
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<Obj>#__get (; 87 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $test_map_db/Obj#deserialize (; 88 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8
  get_local $0
  get_local $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8 offset=1
 )
 (func $~lib/array/Array<Obj>#push (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<Obj_Obj>|inlined.0
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/map/Map<u64_Obj>#readValue<Obj> (; 90 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<Obj>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<Obj>#__get
  set_local $3
  block (result i32)
   i32.const 2
   call $~lib/memory/memory.allocate
   set_local $4
   get_local $4
  end
  set_local $5
  get_local $5
  get_local $1
  call $test_map_db/Obj#deserialize
  get_local $0
  i32.load offset=4
  get_local $5
  call $~lib/array/Array<Obj>#push
  drop
 )
 (func $../../../lib/map/Map<u64_Obj>#deserialize (; 91 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/map/Map<u64_Obj>#readKey<u64>
     get_local $0
     get_local $1
     call $../../../lib/map/Map<u64_Obj>#readValue<Obj>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<Obj_u64>#readKey<Obj> (; 92 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<Obj>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<Obj>#__get
  set_local $3
  block (result i32)
   i32.const 2
   call $~lib/memory/memory.allocate
   set_local $4
   get_local $4
  end
  set_local $5
  get_local $5
  get_local $1
  call $test_map_db/Obj#deserialize
  get_local $0
  i32.load
  get_local $5
  call $~lib/array/Array<Obj>#push
  drop
 )
 (func $../../../lib/map/Map<Obj_u64>#readValue<u64> (; 93 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u64>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u64>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u64>
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<u64>#push
  drop
 )
 (func $../../../lib/map/Map<Obj_u64>#deserialize (; 94 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/map/Map<Obj_u64>#readKey<Obj>
     get_local $0
     get_local $1
     call $../../../lib/map/Map<Obj_u64>#readValue<u64>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<u8>#__get (; 95 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  else   
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#readKey (; 96 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u8>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u8>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u8>
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<u8>#push
  drop
 )
 (func $~lib/array/Array<u8>#__set (; 97 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 0
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 1073741816
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 0
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.1
   get_local $3
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   get_local $2
   i32.store8 offset=8
  end
 )
 (func $~lib/datastream/DataStream#readVector<u8> (; 98 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  call $~lib/datastream/DataStream#readVarint32
  set_local $1
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   return
  end
  i32.const 0
  get_local $1
  call $~lib/array/Array<u8>#constructor
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_local $2
    get_local $3
    get_local $0
    call $~lib/datastream/DataStream#read<u8>
    call $~lib/array/Array<u8>#__set
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $~lib/array/Array<Array<u8>>#push (; 99 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<Array<u8>_Array<u8>>|inlined.0
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#readValue (; 100 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u8>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u8>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readVector<u8>
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<Array<u8>>#push
  drop
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#deserialize (; 101 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_u8>#readKey
     get_local $0
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_u8>#readValue
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#readKey (; 102 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u8>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u8>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u8>
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<u8>#push
  drop
 )
 (func $~lib/array/Array<Array<String>>#push (; 103 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<Array<String>_Array<String>>|inlined.0
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#readValue (; 104 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<String>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<String>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readStringVector
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<Array<String>>#push
  drop
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#deserialize (; 105 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_String>#readKey
     get_local $0
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_String>#readValue
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#readKey (; 106 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<u8>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<u8>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#read<u8>
  set_local $4
  get_local $0
  i32.load
  get_local $4
  call $~lib/array/Array<u8>#push
  drop
 )
 (func $~lib/array/Array<Obj>#__set (; 107 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<Obj_Obj>|inlined.1
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/datastream/DataStream#readComplexVector<Obj> (; 108 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  call $~lib/datastream/DataStream#readVarint32
  set_local $1
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<Obj>#constructor
   return
  end
  i32.const 0
  get_local $1
  call $~lib/array/Array<Obj>#constructor
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $2
     get_local $3
     block (result i32)
      i32.const 2
      call $~lib/memory/memory.allocate
      set_local $4
      get_local $4
     end
     call $~lib/array/Array<Obj>#__set
     get_local $2
     get_local $3
     call $~lib/array/Array<Obj>#__get
     get_local $0
     call $test_map_db/Obj#deserialize
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $~lib/array/Array<Array<Obj>>#push (; 109 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<Array<Obj>_Array<Obj>>|inlined.0
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#readValue (; 110 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  call $~lib/array/Array<Obj>#constructor
  set_local $2
  get_local $2
  i32.const 0
  call $~lib/array/Array<Obj>#__get
  set_local $3
  get_local $1
  call $~lib/datastream/DataStream#readComplexVector<Obj>
  set_local $4
  get_local $0
  i32.load offset=4
  get_local $4
  call $~lib/array/Array<Array<Obj>>#push
  drop
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#deserialize (; 111 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  call $~lib/datastream/DataStream#read<u32>
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_Obj>#readKey
     get_local $0
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_Obj>#readValue
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $test_map_db/A#deserialize (; 112 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/datastream/DataStream#readStringVector
  i32.store
  get_local $0
  i32.load offset=4
  get_local $1
  call $../../../lib/map/Map<String_String>#deserialize
  get_local $0
  i32.load offset=8
  get_local $1
  call $../../../lib/map/Map<String_u32>#deserialize
  get_local $0
  i32.load offset=12
  get_local $1
  call $../../../lib/map/Map<u32_String>#deserialize
  get_local $0
  i32.load offset=16
  get_local $1
  call $../../../lib/map/Map<u64_String>#deserialize
  get_local $0
  i32.load offset=20
  get_local $1
  call $../../../lib/map/Map<u64_String>#deserialize
  get_local $0
  i32.load offset=24
  get_local $1
  call $../../../lib/map/Map<u64_Obj>#deserialize
  get_local $0
  i32.load offset=28
  get_local $1
  call $../../../lib/map/Map<Obj_u64>#deserialize
  get_local $0
  i32.load offset=32
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_u8>#deserialize
  get_local $0
  i32.load offset=36
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_String>#deserialize
  get_local $0
  i32.load offset=40
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_Obj>#deserialize
 )
 (func $~lib/dbmanager/DBManager<A>#loadObjectByPrimaryIterator (; 113 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $4
  i32.const 0
  get_local $4
  i32.load
  get_local $3
  call $~lib/datastream/DataStream#constructor
  set_local $5
  get_local $1
  get_local $4
  i32.load
  get_local $3
  call $~lib/env/db_get_i64
  drop
  get_local $2
  get_local $5
  call $test_map_db/A#deserialize
 )
 (func $~lib/dbmanager/DBManager<A>#get (; 114 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load offset=16
  get_local $0
  i64.load
  get_local $1
  call $~lib/env/db_find_i64
  set_local $3
  get_local $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $3
  get_local $2
  call $~lib/dbmanager/DBManager<A>#loadObjectByPrimaryIterator
  i32.const 1
 )
 (func $~lib/internal/string/compareUnsafe (; 115 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  set_local $5
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $6
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  set_local $7
  block $break|0
   loop $continue|0
    get_local $4
    if (result i32)
     get_local $6
     i32.load16_u offset=4
     get_local $7
     i32.load16_u offset=4
     i32.sub
     tee_local $5
     i32.eqz
    else     
     get_local $4
    end
    if
     block
      get_local $4
      i32.const 1
      i32.sub
      set_local $4
      get_local $6
      i32.const 2
      i32.add
      set_local $6
      get_local $7
      i32.const 2
      i32.add
      set_local $7
     end
     br $continue|0
    end
   end
  end
  get_local $5
 )
 (func $~lib/string/String.__eq (; 116 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   i32.const 1
   return
  end
  get_local $0
  i32.const 0
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $3
  get_local $1
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $3
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $../../../lib/map/Map<String_String>#find (; 117 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<String>#get:length|inlined.1 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<String>#__get
    get_local $1
    call $~lib/string/String.__eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $../../../lib/map/Map<String_String>#set (; 118 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/map/Map<String_String>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<String>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<String>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<String>#__set
  end
 )
 (func $../../../lib/map/Map<String_u32>#find (; 119 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<String>#__get
    get_local $1
    call $~lib/string/String.__eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<u32>#__set (; 120 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<u32_u32>|inlined.1
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $../../../lib/map/Map<String_u32>#set (; 121 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/map/Map<String_u32>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<String>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<u32>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<u32>#__set
  end
 )
 (func $test_map_db/A#primaryKey (; 122 ;) (type $iI) (param $0 i32) (result i64)
  i64.const 0
 )
 (func $~lib/datastream/DataStream#isMeasureMode (; 123 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.const 0
  i32.eq
 )
 (func $~lib/datastream/DataStream#write<u8> (; 124 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=8
   i32.add
   get_local $1
   i32.store8
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#writeVarint32 (; 125 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $continue|0
   block
    get_local $1
    i32.const 127
    i32.and
    set_local $2
    get_local $1
    i32.const 7
    i32.shr_u
    set_local $1
    get_local $2
    get_local $1
    i32.const 0
    i32.gt_u
    if (result i32)
     i32.const 1
    else     
     i32.const 0
    end
    i32.const 7
    i32.shl
    i32.or
    set_local $2
    get_local $0
    get_local $2
    call $~lib/datastream/DataStream#write<u8>
   end
   get_local $1
   br_if $continue|0
  end
 )
 (func $~lib/datastream/DataStream#writeString (; 126 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.load
  set_local $2
  get_local $0
  get_local $2
  call $~lib/datastream/DataStream#writeVarint32
  get_local $2
  i32.const 0
  i32.eq
  if
   return
  end
  get_local $1
  call $~lib/utf8util/toUTF8Array
  set_local $3
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $3
   i32.load
   i32.const 8
   i32.add
   set_local $4
   block $~lib/memory/memory.copy|inlined.1
    get_local $0
    i32.load
    get_local $0
    i32.load offset=8
    i32.add
    set_local $5
    block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
     get_local $3
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    set_local $6
    get_local $5
    get_local $4
    get_local $6
    call $~lib/internal/memory/memmove
   end
  end
  get_local $0
  get_local $0
  i32.load offset=8
  block $~lib/array/Array<u8>#get:length|inlined.1 (result i32)
   get_local $3
   i32.load offset=4
  end
  i32.const 1
  i32.sub
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#writeStringVector (; 127 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<String>#get:length|inlined.4 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $2
  get_local $0
  get_local $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $1
    get_local $3
    call $~lib/array/Array<String>#__get
    call $~lib/datastream/DataStream#writeString
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/datastream/DataStream#write<u32> (; 128 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=8
   i32.add
   get_local $1
   i32.store
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 4
  i32.add
  i32.store offset=8
 )
 (func $../../../lib/map/Map<String_String>#store<String> (; 129 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#writeString
 )
 (func $../../../lib/map/Map<String_String>#serialize (; 130 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<String>#get:length|inlined.5 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<String>#__get
     get_local $1
     call $../../../lib/map/Map<String_String>#store<String>
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<String>#__get
     get_local $1
     call $../../../lib/map/Map<String_String>#store<String>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<String_u32>#store<String> (; 131 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#writeString
 )
 (func $../../../lib/map/Map<String_u32>#store<u32> (; 132 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u32>
 )
 (func $../../../lib/map/Map<String_u32>#serialize (; 133 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<String>#get:length|inlined.6 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<String>#__get
     get_local $1
     call $../../../lib/map/Map<String_u32>#store<String>
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<u32>#__get
     get_local $1
     call $../../../lib/map/Map<String_u32>#store<u32>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<u32_String>#store<u32> (; 134 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u32>
 )
 (func $../../../lib/map/Map<u32_String>#store<String> (; 135 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#writeString
 )
 (func $../../../lib/map/Map<u32_String>#serialize (; 136 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u32>#get:length|inlined.0 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<u32>#__get
     get_local $1
     call $../../../lib/map/Map<u32_String>#store<u32>
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<String>#__get
     get_local $1
     call $../../../lib/map/Map<u32_String>#store<String>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/datastream/DataStream#write<u64> (; 137 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=8
   i32.add
   get_local $1
   i64.store
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  i32.store offset=8
 )
 (func $../../../lib/map/Map<u64_String>#store<u64> (; 138 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u64>
 )
 (func $../../../lib/map/Map<u64_String>#store<String> (; 139 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#writeString
 )
 (func $../../../lib/map/Map<u64_String>#serialize (; 140 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u64>#get:length|inlined.0 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<u64>#__get
     get_local $1
     call $../../../lib/map/Map<u64_String>#store<u64>
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<String>#__get
     get_local $1
     call $../../../lib/map/Map<u64_String>#store<String>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<u64_Obj>#store<u64> (; 141 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u64>
 )
 (func $test_map_db/Obj#serialize (; 142 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $1
  get_local $0
  i32.load8_u
  call $~lib/datastream/DataStream#write<u8>
  get_local $1
  get_local $0
  i32.load8_u offset=1
  call $~lib/datastream/DataStream#write<u8>
 )
 (func $../../../lib/map/Map<u64_Obj>#store<Obj> (; 143 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $2
  call $test_map_db/Obj#serialize
 )
 (func $../../../lib/map/Map<u64_Obj>#serialize (; 144 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u64>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<u64>#__get
     get_local $1
     call $../../../lib/map/Map<u64_Obj>#store<u64>
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<Obj>#__get
     get_local $1
     call $../../../lib/map/Map<u64_Obj>#store<Obj>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/map/Map<Obj_u64>#store<Obj> (; 145 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $2
  call $test_map_db/Obj#serialize
 )
 (func $../../../lib/map/Map<Obj_u64>#store<u64> (; 146 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u64>
 )
 (func $../../../lib/map/Map<Obj_u64>#serialize (; 147 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<Obj>#get:length|inlined.0 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<Obj>#__get
     get_local $1
     call $../../../lib/map/Map<Obj_u64>#store<Obj>
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<u64>#__get
     get_local $1
     call $../../../lib/map/Map<Obj_u64>#store<u64>
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#storeKey (; 148 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u8>
 )
 (func $~lib/array/Array<Array<u8>>#__get (; 149 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/datastream/DataStream#writeVector<u8> (; 150 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u8>#get:length|inlined.4 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $2
  get_local $0
  get_local $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $1
    get_local $3
    call $~lib/array/Array<u8>#__get
    call $~lib/datastream/DataStream#write<u8>
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#storeValue (; 151 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/array/Array<u8>#get:length|inlined.3 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $3
  get_local $3
  i32.const 0
  i32.eq
  if
   get_local $2
   i32.const 0
   call $~lib/datastream/DataStream#writeVarint32
  else   
   get_local $1
   i32.const 0
   call $~lib/array/Array<u8>#__get
   set_local $4
   get_local $2
   get_local $1
   call $~lib/datastream/DataStream#writeVector<u8>
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#serialize (; 152 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u8>#get:length|inlined.2 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<u8>#__get
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_u8>#storeKey
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<Array<u8>>#__get
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_u8>#storeValue
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#storeKey (; 153 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u8>
 )
 (func $~lib/array/Array<Array<String>>#__get (; 154 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#storeValue (; 155 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/array/Array<String>#get:length|inlined.7 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $3
  get_local $3
  i32.const 0
  i32.eq
  if
   get_local $2
   i32.const 0
   call $~lib/datastream/DataStream#writeVarint32
  else   
   get_local $1
   i32.const 0
   call $~lib/array/Array<String>#__get
   set_local $4
   get_local $2
   get_local $1
   call $~lib/datastream/DataStream#writeStringVector
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#serialize (; 156 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u8>#get:length|inlined.5 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<u8>#__get
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_String>#storeKey
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<Array<String>>#__get
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_String>#storeValue
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#storeKey (; 157 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  get_local $1
  call $~lib/datastream/DataStream#write<u8>
 )
 (func $~lib/array/Array<Array<Obj>>#__get (; 158 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/datastream/DataStream#writeComplexVector<Obj> (; 159 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<Obj>#get:length|inlined.2 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $2
  get_local $0
  get_local $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $3
    call $~lib/array/Array<Obj>#__get
    get_local $0
    call $test_map_db/Obj#serialize
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#storeValue (; 160 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/array/Array<Obj>#get:length|inlined.1 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $3
  get_local $3
  i32.const 0
  i32.eq
  if
   get_local $2
   i32.const 0
   call $~lib/datastream/DataStream#writeVarint32
  else   
   get_local $1
   i32.const 0
   call $~lib/array/Array<Obj>#__get
   set_local $4
   get_local $2
   get_local $1
   call $~lib/datastream/DataStream#writeComplexVector<Obj>
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#serialize (; 161 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/array/Array<u8>#get:length|inlined.6 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $2
   i32.load offset=4
  end
  set_local $2
  get_local $1
  get_local $2
  call $~lib/datastream/DataStream#write<u32>
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $0
     i32.load
     get_local $3
     call $~lib/array/Array<u8>#__get
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_Obj>#storeKey
     get_local $0
     get_local $0
     i32.load offset=4
     get_local $3
     call $~lib/array/Array<Array<Obj>>#__get
     get_local $1
     call $../../../lib/arraymap/ArrayMap<u8_Obj>#storeValue
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $test_map_db/A#serialize (; 162 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $1
  get_local $0
  i32.load
  call $~lib/datastream/DataStream#writeStringVector
  get_local $0
  i32.load offset=4
  get_local $1
  call $../../../lib/map/Map<String_String>#serialize
  get_local $0
  i32.load offset=8
  get_local $1
  call $../../../lib/map/Map<String_u32>#serialize
  get_local $0
  i32.load offset=12
  get_local $1
  call $../../../lib/map/Map<u32_String>#serialize
  get_local $0
  i32.load offset=16
  get_local $1
  call $../../../lib/map/Map<u64_String>#serialize
  get_local $0
  i32.load offset=20
  get_local $1
  call $../../../lib/map/Map<u64_String>#serialize
  get_local $0
  i32.load offset=24
  get_local $1
  call $../../../lib/map/Map<u64_Obj>#serialize
  get_local $0
  i32.load offset=28
  get_local $1
  call $../../../lib/map/Map<Obj_u64>#serialize
  get_local $0
  i32.load offset=32
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_u8>#serialize
  get_local $0
  i32.load offset=36
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_String>#serialize
  get_local $0
  i32.load offset=40
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_Obj>#serialize
 )
 (func $~lib/datastream/DataStream.measure<A> (; 163 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  set_local $1
  get_local $0
  get_local $1
  call $test_map_db/A#serialize
  get_local $1
  i32.load offset=8
 )
 (func $~lib/dbmanager/DBManager<A>#modify (; 164 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_local $2
  call $test_map_db/A#primaryKey
  call $~lib/dbmanager/DBManager<A>#find
  set_local $3
  get_local $3
  i32.const 0
  i32.ge_s
  i32.const 1992
  call $~lib/env/ultrain_assert
  get_local $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 2112
  call $~lib/env/ultrain_assert
  get_local $2
  call $~lib/datastream/DataStream.measure<A>
  set_local $4
  i32.const 0
  get_local $4
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $5
  i32.const 0
  get_local $5
  i32.load
  get_local $4
  call $~lib/datastream/DataStream#constructor
  set_local $6
  get_local $2
  get_local $6
  call $test_map_db/A#serialize
  get_local $3
  get_local $1
  get_local $6
  i32.load
  get_local $6
  i32.load offset=8
  call $~lib/env/db_update_i64
 )
 (func $../../../lib/map/Map<u32_String>#find (; 165 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<u32>#get:length|inlined.2 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<u32>#__get
    get_local $1
    i32.eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $../../../lib/map/Map<u32_String>#set (; 166 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/map/Map<u32_String>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<u32>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<String>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<String>#__set
  end
 )
 (func $test_map_db/Obj#constructor (; 167 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 2
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    i32.const 0
    i32.store8
    get_local $3
    i32.const 0
    i32.store8 offset=1
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.store8 offset=1
  get_local $0
 )
 (func $../../../lib/map/Map<u64_Obj>#find (; 168 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<u64>#get:length|inlined.3 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<u64>#__get
    get_local $1
    i64.eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $../../../lib/map/Map<u64_Obj>#set (; 169 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/map/Map<u64_Obj>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<u64>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<Obj>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<Obj>#__set
  end
 )
 (func $test_map_db/Obj.__eq (; 170 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load8_u
  get_local $1
  i32.load8_u
  i32.eq
  tee_local $2
  if (result i32)
   get_local $0
   i32.load8_u offset=1
   get_local $1
   i32.load8_u offset=1
   i32.eq
  else   
   get_local $2
  end
 )
 (func $../../../lib/map/Map<Obj_u64>#find (; 171 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<Obj>#get:length|inlined.4 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<Obj>#__get
    get_local $1
    call $test_map_db/Obj.__eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<u64>#__set (; 172 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 3
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 134217727
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 3
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<u64_u64>|inlined.1
   get_local $3
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   get_local $2
   i64.store offset=8
  end
 )
 (func $../../../lib/map/Map<Obj_u64>#set (; 173 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/map/Map<Obj_u64>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<Obj>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<u64>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<u64>#__set
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#find (; 174 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<u8>#get:length|inlined.8 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    get_local $1
    i32.const 255
    i32.and
    i32.eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<Array<u8>>#__set (; 175 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<Array<u8>_Array<u8>>|inlined.1
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_u8>#set (; 176 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_u8>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<u8>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<Array<u8>>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<Array<u8>>#__set
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#find (; 177 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<u8>#get:length|inlined.10 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    get_local $1
    i32.const 255
    i32.and
    i32.eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<Array<String>>#__set (; 178 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<Array<String>_Array<String>>|inlined.1
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_String>#set (; 179 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_String>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<u8>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<Array<String>>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<Array<String>>#__set
  end
 )
 (func $~lib/array/Array<Obj>#__unchecked_set (; 180 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#find (; 181 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<u8>#get:length|inlined.12 (result i32)
     get_local $0
     i32.load
     set_local $3
     get_local $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    i32.load
    get_local $2
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    get_local $1
    i32.const 255
    i32.and
    i32.eq
    if
     get_local $2
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<Array<Obj>>#__set (; 182 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<Array<Obj>_Array<Obj>>|inlined.1
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $../../../lib/arraymap/ArrayMap<u8_Obj>#set (; 183 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  call $../../../lib/arraymap/ArrayMap<u8_Obj>#find
  set_local $3
  get_local $3
  i32.const -1
  i32.eq
  if
   get_local $0
   i32.load
   get_local $1
   call $~lib/array/Array<u8>#push
   drop
   get_local $0
   i32.load offset=4
   get_local $2
   call $~lib/array/Array<Array<Obj>>#push
   drop
  else   
   get_local $0
   i32.load offset=4
   get_local $3
   get_local $2
   call $~lib/array/Array<Array<Obj>>#__set
  end
 )
 (func $~lib/dbmanager/DBManager<A>#emplace (; 184 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  get_local $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 2496
  call $~lib/env/ultrain_assert
  get_local $2
  call $~lib/datastream/DataStream.measure<A>
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $4
  i32.const 0
  get_local $4
  i32.load
  get_local $3
  call $~lib/datastream/DataStream#constructor
  set_local $5
  get_local $2
  get_local $5
  call $test_map_db/A#serialize
  get_local $2
  call $test_map_db/A#primaryKey
  set_local $6
  get_local $0
  i64.load offset=16
  get_local $0
  i64.load
  get_local $1
  get_local $6
  get_local $5
  i32.load
  get_local $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
 )
 (func $test_map_db/TestMap#testInsert (; 185 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block (result i32)
   i32.const 44
   call $~lib/memory/memory.allocate
   set_local $4
   get_local $4
   i32.const 0
   i32.const 0
   call $~lib/array/Array<String>#constructor
   i32.store
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1728
    i32.store
    get_local $5
    i32.const 1744
    i32.store offset=4
    get_local $5
   end
   i32.store offset=4
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1760
    i32.store
    get_local $5
    i32.const 1776
    i32.store offset=4
    get_local $5
   end
   i32.store offset=8
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1792
    i32.store
    get_local $5
    i32.const 1808
    i32.store offset=4
    get_local $5
   end
   i32.store offset=12
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1824
    i32.store
    get_local $5
    i32.const 1840
    i32.store offset=4
    get_local $5
   end
   i32.store offset=16
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1856
    i32.store
    get_local $5
    i32.const 1872
    i32.store offset=4
    get_local $5
   end
   i32.store offset=20
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1888
    i32.store
    get_local $5
    i32.const 1904
    i32.store offset=4
    get_local $5
   end
   i32.store offset=24
   get_local $4
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 1920
    i32.store
    get_local $5
    i32.const 1936
    i32.store offset=4
    get_local $5
   end
   i32.store offset=28
   get_local $4
   i32.const 0
   i32.const 0
   call $../../../lib/arraymap/ArrayMap<u8_u8>#constructor
   i32.store offset=32
   get_local $4
   i32.const 0
   i32.const 0
   call $../../../lib/arraymap/ArrayMap<u8_String>#constructor
   i32.store offset=36
   get_local $4
   i32.const 0
   i32.const 0
   call $../../../lib/arraymap/ArrayMap<u8_Obj>#constructor
   i32.store offset=40
   get_local $4
  end
  set_local $6
  i32.const 0
  i32.const 520
  call $../../../src/account/NAME
  get_local $0
  call $../../../src/contract/Contract#get:receiver
  i32.const 520
  call $../../../src/account/NAME
  call $~lib/dbmanager/DBManager<A>#constructor
  set_local $4
  get_local $4
  i64.const 0
  call $~lib/dbmanager/DBManager<A>#exists
  set_local $5
  get_local $5
  if
   get_local $4
   i64.const 0
   get_local $6
   call $~lib/dbmanager/DBManager<A>#get
   drop
   get_local $6
   i32.load
   get_local $1
   call $~lib/array/Array<String>#push
   drop
   get_local $6
   i32.load
   get_local $2
   call $~lib/array/Array<String>#push
   drop
   get_local $6
   i32.load offset=4
   get_local $1
   get_local $2
   call $../../../lib/map/Map<String_String>#set
   get_local $6
   i32.load offset=8
   get_local $1
   get_local $3
   call $../../../lib/map/Map<String_u32>#set
   get_global $../../../src/log/Log
   i32.const 1944
   call $../../../src/log/Logger#s
   get_local $5
   i64.extend_u/i32
   i32.const 10
   call $../../../src/log/Logger#i
   call $../../../src/log/Logger#flush
   get_local $4
   i64.const 0
   get_local $6
   call $~lib/dbmanager/DBManager<A>#modify
  else   
   get_local $6
   i32.load
   get_local $1
   call $~lib/array/Array<String>#push
   drop
   get_local $6
   i32.load
   get_local $2
   call $~lib/array/Array<String>#push
   drop
   get_local $6
   i32.load offset=4
   get_local $1
   get_local $2
   call $../../../lib/map/Map<String_String>#set
   get_local $6
   i32.load offset=8
   get_local $1
   get_local $3
   call $../../../lib/map/Map<String_u32>#set
   get_local $6
   i32.load offset=12
   get_local $3
   get_local $1
   call $../../../lib/map/Map<u32_String>#set
   get_local $6
   i32.load offset=24
   i64.const 4
   i32.const 0
   i32.const 6
   i32.const 8
   call $test_map_db/Obj#constructor
   call $../../../lib/map/Map<u64_Obj>#set
   get_local $6
   i32.load offset=24
   i64.const 44
   i32.const 0
   i32.const 100
   i32.const 200
   call $test_map_db/Obj#constructor
   call $../../../lib/map/Map<u64_Obj>#set
   get_local $6
   i32.load offset=28
   i32.const 0
   i32.const 100
   i32.const 200
   call $test_map_db/Obj#constructor
   i64.const 1
   call $../../../lib/map/Map<Obj_u64>#set
   get_local $6
   i32.load offset=28
   i32.const 0
   i32.const 10
   i32.const 20
   call $test_map_db/Obj#constructor
   i64.const 2
   call $../../../lib/map/Map<Obj_u64>#set
   get_local $6
   i32.load offset=32
   i32.const 2
   i32.const 2240
   call $../../../lib/arraymap/ArrayMap<u8_u8>#set
   get_local $6
   i32.load offset=32
   i32.const 22
   i32.const 2264
   call $../../../lib/arraymap/ArrayMap<u8_u8>#set
   get_local $6
   i32.load offset=36
   i32.const 3
   i32.const 2352
   call $../../../lib/arraymap/ArrayMap<u8_String>#set
   get_local $6
   i32.load offset=36
   i32.const 33
   i32.const 2440
   call $../../../lib/arraymap/ArrayMap<u8_String>#set
   get_local $6
   i32.load offset=40
   i32.const 4
   block (result i32)
    i32.const 0
    i32.const 3
    call $~lib/array/Array<Obj>#constructor
    set_local $7
    get_local $7
    i32.const 0
    i32.const 0
    i32.const 6
    i32.const 8
    call $test_map_db/Obj#constructor
    call $~lib/array/Array<Obj>#__unchecked_set
    get_local $7
    i32.const 1
    i32.const 0
    i32.const 18
    i32.const 36
    call $test_map_db/Obj#constructor
    call $~lib/array/Array<Obj>#__unchecked_set
    get_local $7
    i32.const 2
    i32.const 0
    i32.const 6
    i32.const 8
    call $test_map_db/Obj#constructor
    call $~lib/array/Array<Obj>#__unchecked_set
    get_local $7
   end
   call $../../../lib/arraymap/ArrayMap<u8_Obj>#set
   get_global $../../../src/log/Log
   i32.const 2448
   call $../../../src/log/Logger#s
   get_local $5
   i64.extend_u/i32
   i32.const 10
   call $../../../src/log/Logger#i
   call $../../../src/log/Logger#flush
   get_local $4
   get_local $0
   call $../../../src/contract/Contract#get:receiver
   get_local $6
   call $~lib/dbmanager/DBManager<A>#emplace
  end
 )
 (func $../../../lib/map/Map<String_String>#keys (; 186 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $../../../lib/map/Map<String_String>#values (; 187 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
 )
 (func $../../../lib/map/Map<String_u32>#values (; 188 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
 )
 (func $test_map_db/TestMap#printMap (; 189 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block (result i32)
   i32.const 44
   call $~lib/memory/memory.allocate
   set_local $1
   get_local $1
   i32.const 0
   i32.const 0
   call $~lib/array/Array<String>#constructor
   i32.store
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2640
    i32.store
    get_local $2
    i32.const 2656
    i32.store offset=4
    get_local $2
   end
   i32.store offset=4
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2672
    i32.store
    get_local $2
    i32.const 2688
    i32.store offset=4
    get_local $2
   end
   i32.store offset=8
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2704
    i32.store
    get_local $2
    i32.const 2720
    i32.store offset=4
    get_local $2
   end
   i32.store offset=12
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2736
    i32.store
    get_local $2
    i32.const 2752
    i32.store offset=4
    get_local $2
   end
   i32.store offset=16
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2768
    i32.store
    get_local $2
    i32.const 2784
    i32.store offset=4
    get_local $2
   end
   i32.store offset=20
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2800
    i32.store
    get_local $2
    i32.const 2816
    i32.store offset=4
    get_local $2
   end
   i32.store offset=24
   get_local $1
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i32.const 2832
    i32.store
    get_local $2
    i32.const 2848
    i32.store offset=4
    get_local $2
   end
   i32.store offset=28
   get_local $1
   i32.const 0
   i32.const 0
   call $../../../lib/arraymap/ArrayMap<u8_u8>#constructor
   i32.store offset=32
   get_local $1
   i32.const 0
   i32.const 0
   call $../../../lib/arraymap/ArrayMap<u8_String>#constructor
   i32.store offset=36
   get_local $1
   i32.const 0
   i32.const 0
   call $../../../lib/arraymap/ArrayMap<u8_Obj>#constructor
   i32.store offset=40
   get_local $1
  end
  set_local $3
  i32.const 0
  i32.const 520
  call $../../../src/account/NAME
  get_local $0
  call $../../../src/contract/Contract#get:receiver
  i32.const 520
  call $../../../src/account/NAME
  call $~lib/dbmanager/DBManager<A>#constructor
  set_local $1
  get_local $1
  i64.const 0
  get_local $3
  call $~lib/dbmanager/DBManager<A>#get
  set_local $2
  get_global $../../../src/log/Log
  i32.const 2856
  call $../../../src/log/Logger#s
  get_local $2
  i64.extend_u/i32
  i32.const 10
  call $../../../src/log/Logger#i
  call $../../../src/log/Logger#flush
  get_local $2
  i32.const 2904
  call $~lib/env/ultrain_assert
  get_local $2
  if
   get_local $3
   i32.load offset=4
   set_local $4
   get_local $4
   call $../../../lib/map/Map<String_String>#keys
   set_local $5
   get_local $4
   call $../../../lib/map/Map<String_String>#values
   set_local $6
   get_local $3
   i32.load offset=8
   call $../../../lib/map/Map<String_u32>#values
   set_local $7
   get_global $../../../src/log/Log
   i32.const 2968
   call $../../../src/log/Logger#s
   block $~lib/array/Array<String>#get:length|inlined.8 (result i32)
    get_local $5
    i32.load offset=4
   end
   i64.extend_s/i32
   i32.const 10
   call $../../../src/log/Logger#i
   call $../../../src/log/Logger#flush
   block $break|0
    i32.const 0
    set_local $8
    loop $repeat|0
     get_local $8
     block $~lib/array/Array<String>#get:length|inlined.10 (result i32)
      get_local $5
      i32.load offset=4
     end
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      get_global $../../../src/log/Log
      i32.const 2992
      call $../../../src/log/Logger#s
      get_local $5
      get_local $8
      call $~lib/array/Array<String>#__get
      call $../../../src/log/Logger#s
      i32.const 3016
      call $../../../src/log/Logger#s
      get_local $6
      get_local $8
      call $~lib/array/Array<String>#__get
      call $../../../src/log/Logger#s
      call $../../../src/log/Logger#flush
      get_global $../../../src/log/Log
      i32.const 2992
      call $../../../src/log/Logger#s
      get_local $5
      get_local $8
      call $~lib/array/Array<String>#__get
      call $../../../src/log/Logger#s
      i32.const 3016
      call $../../../src/log/Logger#s
      get_local $7
      get_local $8
      call $~lib/array/Array<u32>#__get
      i64.extend_u/i32
      i32.const 10
      call $../../../src/log/Logger#i
      call $../../../src/log/Logger#flush
     end
     get_local $8
     i32.const 1
     i32.add
     set_local $8
     br $repeat|0
     unreachable
    end
    unreachable
   end
   get_local $3
   i32.load
   set_local $8
   block $break|1
    i32.const 0
    set_local $9
    loop $repeat|1
     get_local $9
     block $~lib/array/Array<String>#get:length|inlined.12 (result i32)
      get_local $8
      i32.load offset=4
     end
     i32.lt_s
     i32.eqz
     br_if $break|1
     get_global $../../../src/log/Log
     i32.const 3040
     call $../../../src/log/Logger#s
     get_local $8
     get_local $9
     call $~lib/array/Array<String>#__get
     call $../../../src/log/Logger#s
     call $../../../src/log/Logger#flush
     get_local $9
     i32.const 1
     i32.add
     set_local $9
     br $repeat|1
     unreachable
    end
    unreachable
   end
  end
 )
 (func $../../../src/contract/Contract#onStop (; 190 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $test_map_db/apply (; 191 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  get_local $1
  i64.eq
  if
   i32.const 0
   get_local $0
   call $../../../src/contract/Contract#constructor
   set_local $4
   get_local $4
   get_local $2
   get_local $3
   call $../../../src/contract/Contract#setActionName
   get_local $4
   call $../../../src/contract/Contract#onInit
   get_local $4
   call $../../../src/contract/Contract#getDataStream
   set_local $5
   get_local $4
   i32.const 1688
   call $../../../src/contract/Contract#isAction
   if
    get_local $5
    call $~lib/datastream/DataStream#readString
    set_local $6
    get_local $5
    call $~lib/datastream/DataStream#readString
    set_local $7
    get_local $5
    call $~lib/datastream/DataStream#read<u32>
    set_local $8
    get_local $4
    get_local $6
    get_local $7
    get_local $8
    call $test_map_db/TestMap#testInsert
   end
   get_local $4
   i32.const 2608
   call $../../../src/contract/Contract#isAction
   if
    get_local $4
    call $test_map_db/TestMap#printMap
   end
   get_local $4
   call $../../../src/contract/Contract#onStop
  end
 )
 (func $start (; 192 ;) (type $v)
  (local $0 i32)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  nop
  block (result i32)
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
  end
  set_global $../../../src/log/Log
  i32.const 4
  i32.const 1280
  call $../../../src/asset/StringToSymbol
  set_global $../../../src/asset/SYS
  get_global $../../../src/asset/SYS
  i64.const 8
  i64.shr_u
  set_global $../../../src/asset/SYS_NAME
 )
 (func $null (; 193 ;) (type $v)
 )
)
