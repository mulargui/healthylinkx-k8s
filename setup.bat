rem you need to run this shellscript as an administrator

rem install minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/windows/amd64/kubectl.exe
move kubectl.exe %systemroot%\system32
curl -LO https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-windows-amd64.exe
ren minikube-windows-amd64.exe minikube.exe
move minikube.exe %systemroot%\system32

minikube version
minikube start
minikube status
minikube dashboard

rem create resources
mkdir %userprofile%\cluster
cd %userprofile%\cluster

git clone https://github.com/mulargui/healthylinkx-mysql.git
git clone https://github.com/mulargui/healthylinkx-api-in-node.git
git clone https://github.com/mulargui/healthylinkx-ux.git

exit /B 0