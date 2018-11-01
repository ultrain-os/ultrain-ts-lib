(module
 (type $ii (func (param i32) (result i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIv (func (param i32 i64)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iv (func (param i32)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iI (func (param i32) (result i64)))
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
 (data (i32.const 760) "|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02")
 (data (i32.const 1272) "\f8\02\00\00_")
 (data (i32.const 1280) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1344) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1408) "\04\00\00\00t\00e\00s\00t")
 (data (i32.const 1424) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1456) "\08\00\00\00t\00r\00a\00c\00k\00.\00t\00s")
 (data (i32.const 1480) "\17\00\00\00M\00a\00x\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!")
 (data (i32.const 1536) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1568) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04")
 (data (i32.const 1600) " \06\00\00\03")
 (data (i32.const 1608) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04")
 (data (i32.const 1640) "H\06\00\00\03")
 (data (i32.const 1648) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04")
 (data (i32.const 1680) "p\06\00\00\03")
 (data (i32.const 1688) "\1b\00\00\00I\00n\00d\00e\00x\00o\00f\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!")
 (data (i32.const 1752) "\19\00\00\00B\00r\00e\00a\00k\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!")
 (data (i32.const 1808) "\1b\00\00\00T\00e\00r\00n\00a\00r\00y\00 \00r\00u\00n\00n\00i\00n\00g\00 \00s\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!")
 (data (i32.const 1872) "\0d\00\00\00S\00u\00c\00c\00e\00s\00s\00f\00u\00l\00!\00!\00!")
 (data (i32.const 1904) "\14\00\00\00S\00t\00i\00l\00l\00 \00t\00o\00 \00c\00h\00e\00c\00k\00 \00l\00i\00s\00t\00:")
 (data (i32.const 1960) "\a0\07")
 (data (i32.const 1968) "\"\00\00\00A\00r\00r\00a\00y\00B\00r\00a\00c\00k\00e\00t\00 \00r\00u\00n\00n\00i\00n\00g\00 \00n\00o\00t\00 \00e\00x\00p\00e\00c\00t\00e\00d\00!")
 (import "env" "action_data_size" (func $../../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "read_action_data" (func $../../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "ts_log_print_s" (func $../../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_done" (func $../../../src/log/env.ts_log_done))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../../src/log/Log (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "apply" (func $track/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
        (select
         (get_local $0)
         (i32.const 1)
         (i32.gt_u
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $3
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $3)
       (tee_local $0
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
       (i32.gt_s
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $0)
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
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $../../../src/contract/Contract#_Contract_super (; 7 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $track/TestTrack#constructor (; 8 ;) (; has Stack IR ;) (param $0 i64) (result i32)
  (local $1 i32)
  (i64.store
   (tee_local $1
    (call $~lib/memory/memory.allocate
     (i32.const 12)
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (i32.const 0)
  )
  (call $../../../src/contract/Contract#_Contract_super
   (get_local $1)
   (get_local $0)
  )
  (i64.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $../../../lib/name_ex/NameEx#constructor (; 9 ;) (; has Stack IR ;) (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (tee_local $2
    (call $~lib/memory/memory.allocate
     (i32.const 16)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (i64.store
   (get_local $2)
   (get_local $0)
  )
  (i64.store offset=8
   (get_local $2)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $../../../src/contract/Contract#setActionName (; 10 ;) (; has Stack IR ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_local $3
   (call $../../../lib/name_ex/NameEx#constructor
    (get_local $1)
    (get_local $2)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $3)
  )
 )
 (func $../../../src/contract/Contract#onInit (; 11 ;) (; has Stack IR ;)
  (nop)
 )
 (func $~lib/internal/arraybuffer/computeSize (; 12 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 13 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
    (call $~lib/allocator/arena/__memory_allocate
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/memory/memset (; 14 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 1)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 2)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (get_local $2)
    (i32.const 3)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 4)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (tee_local $2
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
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $1
      (i32.and
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
       (i32.const -4)
      )
     )
    )
    (i32.const 4)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 12)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 28)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $2
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
  (set_local $1
   (i32.sub
    (get_local $1)
    (get_local $2)
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (i64.const 0)
     )
     (set_local $1
      (i32.sub
       (get_local $1)
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
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 15 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  (call $~lib/internal/memory/memset
   (i32.add
    (tee_local $2
     (call $~lib/internal/arraybuffer/allocateUnsafe
      (get_local $0)
     )
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate
     (i32.const 12)
    )
   )
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
  (i32.store
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/datastream/DataStream#constructor (; 16 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store
   (tee_local $2
    (call $~lib/memory/memory.allocate
     (i32.const 12)
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
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $2)
   (i32.const 0)
  )
  (get_local $2)
 )
 (func $../../../src/contract/DataStreamFromCurrentAction (; 17 ;) (; has Stack IR ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (drop
   (call $../../../internal/action.d/env.read_action_data
    (i32.load
     (tee_local $1
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (tee_local $0
        (call $../../../internal/action.d/env.action_data_size)
       )
      )
     )
    )
    (get_local $0)
   )
  )
  (call $~lib/datastream/DataStream#constructor
   (i32.load
    (get_local $1)
   )
   (get_local $0)
  )
 )
 (func $../../../src/contract/Contract#getDataStream (; 18 ;) (; has Stack IR ;) (result i32)
  (call $../../../src/contract/DataStreamFromCurrentAction)
 )
 (func $~lib/string/String#charCodeAt (; 19 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../../../lib/name_ex/char_to_symbol_ex (; 20 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
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
   (tee_local $1
    (i32.ge_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 48)
    )
   )
   (set_local $1
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 57)
    )
   )
  )
  (if
   (get_local $1)
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
   (tee_local $1
    (i32.ge_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 97)
    )
   )
   (set_local $1
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 122)
    )
   )
  )
  (if
   (get_local $1)
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
   (tee_local $1
    (i32.ge_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 65)
    )
   )
   (set_local $1
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 90)
    )
   )
  )
  (if
   (get_local $1)
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
 (func $../../../lib/name_ex/NEX (; 21 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $3
   (call $../../../lib/name_ex/NameEx#constructor
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
     (call $../../../lib/name_ex/char_to_symbol_ex
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
         (i64.extend_s/i32
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
            (i64.extend_s/i32
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
           (i64.extend_s/i32
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
 (func $../../../lib/name_ex/NameEx._eq (; 22 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
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
   (set_local $2
    (i64.eq
     (i64.load offset=8
      (get_local $0)
     )
     (i64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $../../../src/contract/Contract#isAction (; 23 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $0
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $1
   (call $../../../lib/name_ex/NEX
    (i32.const 1408)
   )
  )
  (call $../../../lib/name_ex/NameEx._eq
   (get_local $0)
   (get_local $1)
  )
 )
 (func $track/TestTrack#max (; 24 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (i32.gt_s
    (get_local $0)
    (get_local $1)
   )
   (get_local $0)
   (get_local $1)
  )
 )
 (func $track/TestTrack#testMax (; 25 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (if
   (i32.ne
    (call $track/TestTrack#max
     (i32.const 12)
     (i32.const 23)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $track/TestTrack#max
     (i32.const 12)
     (i32.const 10)
    )
    (i32.const 12)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $track/TestTrack#max
     (i32.const 8)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (; 26 ;) (; has Stack IR ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (i32.const 0)
   )
  )
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
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (get_local $0)
 )
 (func $~lib/internal/memory/memcpy (; 27 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
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
       (get_local $1)
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $1)
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
      (if
       (i32.ne
        (tee_local $3
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $5
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (i32.store8
       (get_local $1)
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $4)
       (i32.load8_u
        (get_local $3)
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
            (get_local $5)
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
            (tee_local $5
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
            (get_local $5)
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
            (tee_local $5
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
     (set_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
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
           (get_local $5)
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
           (tee_local $5
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
           (get_local $5)
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
           (tee_local $5
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
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
          (get_local $5)
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
          (tee_local $5
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
          (get_local $5)
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
          (tee_local $5
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
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $1)
    )
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 28 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
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
            (tee_local $4
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $4)
          (i32.load8_u
           (get_local $3)
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
          (tee_local $4
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $4)
        (i32.load8_u
         (get_local $3)
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
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 29 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (set_local $3
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $2)
     )
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (get_local $3)
       (i32.const 8)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (call $~lib/internal/memory/memset
       (i32.add
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
     )
     (block
      (call $~lib/internal/memory/memmove
       (i32.add
        (tee_local $3
         (call $~lib/internal/arraybuffer/allocateUnsafe
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
      (call $~lib/internal/memory/memset
       (i32.add
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $2)
       )
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
 (func $~lib/array/Array<u8>#push (; 30 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (i32.add
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $3)
    (i32.load
     (tee_local $2
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $3)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $2
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $2)
      (get_local $4)
     )
    )
    (i32.store
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store8 offset=8
   (i32.add
    (get_local $2)
    (get_local $3)
   )
   (get_local $1)
  )
  (get_local $4)
 )
 (func $../../../src/utils/toUTF8Array (; 31 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call $~lib/array/Array<u8>#constructor)
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
     (if
      (i32.lt_s
       (get_local $1)
       (i32.const 2048)
      )
      (block
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
      (block
       (if
        (i32.eqz
         (tee_local $4
          (i32.lt_s
           (get_local $1)
           (i32.const 55296)
          )
         )
        )
        (set_local $4
         (i32.ge_s
          (get_local $1)
          (i32.const 57344)
         )
        )
       )
       (if
        (get_local $4)
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
         (set_local $4
          (i32.shl
           (i32.and
            (get_local $1)
            (i32.const 1023)
           )
           (i32.const 10)
          )
         )
         (set_local $1
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
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $2)
           (i32.or
            (i32.shr_s
             (tee_local $1
              (i32.add
               (i32.or
                (get_local $4)
                (get_local $1)
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
 (func $../../../src/utils/string2cstr (; 32 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.add
   (i32.load
    (call $../../../src/utils/toUTF8Array
     (get_local $0)
    )
   )
   (i32.const 8)
  )
 )
 (func $../../../src/log/Logger#s (; 33 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $../../../src/log/env.ts_log_print_s
   (call $../../../src/utils/string2cstr
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $../../../src/log/Logger#flush (; 34 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (call $../../../src/log/env.ts_log_done)
 )
 (func $~lib/array/Array<i32>#__get (; 35 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.shr_u
      (i32.load
       (tee_local $0
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
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
  )
 )
 (func $track/TestTrack#indexOf (; 36 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.eq
      (get_local $2)
      (get_local $1)
     )
     (return
      (call $~lib/array/Array<i32>#__get
       (get_local $0)
       (get_local $2)
      )
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
 (func $track/TestTrack#testIndexOf (; 37 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (if
   (i32.ne
    (call $track/TestTrack#indexOf
     (i32.const 1600)
     (i32.const 1)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $track/TestTrack#indexOf
     (i32.const 1640)
     (i32.const 5)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $track/TestTrack#indexOf
     (i32.const 1680)
     (i32.const 0)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $track/TestTrack#testBreak (; 38 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 32)
     )
    )
    (set_local $1
     (if (result i32)
      (i32.eq
       (get_local $0)
       (i32.const 12)
      )
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
      (block
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (br $repeat|0)
      )
     )
    )
   )
  )
  (if
   (i32.ne
    (get_local $1)
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $~lib/array/Array<i32>#push (; 39 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.add
    (tee_local $1
     (i32.load
      (i32.const 1964)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $3
       (i32.load
        (i32.const 1960)
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
     (i32.const 1960)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocateUnsafe
       (get_local $3)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (i32.store
   (i32.const 1964)
   (get_local $2)
  )
  (i32.store offset=8
   (i32.add
    (get_local $3)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $0)
  )
  (get_local $2)
 )
 (func $track/TestTrack#createArrayUsingBracket (; 40 ;) (; has Stack IR ;) (result i32)
  (local $0 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 10)
     )
    )
    (drop
     (call $~lib/array/Array<i32>#push
      (get_local $0)
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
  (i32.const 1960)
 )
 (func $track/TestTrack#testArrayBracket (; 41 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (if
   (i32.ne
    (i32.load offset=4
     (call $track/TestTrack#createArrayUsingBracket)
    )
    (i32.const 10)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (call $track/TestTrack#createArrayUsingBracket)
    )
    (i32.const 20)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $track/TestTrack#toCheckList (; 42 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1904)
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
 (func $track/TestTrack#test (; 43 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
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
    (i32.const 1688)
   )
  )
  (call $track/TestTrack#testBreak)
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1752)
   )
  )
  (call $../../../src/contract/Contract#onInit)
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1808)
   )
  )
  (call $../../../src/log/Logger#flush
   (call $../../../src/log/Logger#s
    (get_global $../../../src/log/Log)
    (i32.const 1872)
   )
  )
  (call $track/TestTrack#toCheckList
   (get_local $0)
  )
 )
 (func $track/apply (; 44 ;) (; has Stack IR ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (call $../../../src/contract/Contract#setActionName
     (tee_local $4
      (call $track/TestTrack#constructor
       (get_local $0)
      )
     )
     (get_local $2)
     (get_local $3)
    )
    (call $../../../src/contract/Contract#onInit)
    (drop
     (call $../../../src/contract/Contract#getDataStream)
    )
    (if
     (call $../../../src/contract/Contract#isAction
      (get_local $4)
     )
     (call $track/TestTrack#test
      (get_local $4)
     )
    )
    (call $../../../src/contract/Contract#onInit)
   )
  )
 )
 (func $start (; 45 ;) (; has Stack IR ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 2040)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $../../../src/log/Log
   (call $~lib/memory/memory.allocate
    (i32.const 0)
   )
  )
 )
 (func $null (; 46 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
