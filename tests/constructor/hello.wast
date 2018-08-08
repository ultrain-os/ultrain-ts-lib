(module
 (type $IIIv (func (param i64 i64 i64)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/base_ptr (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/max_ptr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 60))
 (memory $0 1)
 (data (i32.const 8) "\17\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00b\00u\00d\00d\00y\00.\00t\00s")
 (export "test_new" (func $test_constructor/test_new))
 (export "apply" (func $test_constructor/apply))
 (export "test_let" (func $test_constructor/test_let))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/buddy/update_max_ptr (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/allocator/buddy/max_ptr)
   )
   (block
    (if
     (i32.le_u
      (tee_local $0
       (i32.shr_u
        (i32.and
         (i32.add
          (get_local $0)
          (i32.const 65535)
         )
         (i32.const -65536)
        )
        (i32.const 16)
       )
      )
      (tee_local $1
       (current_memory)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 181)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (i32.sub
        (get_local $0)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
    )
    (set_global $~lib/allocator/buddy/max_ptr
     (i32.shl
      (get_local $0)
      (i32.const 16)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $~lib/allocator/buddy/buckets$get (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $0)
    (i32.const 27)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 101)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.add
   (get_global $~lib/allocator/buddy/BUCKETS_START)
   (i32.shl
    (get_local $0)
    (i32.const 3)
   )
  )
 )
 (func $~lib/allocator/buddy/list_init (; 3 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $0)
  )
 )
 (func $~lib/allocator/buddy/list_push (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store
   (get_local $1)
   (tee_local $2
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=4
   (get_local $1)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $2)
   (get_local $1)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/bucket_for_request (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.const 26)
  )
  (set_local $2
   (i32.const 16)
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (get_local $0)
    )
    (block
     (set_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/allocator/buddy/node_for_ptr (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.add
    (i32.shr_u
     (i32.sub
      (get_local $0)
      (get_global $~lib/allocator/buddy/base_ptr)
     )
     (i32.sub
      (i32.const 30)
      (get_local $1)
     )
    )
    (i32.shl
     (i32.const 1)
     (get_local $1)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/node_is_split$get (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $0)
    (i32.const 8388608)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 147)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.load8_u
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/buddy/parent_is_split (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eq
   (i32.and
    (i32.shr_u
     (call $~lib/allocator/buddy/node_is_split$get
      (i32.div_u
       (tee_local $0
        (i32.div_u
         (i32.sub
          (get_local $0)
          (i32.const 1)
         )
         (i32.const 2)
        )
       )
       (i32.const 8)
      )
     )
     (i32.and
      (get_local $0)
      (i32.const 7)
     )
    )
    (i32.const 1)
   )
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/list_remove (; 9 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (i32.store offset=4
   (tee_local $1
    (i32.load
     (get_local $0)
    )
   )
   (tee_local $0
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/ptr_for_node (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_global $~lib/allocator/buddy/base_ptr)
   (i32.shl
    (i32.add
     (i32.sub
      (get_local $0)
      (i32.shl
       (i32.const 1)
       (get_local $1)
      )
     )
     (i32.const 1)
    )
    (i32.sub
     (i32.const 30)
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/allocator/buddy/node_is_split$set (; 11 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.ge_u
    (get_local $0)
    (i32.const 8388608)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 152)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store8
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/flip_parent_is_split (; 12 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (call $~lib/allocator/buddy/node_is_split$set
   (tee_local $1
    (i32.div_u
     (tee_local $0
      (i32.div_u
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
     (i32.const 8)
    )
   )
   (i32.xor
    (call $~lib/allocator/buddy/node_is_split$get
     (get_local $1)
    )
    (i32.shl
     (i32.const 1)
     (i32.and
      (get_local $0)
      (i32.const 7)
     )
    )
   )
  )
 )
 (func $~lib/allocator/buddy/lower_bucket_limit (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $0)
     (get_global $~lib/allocator/buddy/bucket_limit)
    )
    (block
     (if
      (i32.eqz
       (call $~lib/allocator/buddy/parent_is_split
        (tee_local $1
         (call $~lib/allocator/buddy/node_for_ptr
          (get_global $~lib/allocator/buddy/base_ptr)
          (get_global $~lib/allocator/buddy/bucket_limit)
         )
        )
       )
      )
      (block
       (call $~lib/allocator/buddy/list_remove
        (get_global $~lib/allocator/buddy/base_ptr)
       )
       (call $~lib/allocator/buddy/list_init
        (call $~lib/allocator/buddy/buckets$get
         (block (result i32)
          (set_global $~lib/allocator/buddy/bucket_limit
           (i32.sub
            (get_global $~lib/allocator/buddy/bucket_limit)
            (i32.const 1)
           )
          )
          (get_global $~lib/allocator/buddy/bucket_limit)
         )
        )
       )
       (call $~lib/allocator/buddy/list_push
        (call $~lib/allocator/buddy/buckets$get
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
        (get_global $~lib/allocator/buddy/base_ptr)
       )
       (br $continue|0)
      )
     )
     (if
      (i32.eqz
       (call $~lib/allocator/buddy/update_max_ptr
        (i32.add
         (tee_local $2
          (call $~lib/allocator/buddy/ptr_for_node
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
           (get_global $~lib/allocator/buddy/bucket_limit)
          )
         )
         (i32.const 8)
        )
       )
      )
      (return
       (i32.const 0)
      )
     )
     (call $~lib/allocator/buddy/list_push
      (call $~lib/allocator/buddy/buckets$get
       (get_global $~lib/allocator/buddy/bucket_limit)
      )
      (get_local $2)
     )
     (call $~lib/allocator/buddy/list_init
      (call $~lib/allocator/buddy/buckets$get
       (block (result i32)
        (set_global $~lib/allocator/buddy/bucket_limit
         (i32.sub
          (get_global $~lib/allocator/buddy/bucket_limit)
          (i32.const 1)
         )
        )
        (get_global $~lib/allocator/buddy/bucket_limit)
       )
      )
     )
     (if
      (tee_local $1
       (i32.div_u
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
        (i32.const 2)
       )
      )
      (call $~lib/allocator/buddy/flip_parent_is_split
       (get_local $1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const 1)
 )
 (func $~lib/allocator/buddy/list_pop (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eq
    (tee_local $1
     (i32.load
      (get_local $0)
     )
    )
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/allocator/buddy/list_remove
   (get_local $1)
  )
  (get_local $1)
 )
 (func $~lib/allocator/buddy/allocate_memory (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_global $~lib/allocator/buddy/base_ptr)
   )
   (block
    (set_global $~lib/allocator/buddy/base_ptr
     (i32.and
      (i32.add
       (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_END)
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (set_global $~lib/allocator/buddy/max_ptr
     (i32.shl
      (current_memory)
      (i32.const 16)
     )
    )
    (set_global $~lib/allocator/buddy/bucket_limit
     (i32.const 26)
    )
    (if
     (i32.eqz
      (call $~lib/allocator/buddy/update_max_ptr
       (i32.add
        (get_global $~lib/allocator/buddy/base_ptr)
        (i32.const 8)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
    (call $~lib/allocator/buddy/list_init
     (call $~lib/allocator/buddy/buckets$get
      (i32.const 26)
     )
    )
    (call $~lib/allocator/buddy/list_push
     (call $~lib/allocator/buddy/buckets$get
      (i32.const 26)
     )
     (get_global $~lib/allocator/buddy/base_ptr)
    )
   )
  )
  (set_local $4
   (tee_local $1
    (call $~lib/allocator/buddy/bucket_for_request
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $1)
     (i32.const -1)
    )
    (block
     (if
      (i32.eqz
       (call $~lib/allocator/buddy/lower_bucket_limit
        (get_local $1)
       )
      )
      (return
       (i32.const 0)
      )
     )
     (if
      (i32.eqz
       (tee_local $2
        (call $~lib/allocator/buddy/list_pop
         (call $~lib/allocator/buddy/buckets$get
          (get_local $1)
         )
        )
       )
      )
      (block
       (if
        (if (result i32)
         (tee_local $2
          (i32.ne
           (get_local $1)
           (get_global $~lib/allocator/buddy/bucket_limit)
          )
         )
         (get_local $2)
         (i32.eqz
          (get_local $1)
         )
        )
        (block
         (set_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
         (br $continue|0)
        )
       )
       (if
        (i32.eqz
         (call $~lib/allocator/buddy/lower_bucket_limit
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
        )
        (return
         (i32.const 0)
        )
       )
       (set_local $2
        (call $~lib/allocator/buddy/list_pop
         (call $~lib/allocator/buddy/buckets$get
          (get_local $1)
         )
        )
       )
      )
     )
     (set_local $3
      (i32.shl
       (i32.const 1)
       (i32.sub
        (i32.const 30)
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/allocator/buddy/update_max_ptr
        (i32.add
         (get_local $2)
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           (get_local $4)
          )
          (i32.add
           (i32.div_u
            (get_local $3)
            (i32.const 2)
           )
           (i32.const 8)
          )
          (get_local $3)
         )
        )
       )
      )
      (block
       (call $~lib/allocator/buddy/list_push
        (call $~lib/allocator/buddy/buckets$get
         (get_local $1)
        )
        (get_local $2)
       )
       (return
        (i32.const 0)
       )
      )
     )
     (if
      (tee_local $3
       (call $~lib/allocator/buddy/node_for_ptr
        (get_local $2)
        (get_local $1)
       )
      )
      (call $~lib/allocator/buddy/flip_parent_is_split
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       (i32.lt_u
        (get_local $1)
        (get_local $4)
       )
       (block
        (call $~lib/allocator/buddy/flip_parent_is_split
         (tee_local $3
          (i32.add
           (i32.shl
            (get_local $3)
            (i32.const 1)
           )
           (i32.const 1)
          )
         )
        )
        (call $~lib/allocator/buddy/list_push
         (call $~lib/allocator/buddy/buckets$get
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         (call $~lib/allocator/buddy/ptr_for_node
          (i32.add
           (get_local $3)
           (i32.const 1)
          )
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     (i32.store
      (get_local $2)
      (get_local $0)
     )
     (return
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $test_constructor/DataManager#constructor (; 16 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $3
       (call $~lib/allocator/buddy/allocate_memory
        (i32.const 8)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
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
  (get_local $0)
 )
 (func $~lib/allocator/buddy/free_memory (; 17 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return)
  )
  (set_local $1
   (call $~lib/allocator/buddy/bucket_for_request
    (i32.add
     (i32.load
      (tee_local $0
       (i32.sub
        (get_local $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 8)
    )
   )
  )
  (set_local $0
   (call $~lib/allocator/buddy/node_for_ptr
    (get_local $0)
    (get_local $1)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $0)
     (block
      (call $~lib/allocator/buddy/flip_parent_is_split
       (get_local $0)
      )
      (br_if $break|0
       (if (result i32)
        (tee_local $2
         (call $~lib/allocator/buddy/parent_is_split
          (get_local $0)
         )
        )
        (get_local $2)
        (i32.eq
         (get_local $1)
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
       )
      )
      (call $~lib/allocator/buddy/list_remove
       (call $~lib/allocator/buddy/ptr_for_node
        (i32.add
         (i32.xor
          (i32.sub
           (get_local $0)
           (i32.const 1)
          )
          (i32.const 1)
         )
         (i32.const 1)
        )
        (get_local $1)
       )
      )
      (set_local $0
       (i32.div_u
        (i32.sub
         (get_local $0)
         (i32.const 1)
        )
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (call $~lib/allocator/buddy/list_push
   (call $~lib/allocator/buddy/buckets$get
    (get_local $1)
   )
   (call $~lib/allocator/buddy/ptr_for_node
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $test_constructor/test_new (; 18 ;) (type $iv) (param $0 i32)
  (call $~lib/allocator/buddy/free_memory
   (call $test_constructor/DataManager#constructor
    (i32.const 0)
    (get_local $0)
    (call $~lib/allocator/buddy/allocate_memory
     (i32.shl
      (get_local $0)
      (i32.const 3)
     )
    )
   )
  )
 )
 (func $test_constructor/apply (; 19 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $3)
     (i32.const 100000)
    )
    (block
     (call $test_constructor/test_new
      (i32.rem_s
       (get_local $3)
       (i32.const 100)
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $test_constructor/test_let (; 20 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/allocator/buddy/allocate_memory
    (i32.shl
     (tee_local $0
      (i32.const 12)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $2)
   (get_local $1)
  )
 )
 (func $start (; 21 ;) (type $v)
  (set_global $~lib/allocator/buddy/BUCKETS_START
   (get_global $HEAP_BASE)
  )
  (set_global $~lib/allocator/buddy/BUCKETS_END
   (i32.add
    (get_global $~lib/allocator/buddy/BUCKETS_START)
    (i32.const 216)
   )
  )
  (set_global $~lib/allocator/buddy/NODE_IS_SPLIT_START
   (get_global $~lib/allocator/buddy/BUCKETS_END)
  )
  (set_global $~lib/allocator/buddy/NODE_IS_SPLIT_END
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    (i32.const 8388608)
   )
  )
 )
)
