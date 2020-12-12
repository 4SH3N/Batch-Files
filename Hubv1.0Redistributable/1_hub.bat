@Echo off
echo Hello [Username]
echo What do you want to do today?
echo 1: Play games
echo 2: Browse the internet
echo 3:Write Scripts
echo 4:Draw
set /p input=
if c%input%==c1 goto c1
if c%input%==c2 goto c2
if c%input%==c3 goto c3
if c%input%==c4 goto c4
:c1
call C:\Hubv1.0\Gry.bat
pause
:c2
call C:\Hubv1.0\Przegladarki.bat
pause
:c3
call C:\Hubv1.0\Skrypty.bat
pause
:c4
call C:\Hubv1.0\Rysunki.bat
pause