#! /bin/bash
clultrain="$clu"
account=jack
${clultrain} set contract ${account} ./saveMap -p ${account}
${clultrain} push action ${account} testDropAll '' -p ${account}
${clultrain} push action ${account} testCreateMap '[["1","2","3","4","5"]]' -p ${account}
${clultrain} push action ${account} testCreateMap '[["aa","bb","cc","dd","ff"]]' -p ${account}
${clultrain} push action ${account} testWriteMapCollector '' -p ${account}
${clultrain} push action ${account} testReadMapCollector '' -p ${account}

