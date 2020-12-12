@Echo off
title Emergency Virus Protector
color 2
shutdown /a
echo Emergency Virus Protector v1.0
echo To use this fully you have to have a folder named ImportantFiles on the C drive and ImportantFilesBackup on G drive (pendrive)

:PROMPT
SET /P AREYOUSURE=Activate Emergency Folder Protocol (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

MOVE C:\ImportantFiles\* G:\ImportantFilesBackup
echo Folders: secure


:END

:PROMPT
SET /P AREYOUSU=Shutdown PC (Y/[N])?
IF /I "%AREYOUSU%" NEQ "Y" GOTO END

shutdown /f

:END

echo Ending Emergency Protocol
pause