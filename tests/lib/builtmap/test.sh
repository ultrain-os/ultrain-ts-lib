#! /bin/bash
clultrain="$clu"
account=jack
${clultrain} set contract ${account} ../builtmap -p ${account}
${clultrain} push action ${account} test '[["1","2","3","4","5"]]' -p ${account}
${clultrain} push action ${account} test '[["aa","bb","cc","dd","ff"]]' -p ${account}
${clultrain} push action ${account} testInsert '["key", "value"]' -p ${account}
${clultrain} push aciton ${account} printMap '[]' -p ${account}


