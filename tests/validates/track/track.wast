(module
 (type $ii (func (param i32) (result i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iv (func (param i32)))
 (import "env" "action_data_size" (func $../../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "read_action_data" (func $../../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "ts_log_print_s" (func $../../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_done" (func $../../../src/log/env.ts_log_done))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../../src/log/Log (mut i32) (i32.const 0))
 (global $../../../src/utils/ASCIICHAR i32 (i32.const 1272))
 (global $../../../src/datastream/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 2040))
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
 (data (i32.const 1280) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1344) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1408) "\04\00\00\00t\00e\00s\00t\00")
 (data (i32.const 1424) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1456) "\08\00\00\00t\00r\00a\00c\00k\00.\00t\00s\00")
 (data (i32.const 1480) "\17\00\00\00M\00a\00x\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!\00")
 (data (i32.const 1536) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1568) "\00\06\00\00\03\00\00\00")
 (data (i32.const 1576) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1608) "(\06\00\00\03\00\00\00")
 (data (i32.const 1616) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1648) "P\06\00\00\03\00\00\00")
 (data (i32.const 1656) "\1b\00\00\00I\00n\00d\00e\00x\00o\00f\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!\00")
 (data (i32.const 1720) "\19\00\00\00B\00r\00e\00a\00k\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!\00")
 (data (i32.const 1776) "\1b\00\00\00T\00e\00r\00n\00a\00r\00y\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!\00")
 (data (i32.const 1840) "\0d\00\00\00S\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!\00!\00!\00")
 (data (i32.const 1872) "\13\00\00\00S\00t\00i\00l\00l\00 \00t\00o\00 \00c\00h\00e\00c\00k\00 \00l\00i\00s\00t\00")
 (data (i32.const 1920) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1928) "\80\07\00\00\00\00\00\00")
 (data (i32.const 1936) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1968) "\"\00\00\00A\00r\00r\00a\00y\00B\00r\00a\00c\00k\00e\00t\00 \00r\00u\00n\00n\00i\00n\00g\00 \00n\00o\00t\00 \00e\00x\00p\00e\00c\00t\00e\00d\00!\00")
 (export "memory" (memory $0))
 (export "apply" (func $track/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $track/TestTrack#constructor (; 7 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (drop
   (get_local $0)
  )
  (drop
   (get_local $1)
  )
  (i64.store
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
       (i64.store
        (get_local $2)
        (i64.const 0)
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
 (func $~lib/internal/arraybuffer/computeSize (; 8 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 9 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/memory/memset (; 10 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../../src/datastream/DataStream#constructor (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $../../../lib/contract/DataStreamFromCurrentAction (; 13 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $0
   (call $../../../internal/action.d/env.action_data_size)
  )
  (set_local $1
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (drop
   (call $../../../internal/action.d/env.read_action_data
    (i32.load
     (get_local $1)
    )
    (get_local $0)
   )
  )
  (set_local $2
   (call $../../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $1)
    )
    (get_local $0)
   )
  )
  (get_local $2)
 )
 (func $../../../lib/contract/Contract#getDataStream (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../../lib/contract/DataStreamFromCurrentAction)
 )
 (func $../../../src/name_ex/NameEx#constructor (; 15 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $~lib/string/String#charCodeAt (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../../src/name_ex/char_to_symbol_ex (; 17 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../../../src/name_ex/NEX (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_local $1
   (call $../../../src/name_ex/NameEx#constructor
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
      (call $../../../src/name_ex/char_to_symbol_ex
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
          (i64.extend_u/i32
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
            (i64.extend_u/i32
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
            (i64.extend_u/i32
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
 (func $../../../src/name_ex/NameEx._eq (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $track/TestTrack#max (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.gt_s
    (get_local $1)
    (get_local $2)
   )
   (return
    (get_local $1)
   )
   (return
    (get_local $2)
   )
  )
  (unreachable)
 )
 (func $track/TestTrack#testMax (; 21 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (call $track/TestTrack#max
    (get_local $0)
    (i32.const 12)
    (i32.const 23)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 23)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (call $track/TestTrack#max
    (get_local $0)
    (i32.const 12)
    (i32.const 10)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 12)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (call $track/TestTrack#max
    (get_local $0)
    (i32.const 8)
    (i32.const 8)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $../../../src/log/Logger#s (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (call $../../../src/log/env.ts_log_print_s
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
 (func $../../../src/log/Logger#flush (; 23 ;) (type $iv) (param $0 i32)
  (call $../../../src/log/env.ts_log_done)
 )
 (func $~lib/array/Array<i32>#__get (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $track/TestTrack#indexOf (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $3)
      (get_local $2)
     )
     (return
      (call $~lib/array/Array<i32>#__get
       (get_local $1)
       (get_local $3)
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
  (i32.const -1)
 )
 (func $track/TestTrack#testIndexOf (; 26 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (call $track/TestTrack#indexOf
    (get_local $0)
    (i32.const 1568)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (call $track/TestTrack#indexOf
    (get_local $0)
    (i32.const 1608)
    (i32.const 5)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (call $track/TestTrack#indexOf
    (get_local $0)
    (i32.const 1648)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $track/TestTrack#testBreak (; 27 ;) (type $iv) (param $0 i32)
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
       (i32.const 32)
      )
     )
    )
    (if
     (i32.eq
      (get_local $2)
      (i32.const 12)
     )
     (block
      (set_local $1
       (i32.add
        (get_local $2)
        (i32.const 32)
       )
      )
      (br $break|0)
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
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $track/TestTrack#testTernary (; 28 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.const 0)
  )
  (set_local $2
   (if (result i32)
    (get_local $1)
    (i32.const 666)
    (i32.const 999)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $2)
     (i32.const 999)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (i32.const 1)
  )
  (set_local $2
   (if (result i32)
    (get_local $1)
    (i32.const 666)
    (i32.const 999)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $2)
     (i32.const 666)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
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
 (func $~lib/array/Array<i32>#push (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $track/TestTrack#createArrayUsingBracket (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.const 1928)
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
       (get_local $1)
      )
     )
    )
    (drop
     (call $~lib/array/Array<i32>#push
      (get_local $2)
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
  (get_local $2)
 )
 (func $track/TestTrack#testArrayBracket (; 34 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (call $track/TestTrack#createArrayUsingBracket
    (get_local $0)
    (i32.const 10)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.2 (result i32)
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 10)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (call $track/TestTrack#createArrayUsingBracket
    (get_local $0)
    (i32.const 10)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.3 (result i32)
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 20)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $track/TestTrack#toCheckList (; 35 ;) (type $iv) (param $0 i32)
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1872)
   )
  )
  (call $track/TestTrack#testArrayBracket
   (get_local $0)
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1968)
   )
  )
 )
 (func $track/TestTrack#test (; 36 ;) (type $iv) (param $0 i32)
  (call $track/TestTrack#testMax
   (get_local $0)
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1480)
   )
  )
  (call $track/TestTrack#testIndexOf
   (get_local $0)
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1656)
   )
  )
  (call $track/TestTrack#testBreak
   (get_local $0)
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1720)
   )
  )
  (call $track/TestTrack#testTernary
   (get_local $0)
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1776)
   )
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1840)
   )
  )
  (call $track/TestTrack#toCheckList
   (get_local $0)
  )
 )
 (func $track/apply (; 37 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
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
     (call $track/TestTrack#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (set_local $5
     (call $../../../lib/contract/Contract#getDataStream
      (get_local $4)
     )
    )
    (set_local $6
     (call $../../../src/name_ex/NameEx#constructor
      (i32.const 0)
      (get_local $2)
      (get_local $3)
     )
    )
    (if
     (call $../../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../../src/name_ex/NEX
       (i32.const 1408)
      )
     )
     (call $track/TestTrack#test
      (get_local $4)
     )
    )
   )
  )
 )
 (func $start (; 38 ;) (type $v)
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
  (set_global $../../../src/log/Log
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
  (nop)
 )
)
