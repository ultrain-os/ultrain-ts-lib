#! /bin/bash

clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=acm2
${clultrain} set contract ${account} ../testm -p ${account}
${clultrain} push action ${account} registerSupplier '["1.0000 UGAS"]' -p ${account}
${clultrain} push action ${account} testSup '[]' -p ${account}
${clultrain} get table ${account} supp.money supp.money
${clultrain} push action ${account} addBail '["1.0000 UGAS"]' -p ${account}
${clultrain} push action ${account} testSup '[]' -p ${account}
${clultrain} get table ${account} supp.money supp.money