@echo off
cls
echo
PING localhost -n 6 >NUL
echo               ___________
echo             /            \
echo           / 0000000000000 \
echo         / 000000     000000\
PING localhost -n 6 >NUL
echo       /                     \
echo     /               \        \
echo   /                 /         \
echo /                              \
PING localhost -n 6 >NUL
echo Hello Sir. My task is to protect you from anime.
set /p filename="Please specify a path to the text file: "
    find /c "anime" file %filename%
    if %errorlevel% equ 1 goto notfound
        echo WARNING! WARNING! ANIME WAS FOUND IN THE GIVEN LOCATION.
        echo DELETING THE DANGEROUS FILE
        del %filename%
    goto done
    :notfound
        echo YOU ARE SAFE FROM BAD INFLUENCE OF ANIME
    goto done
    :done
     pause