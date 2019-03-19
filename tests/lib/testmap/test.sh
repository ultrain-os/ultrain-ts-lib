#! /bin/bash

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=acm
${clultrain} set contract ${account} ../testmap -p ${account}
# ${clultrain} push action ${account} testInsert '["key", "value"]' -p ${account}

if [ -f "super.wast" ]; then
    rm super.wast
fi

if [ -f "super.wasm" ]; then
    rm super.wasm
fi