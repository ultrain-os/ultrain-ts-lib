
clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi
account=nft
${clultrain} set contract ${account} ../track -p ${account}
${clultrain} push action ${account} test '[]' -p ${account}
${clultrain} push action ${account} testType '["tom", "jack", -32, false, 64]' -p ${account}
${clultrain} push action ${account} testType '["peter", "BBBB", 32, true, -64]' -p ${account}
${clultrain} get table ${account} types types
