import "allocator/arena";
import { SHA1, assert_sha1, SHA256, assert_sha256, SHA512, assert_sha512, Ripemd160, assert_ripemd160 } from "../../../src/crypto";
import {Contract} from "../../../src/contract";

const target: string = "what a wonderful world!";
export　class CryptoTest extends Contract {

    @action
    test(): void {
        let sha1 = new SHA1();
        let hash = sha1.hash(target);

        assert_sha1(hash, sha1);

        let sha256 = new SHA256();
        hash = sha256.hash(target);
        assert_sha256(hash, sha256);

        let sha512 = new SHA512();
        hash = sha512.hash(target);
        assert_sha512(hash, sha512);

        let rimp = new Ripemd160();
        hash = rimp.hash(target);
        assert_ripemd160(hash, rimp);
    }
}