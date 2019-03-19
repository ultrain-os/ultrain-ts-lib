#! /bin/bash
echo 'Deploy safemath contract and test safemath'
echo 'Precondition:'
echo '1. The wallet is open and has test1 account'

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=nft
${clultrain} set contract ${account} ../safemath -p ${account}
${clultrain} push action ${account} test '[13]' -p ${account}
