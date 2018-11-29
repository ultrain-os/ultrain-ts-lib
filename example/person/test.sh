#! /bin/bash

cmd=$1

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $mypath
#$cmd set contract jack $mypath -p jack
$cmd push action jack add '["zhao", 100, 60]' -p jack
$cmd push action jack add '["qian", 100, 60]' -p jack
$cmd push action jack add '["sun", 100, 60]' -p jack
$cmd push action jack add '["lee", 100, 60]' -p jack
$cmd push action jack modify '["lee", 80]' -p jack
$cmd push action jack remove '["sun"]' -p jack

for (( i=0; i<=5; i++ ))
do
    # sleep 1
    for (( j=0; j<=5; j++))
    do
        for (( k=0; k<=5 ; k++))
        do
            n="[\"dog$i$j$k\", 100, 30]"
            echo $n
            $cmd push action jack add "$n" -p jack
        done
    done

done