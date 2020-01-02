# 使用测试脚本说明

### 工具依赖
脚本依赖包jq, 这个包用来处理JSON格式数据.  
要安装它, 在MacOS上可以执行:  
`brew install jq`  
在Linux上可以执行:  
`sudo apt-get install jq`

### 测试前准备
测试脚本使用<u>**测试网先锋链**</u>测试, 在测试之前, 已经创建了`autotest1`, `autotest2`, `autotest3`三个账号, 这三个账号的公私钥注释在run_test_script.sh中.  并且已经将`autotest1`权限设置了`utrio.code`代理.  

脚本需要两个工具, 一个是编译工具usc, 一个是执行clultrain命令行工具.  

修改run_test_script.sh脚本中的以下两个变量, 指向实际的位置:
```bash
usc=${HOME}/Public/assemblyscript/bin/asc
clu=${HOME}/Public/ultrain-core/build/programs/clultrain/clultrain
```

如有必要, 修改以下两个变量的配置:  
```bash
SleepInterval=6  # 休眠间隔, 小于出块周期即可
MaxConfirmBlock=6 # 最多等待几个块, 交易能够确认; 超出确认块数交易仍未确认, 退出脚本.
```
### 开始测试:  
执行脚本开始测试.  
`bash run_test_script.sh`  

如果测试过程中出现异常, 将退出测试.

### 测试cases说明

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
