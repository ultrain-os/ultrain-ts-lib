#! /bin/bash

jqpath=$( which jq )
if [ -z "$jqpath" ]; then
    printf "This script require package 'jq' for parsing JSON response, "
    printf "\n\r please install package jq via: "
    printf "\n\r 'brew install jq' for MAC,"
    printf "\n\r or 'sudo apt-get install jq' for linux."
    printf "\n\r for more information, refer to: https://stedolan.github.io/jq/download/ "
    printf "\n\r"

    exit 0
fi

usc=${HOME}/Public/assemblyscript/bin/asc
clu="${HOME}/Public/ultrain-core/build/programs/clultrain/clultrain --url http://pioneer.natapp1.cc --wallet-url http://127.0.0.1:8900"

SleepInterval=6  # sleep for next consensus interval
MaxConfirmBlock=6 # 最多等待出块个数

AccountJack="autotest1"
AccountRose="autotest2"
AccountTony="autotest3"

Dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Base dir is " $Dir

function get_head_block_num {
    info=$( $clu get info | jq '.head_block_num' )
    echo -n $info
}

function get_last_irreversible_block_num {
    info=$( $clu get info | jq '.last_irreversible_block_num' )
    echo -n $info
}

function loop_blocks_for_tx {
    headBlock=$1
    tailBlock=$2
    txid=$3

    txOnBlock=0

    for (( i = $headBlock; i > $tailBlock; --i )); do
        info=$( $clu get block $i )
        found=$( echo -n "$info" | jq --arg tid $txid '.transactions | map({status: .status, txid: .trx.id})[] | select(.txid == $tid)' )
        [ -z "$found" ] && continue
        (( txOnBlock = i ))
        break;
    done
    echo -n "$txOnBlock"
}

function wait_tx_be_confirmed {
    txid=$1
    tailBlock=$2
    sleep $SleepInterval
    headBlock="$(get_head_block_num)"

    waitBlocks=0
    foundInBlock=0
    while :
    do
        (( foundInBlock = $(loop_blocks_for_tx $headBlock $tailBlock $txid) ))
        [ "$foundInBlock" -ne "0" ] && break
        (( tailBlock = $headBlock ))
        sleep $SleepInterval
        headBlock="$(get_head_block_num)"

        if [ "$waitBlocks" -ge "$MaxConfirmBlock" ]; then
            echo "Waited for $MaxConfirmBlock blocks but tx still not be confirmed, "
            echo "May be something excepted, please check."
            echo "Quit auto test script."
            exit -1
        else
            (( waitBlocks++ ))
        fi
    done

    while :
    do
        cirre="$(get_last_irreversible_block_num)"
        [ "$cirre" -ge "$foundInBlock" ] && break;
        sleep $SleepInterval
    done

    echo -e "TX: $txid comfirmed on block $foundInBlock \n"
}

function show_red_text() {
    echo -e "\n\033[31m $1 \033[0m"
}

function atomic_push_action {
    echo "EXECUTE: [ $@ ]"
    currentBlockNum="$(get_head_block_num)"
    rsp=$( "$@" 2>&1)
    txid=$( echo "$rsp" | awk '/executed transaction:/ {print $3}' )
    if [ -z "$txid" ]; then
        echo -e "execute command [$@] failed: \n\n$rsp"
        exit -1
    fi
    wait_tx_be_confirmed $txid $currentBlockNum
}

function compile() {
    dir=$1
    input=$2
    output=$3
    echo "Now compile " $dir $input $output
    cd $dir
    rm -rf ${output}.wasm ${output}.wast ${output}.abi
    $usc ${input} -b ${output}.wasm -t ${output}.wast -g ${output}.abi -l
    cd - 1>/dev/null 2>&1
}

function deploy() {
    dir=$1
    echo -e "\nDEPLOY: ${dir}"
    atomic_push_action $clu set contract ${AccountJack} ${dir} -p ${AccountJack}
}

function run_test() {
    atomic_push_action $clu push action ${AccountJack} test '[]' -p ${AccountJack}
}

function generate_and_compare_abi() {
    dir=$1
    input=$2
    output=$3
    cd $dir
    $usc ${input} -b ${output}.wasm -t ${output}.wast -g ${output}.abi -l
    diff abi.abi target.abi || show_red_text "YOU WILL NEVER SEE THIS LINE. IF YOU SEE THIS, CHECK IF GENERATED ABI FILE IS CORRECT."
    cd - 1>/dev/null 2>&1
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

    generate_and_compare_abi $Dir/validates/abi abi.test.ts abi
}

