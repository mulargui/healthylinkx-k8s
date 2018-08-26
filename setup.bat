rem you need to run this shellscript as an administrator

rem cleanup
minikube stop
minikube delete
del %systemroot%\system32\kubectl.exe
del %systemroot%\system32\minikube.exe
del %userprofile%\.minikube
del %userprofile%\.kube

IF "%1"=="CLEAN" exit /B 0

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

exit /B 0