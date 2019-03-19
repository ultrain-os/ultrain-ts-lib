#! /bin/bash

if hash usc>/dev/null; then
   usc balance.ts -t balance.wast -g balance.abi -b balance.wasm -l --validate
fi

cmd=$1

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$cmd set contract test1 $mypath -p test1
$cmd push action test1 transfer '["test1", "test2", "10.0000 UGS"]' -p test1

files=(balance.wast balance.wasm)
for fileName in ${files[@]};
do
  if [ -f $fileName ]; then
    rm $fileName
  fi
done