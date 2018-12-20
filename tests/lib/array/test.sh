#! /bin/bash

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=rose
${clultrain} set contract ${account} ../array -p ${account}
${clultrain} push action ${account} testAdd '[1, "spring"]' -p ${account}
${clultrain} push action ${account} testAdd '[4, "summer"]' -p ${account}
${clultrain} push action ${account} testArrObj '[[{"id":12, "name":"Audi"}]]' -p ${account}
${clultrain} get table ${account} a a