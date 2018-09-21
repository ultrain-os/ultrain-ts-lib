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
}