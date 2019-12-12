#!bin/bash
clu="$clu"
account=jack

################### Testing dbsaving ##################
${clu} set contract ${account} ./dbsave -p ${account}
${clu} push action ${account} testDropAll '' -p ${account}
${clu} push action ${account} testSaveCar '' -p ${account}
${clu} push action ${account} testGetCar '' -p ${account}
${clu} push action ${account} testDbSave '' -p ${account}
${clu} push action ${account} testDbGet '' -p ${account}
${clu} push action ${account} testSaveMap '' -p ${account}
${clu} push action ${account} testGetMap '' -p ${account}
#${clu} get table ${account} car car
#${clu} get table ${account} obj obj