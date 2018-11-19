#! /bin/bash

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=acm3
${clultrain} set contract ${account} ../map -p ${account}
${clultrain} push action ${account} testInsert '["key1", "value1", 1]' -p ${account}
${clultrain} push action ${account} testInsert '["key2", "value2", 2]' -p ${account}
${clultrain} get table ${account} a a