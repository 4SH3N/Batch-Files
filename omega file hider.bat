@echo off
title OMEGA FILE HIDER
color 02
IF exist C:\omega_file_hider goto rest
mkdir C:\omega_file_hider
:rest
if exist C:\omega_file_hider goto good
echo ERROR! RUN AS ADMIN.
pause
exit
:good
IF exist C:\omega_file_hider\temp goto rest2
mkdir C:\omega_file_hider\temp
:rest2
if exist C:\omega_file_hider\temp goto vgood
echo ERROR! RUN AS ADMIN.
pause
exit
:vgood
set /p help="Display help? (y/n): "
if %help% NEQ y goto skip
echo Place the file you want to hide and the image in C:\omega_file_hider.
echo If the hiding process fails, ry running OMEGA as administrator
:skip
set /p path1="Name of the file you want to hide (with extension): "
set /p path2="Name of the JPEG image (without extension): "
set /p path3="Output file name (without extension): "
set FILETOZIP=c:\omega_file_hider\%path1%

set TEMPDIR=C:\temp738
rmdir %TEMPDIR%
mkdir %TEMPDIR%
xcopy /s %FILETOZIP% %TEMPDIR%

echo Set objArgs = WScript.Arguments > _zipIt.vbs
echo InputFolder = objArgs(0) >> _zipIt.vbs
echo ZipFile = objArgs(1) >> _zipIt.vbs
echo CreateObject("Scripting.FileSystemObject").CreateTextFile(ZipFile, True).Write "PK" ^& Chr(5) ^& Chr(6) ^& String(18, vbNullChar) >> _zipIt.vbs
echo Set objShell = CreateObject("Shell.Application") >> _zipIt.vbs
echo Set source = objShell.NameSpace(InputFolder).Items >> _zipIt.vbs
echo objShell.NameSpace(ZipFile).CopyHere(source) >> _zipIt.vbs
echo wScript.Sleep 2000 >> _zipIt.vbs

CScript  _zipIt.vbs  %TEMPDIR%  C:\omega_file_hider\omega_output.zip

copy /b C:\omega_file_hider\%path2%.jpg + C:\omega_file_hider\omega_output.zip C:\omega_file_hider\%path3%.jpg
pause