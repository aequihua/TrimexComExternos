REM 
REM	Copyright SAP AG 2004
REM
REM     enstatus.cmd
REM     purpose: delay online status of SCS group
REM       in the current implementation of SAP MSCS Cluster group all
REM       started and not terminated programs (except disp+work and 
REM       msg_server.exe) are treated as 'oneline'.
REM       In this situation the replicated enqueue services will misbehave if 
REM       the status online of the SCS group is propagated before the
REM       enqueue server has attached the shared memory of the replicator
REM	  (is functional).
REM       ensmon is used to try to get an connection to the enqueue server
REM       It will fail if there was no successfull connection within one minute
REM
	set /A counter=0
:start
	%3\ensmon.exe -H %1 -I %2 1
	if %errorlevel% EQU 0 goto ok
	if %errorlevel% EQU 4 goto ok

:repeat
	if %counter% GTR 20 goto failed
	set /a counter=%counter%+1
	timeout /t 3
	goto start

:ok
	echo exit 1 > enstatustest.cmd
	goto finito

:failed
	del enstatustest.cmd
	goto finito
:finito