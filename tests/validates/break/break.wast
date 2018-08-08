(module
 (type $v (func))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00b\00r\00e\00a\00k\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $break/checkBreak (; 1 ;) (type $v)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 33)
     (i32.const 4)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 2 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 32)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (call $break/checkBreak)
 )
)
