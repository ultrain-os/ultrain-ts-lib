#!bin/bash
clultrain="$clu"
account=jack

################### Testing types ##################
${clultrain} set contract ${account} ./types -p ${account}
${clultrain} push action ${account} testBasicTypeOne '[1, 1, 1, true]' -p ${account}
${clultrain} push action ${account} testBasicTypeZero '[0, 0, 0, false]' -p ${account}
${clultrain} push action ${account} testCarObj '{"name": "ultrain", "year": 2019,"car": {"name": "ultrain", "year": 2019}}' -p ${account}
${clultrain} push action ${account} testCarArray '{"name": "ultrain", "year": 2019,"car": [{"name": "ultrain", "year": 2019}, {"name": "ultrain", "year": 2019}]}'  -p ${account}
${clultrain} push action ${account} testNumsIncreaseVal '{"nums": [0, 1, 2, 3, 4, 5, 6]}' -p ${account}
${clultrain} push action ${account} testNumsIncreaseVal '{"nums": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]}' -p ${account}

${clultrain} push action ${account} testMap '[6]' -p ${account}
${clultrain} push action ${account} testMap '[100]' -p ${account}

################### Testing track ##################
${clultrain} set contract ${account} ./track -p ${account}
${clultrain} push action ${account} testTrack '[]' -p ${account}

################### Testing safemath ##################
${clultrain} set contract ${account} ./safemath -p ${account}
${clultrain} push action ${account} testSafeMath '' -p token

################### Testing returnable ##################
${clultrain} set contract ${account} ./return -p ${account}
${clultrain} push action ${account} testReturnAsset '[]' -p ${account}
${clultrain} push action ${account} testReturnAssetArr '[]' -p ${account}
${clultrain} push action ${account} testClassObj '[]' -p ${account}
${clultrain} push action ${account} testClassObjArr '[]' -p ${account}
${clultrain} push action ${account} teststr '[]' -p ${account}

################### Testing time ##################
${clultrain} set contract ${account} ./time -p ${account}
${clultrain} push action ${account} testTime '[]' -p ${account}

################### Testing Crypto ##################
${clultrain} set contract ${account} ./crypto -p ${account}
${clultrain} push action ${account} testCrypto '' -p ${account}