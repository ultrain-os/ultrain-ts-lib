#! /bin/bash
clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

usc builtmap.ts -t builtmap.wast -g builtmap.abi -b builtmap.wasm -l --validate

echo "Deploy the contract ${clultrain}"
account=map
${clultrain} set contract ${account} ../builtmap -p ${account}
${clultrain} push action ${account} test '[["1","2","3","4","5"]]' -p ${account}
${clultrain} push action ${account} test '[["aa","bb","cc","dd","ff"]]' -p ${account}

if [ -f "builtmap.wast" ]; then
    rm builtmap.wast
fi

if [ -f "builtmap.wasm" ]; then
    rm builtmap.wasm
fi
