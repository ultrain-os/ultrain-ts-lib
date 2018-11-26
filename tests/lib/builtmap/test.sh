#! /bin/bash
clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
fi

echo "Deploy the contract ${clultrain}"
account=test2
${clultrain} set contract ${account} ../builtmap -p ${account}
${clultrain} push action ${account} test '[["1","2","3","4","5"]]' -p ${account}
${clultrain} push action ${account} test '[["aa","bb","cc","dd","ff"]]' -p ${account}