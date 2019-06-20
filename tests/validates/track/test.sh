#!bin/bash
clu="$clu"
account=track
${clu} set contract ${account} ../track -p ${account}
${clu} push action ${account} test '[]' -p ${account}
${clu} push action ${account} insertTypes '[2, "tom", "jack", -32, false, 64, ["abcd", "超脑时空"], [1,2,3,4], {"name":"audi", "year":2018}, [{"name":"ben", "year":2018}, {"name":"bicycle", "year":2000}]]' -p ${account}
${clu} push action ${account} verifyTypes '[2, "tom", "jack", -32, false, 64, ["abcd", "超脑时空"], [1,2,3,4], {"name":"audi", "year":2018}, [{"name":"ben", "year":2018}, {"name":"bicycle", "year":2000}]]' -p ${account}
${clu} push action ${testAssert} testAssert '[true, "token exist."]' -p ${account}
${clu} push action ${testAssert} testAssert '[false, "token exist."]' -p ${account}
${clu} get table ${account} types types
