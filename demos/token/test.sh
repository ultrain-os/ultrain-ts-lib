#! /bin/bash
echo 'Deploy and test the token contract '
echo 'Precondition:'
echo '1. Accounts: token, tom, jack, rose are exist'

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi

echo 'Deploy the nft contract'

${clultrain} set contract token ../token/ -p token
${clultrain} push action token create '["rose", "100.00 ETA"]' -p token
${clultrain} push action token issue '["jack", "20.00 ETA", "issue"]' -p rose
${clultrain} push action token transfer '["jack", "tom" "10.00 ETA", "transfer"]' -p jack

#Get table info 
${clultrain} get table token ETA stat
${clultrain} get table token tom accounts
${clultrain} get table token jack accounts