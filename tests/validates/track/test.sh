
clultrain=clultrain
if [! -n '$1']; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi

${clultrain} set contract test1 ../track -p test1
${clultrain} push action test1 test '[]' -p test1
