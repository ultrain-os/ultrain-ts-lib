#!/bin/bash

BuildPath=$1

clultrain=$BuildPath/programs/clultrain/clultrain

mima_accounts=(mima.dragon mima.ceo mima.cfo mima.api mm.saleauc mm.sireauc mm.match player1 player2 player3 player4)

for account in ${mima_accounts[@]};
do
    Keys=($($clultrain create key | awk -F: '{print $2}'))
    PrivKey=${Keys[0]}
    PubKey=${Keys[1]}
    $clultrain wallet import --private-key $PrivKey
    $clultrain system newaccount ultrainio ${account} -u ${PubKey} ${PubKey} --stake-net "1000000.0000 SYS" --stake-cpu "1000000.0000 SYS" --buy-ram-kbytes 1024
done

# call utr.token issue
for account in ${user_acc_arr[@]}
do
    $clultrain push action utrio.token issue '[ "'${account}'", "1000000000.0000 SYS", "memo" ]' -p ultrainio
done

# deploy DragonCore contract
$clultrain set contract mima.dragon $HOME/Public/TsSDK/example/dragon -p mima.dragon


function wait1s {
    sleep 1
}
# Gene1：  1617 5408242319726265479 6710648080257325517 7461652739703906358

# Gene2:   158  8955629380194700964 8045519325350893035 9557655034254921735

# Gene3: 301685 7487879209558894878 5534081594348815358 0280225560611987747

# Gene4:   3621 5113135817394323907 0991529902932693868 6109627295399616547

function case_createGen0Auction() {
    # 创建初代龙并挂到拍卖市场, Id = 0
    $clultrain push action mima.dragon createGen0Auction '[1617, 5408242319726265479, 6710648080257325517, 7461652739703906358, 0]' -p mima.api
    sleep 1
    # Id = 1
    $clultrain push action mima.dragon createGen0Auction '[158, 8955629380194700964, 8045519325350893035, 9557655034254921735, 0]' -p mima.api
    sleep 1
}

function case_createPromoDragon() {

    # 11650 3070657617454920819 1525467138238866350 7627071568795996247
    # 10046 5048059407661920187 7261389236435290723 1015270292202655842
    # 136452 0524496706082148970 5485441238634028305 9292030523207520340
    # 246464 9180239617795434810 7313554709371996757 3668847544316272994

    # 创建促销龙给指定地址
    # Id = 2
    $clultrain push action mima.dragon createPromoDragon '[301685, 7487879209558894878, 5534081594348815358, 0280225560611987747, "player1", 0, 0]' -p mima.api
    sleep 1
    # Id = 3
    $clultrain push action mima.dragon createPromoDragon '[246464, 9180239617795434810, 7313554709371996757, 3668847544316272994, "player1", 0, 0]' -p mima.api
    sleep 1
    # Id = 4
    $clultrain push action mima.dragon createPromoDragon '[3621, 5113135817394323907, 0991529902932693868, 6109627295399616547, "player1", 0, 0]' -p mima.api
    sleep 1
    # Id = 5
    $clultrain push action mima.dragon createPromoDragon '[10046, 5048059407661920187, 7261389236435290723, 1015270292202655842, "player2", 0, 0]' -p mima.api
    sleep 1
    # Id = 6
    $clultrain push action mima.dragon createPromoDragon '[11650, 3070657617454920819, 1525467138238866350, 7627071568795996247, "player3", 0, 0]' -p mima.api
    sleep 1
    # Id = 7
    $clultrain push action mima.dragon createPromoDragon '[136452, 0524496706082148970, 5485441238634028305, 9292030523207520340, "player4", 0, 0]' -p mima.api
    sleep 1
}

