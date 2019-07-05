export declare namespace env {
    function ts_sha1(data: ArrayBuffer, size: u32, output: ArrayBuffer, outputlen: u32): void;
    function ts_sha256(data: ArrayBuffer, size: u32, output: ArrayBuffer, outputlen: u32): void;
    function ts_sha512(data: ArrayBuffer, size: u32, output: ArrayBuffer, ArrayBuffer: u32): void;
    function ts_ripemd160(data: ArrayBuffer, size: u32, output: ArrayBuffer, outputlen: u32): void;
    function ts_recover_key(checksum256: ArrayBuffer, checksumlen: u32, sig: ArrayBuffer, siglen: u32, pub: usize, publen: u32): void;

    function ts_assert_sha1(data: ArrayBuffer, size: u32, checksum: ArrayBuffer, checksumlen: u32): void;
    function ts_assert_sha256(data: ArrayBuffer, size: u32, checksum: ArrayBuffer, checksumlen: u32): void;
    function ts_assert_sha512(data: ArrayBuffer, size: u32, checksum: ArrayBuffer, checksumlen: u32): void;
    function ts_assert_ripemd160(data: ArrayBuffer, size: u32, checksum: ArrayBuffer, checksumlen: u32): void;
    function ts_assert_recover_key(digest: ArrayBuffer, checksumlen: u32, sig: ArrayBuffer, siglen: u32, pub: ArrayBuffer, publen: u32): void;

    function ts_verify_with_pk(pk_str: ArrayBuffer, pk_proof: ArrayBuffer, message: ArrayBuffer): i32;
    function ts_public_key_of_account(account: account_name, pubkey_buffer: ArrayBuffer, pubkey_len: u32, key_type: ArrayBuffer): i32;
    function ts_read_db_record(code: account_name, table_name: u64, scope: u64, primary: u64, value_buffer: ArrayBuffer, value_len: u32): i32;

    function ts_verify_merkle_proof(transaction_mroot: ArrayBuffer, merkle_proof: ArrayBuffer, merkle_proof_len: u32, tx_bytes: ArrayBuffer, tx_bytes_len: u32): i32;
    function ts_merkle_proof_length(block_number: u32, trx_id: ArrayBuffer): i32;
    function ts_merkle_proof(block_number: u32, trx_id: ArrayBuffer, buffer: ArrayBuffer, buffer_size: i32): i32;
}
