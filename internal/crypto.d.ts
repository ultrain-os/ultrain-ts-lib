export declare namespace env {
    function ts_sha1(data: usize, size: u32, output: usize): void;
    function ts_sha256(data: usize, size: u32, output: usize): void;
    function ts_sha512(data: usize, size: u32, output: usize): void;
    function ts_ripemd160(data: usize, size: u32, output: usize): void;
    function ts_recover_key(checksum256: usize, sig: usize, siglen: u32, pub: usize, publen: u32): void;

    function ts_assert_sha1(data: usizem, size: u32, checksum: usize): void;
    function ts_assert_sha256(data: usizem, size: u32, checksum: usize): void;
    function ts_assert_sha512(data: usizem, size: u32, checksum: usize): void;
    function ts_assert_ripemd160(data: usizem, size: u32, checksum: usize): void;
    function ts_assert_recover_key(digest: usize, sig: usize, siglen: u32, pub: usize, publen: u32): void;
}