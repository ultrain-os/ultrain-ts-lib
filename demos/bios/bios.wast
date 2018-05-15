(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $IIIv (func (param i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (type $I (func (result i64)))
 (type $iI (func (param i32) (result i64)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $Iv (func (param i64)))
 (type $iIIIIv (func (param i32 i64 i64 i64 i64)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIIIv (func (param i32 i64 i64 i64)))
 (type $iiv (func (param i32 i32)))
 (type $iIv (func (param i32 i64)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "env" "ts_action_init" (func $../../lib/action/ts_action_init (result i32)))
 (import "env" "ts_log_print_s" (func $../../lib/log/ts_log_print_s (param i32)))
 (import "env" "ts_log_done" (func $../../lib/log/ts_log_done))
 (import "env" "ts_action_name_length" (func $../../lib/action/ts_action_name_length (result i64)))
 (import "env" "ts_action_name_read_char" (func $../../lib/action/ts_action_name_read_char (param i32) (result i32)))
 (import "env" "ts_action_params_count" (func $../../lib/action/ts_action_params_count (result i64)))
 (import "env" "ts_action_params_nth_type" (func $../../lib/action/ts_action_params_nth_type (param i32) (result i64)))
 (import "env" "ts_action_params_nth_as_int" (func $../../lib/action/ts_action_params_nth_as_int (param i32) (result i64)))
 (import "env" "ts_action_params_nth_string_length" (func $../../lib/action/ts_action_params_nth_string_length (param i32) (result i64)))
 (import "env" "ts_log_print_i" (func $../../lib/log/ts_log_print_i (param i64 i32)))
 (import "env" "ts_action_params_nth_string_read_char" (func $../../lib/action/ts_action_params_nth_string_read_char (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $../../lib/action/require_auth (param i64)))
 (import "env" "set_privileged" (func $../../lib/privileged/set_privileged (param i64 i32)))
 (import "env" "set_resource_limits" (func $../../lib/privileged/set_resource_limits (param i64 i64 i64 i64)))
 (import "env" "action_data_size" (func $../../lib/action/action_data_size (result i32)))
 (import "env" "read_action_data" (func $../../lib/action/read_action_data (param i32 i32) (result i32)))
 (import "env" "set_active_producers" (func $../../lib/privileged/set_active_producers (param i32 i32)))
 (global $../../lib/utils/ASCIICHAR i32 (i32.const 760))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../lib/log/Log (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/EMPTY i32 (i32.const 1452))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $../../lib/action/PTYPE.NULL i32 (i32.const 0))
 (global $../../lib/action/PTYPE.I64 i32 (i32.const 1))
 (global $../../lib/action/PTYPE.U64 i32 (i32.const 2))
 (global $../../lib/action/PTYPE.DBL i32 (i32.const 3))
 (global $../../lib/action/PTYPE.BOOL i32 (i32.const 4))
 (global $../../lib/action/PTYPE.STR i32 (i32.const 5))
 (global $../../lib/action/PTYPE.ARR i32 (i32.const 6))
 (global $../../lib/action/PTYPE.OBJ i32 (i32.const 7))
 (global $../../lib/action/PTYPE.BLOB i32 (i32.const 8))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 1960))
 (memory $0 1)
 (data (i32.const 4) "\01\00\00\00 \00")
 (data (i32.const 12) "\01\00\00\00!\00")
 (data (i32.const 20) "\01\00\00\00\"\00")
 (data (i32.const 28) "\01\00\00\00#\00")
 (data (i32.const 36) "\01\00\00\00$\00")
 (data (i32.const 44) "\01\00\00\00%\00")
 (data (i32.const 52) "\01\00\00\00&\00")
 (data (i32.const 60) "\01\00\00\00\'\00")
 (data (i32.const 68) "\01\00\00\00(\00")
 (data (i32.const 76) "\01\00\00\00)\00")
 (data (i32.const 84) "\01\00\00\00*\00")
 (data (i32.const 92) "\01\00\00\00+\00")
 (data (i32.const 100) "\01\00\00\00,\00")
 (data (i32.const 108) "\01\00\00\00-\00")
 (data (i32.const 116) "\01\00\00\00.\00")
 (data (i32.const 124) "\01\00\00\00/\00")
 (data (i32.const 132) "\01\00\00\000\00")
 (data (i32.const 140) "\01\00\00\001\00")
 (data (i32.const 148) "\01\00\00\002\00")
 (data (i32.const 156) "\01\00\00\003\00")
 (data (i32.const 164) "\01\00\00\004\00")
 (data (i32.const 172) "\01\00\00\005\00")
 (data (i32.const 180) "\01\00\00\006\00")
 (data (i32.const 188) "\01\00\00\007\00")
 (data (i32.const 196) "\01\00\00\008\00")
 (data (i32.const 204) "\01\00\00\009\00")
 (data (i32.const 212) "\01\00\00\00:\00")
 (data (i32.const 220) "\01\00\00\00;\00")
 (data (i32.const 228) "\01\00\00\00<\00")
 (data (i32.const 236) "\01\00\00\00=\00")
 (data (i32.const 244) "\01\00\00\00>\00")
 (data (i32.const 252) "\01\00\00\00?\00")
 (data (i32.const 260) "\01\00\00\00@\00")
 (data (i32.const 268) "\01\00\00\00A\00")
 (data (i32.const 276) "\01\00\00\00B\00")
 (data (i32.const 284) "\01\00\00\00C\00")
 (data (i32.const 292) "\01\00\00\00D\00")
 (data (i32.const 300) "\01\00\00\00E\00")
 (data (i32.const 308) "\01\00\00\00F\00")
 (data (i32.const 316) "\01\00\00\00G\00")
 (data (i32.const 324) "\01\00\00\00H\00")
 (data (i32.const 332) "\01\00\00\00I\00")
 (data (i32.const 340) "\01\00\00\00J\00")
 (data (i32.const 348) "\01\00\00\00K\00")
 (data (i32.const 356) "\01\00\00\00L\00")
 (data (i32.const 364) "\01\00\00\00M\00")
 (data (i32.const 372) "\01\00\00\00N\00")
 (data (i32.const 380) "\01\00\00\00O\00")
 (data (i32.const 388) "\01\00\00\00P\00")
 (data (i32.const 396) "\01\00\00\00Q\00")
 (data (i32.const 404) "\01\00\00\00R\00")
 (data (i32.const 412) "\01\00\00\00T\00")
 (data (i32.const 420) "\01\00\00\00U\00")
 (data (i32.const 428) "\01\00\00\00V\00")
 (data (i32.const 436) "\01\00\00\00W\00")
 (data (i32.const 444) "\01\00\00\00X\00")
 (data (i32.const 452) "\01\00\00\00Y\00")
 (data (i32.const 460) "\01\00\00\00Z\00")
 (data (i32.const 468) "\01\00\00\00[\00")
 (data (i32.const 476) "\01\00\00\00\\\00")
 (data (i32.const 484) "\01\00\00\00]\00")
 (data (i32.const 492) "\01\00\00\00^\00")
 (data (i32.const 500) "\01\00\00\00_\00")
 (data (i32.const 508) "\01\00\00\00`\00")
 (data (i32.const 516) "\01\00\00\00a\00")
 (data (i32.const 524) "\01\00\00\00b\00")
 (data (i32.const 532) "\01\00\00\00c\00")
 (data (i32.const 540) "\01\00\00\00d\00")
 (data (i32.const 548) "\01\00\00\00e\00")
 (data (i32.const 556) "\01\00\00\00f\00")
 (data (i32.const 564) "\01\00\00\00g\00")
 (data (i32.const 572) "\01\00\00\00h\00")
 (data (i32.const 580) "\01\00\00\00i\00")
 (data (i32.const 588) "\01\00\00\00j\00")
 (data (i32.const 596) "\01\00\00\00k\00")
 (data (i32.const 604) "\01\00\00\00l\00")
 (data (i32.const 612) "\01\00\00\00m\00")
 (data (i32.const 620) "\01\00\00\00n\00")
 (data (i32.const 628) "\01\00\00\00o\00")
 (data (i32.const 636) "\01\00\00\00p\00")
 (data (i32.const 644) "\01\00\00\00q\00")
 (data (i32.const 652) "\01\00\00\00r\00")
 (data (i32.const 660) "\01\00\00\00s\00")
 (data (i32.const 668) "\01\00\00\00t\00")
 (data (i32.const 676) "\01\00\00\00u\00")
 (data (i32.const 684) "\01\00\00\00v\00")
 (data (i32.const 692) "\01\00\00\00w\00")
 (data (i32.const 700) "\01\00\00\00x\00")
 (data (i32.const 708) "\01\00\00\00y\00")
 (data (i32.const 716) "\01\00\00\00z\00")
 (data (i32.const 724) "\01\00\00\00{\00")
 (data (i32.const 732) "\01\00\00\00|\00")
 (data (i32.const 740) "\01\00\00\00}\00")
 (data (i32.const 748) "\01\00\00\00~\00")
 (data (i32.const 760) "\00\03\00\00_\00\00\00|\01\00\00\00\00\00\00\04\00\00\00\0c\00\00\00\14\00\00\00\1c\00\00\00$\00\00\00,\00\00\004\00\00\00<\00\00\00D\00\00\00L\00\00\00T\00\00\00\\\00\00\00d\00\00\00l\00\00\00t\00\00\00|\00\00\00\84\00\00\00\8c\00\00\00\94\00\00\00\9c\00\00\00\a4\00\00\00\ac\00\00\00\b4\00\00\00\bc\00\00\00\c4\00\00\00\cc\00\00\00\d4\00\00\00\dc\00\00\00\e4\00\00\00\ec\00\00\00\f4\00\00\00\fc\00\00\00\04\01\00\00\0c\01\00\00\14\01\00\00\1c\01\00\00$\01\00\00,\01\00\004\01\00\00<\01\00\00D\01\00\00L\01\00\00T\01\00\00\\\01\00\00d\01\00\00l\01\00\00t\01\00\00|\01\00\00\84\01\00\00\8c\01\00\00\94\01\00\00\94\01\00\00\9c\01\00\00\a4\01\00\00\ac\01\00\00\b4\01\00\00\bc\01\00\00\c4\01\00\00\cc\01\00\00\d4\01\00\00\dc\01\00\00\e4\01\00\00\ec\01\00\00\f4\01\00\00\fc\01\00\00\04\02\00\00\0c\02\00\00\14\02\00\00\1c\02\00\00$\02\00\00,\02\00\004\02\00\00<\02\00\00D\02\00\00L\02\00\00T\02\00\00\\\02\00\00d\02\00\00l\02\00\00t\02\00\00|\02\00\00\84\02\00\00\8c\02\00\00\94\02\00\00\9c\02\00\00\a4\02\00\00\ac\02\00\00\b4\02\00\00\bc\02\00\00\c4\02\00\00\cc\02\00\00\d4\02\00\00\dc\02\00\00\e4\02\00\00\ec\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1280) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1312) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1372) "\16\00\00\00t\00s\00_\00a\00c\00t\00i\00o\00n\00_\00i\00n\00i\00t\00 \00f\00a\00i\00l\00e\00d\00.\00")
 (data (i32.const 1420) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1452) "\00\00\00\00")
 (data (i32.const 1456) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 1468) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1520) "\14\00\00\00:\00:\00 \00p\00a\00r\00a\00m\00s\00 \00l\00e\00n\00g\00t\00h\00 \00i\00s\00 \00")
 (data (i32.const 1564) "*\00\00\00 \00:\00:\00 \00I\00t\00 \00i\00s\00 \00n\00o\00t\00 \00s\00u\00p\00p\00o\00r\00t\00 \00f\00o\00r\00 \00p\00a\00r\00a\00m\00e\00t\00e\00r\00s\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 1652) "\1d\00\00\00d\00e\00m\00o\00 \00b\00i\00o\00s\00 \00i\00n\00i\00t\00 \00a\00c\00t\00i\00o\00n\00 \00f\00a\00i\00l\00e\00d\00.\00")
 (data (i32.const 1716) "\07\00\00\00s\00e\00t\00p\00r\00i\00v\00")
 (data (i32.const 1736) "\n\00\00\00s\00e\00t\00a\00l\00i\00m\00i\00t\00s\00")
 (data (i32.const 1760) "\n\00\00\00s\00e\00t\00g\00l\00i\00m\00i\00t\00s\00")
 (data (i32.const 1784) "\08\00\00\00s\00e\00t\00p\00r\00o\00d\00s\00")
 (data (i32.const 1804) "\07\00\00\00r\00e\00q\00a\00u\00t\00h\00")
 (data (i32.const 1824) "!\00\00\00d\00e\00m\00o\00 \00b\00i\00o\00s\00 \00c\00a\00n\00 \00n\00o\00t\00 \00a\00c\00c\00e\00p\00t\00 \00a\00c\00t\00i\00o\00n\00 \00\'\00")
 (data (i32.const 1896) "\1d\00\00\00\'\00,\00 \00p\00l\00e\00a\00s\00e\00 \00c\00h\00e\00c\00k\00 \00y\00o\00u\00r\00 \00c\00o\00m\00m\00a\00n\00d\00.\00")
 (export "apply" (func $main/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    (set_local $1
     (get_global $~lib/allocator/arena/offset)
    )
    (set_local $2
     (i32.and
      (i32.add
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (i32.const 7)
      )
      (i32.xor
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    (set_local $3
     (current_memory)
    )
    (if
     (i32.gt_u
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
     )
     (block
      (set_local $4
       (i32.shr_u
        (i32.and
         (i32.add
          (i32.sub
           (get_local $2)
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
      (set_local $5
       (select
        (tee_local $5
         (get_local $3)
        )
        (tee_local $6
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $5)
        )
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (grow_memory
          (get_local $4)
         )
         (i32.const 0)
        )
        (unreachable)
       )
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shl
    (i32.const 1)
    (i32.sub
     (i32.const 32)
     (i32.clz
      (i32.sub
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (i32.const 1073741816)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 1312)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (call $~lib/allocator/arena/allocate_memory
    (call $~lib/internal/arraybuffer/computeSize
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/memory/set_memory (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<String>#constructor (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 1280)
      (i32.const 23)
      (i32.const 39)
     )
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
    (call $~lib/internal/arraybuffer/allocUnsafe
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
         (call $~lib/allocator/arena/allocate_memory
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
   (call $~lib/memory/set_memory
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i64>#constructor (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 134217727)
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 1280)
      (i32.const 23)
      (i32.const 39)
     )
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
    (call $~lib/internal/arraybuffer/allocUnsafe
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
         (call $~lib/allocator/arena/allocate_memory
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
   (call $~lib/memory/set_memory
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $../../lib/action/Action#constructor (; 24 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 21)
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
       (get_local $2)
      )
     )
    )
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $~lib/string/String#charCodeAt (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 1420)
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
  (return
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
 )
 (func $../../lib/log/Logger#s (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (i32.load
       (get_local $1)
      )
     )
     (block
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $../../lib/log/Logger#flush (; 27 ;) (type $iv) (param $0 i32)
  (call $../../lib/log/ts_log_done)
 )
 (func $~lib/array/Array<String>#__get (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (return
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
    (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.0 (result i32)
     (br $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.0
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
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/string/allocate (; 29 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 1468)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/allocator/arena/allocate_memory
    (i32.add
     (i32.const 4)
     (i32.shl
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (return
   (get_local $2)
  )
 )
 (func $~lib/memory/copy_memory (; 30 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/move_memory (; 31 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String#concat (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 1420)
     (i32.const 74)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 1456)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (i32.const 1452)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocate
    (get_local $4)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (get_local $5)
    (i32.const 4)
   )
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (i32.shl
    (get_local $2)
    (i32.const 1)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (get_local $5)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
   (i32.add
    (get_local $1)
    (i32.const 4)
   )
   (i32.shl
    (get_local $3)
    (i32.const 1)
   )
  )
  (return
   (get_local $5)
  )
 )
 (func $~lib/string/String.__concat (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 1456)
   )
  )
  (return
   (call $~lib/string/String#concat
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $../../lib/action/Action#parseName (; 34 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $1
   (i32.wrap/i64
    (call $../../lib/action/ts_action_name_length)
   )
  )
  (set_local $2
   (i32.const 1452)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $1)
     )
     (block
      (block
       (set_local $4
        (call $../../lib/action/ts_action_name_read_char
         (get_local $3)
        )
       )
       (if
        (i32.eq
         (get_local $4)
         (i32.const -1)
        )
        (br $continue|0)
       )
       (set_local $5
        (i32.and
         (get_local $4)
         (i32.const 255)
        )
       )
       (set_local $6
        (i32.sub
         (get_local $5)
         (i32.const 32)
        )
       )
       (set_local $2
        (call $~lib/string/String.__concat
         (get_local $2)
         (call $~lib/array/Array<String>#__get
          (i32.const 760)
          (i32.and
           (get_local $6)
           (i32.const 255)
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
      (br $continue|0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (return
   (i32.ne
    (i32.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
       (i32.const 1073741816)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 1312)
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
      (set_local $3
       (call $~lib/internal/arraybuffer/allocUnsafe
        (get_local $1)
       )
      )
      (call $~lib/memory/move_memory
       (i32.add
        (get_local $3)
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
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 1312)
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
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i64>#push (; 36 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
      (call $abort
       (i32.const 0)
       (i32.const 1280)
       (i32.const 143)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (block $~lib/internal/arraybuffer/storeUnsafe<i64,i64>|inlined.0
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
  (return
   (get_local $5)
  )
 )
 (func $../../lib/log/Logger#i (; 37 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../lib/log/ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (return
   (get_local $0)
  )
 )
 (func $../../lib/log/Logger#i|trampoline (; 38 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 10)
   )
  )
  (call $../../lib/log/Logger#i
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $../../lib/action/Action#read_params_nth_string (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (call $../../lib/action/ts_action_params_nth_string_length
    (get_local $1)
   )
  )
  (call $../../lib/log/Logger#flush
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $../../lib/log/Logger#i|trampoline
     (call $../../lib/log/Logger#s
      (get_global $../../lib/log/Log)
      (i32.const 1520)
     )
     (get_local $2)
     (i32.const 0)
    )
   )
  )
  (set_local $3
   (i32.const 1452)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i64.lt_s
      (i64.extend_s/i32
       (get_local $4)
      )
      (get_local $2)
     )
     (block
      (block
       (set_local $5
        (i64.extend_s/i32
         (call $../../lib/action/ts_action_params_nth_string_read_char
          (get_local $1)
          (get_local $4)
         )
        )
       )
       (if
        (i64.eq
         (get_local $5)
         (i64.const -1)
        )
        (br $continue|0)
       )
       (set_local $6
        (i32.wrap/i64
         (i64.and
          (get_local $5)
          (i64.const 255)
         )
        )
       )
       (set_local $7
        (i32.sub
         (get_local $6)
         (i32.const 32)
        )
       )
       (set_local $3
        (call $~lib/string/String.__concat
         (get_local $3)
         (call $~lib/array/Array<String>#__get
          (i32.const 760)
          (i32.and
           (get_local $7)
           (i32.const 255)
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $~lib/array/Array<String>#push (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
      (call $abort
       (i32.const 0)
       (i32.const 1280)
       (i32.const 143)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.0
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
  (return
   (get_local $5)
  )
 )
 (func $../../lib/action/Action#parseParams (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (set_local $1
   (call $../../lib/action/ts_action_params_count)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i64.lt_s
      (i64.extend_s/i32
       (get_local $2)
      )
      (get_local $1)
     )
     (block
      (block
       (set_local $3
        (call $../../lib/action/ts_action_params_nth_type
         (get_local $2)
        )
       )
       (block $break|1
        (block $case3|1
         (block $case2|1
          (block $case1|1
           (block $case0|1
            (set_local $4
             (i32.wrap/i64
              (get_local $3)
             )
            )
            (br_if $case0|1
             (i32.eq
              (get_local $4)
              (i32.const 1)
             )
            )
            (br_if $case1|1
             (i32.eq
              (get_local $4)
              (i32.const 2)
             )
            )
            (br_if $case2|1
             (i32.eq
              (get_local $4)
              (i32.const 5)
             )
            )
            (br $case3|1)
           )
          )
          (block
           (set_local $5
            (call $../../lib/action/ts_action_params_nth_as_int
             (get_local $2)
            )
           )
           (drop
            (call $~lib/array/Array<i64>#push
             (i32.load offset=16
              (get_local $0)
             )
             (get_local $5)
            )
           )
          )
          (br $break|1)
         )
         (block
          (set_local $4
           (call $../../lib/action/Action#read_params_nth_string
            (get_local $0)
            (get_local $2)
           )
          )
          (drop
           (call $~lib/array/Array<String>#push
            (i32.load offset=12
             (get_local $0)
            )
            (get_local $4)
           )
          )
         )
         (br $break|1)
        )
        (call $../../lib/log/Logger#flush
         (block (result i32)
          (set_global $~argc
           (i32.const 1)
          )
          (call $../../lib/log/Logger#i|trampoline
           (call $../../lib/log/Logger#s
            (get_global $../../lib/log/Log)
            (i32.const 1564)
           )
           (get_local $3)
           (i32.const 0)
          )
         )
        )
        (br $break|1)
       )
      )
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $../../lib/action/Action#init (; 42 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $../../lib/action/ts_action_init)
  )
  (if
   (i32.ne
    (get_local $1)
    (i32.const 0)
   )
   (block
    (call $../../lib/log/Logger#flush
     (call $../../lib/log/Logger#s
      (get_global $../../lib/log/Log)
      (i32.const 1372)
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
     (tee_local $2
      (call $../../lib/action/Action#parseName
       (get_local $0)
      )
     )
     (call $../../lib/action/Action#parseParams
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (return
   (i32.load8_u offset=20
    (get_local $0)
   )
  )
 )
 (func $bios/Bios#constructor (; 43 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/allocator/arena/allocate_memory
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
 (func $../../lib/action/Action#get:name (; 44 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $~lib/memory/compare_memory (; 45 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (block $break|0
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
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
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
 )
 (func $~lib/string/String.__eq (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (return
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
      (get_local $3)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<i64>#__get (; 47 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (return
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
    (block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.0 (result i64)
     (br $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.0
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
    )
    (unreachable)
   )
  )
 )
 (func $../../lib/action/requireAuth (; 48 ;) (type $Iv) (param $0 i64)
  (call $../../lib/action/require_auth
   (get_local $0)
  )
 )
 (func $../../lib/privileged/setPrivileged (; 49 ;) (type $Iiv) (param $0 i64) (param $1 i32)
  (call $../../lib/privileged/set_privileged
   (get_local $0)
   (if (result i32)
    (i32.and
     (get_local $1)
     (i32.const 1)
    )
    (i32.const 1)
    (i32.const 0)
   )
  )
 )
 (func $bios/Bios#setpriv (; 50 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (call $../../lib/action/requireAuth
   (i64.load
    (get_local $0)
   )
  )
  (call $../../lib/privileged/setPrivileged
   (get_local $1)
   (get_local $2)
  )
 )
 (func $../../lib/privileged/setResourceLimits (; 51 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $../../lib/privileged/set_resource_limits
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $bios/Bios#setalimits (; 52 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (call $../../lib/action/requireAuth
   (i64.load
    (get_local $0)
   )
  )
  (call $../../lib/privileged/setResourceLimits
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $bios/Bios#setglimits (; 53 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (call $../../lib/action/requireAuth
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $../../lib/privileged/setActiveProducer (; 54 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../lib/privileged/set_active_producers
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/allocator/arena/free_memory (; 55 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $bios/Bios#setprods (; 56 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $../../lib/action/requireAuth
   (i64.load
    (get_local $0)
   )
  )
  (set_local $2
   (call $../../lib/action/action_data_size)
  )
  (set_local $3
   (call $~lib/allocator/arena/allocate_memory
    (i32.mul
     (i32.const 1)
     (get_local $2)
    )
   )
  )
  (drop
   (call $../../lib/action/read_action_data
    (get_local $3)
    (get_local $2)
   )
  )
  (call $../../lib/privileged/setActiveProducer
   (get_local $3)
   (get_local $2)
  )
  (call $~lib/allocator/arena/free_memory
   (get_local $3)
  )
 )
 (func $bios/Bios#reqauth (; 57 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (call $../../lib/action/requireAuth
   (get_local $1)
  )
 )
 (func $main/apply (; 58 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $3
     (call $../../lib/action/Action#constructor
      (i32.const 0)
      (get_local $2)
     )
    )
    (if
     (i32.eqz
      (call $../../lib/action/Action#init
       (get_local $3)
      )
     )
     (block
      (call $../../lib/log/Logger#flush
       (call $../../lib/log/Logger#s
        (get_global $../../lib/log/Log)
        (i32.const 1652)
       )
      )
      (return)
     )
    )
    (set_local $4
     (call $bios/Bios#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (if
     (call $~lib/string/String.__eq
      (call $../../lib/action/Action#get:name
       (get_local $3)
      )
      (i32.const 1716)
     )
     (block
      (set_local $5
       (call $~lib/array/Array<i64>#__get
        (i32.load offset=16
         (get_local $3)
        )
        (i32.const 0)
       )
      )
      (set_local $6
       (i64.eq
        (call $~lib/array/Array<i64>#__get
         (i32.load offset=16
          (get_local $3)
         )
         (i32.const 1)
        )
        (i64.const 1)
       )
      )
      (call $bios/Bios#setpriv
       (get_local $4)
       (get_local $5)
       (get_local $6)
      )
     )
     (if
      (call $~lib/string/String.__eq
       (call $../../lib/action/Action#get:name
        (get_local $3)
       )
       (i32.const 1736)
      )
      (block
       (set_local $7
        (call $~lib/array/Array<i64>#__get
         (i32.load offset=16
          (get_local $3)
         )
         (i32.const 0)
        )
       )
       (set_local $8
        (call $~lib/array/Array<i64>#__get
         (i32.load offset=16
          (get_local $3)
         )
         (i32.const 1)
        )
       )
       (set_local $9
        (call $~lib/array/Array<i64>#__get
         (i32.load offset=16
          (get_local $3)
         )
         (i32.const 2)
        )
       )
       (set_local $10
        (call $~lib/array/Array<i64>#__get
         (i32.load offset=16
          (get_local $3)
         )
         (i32.const 3)
        )
       )
       (call $bios/Bios#setalimits
        (get_local $4)
        (get_local $7)
        (get_local $8)
        (get_local $9)
        (get_local $10)
       )
      )
      (if
       (call $~lib/string/String.__eq
        (call $../../lib/action/Action#get:name
         (get_local $3)
        )
        (i32.const 1760)
       )
       (block
        (set_local $11
         (call $~lib/array/Array<i64>#__get
          (i32.load offset=16
           (get_local $3)
          )
          (i32.const 0)
         )
        )
        (set_local $12
         (call $~lib/array/Array<i64>#__get
          (i32.load offset=16
           (get_local $3)
          )
          (i32.const 1)
         )
        )
        (set_local $13
         (call $~lib/array/Array<i64>#__get
          (i32.load offset=16
           (get_local $3)
          )
          (i32.const 2)
         )
        )
        (call $bios/Bios#setglimits
         (get_local $4)
         (get_local $11)
         (get_local $12)
         (get_local $13)
        )
       )
       (if
        (call $~lib/string/String.__eq
         (call $../../lib/action/Action#get:name
          (get_local $3)
         )
         (i32.const 1784)
        )
        (call $bios/Bios#setprods
         (get_local $4)
         (i32.const 0)
        )
        (if
         (call $~lib/string/String.__eq
          (call $../../lib/action/Action#get:name
           (get_local $3)
          )
          (i32.const 1804)
         )
         (block
          (set_local $14
           (call $~lib/array/Array<i64>#__get
            (i32.load offset=16
             (get_local $3)
            )
            (i32.const 0)
           )
          )
          (call $bios/Bios#reqauth
           (get_local $4)
           (get_local $14)
          )
         )
         (call $../../lib/log/Logger#flush
          (call $../../lib/log/Logger#s
           (call $../../lib/log/Logger#s
            (call $../../lib/log/Logger#s
             (get_global $../../lib/log/Log)
             (i32.const 1824)
            )
            (call $../../lib/action/Action#get:name
             (get_local $3)
            )
           )
           (i32.const 1896)
          )
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 59 ;) (type $v)
  (local $0 i32)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (nop)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.xor
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $../../lib/log/Log
   (block (result i32)
    (set_local $0
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 0)
     )
    )
    (get_local $0)
   )
  )
 )
)
