# 基于UltrainScript编译器的测试

当UltrainScript升级或作大的调整时，利用usc编译出来的wasm，abi，wast都会有大的变动。为了方便UltrainScript升级和TsSDK工具包有更好的稳定性。让测试更加合理,同事需要覆盖的逻辑要很多。

## 测试模块分类
1. `为了减少通过push action传递参数，更好的做到自动化测试，不通过push action传递参数，直接在合约里面，封装测试数据。当测试不通过是，assert出来。`
2. `因为区块链写到内存，需要经过共识周期，并且删除比较麻烦，一般测试之前先clear内存。`
3. `为了防止Duplicate transaction，测试用例方法名最好不要用test，如用动词短语testSaveingMap。`
- > 类型支持测试

- > 内置接口测试

- > DB存储测试

- > 工具包测试

- > 注解测试

- > ABI生成测试

- > Bug Track

