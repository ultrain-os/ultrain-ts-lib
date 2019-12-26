# 使用测试脚本说明


### 执行测试cases
测试脚本在本地测试环境中执行, 不在线上环境执行.  

脚本需要两个工具, 一个是编译工具usc, 一个是执行clultrain命令行工具.  

修改run_test_script.sh脚本中的以下三个变量, 指向实际的位置:
```bash
usc=${HOME}/Public/assemblyscript/bin/asc
clu=${HOME}/Public/ultrain-core/build/programs/clultrain/clultrain
ContractPath=${HOME}/Public/ultrain-core/build/contracts
```

执行测试命令:  `bash run_test_script.sh`

### 新增测试cases

`tests/`目录结构如下:
```text
tests
├── buildins
│   └── continues
├── contracts
│   ├── deferredaction
│   ├── inlineactions
│   │   ├── source
│   │   └── target
│   ├── inlinetransfer
│   ├── pureview
│   └── utriotokentransfer
├── src
│   ├── account
│   ├── action
│   ├── asset
│   ├── big_number
│   ├── block
│   ├── crypto
│   ├── safemath
│   └── time
└── validates
    ├── abi
    ├── dbmanager
    ├── json
    ├── serializable
    └── track
```

`buildins`目录下保存内置关键字的测试, 如continue.  
`contracts`目录下保存测试合约的cases.  
`src`目录下测试ultrain-ts-lib/src中的各个公开api.  
`validates`目录下保存需要验证的测试内容, 比如生成json, 生成abi等.

如果要增加新的测试case, 首先在相应目录下按以上格式新增测试文件, 然后在run_test_script.sh脚本中增加测试命令.
