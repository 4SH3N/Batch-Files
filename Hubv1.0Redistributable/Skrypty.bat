@Echo off
echo What do you want to use?
echo 1:Notepad
set /p input=
if c%input%==c1 goto c1
:c1
%windir%\system32\notepad.exe
pause