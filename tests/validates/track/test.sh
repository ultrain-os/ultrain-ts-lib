#!bin/bash
clultrain="$clu"
account=track
${clultrain} set contract ${account} ../track -p ${account}
${clultrain} push action ${account} test '[]' -p ${account}
${clultrain} push action ${account} insertTypes '[2, "tom", "jack", -32, false, 64, ["abcd", "超脑时空"], [1,2,3,4], {"name":"audi", "year":2018}, [{"name":"ben", "year":2018}, {"name":"bicycle", "year":2000}]]' -p ${account}
${clultrain} push action ${account} verifyTypes '[2, "tom", "jack", -32, false, 64, ["abcd", "超脑时空"], [1,2,3,4], {"name":"audi", "year":2018}, [{"name":"ben", "year":2018}, {"name":"bicycle", "year":2000}]]' -p ${account}
${clultrain} get table ${account} types types
