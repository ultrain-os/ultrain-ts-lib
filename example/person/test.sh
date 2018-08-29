#! /bin/bash

cmd=$1

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $mypath
$cmd set contract test1 $mypath -p test1
$cmd push action test1 add '["zhao", 100, 60]' -p test1
$cmd push action test1 add '["qian", 100, 60]' -p test1
$cmd push action test1 add '["sun", 100, 60]' -p test1
$cmd push action test1 add '["lee", 100, 60]' -p test1

$cmd push action test1 modify '["lee", 80]' -p test1

$cmd push action test1 remove '["sun"]' -p test1