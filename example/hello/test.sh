#! /bin/bash

cmd=$1

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$cmd set contract test1 $mypath -p test1
$cmd push action test1 hi_empty '[]' -p test1
$cmd push action test1 hi_it_is_a_long_func '["dawenxi", 100, "hello", "1000.0000 UGS"]' -p test1