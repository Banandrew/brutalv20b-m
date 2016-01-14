@echo off

SET ZLOC="%~dp0\tools\7za.exe"


if a%1 == a goto error

if a%2 == a goto defaultname
set PKNAME=%2
goto continue

:defaultname
set PKNAME=brutalv20b-m-v1.pk3

:continue

echo Going to compress this folder to pk3:

cd %1

cd

echo.

%ZLOC% u -r -tzip ..\%PKNAME% . -x!*.dbs -x!*.bak -x!*.backup* -x!*Thumbs.db

goto end

:error
echo Missing argument!
echo usage:  compile.bat folder [output.pk3]
echo.
rem pause
goto veryendnocdup

:end
echo.
echo Done.

:veryend
cd ..

:veryendnocdup
pause
