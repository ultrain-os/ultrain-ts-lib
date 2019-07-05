#!/bin/bash
clultrain="$clu"

account=test
${clultrain} set contract ${account} ../crypto -p ${account}
${clultrain} push action ${account} test '[]' -p ${account}
