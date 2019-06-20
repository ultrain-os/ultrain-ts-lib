#!bin/bash
clultrain="$clu"
account=abi

# Test return function
${clultrain} set contract ${account} ../abi -p ${account}
${clultrain} push action jack test1 '[[{"a": {"year": 12}, "pay": 23}], [{"a": {"year": 12}, "pay":23}]]' -p jack
${clultrain} push action ${account} testReturnAsset '[]' -p ${account}
${clultrain} push action ${account} testReturnAssetArr '[]' -p ${account}
${clultrain} push action ${account} testClassObj '[]' -p ${account}
${clultrain} push action ${account} testClassObjArr '[]' -p ${account}
${clultrain} push action ${account} teststr '[]' -p ${account}


