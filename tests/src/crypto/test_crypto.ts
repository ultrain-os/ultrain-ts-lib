import { SHA1, assert_sha1, SHA256, assert_sha256, SHA512, assert_sha512, Ripemd160, assert_ripemd160, verify_with_pk, get_random_number, MerkleProof } from "../../../src/crypto";
import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { Log } from "../../../src/log";

const target: string = "what a wonderful world!";

// the targets are generated by "echo -n 'what a wonderful world!' | openssl sha1/sha256/sha512/ripemd160"
const SHA1TARGET = "c1d6cf2bd91e9db9ee78cbbfa72a48d590286c29";
const SHA256TARGET = "a334ea99877df09ad9acdfaead2423dbcadbd28f56f44f8df7f6369afd330e1e";
const SHA512TARGET = "ceb6944eafcc65326923e1d3e4dc2ad2d1829c081670191186d951128088a6a9e41606c535279613efb67e4bd74c13c311d339d6167ad59bf18809960c09f62c";
const RIMPTARGET = "26f3d4bca5dbde3445837e173e0d951c1859d744";

const pk_str = "0495CB0D1E01DE890D899957F7CCB20A5B134B278745E043D46269217B53B90CFB087BC6768D803BEAE614481F42E1EB3527534C2FA342FF83DE2E8D53F79C7351";
const pk_proof = "03179F9E4A2B0A95B6E1D78D7906A575222887345B1C592542FD3DBB4CFCBCCA75DA90D965AC7C8F87FE2EEBABD5577D616F9ED18B9C539274D904A59EA9906A33DCBB975731F4FD8BA4F359D6C98C2790";
const pk_message = "C885ED0C86D7FDA67906C4E9199C69A26442FFA61BFE59A8AE671928A2DB1910";

export　class CryptoTest extends Contract {

    @action
    test(): void {
        let sha1 = new SHA1();
        let hash = sha1.hash(target);
        ultrain_assert(SHA1TARGET == hash, "sha1.hash failed.");
        assert_sha1(target, sha1);

        let sha256 = new SHA256();
        hash = sha256.hash(target);
        ultrain_assert(SHA256TARGET == hash, "sha256.hash failed.");
        assert_sha256(target, sha256);

        let sha512 = new SHA512();
        hash = sha512.hash(target);
        ultrain_assert(SHA512TARGET == hash, "sha512.hash failed.");
        assert_sha512(target, sha512);

        let rimp = new Ripemd160();
        hash = rimp.hash(target);
        ultrain_assert(RIMPTARGET == hash, "ripemd160.hash failed.");
        assert_ripemd160(target, rimp);

        sha1.fromString(SHA1TARGET);
        assert_sha1(target, sha1);

        sha256.fromString(SHA256TARGET);
        assert_sha256(target, sha256);

        sha512.fromString(SHA512TARGET);
        assert_sha512(target, sha512);

        rimp.fromString(RIMPTARGET);
        assert_ripemd160(target, rimp);

        // let status = verify_with_pk(pk_str, pk_proof, pk_message);
        // ultrain_assert(status, "verify_with_pk failed.");

        let ran = get_random_number(NAME("jack"), NAME("tb.sales"), NAME("tb.sales"), 159);
        Log.s("get random number: ").i(ran).flush();
        ultrain_assert(ran == 159, "read random number failed.");
    }

    @action
    verifyMerkleProof(mroot: string, merkle_proof: string[], tx_bytes: u8[]): void {
        var mklp = new MerkleProof();
        mklp.proofs = merkle_proof;
        mklp.txBytes = tx_bytes;

        var r = mklp.verify(mroot);
        Log.s("verifyMerkleProof result: ").s(r ? "true" : "false").flush();
    }

    @action
    verifyMerkleProof2(mroot: string, block_number: u32, tx_id: string): void {
        var mklp = MerkleProof.getMerkleProof(block_number, tx_id);
        Log.s("verifyMerkleProof2: proofs").flush();
        for (let i = 0; i < mklp.proofs.length; i++) {
            Log.s(mklp.proofs[i]).flush();
        }

        Log.s("verifyMerkleProof2.txBytes:").flush();
        for (let i = 0; i < mklp.txBytes.length; i++) {
            Log.i(mklp.txBytes[i]).s(',');
        }
        Log.flush();

        var r = mklp.verify(mroot);
        Log.s("verify result: ").s(r ? "true": "false").flush();
    }
}