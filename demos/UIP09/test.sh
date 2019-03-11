#! /bin/bash
echo 'Deploy the nft contract and test nft contract'
echo 'Precondition:'
echo '1. Accounts: nft, tom, jerry, rose are exist'

clultrain=clultrain
if [ ! -n '$1' ]; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi

if hash usc>/dev/null; then
   usc UIP09.ts -g UIP09.abi -b UIP09.wasm -l
   echo "Compiler the contract ……"
else
   echo "Command usc not exist"
   exit
fi

echo 'Deploy the nft contract'
${clultrain} set contract nft ../UIP09 -p nft

${clultrain} push action nft create '["rose", "1000 XRT"]' -p nft
${clultrain} push action nft issue '["tom", "2 XRT", ["Wu", "Kong"], "2018", "First issue"]' -p rose
${clultrain} push action nft transfer '["tom", "jerry", 1, "transfer"]' -p tom
${clultrain} push action nft transfer '["tom", "jerry", 2, "transfer"]' -p tom
${clultrain} push action nft getSupply '["XRT"]' -p nft


echo "Get the table info:"
${clultrain} get table nft token token
${clultrain} get table nft stat stat
${clultrain} get table nft jerry accounts

rm UIP09.wast UIP09.wasm
