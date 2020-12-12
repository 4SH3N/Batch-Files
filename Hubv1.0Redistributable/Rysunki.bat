@Echo off
echo What do you want to draw in?
echo 1:Paint
set /p input=
if c%input%==c1 goto c1
:c1
%windir%\system32\mspaint.exe
pause
