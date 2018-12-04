#! /bin/bash

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=acm1
${clultrain} set contract ${account} ../map -p ${account}
${clultrain} push action ${account} testInsert '["key1", "value1", 1]' -p ${account}
${clultrain} push action ${account} testInsert '["key2", "value2", 2]' -p ${account}
${clultrain} push action ${account} testAnd '[12, 12, false]' -p ${account}
${clultrain} push action ${account} testAnd '[12, 111, true]' -p ${account}
${clultrain} get table ${account} a a
