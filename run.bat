
%userprofile%\cluster\healthylinkx-mysql\k8s\setup
%userprofile%\cluster\healthylinkx-api-in-node\k8s\setup
%userprofile%\cluster\healthylinkx-ux\k8s\setup

exit /B 0

rem other useful commands
kubectl logs dbtier-pod
kubectl exec -it dbtier-pod -- /bin/bash
kubectl run my-shell --rm -i --tty --image sqlclient --image-pull-policy Never -- bash
kubectl attach dbtier-test -c sqlclient -i -t
kubectl run curl --image=radial/busyboxplus:curl -i --tty //check kube-dns
