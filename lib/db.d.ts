/**
 * @author fanliangqin@ultrain.io
 */
import "./alias";

declare function db_store_i64(scope: account_name, table: table_name, payer: account_name, id: u64, data: usize, len: u32): i32;
declare function db_update_i64(iterator: i32, payer: account_name, data: usize, len: u32): void;
declare function db_remove_i64(iterator: i32): void;
declare function db_get_i64(iterator: i32, data: usize, len: u32): i32;
declare function db_next_i64(iterator: i32, primary: usize): i32;
declare function db_previous_i64(iterator: i32, primary: usize): i32;
declare function db_find_i64(code: account_name, scope: account_name, table: table_name, id: u64): i32;
declare function db_lowerbound_i64(code: account_name, scope: account_name, table: table_name, id: u64): i32;
declare function db_upperbound_i64(code: account_name, scope: account_name, table: table_name, id: u64): i32;
declare function db_end_i64(code: account_name, scope: account_name, table: table_name): i32;


declare function db_idx64_store(scope: account_name, table: table_name, payer: account_name, id: u64, secondary: usize): i32;
declare function db_idx64_update(iterator: i32, payer: account_name, secondary: usize): void;
declare function db_idx64_remove(iterator: i32): void;
declare function db_idx64_next(iterator: i32, primary: usize): i32;
declare function db_idx64_previous(iterator: i32, primary: usize): i32;
declare function db_idx64_find_primary(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: u64): i32;
declare function db_idx64_find_secondary(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx64_lowerbound(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx64_upperbound(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx64_end(code: account_name, scope: account_name, table: table_name): i32;


declare function db_idx128_store(scope: account_name, table: table_name, payer: account_name, id: u64, secondary: usize): i32;
declare function db_idx128_update(iterator: i32, payer: account_name, secondary: usize): void;
declare function db_idx128_remove(iterator: i32): void;
declare function db_idx128_next(iterator: i32, primary: usize): i32;
declare function db_idx128_previous(iterator: i32, primary: usize): i32;
declare function db_idx128_find_primary(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: u64): i32;
declare function db_idx128_find_secondary(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx128_lowerbound(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx128_upperbound(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx128_end(code: account_name, scope: account_name, table: table_name): i32;


declare function db_idx256_store(scope: account_name, table: table_name, payer: account_name, id: u64, data: usize, data_len: u32): i32;
declare function db_idx256_update(iterator: i32, payer: account_name,data: usize, data_len: u32): void;
declare function db_idx256_remove(iterator: i32): void;
declare function db_idx256_next(iterator: i32, primary: usize): i32;
declare function db_idx256_previous(iterator: i32, primary: usize): i32;
declare function db_idx256_find_primary(code: account_name, scope: account_name, table: table_name, data: usize, data_len: u32, primary: u64): i32;
declare function db_idx256_find_secondary(code: account_name, scope: account_name, table: table_name, data: usize, data_len: u32, primary: usize): i32;
declare function db_idx256_lowerbound(code: account_name, scope: account_name, table: table_name, data: usize, data_len: u32, primary: usize): i32;
declare function db_idx256_upperbound(code: account_name, scope: account_name, table: table_name, data: usize, data_len: u32, primary: usize): i32;
declare function db_idx256_end(code: account_name, scope: account_name, table: table_name): i32;


declare function db_idx_double_store(scope: account_name, table: table_name, payer: account_name, id: u64, secondary: usize): i32;
declare function db_idx_double_update(iterator: i32, payer: account_name, secondary: usize): void;
declare function db_idx_double_remove(iterator: i32): void;
declare function db_idx_double_next(iterator: i32, primary: usize): i32;
declare function db_idx_double_previous(iterator: i32, primary: usize): i32;
declare function db_idx_double_find_primary(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: u64): i32;
declare function db_idx_double_find_secondary(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx_double_lowerbound(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx_double_upperbound(code: account_name, scope: account_name, table: table_name, secondary: usize, primary: usize): i32;
declare function db_idx_double_end(code: account_name, scope: account_name, table: table_name): i32;
