@echo off
title Network Packet Route Tracer
color A
:END
echo Enter Hostname/IP
SET /P site= WEBSITE/IP:
powershell -Command tracert -d %site% >output.txt
more output.txt
SET /P AREYOUSURE=TracePacket Route (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "N" GOTO END