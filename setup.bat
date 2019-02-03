
rem setup each service
call %~dp0..\healthylinkx-mysql\k8s\setup 
call %~dp0..\healthylinkx-api-in-node\k8s\setup
call %~dp0..\healthylinkx-ux\k8s\setup

exit /B 0
