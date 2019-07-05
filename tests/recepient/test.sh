#!/bin/bash
clultrain="$clu"
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi
account=test2
${clultrain} set contract ${account} ../recepient -p ${account}
${clultrain} push action ${account} printstr '["你好"]' -p ${account}
