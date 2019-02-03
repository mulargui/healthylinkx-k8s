
rem update each service
call %~dp0..\healthylinkx-mysql\k8s\update 
call %~dp0..\healthylinkx-api-in-node\k8s\update
call %~dp0..\healthylinkx-ux\k8s\update

exit /B 0
