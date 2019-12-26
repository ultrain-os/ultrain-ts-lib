import { Contract } from "../../../src/contract";
import { StringToSymbol, Asset } from "../../../src/asset";

const ugas_symbol: u64 = 0x5341475504;
class AssetContract extends Contract {

    @action
    test(): void {
        ultrain_assert(StringToSymbol(4, "UGAS") == ugas_symbol, "StringToSymbol not match.");

        const abcAmount = 10000;
        let abcSymbol = StringToSymbol(4, "ABC");
        let ast = new Asset(abcAmount, abcSymbol);
        let rhs = new Asset(100, abcSymbol);

        ultrain_assert(ast.isSymbolValid(), "Asset.isSymbolValid must be true.");
        ultrain_assert(ast.amount == abcAmount, "Asset.amount not match");
        ultrain_assert(ast.gt(rhs), "Asset.gt must be true.");
        ultrain_assert(!ast.lt(rhs), "Asset.lt must be false.");
        ultrain_assert(!ast.eq(rhs), "Asset.eq must be false.");

        ast.add(rhs);
        ultrain_assert(ast.amount == (abcAmount + 100), "Asset.amount not match after add op.");

        ast.sub(rhs);
        ultrain_assert(ast.amount == abcAmount, "Asset.amount not match after sub op.");

        ast.multi(2);
        ultrain_assert(ast.amount == (abcAmount * 2), "Asset.amount not match after multi op.");

        ast.divide(2);
        ultrain_assert(ast.amount == abcAmount, "Asset.amount not match after divide op.");

        ultrain_assert(ast.symbolPrecision() == 4, "Asset.symbolPrecision not match.");
        ultrain_assert(ast.symbolName() == (abcSymbol >> 8), "Asset.symbolName not match.");
        ultrain_assert(ast.isValid(), "Asset.isValid must be true.");
    }
}