#!/bin/bash
clultrain="$clu"
account=track
${clultrain} set contract ${account} ../tx -p ${account}
${clultrain} push action ${account} showIdAndTime '[]' -p ${account}
