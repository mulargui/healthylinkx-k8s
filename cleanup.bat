rem you need to run this shellscript as an administrator

rem cleanup
minikube stop
minikube delete
del %systemroot%\system32\kubectl.exe
del %systemroot%\system32\minikube.exe
rmdir %userprofile%\.minikube /s /q
rmdir %userprofile%\.kube /s /q
rmdir %userprofile%\cluster /s /q

exit /B 0