#!bin/bash
clultrain=clultrain
if [ ! -n '$1' ]; then
    echo "using default clutrain"
else 
    clultrain="$1/build/programs/clultrain/clultrain"
    echo "using clutrain: ${clultrain}"
fi

if hash usc>/dev/null; then
   usc track.ts -g track.abi -b track.wasm -l
   echo "Compiler the track.ts ……"
else
   echo "Command usc not exist"
fi

account=track
${clultrain} set contract ${account} ../track -p ${account}
${clultrain} push action ${account} test '[]' -p ${account}
${clultrain} push action ${account} testType '["tom", "jack", -32, false, 64]' -p ${account}
${clultrain} push action ${account} testType '["peter", "BBBB", 32, true, -64]' -p ${account}
${clultrain} get table ${account} types types

echo "Delete the .wasm and .wast file"
rm track.wasm track.wast