function contracts_tests() {
    # 测试inline action
    compile $Dir/contracts/inlineactions/source source.test.ts source
    compile $Dir/contracts/inlineactions/target target.test.ts target
    atomic_push_action $clu set contract $AccountJack $Dir/contracts/inlineactions/source -p $AccountJack
    atomic_push_action $clu set contract $AccountRose $Dir/contracts/inlineactions/target -p $AccountRose
    atomic_push_action $clu push action $AccountJack recepient '["autotest2"]' -p $AccountJack
    atomic_push_action $clu push action $AccountJack inline '["ronaldinho"]' -p $AccountJack

    # 测试inline转账
    compile $Dir/contracts/inlinetransfer inlinetransfer.test.ts inlinetransfer
    atomic_push_action $clu set contract $AccountJack $Dir/contracts/inlinetransfer -p $AccountJack
    atomic_push_action $clu push action $AccountJack test '[]' -p $AccountJack

    # 测试接收utrio.token::transfer
    compile $Dir/contracts/utriotokentransfer utriotokentransfer.test.ts utriotokentransfer
    atomic_push_action $clu set contract $AccountJack $Dir/contracts/utriotokentransfer -p $AccountJack
    atomic_push_action $clu transfer $AccountTony $AccountJack '1.0000 UGAS' 'test case' -p $AccountTony
    atomic_push_action $clu push action $AccountJack reveal '[]' -p $AccountJack
    atomic_push_action $clu push action $AccountJack clean '[]' -p $AccountJack

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

function preset_contract {
    compile $Dir/emptycontract emptycontract.ts emptycontract
    # 设置第一账号
    currentBlockNum="$(get_head_block_num)"
    rsp=$( $clu set contract $AccountJack $Dir/emptycontract -p $AccountJack 2>&1)
    txid=$( echo "$rsp" | awk '/executed transaction:/ {print $3}' )
    if [ "${#txid}" -ne "0" ]; then
        wait_tx_be_confirmed $txid $currentBlockNum
    fi

    currentBlockNum="$(get_head_block_num)"
    rsp=$( $clu set contract $AccountRose $Dir/emptycontract -p $AccountRose 2>&1)
    txid=$( echo "$rsp" | awk '/executed transaction:/ {print $3}' )
    if [ "${#txid}" -ne "0" ]; then
        wait_tx_be_confirmed $txid $currentBlockNum
    fi
}

# 测试网上注册了三个账号:

# 账户名称: autotest1
# 公钥: UTR8573kkPXFNqpzEUjFAjmvZeXLLBanhSj5Rd4g5sBhQDnCDqBaW
# 私钥: 5JAF6CuBGJ5vWfRyVjeCrJBLK3kvLaqr3cFx5r95CxmTcwwhWiL
# 助记词: local maximum tribe frame toy virus pass taxi animal angry water badge


# 账户名称: autotest2
# 公钥: UTR6P875egikpYMhQd95XQSoCkCBx8mpBb2BjKppYBdydkQf37QPQ
# 私钥: 5JjPW78WXdPsEX6uD3JfKtKeKRWQyUdM4RUdEpZLJGXUNDy4buC
# 助记词: muscle acid salt exclude achieve glad vanish evil exhibit install seed merge

# 账户名称: autotest3
# 公钥: UTR8FPBNiueUMosR81PnYETs1BWuWGSp7onJU68nigwSUtwDdTaRZ
# 私钥: 5K8LzqYRY4Zf35Nsy7mb8u2qSRdY63frLK2xejDf5zHpnqqCvZ3
# 助记词: ice unveil exhaust erupt age fringe damage crouch grass six fruit book

# ./clultrain --url http://ultrain.natapp1.cc set account permission autotest1 active '{"threshold": 1,"keys": [{"key":"UTR8573kkPXFNqpzEUjFAjmvZeXLLBanhSj5Rd4g5sBhQDnCDqBaW","weight": 1}],"accounts": [{"permission":{"actor":"autotest1","permission":"utrio.code"},"weight":1}]}' owner -p autotest1

function init_environment {
    $clu wallet import --private-key 5JAF6CuBGJ5vWfRyVjeCrJBLK3kvLaqr3cFx5r95CxmTcwwhWiL
    $clu wallet import --private-key 5JjPW78WXdPsEX6uD3JfKtKeKRWQyUdM4RUdEpZLJGXUNDy4buC
    $clu wallet import --private-key 5K8LzqYRY4Zf35Nsy7mb8u2qSRdY63frLK2xejDf5zHpnqqCvZ3
}

init_environment
preset_contract
api_tests
contracts_tests
compile_tests
