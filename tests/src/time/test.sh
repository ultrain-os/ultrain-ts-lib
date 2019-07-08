#!/bin/bash
clultrain="$clu"
account=jack
${clultrain} set contract ${account} ../time -p ${account}
${clultrain} push action ${account} test '[]' -p ${account}
