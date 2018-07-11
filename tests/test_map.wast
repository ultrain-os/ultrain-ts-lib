(module
 (type $ii (func (param i32) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iIv (func (param i32 i64)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iIIiii (func (param i32 i64 i64 i32 i32) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $IIIv (func (param i64 i64 i64)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (import "env" "action_data_size" (func $../internal/action.d/env.action_data_size (result i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "read_action_data" (func $../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../src/log/Log (mut i32) (i32.const 0))
 (global $test_impl/audi (mut i32) (i32.const 0))
 (global $test_impl/map (mut i32) (i32.const 0))
 (global $test_impl/hasElement (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 1516))
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
 (data (i32.const 1288) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1348) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1408) "\04\00\00\00a\00u\00d\00i")
 (data (i32.const 1420) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1452) "\03\00\00\00d\00d\00d")
 (data (i32.const 1464) "\08\00\00\00g\00e\00t\00b\00r\00a\00n\00d")
 (data (i32.const 1484) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (export "Contract#get:receiver" (func $Contract#get:receiver))
 (export "Contract#set:receiver" (func $Contract#set:receiver))
 (export "Audi#primaryKey" (func $test_impl/Audi#primaryKey))
 (export "Audi#deserialize" (func $test_impl/Audi#deserialize))
 (export "Audi#serialize" (func $test_impl/Audi#serialize))
 (export "Audi#get:car" (func $Audi#get:car))
 (export "Audi#set:car" (func $Audi#set:car))
 (export "Audi#get:year" (func $Audi#get:year))
 (export "Audi#set:year" (func $Audi#set:year))
 (export "Audi#get:isEnergy" (func $Audi#get:isEnergy))
 (export "Audi#set:isEnergy" (func $Audi#set:isEnergy))
 (export "Audi#get:alias" (func $Audi#get:alias))
 (export "Audi#set:alias" (func $Audi#set:alias))
 (export "Audi#get:name" (func $Audi#get:name))
 (export "Audi#set:name" (func $Audi#set:name))
 (export "Audi#get:asset" (func $Audi#get:asset))
 (export "Audi#set:asset" (func $Audi#set:asset))
 (export "Audi#getbrand" (func $test_impl/Audi#getbrand))
 (export "apply" (func $test_impl/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $Contract#get:receiver (; 4 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $Contract#set:receiver (; 5 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 6 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 7 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/set_memory (; 8 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../src/datastream/DataStream#constructor (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $../lib/contract/DataStreamFromCurrentAction (; 11 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (drop
   (call $../internal/action.d/env.read_action_data
    (i32.load
     (tee_local $1
      (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
       (i32.const 0)
       (tee_local $0
        (call $../internal/action.d/env.action_data_size)
       )
      )
     )
    )
    (get_local $0)
   )
  )
  (call $../src/datastream/DataStream#constructor
   (i32.const 0)
   (i32.load
    (get_local $1)
   )
   (get_local $0)
  )
 )
 (func $../lib/contract/Contract#getDataStream (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (call $../lib/contract/DataStreamFromCurrentAction)
 )
 (func $test_impl/Audi#primaryKey (; 13 ;) (type $iI) (param $0 i32) (result i64)
  (i64.const 0)
 )
 (func $test_impl/Car#deserialize (; 14 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (nop)
 )
 (func $../src/datastream/DataStream#read<u64> (; 15 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../src/datastream/DataStream#read<u8> (; 16 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../src/datastream/DataStream#read<String> (; 17 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $../src/asset/Asset#deserialize (; 18 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $test_impl/Audi#deserialize (; 19 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $test_impl/Car#deserialize
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
  (i64.store offset=16
   (get_local $0)
   (call $../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store8 offset=24
   (get_local $0)
   (i32.ne
    (call $../src/datastream/DataStream#read<u8>
     (get_local $1)
    )
    (i32.const 0)
   )
  )
  (i64.store offset=32
   (get_local $0)
   (call $../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=40
   (get_local $0)
   (call $../src/datastream/DataStream#read<String>
    (get_local $1)
   )
  )
  (call $../src/asset/Asset#deserialize
   (i32.load offset=44
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $../src/datastream/DataStream#isMesureMode (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eqz
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $../src/datastream/DataStream#write<u64> (; 21 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (call $../src/datastream/DataStream#isMesureMode
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
 (func $../src/datastream/DataStream#write<u8> (; 22 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $../src/datastream/DataStream#isMesureMode
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
 (func $../src/datastream/DataStream#write<String> (; 23 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $../src/datastream/DataStream#isMesureMode
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
 (func $../src/asset/Asset#serialize (; 24 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $test_impl/Audi#serialize (; 25 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $test_impl/Car#deserialize
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
  (call $../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=16
    (get_local $0)
   )
  )
  (call $../src/datastream/DataStream#write<u8>
   (get_local $1)
   (i32.load8_u offset=24
    (get_local $0)
   )
  )
  (call $../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=32
    (get_local $0)
   )
  )
  (call $../src/datastream/DataStream#write<String>
   (get_local $1)
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $../src/asset/Asset#serialize
   (i32.load offset=44
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $Audi#get:car (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=8
   (get_local $0)
  )
 )
 (func $Audi#set:car (; 27 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Audi#get:year (; 28 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=16
   (get_local $0)
  )
 )
 (func $Audi#set:year (; 29 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Audi#get:isEnergy (; 30 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load8_u offset=24
   (get_local $0)
  )
 )
 (func $Audi#set:isEnergy (; 31 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store8 offset=24
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Audi#get:alias (; 32 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=32
   (get_local $0)
  )
 )
 (func $Audi#set:alias (; 33 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Audi#get:name (; 34 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=40
   (get_local $0)
  )
 )
 (func $Audi#set:name (; 35 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store offset=40
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Audi#get:asset (; 36 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=44
   (get_local $0)
  )
 )
 (func $Audi#set:asset (; 37 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store offset=44
   (get_local $0)
   (get_local $1)
  )
 )
 (func $test_impl/Audi#getbrand (; 38 ;) (type $iIIiii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (i32.const 1408)
 )
 (func $../lib/contract/Contract#constructor (; 39 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/array/Array<String>#constructor (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../src/map/Map<String_String>#constructor (; 41 ;) (type $ii) (param $0 i32) (result i32)
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
     (call $~lib/array/Array<String>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (get_local $1)
     (call $~lib/array/Array<String>#constructor
      (i32.const 0)
      (i32.const 0)
     )
    )
    (get_local $1)
   )
  )
 )
 (func $../src/map/Map<String_String>#contains (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.const 1)
 )
 (func $~lib/string/String#charCodeAt (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../src/utils/char_to_symbol (; 44 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $../src/utils/N (; 45 ;) (type $iI) (param $0 i32) (result i64)
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
      (call $../src/utils/char_to_symbol
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
 (func $../src/asset/Asset#constructor (; 46 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $test_impl/apply (; 47 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
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
     (call $../lib/contract/Contract#getDataStream
      (tee_local $4
       (call $../lib/contract/Contract#constructor
        (i32.const 0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (i64.eq
      (get_local $2)
      (call $../src/utils/N
       (i32.const 1464)
      )
     )
     (block
      (set_local $0
       (call $../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (set_local $1
       (call $../src/datastream/DataStream#read<u64>
        (get_local $3)
       )
      )
      (call $../src/asset/Asset#deserialize
       (tee_local $5
        (call $../src/asset/Asset#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (get_local $3)
      )
      (call $test_impl/Car#deserialize
       (tee_local $6
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 0)
        )
       )
       (get_local $3)
      )
      (drop
       (call $test_impl/Audi#getbrand
        (get_local $4)
        (get_local $0)
        (get_local $1)
        (get_local $5)
        (get_local $6)
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 48 ;) (type $v)
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
  (set_global $../src/log/Log
   (call $~lib/allocator/arena/allocate_memory
    (i32.const 0)
   )
  )
  (set_global $test_impl/audi
   (call $../lib/contract/Contract#constructor
    (i32.const 0)
    (i64.const 12)
   )
  )
  (set_global $test_impl/map
   (call $../src/map/Map<String_String>#constructor
    (i32.const 0)
   )
  )
  (set_global $test_impl/hasElement
   (call $../src/map/Map<String_String>#contains
    (get_global $test_impl/map)
    (i32.const 1452)
   )
  )
 )
)
