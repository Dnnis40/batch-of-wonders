@echo off
:start
cls
time /t
echo ---Text (Press Enter if Done)---
set /p CREATE=
cls
echo Save Text Document? (Y/N)
set /p SAVE_TXT=
if %SAVE_TXT%==Y goto save-txt-respond_yes
if %SAVE_TXT%==y goto save-txt-respond_yes
if %SAVE_TXT%==n goto save-txt-respond_no
if %SAVE_TXT%==N goto save-txt-respond_no

:save-txt-respond_yes
cls
set /p SAVE_Name-TXT= Name Your File (No Spaces Only _ and -): 
goto save-txt-respond_yes2

:save-txt-respond_yes2
cls
echo %CREATE% > %SAVE_Name-TXT%.txt
cls
echo -SAVED-
pause
goto start

:save-txt-respond_no
cls
echo choose a number
echo 1 - (end program)
echo 2 - (restart)
echo.
set /p pick-A-no.=: 
if %pick-A-no.%==1 goto fail
if %pick-A-no.%==2 goto start
cls
echo Please put numbers 1 or 2
pause
goto start

:fail
