#! /bin/bash

cmd=$1

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$cmd set contract test1 $mypath -p test1
$cmd push action test1 transfer '["test1", "test2", "10.0000 UGS"]' -p test1