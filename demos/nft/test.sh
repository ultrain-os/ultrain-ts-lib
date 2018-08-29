#! /bin/bash
echo 'Deploy the nft contract and test nft contract'
echo 'Precondition:'
echo '1. Accounts: nft, tom, jerry, rose are exist'

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi

echo 'Deploy the nft contract'

${clultrain} set contract nft ../nft -p nft

${clultrain} push action nft create '["rose", "1000 XRT"]' -p nft
${clultrain} push action nft issue '["tom", "2 XRT", ["Wu", "Kong"], "2018", "First issue"]' -p rose
${clultrain} push action nft transfer '["tom", "jerry", 1, "transfer"]' -p tom
${clultrain} push action nft transfer '["tom", "jerry", 2, "transfer"]' -p tom

echo "Get the table info:"
${clultrain} get table nft token token
${clultrain} get table nft XRT stat
${clultrain} get table nft jerry account