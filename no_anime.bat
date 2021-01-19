@echo off
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