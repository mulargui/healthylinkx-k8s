
rem cleanup each service
call %~dp0..\healthylinkx-mysql\k8s\cleanup 
call %~dp0..\healthylinkx-api-in-node\k8s\cleanup
call %~dp0..\healthylinkx-ux\k8s\cleanup

exit /B 0
