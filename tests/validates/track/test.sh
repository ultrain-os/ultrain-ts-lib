
clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi
account=tome
${clultrain} set contract ${account} ../track -p ${account}
${clultrain} push action ${account} test '[]' -p ${account}
