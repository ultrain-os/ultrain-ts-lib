#! /bin/bash

# which usc || $( show_red_text "please install usc then retry"; exit 0 )
usc=${HOME}/Public/assemblyscript/bin/asc
clu=${HOME}/Public/ultrain-core/build/programs/clultrain/clultrain
ContractPath=${HOME}/Public/ultrain-core/build/contracts

AccountJack="jack"
AccountRose="rose"
AccountTony="tony"

Dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function show_red_text() {
    echo -e "\n\033[31m $1 \033[0m"
}

function init_environment() {
    # remove default.wallet
    DWallet=$HOME/ultrainio-wallet/default.wallet
    if [ -e $DWallet ]; then
        rm $DWallet
    fi
    # create default wallet
    WalletPwd=$($clu wallet create | tail -n 1 | sed 's/\"//g')
    if test -z $WalletPwd
    then
    echo "Wallet password is empty, quit."
    exit 0
    fi

    # The system and user account
    sys_acc_arr=(utrio.code ultrio.bpay utrio.msig utrio.names utrio.ram utrio.freeze utrio.ramfee utrio.saving utrio.stake utrio.token utrio.vpay exchange)
    user_acc_arr=(rose tony)

    # Create the system accounts
    for account in ${sys_acc_arr[@]};
    do
        Keys=($($clu create key | awk -F: '{print $2}'))
        PrivKey=${Keys[0]}
        PubKey=${Keys[1]}
        #$clu wallet import $PrivKey
        $clu wallet import --private-key $PrivKey
        $clu create account ultrainio ${account} $PubKey ${PubKey}
    done

    # Deploy the system contract
    $clu set contract utrio.token $ContractPath/ultrainio.token/ -p utrio.token
    $clu push action utrio.token create '[ "ultrainio", "8000000000.0000 UGAS"]' -p utrio.token
    $clu push action utrio.token issue '[ "ultrainio", "1000000000.0000 UGAS"]' -p ultrainio

    $clu set contract utrio.msig $ContractPath/ultrainio.msig/ -p utrio.msig
    $clu set contract ultrainio $ContractPath/ultrainio.system/ -p ultrainio -x 3600

    for account in ${user_acc_arr[@]};
    do
        Keys=($($clu create key | awk -F: '{print $2}'))
        PrivKey=${Keys[0]}
        PubKey=${Keys[1]}
        $clu wallet import --private-key $PrivKey
        $clu system newaccount --updatable ultrainio ${account} ${PubKey} ${PubKey} --stake-net "1000.0000 UGAS" --stake-cpu "1000.0000 UGAS" --buy-ram-kbytes 1024
        $clu set account permission ${account} active '{"threshold": 1,"keys": [{"key":"'${PubKey}'","weight": 1}],"accounts": [{"permission":{"actor":"'${account}'","permission":"utrio.code"},"weight":1}]}' owner -p ${account}
    done

    # call utr.token issue
    for account in ${user_acc_arr[@]}
    do
        $clu push action utrio.token issue '[ "'${account}'", "100000000.0000 UGAS", "memo" ]' -p ultrainio
    done

    $clu wallet import --private-key 5J5Grit1vSJ5u5ch52zwAA9BuMpsuYEZxww3nQQDN9tDjRUifKt
    $clu system newaccount --updatable ultrainio jack UTR6Bdmf1dhME8tGqrGZBE8GCAL6LC42n3AkQzs4Xx1HdNVhGrhPT UTR6Bdmf1dhME8tGqrGZBE8GCAL6LC42n3AkQzs4Xx1HdNVhGrhPT --stake-net "1000.0000 UGAS" --stake-cpu "1000.0000 UGAS" --buy-ram-kbytes 1024
    $clu push action utrio.token issue '["jack", "100000000.0000 UGAS", "memo" ]' -p ultrainio
    $clu set account permission jack active '{"threshold": 1,"keys": [{"key":"UTR6Bdmf1dhME8tGqrGZBE8GCAL6LC42n3AkQzs4Xx1HdNVhGrhPT","weight": 1}],"accounts": [{"permission":{"actor":"jack","permission":"utrio.code"},"weight":1}]}' owner -p jack
}

function compile() {
    dir=$1
    input=$2
    output=$3
    cd $dir
    rm -rf ${output}.wasm ${output}.wast ${output}.abi
    $usc ${input} -b ${output}.wasm -t ${output}.wast -g ${output}.abi -l
    cd -
}

function deploy() {
    dir=$1
    $clu set contract ${AccountJack} ${dir} -p ${AccountJack}
}

function run_test() {
    $clu push action ${AccountJack} test '[]' -p ${AccountJack}
}

function compare_abi_generate() {
    dir=$1
    input=$2
    output=$3
    cd $dir
    $usc ${input} -b ${output}.wasm -t ${output}.wast -g ${output}.abi -l
    diff abi.abi target.abi || show_red_text "YOU WILL NEVER SEE THIS LINE."
    cd -
}

function api_tests() {
    Directories=(
        buildins/continues continues
        buildins/map map
        contracts/dbsave dbsave
        src/account account
        src/action action
        src/asset asset
        src/big_number big_number
        src/block block
        src/crypto crypto
        src/safemath safemath
        src/time time
        # validates/dbmanager dbmanager
        validates/json json
        validates/serializable serializable
        validates/track track
    )

    len=${#Directories[@]}

    for (( i = 0; i < len; i = i + 2 )); do
        dir=$Dir/${Directories[i]}
        output=${Directories[(( i + 1 ))]}
        input="${output}.test.ts"

        compile ${dir} ${input} ${output}
        deploy ${dir}
        run_test
    done

    compare_abi_generate $Dir/validates/abi abi.test.ts abi
}

function contracts_tests() {
    # 测试inline action
    compile $Dir/contracts/inlineactions/source source.test.ts source
    compile $Dir/contracts/inlineactions/target target.test.ts target
    $clu set contract $AccountJack $Dir/contracts/inlineactions/source -p $AccountJack
    $clu set contract $AccountRose $Dir/contracts/inlineactions/target -p $AccountRose
    $clu push action $AccountJack recepient '["rose"]' -p $AccountJack
    $clu push action $AccountJack inline '["ronaldihno"]' -p $AccountJack

    # 测试inline转账
    compile $Dir/contracts/inlinetransfer inlinetransfer.test.ts inlinetransfer
    $clu set contract $AccountJack $Dir/contracts/inlinetransfer -p $AccountJack
    $clu push action $AccountJack test '[]' -p $AccountJack

    # 测试接收utrio.token::transfer
    compile $Dir/contracts/utriotokentransfer utriotokentransfer.test.ts utriotokentransfer
    $clu set contract $AccountJack $Dir/contracts/utriotokentransfer -p $AccountJack
    $clu transfer $AccountTony $AccountJack "10.0000 UGAS" "test case" -p $AccountTony
    $clu push action $AccountJack reveal '[]' -p $AccountJack

    # deferred功能被禁止, pureview需要在node节点上测试, 只测试编译
    compile $Dir/contracts/pureview pureview.test.ts pureview
    compile $Dir/contracts/deferredaction deferredaction.test.ts deferredaction
}

# 测试demos示例是否能够正常编译
function compile_tests() {
    compile $Dir/../demos/UIP06/ UIP06.ts UIP06
    compile $Dir/../demos/UIP06/ UIP06TimeLock.ts UIP06TimeLock
    compile $Dir/../demos/UIP09/ UIP09.ts UIP09
}

init_environment
api_tests
contracts_tests
compile_tests
