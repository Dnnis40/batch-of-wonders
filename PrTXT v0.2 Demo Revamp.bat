@echo off
:start
cls
echo choose a number
echo 1 - (Create a TXT File)
echo 2 - (Version Info)
echo 3 - (Opens TXT Files)
echo 4 - (End Program)
echo.
set /p START_pick-A-no.=: 
if %START_pick-A-no.%==1 goto create-TXT
if %START_pick-A-no.%==2 goto start-Respond_2
if %START_pick-A-no.%==3 goto start-Respond_3.1
if %START_pick-A-no.%==4 goto fail
cls
echo Please insert the folowing numbers showed on screen
pause
goto start


:start-Respond_2
cls
echo Version: [0.2 Demo]
echo Made By: Dnnis40 (GitHub)
pause
goto start


:start-Respond_3.1
cls
echo Is .txt file in a folder? (Y/N)
set /p y/n_Repond3.1=: 
if %y/n_Repond3.1%==Y goto start-Respond_3.2
if %y/n_Repond3.1%==y goto start-Respond_3.2
if %y/n_Repond3.1%==n goto start-Respond_3.3
if %y/n_Repond3.1%==N goto start-Respond_3.3


:start-Respond_3.2
cls
set /p name-Folder_Respond3.2=Name of Folder: 
cls
set /p name-TXTFile_Respond3.2=Name of .txt File: 
start %name-Folder_Respond3.2%\%name-TXTFile_Respond3.2%.txt
goto start


:start-Respond_3.3
cls
echo Whats The Name of The .txt File you want to Open?
set /p OPEN-TXT-File_name=: 
start %OPEN-TXT-File_name%.txt
goto start


:create-TXT
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
cls
echo put it on a folder? (Y/N)
set /p Folder-SAVE_TXT=
if %Folder-SAVE_TXT%==Y goto folder-save-respond_yes
if %Folder-SAVE_TXT%==y goto folder-save-respond_yes
if %Folder-SAVE_TXT%==n goto save-txt-respond_yes2
if %Folder-SAVE_TXT%==N goto save-txt-respond_yes2


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

:folder-save-respond_yes
cls
set /p Folder-SAVE-TXT= Name of the folder (No Spaces Only _ and -): 


:folder-save-respond_yes2
cls
echo %CREATE% > %Folder-SAVE-TXT%\%SAVE_Name-TXT%.txt
cls
echo -FILE SAVED IN FOLDER: %Folder-SAVE-TXT%-
pause
goto start


:fail