export declare namespace env {
    function ts_sha1(data: usize, size: u32, output: usize, outputlen: u32): void;
    function ts_sha256(data: usize, size: u32, output: usize, outputlen: u32): void;
    function ts_sha512(data: usize, size: u32, output: usize, outputlen: u32): void;
    function ts_ripemd160(data: usize, size: u32, output: usize, outputlen: u32): void;
    function ts_recover_key(checksum256: usize, checksumlen: u32, sig: usize, siglen: u32, pub: usize, publen: u32): void;

    function ts_assert_sha1(data: usize, size: u32, checksum: usize, checksumlen: u32): void;
    function ts_assert_sha256(data: usize, size: u32, checksum: usize, checksumlen: u32): void;
    function ts_assert_sha512(data: usize, size: u32, checksum: usize, checksumlen: u32): void;
    function ts_assert_ripemd160(data: usize, size: u32, checksum: usize, checksumlen: u32): void;
    function ts_assert_recover_key(digest: usize, checksumlen: u32, sig: usize, siglen: u32, pub: usize, publen: u32): void;

    function ts_verify_with_pk(pk_str: usize, pk_proof: usize, message: usize): i32;
    function ts_public_key_of_account(account: account_name, pubkey_buffer: usize, pubkey_len: u32, key_type: usize): i32;
    function ts_read_db_record(code: account_name, table_name: u64, scope: u64, primary: u64, value_buffer: usize, value_len: u32): i32;

}