function case_breedWithAuto_giveBirth() {
    # 　用自己的两条龙繁殖, 将sireId 3 设置为允许繁殖， 然后使用player1的两条龙2、3自己繁殖
    # matronId = 2, sireId = 3
    $clultrain push action mima.dragon approveSiring '["player1", 3]' -p player1
    sleep 1
    $clultrain push action mima.dragon breedWithAuto '[2, 3, "80.0000 UGS"]' -p player1
    # give birth, 只有mima.api有权限调用
    sleep 1
    $clultrain push action mima.dragon giveBirth '[2, 3]' -p player1
}


# 用户行为
function case_transfer() {
    # 　赠送指定的龙给指定地址
    $clultrain push action mima.dragon transfer '["player2", 3]' -p player1
    sleep 1
}

function case_giveBirth_with_SiringAuc() {
    # 　将自己的龙挂到出租市场
    $clultrain push action mima.dragon createSiringAuction '[3, "10.0000 UGS", "100.0000 UGS", 600]' -p player2
    sleep 1
    # 　租别人的龙繁殖
    $clultrain push action mima.dragon bidOnSiringAuction '[3, 2, "180.0000 UGS"]' -p player1
    sleep 1
    $clultrain push action mima.dragon giveBirth '[2, 3]' -p player1
    sleep 1
}

function case_saleAuction() {
    # 　将自己的龙挂到拍卖市场
    $clultrain push action mima.dragon createSaleAuction '[2, "10.0000 UGS", "100.0000 UGS", 600 ]' -p player1
    sleep 1
    # 购买拍卖市场的龙, player2购买player1挂到拍卖市场的龙
    $clultrain push action mima.dragon bid '[2, "180.0000 UGS"]' -p player2
    sleep 1
}

function case_cancelSaleAuction() {
    # 取消拍卖
    $clultrain push action mima.dragon createSaleAuction '[2, "10.0000 UGS", "100.0000 UGS", 600 ]' -p player2
    sleep 1
    $clultrain push action mima.dragon cancelSaleAuction '[2]' -p player2
    sleep 1
            #再次尝试对tokenId 2出价，这时候应该失败
    $clultrain push action mima.dragon bid '[2, "180.0000 UGS"]' -p player1
    sleep 1
}

function case_cancelSiringAuction() {
    # 取消出租
    $clultrain push action mima.dragon createSiringAuction '[2, "10.0000 UGS", "100.0000 UGS", 600]' -p player2
    sleep 1
    $clultrain push action mima.dragon cancelSireAuction '[2]' -p player2
    sleep 1
    $clultrain push action mima.dragon bidOnSiringAuction '[2, 3, "180.0000 UGS"]' -p player1 #应该失败
}

function case_match() {
    # Match Core
    # 比赛场景
    # startMatch(match_id, match_type, level)
    # 0 <= match_id <= 4
    # 0 <= level    <= 4
    # match_type 尚无明确应用

    # startMatch(match_id, type, level)
    # match_id/level的startIndex值从1开始
    # type暂时没有明确的使用记录

    $clultrain push action mima.dragon startMatch '[1, 1, 1]' -p mima.api
    wait1s
    # # 　报名参加比赛
    $clultrain push action mima.dragon joinMatch '[4, "100.0000 UGS"]' -p player1
    wait1s
    $clultrain push action mima.dragon joinMatch '[5, "100.0000 UGS"]' -p player2
    wait1s
    $clultrain push action mima.dragon joinMatch '[6, "100.0000 UGS"]' -p player3
    wait1s
    $clultrain push action mima.dragon joinMatch '[7, "100.0000 UGS"]' -p player4
    wait1s
    # 　驱动比赛进行（分组、战斗、发奖）
    for loop in 0 1 2 3
    do
        echo "START Match Loop: " $loop
        nonce=$(((RANDOM % 1000) + 1))
        $clultrain push action mima.dragon nextStep "[$nonce]" -p mima.api
        wait1s
    done
    # 用户方法 对比赛进行竞猜(第二次NextStep的时候可以进行竞猜)
    # $clultrain push action mima.dragon guess '[]' -p player1
}

# case_createGen0Auction
# case_createPromoDragon

# case_match
