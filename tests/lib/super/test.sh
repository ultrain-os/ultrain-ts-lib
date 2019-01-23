#! /bin/bash
echo 'Deploy safemath contract and test safemath'
echo 'Precondition:'
echo '1. The wallet is open and has super account'

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=super
${clultrain} set contract ${account} ../super -p ${account}
${clultrain} push action ${account} addTiger '{"tiger":{"kind":12, "name":"Tiger", "region":"China"}}' -p ${account}