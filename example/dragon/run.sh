#!/bin/bash

BuildPath=$1

clultrain=$BuildPath/programs/clultrain/clultrain

mima_accounts=(mima.dragon mima.ceo mima.cfo mima.api mm.saleauc mm.sireauc mm.match player1 player2)

for account in ${mima_accounts[@]};
do
	Keys=($($clultrain create key | awk -F: '{print $2}'))
	PrivKey=${Keys[0]}
	PubKey=${Keys[1]}
	$clultrain wallet import $PrivKey
	$clultrain system newaccount ultrainio ${account} -u ${PubKey} ${PubKey} --stake-net "1000.0000 SYS" --stake-cpu "1000.0000 SYS" --buy-ram-kbytes 1024
done

# call utr.token issue
for account in ${user_acc_arr[@]}
do
	$clultrain push action utrio.token issue '[ "'${account}'", "100000000.0000 SYS", "memo" ]' -p ultrainio
done

# deploy DragonCore contract
$clultrain set contract mima.dragon $HOME/rdisk6/sources/ultrain-sdk-ts/example/dragon -p mima.dragon


# Gene1：  1617 5408242319726265479 6710648080257325517 7461652739703906358

# Gene2:   158  8955629380194700964 8045519325350893035 9557655034254921735

# Gene3: 301685 7487879209558894878 5534081594348815358 0280225560611987747

# Gene4:   3621 5113135817394323907 0991529902932693868 6109627295399616547

# 创建初代龙并挂到拍卖市场
$clultrain push action mima.dragon createGen0Auction '[1617, 5408242319726265479, 6710648080257325517, 7461652739703906358, 0]' -p mima.api

sleep 1

$clultrain push action mima.dragon createGen0Auction '[158, 8955629380194700964, 8045519325350893035, 9557655034254921735, 0]' -p mima.api

sleep 1



# 创建促销龙给指定地址
$clultrain push action mima.dragon createPromoDragon '[301685, 7487879209558894878, 5534081594348815358, 0280225560611987747, "player1", 0, 0]' -p mima.api
sleep 1

$clultrain push action mima.dragon createPromoDragon '[3621, 5113135817394323907, 0991529902932693868, 6109627295399616547, "player1", 0, 0]' -p mima.api
sleep 1

# 　用自己的两条龙繁殖, 将sireId 3 设置为允许繁殖， 然后使用player1的两条龙2、3自己繁殖
# matronId = 2, sireId = 3
$clultrain push action mima.dragon approveSiring '["player1", 3]' -p player1
sleep 1
$clultrain push action mima.dragon breedWithAuto '[2, 3, "80.0000 UGS"]' -p player1

# give birth, 只有mima.api有权限调用
sleep 1
$clultrain push action mima.dragon giveBirth '[2, 3]' -p player1

# 用户行为

# 　赠送指定的龙给指定地址
$clultrain push action mima.dragon transfer '["player2", 3]' -p player1
sleep 1
# 　将自己的龙挂到出租市场
$clultrain push action mima.dragon createSiringAuction '[3, "10.0000 UGS", "100.0000 UGS", 61]' -p player2
sleep 2
# 　租别人的龙繁殖
$clultrain push action mima.dragon bidOnSiringAuction '[3, 2, "80.0000 UGS"]' -p player1

# 　将自己的龙挂到拍卖市场
# $clultrain push action mima.dragon createSaleAuction '[]' -p player1

# 　报名参加比赛
# $clultrain push action mima.dragon joinMatch '[]' -p player1

# 购买拍卖市场的龙
# $clultrain push action mima.dragon bid '[]' -p player1

# 取消拍卖
# $clultrain push action mima.dragon cancelSaleAuction '[]' -p player1

# 取消出租
# $clultrain push action mima.dragon cancelSireAuction '[]' -p player1


# Match Core
# 开启比赛
# $clultrain push action mima.dragon startMatch '[]' -p mima.api

# 　驱动比赛进行（分组、战斗、发奖）
# $clultrain push action mima.dragon nextStep '[]' -p mima.api

# 用户方法 对比赛进行竞猜
# $clultrain push action mima.dragon guess '[]' -p player1
