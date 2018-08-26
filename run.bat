
rem cleanup resources
cd %userprofile%
./healthylink-ux/k8s/setup CLEAN
./healthylink-api-in-node/k8s/setup CLEAN
./healthylink-mysql/k8s/setup CLEAN
./healthylink-K8S/setup CLEAN
rmdir cluster /s

IF "%1"=="CLEAN" exit /B 0

cd %userprofile%
mkdir cluster
cd cluster

git clone https://github.com/mulargui/healthylinkx-mysql.git
git clone https://github.com/mulargui/healthylinkx-api-in-node.git
git clone https://github.com/mulargui/healthylinkx-ux.git

./healthylink-mysql/k8s/setup
./healthylink-api-in-node/k8s/setup
./healthylink-ux/k8s/setup

exit /B 0
