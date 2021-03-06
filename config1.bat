@echo off
set "USER=%USERNAME%"
set EXE=gosumemory.exe
:script-start
if not exist "osu!.exe" goto:osu-not-found
if not exist gosu (
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto:gosurunning
)
if exist "config1" (
	echo Currently on Config 1
	if not exist "config2.bat" (
	goto:error-noconfig2
	)
	goto:start
) else (
if exist "config2" (
if not exist "config2.bat" (
	goto:error-noconfig2
)
rename config2 config1
rename "osu!.%USER%.cfg" "osu!.%USER%-config2.cfg"
rename "osu!.%USER%-config1.cfg" "osu!.%USER%.cfg"
goto:start
) else (

if exist "config2.bat" (
	goto:error-noconfigs
)

echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           Welcome!
echo @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@(     @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@    Configs were not found.
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@         Create new?
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@ 
echo @@@@@@  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@   @@@@
echo @@@@(  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  @@@@        yes [Y] no [N]
echo @@@@  .@@@@@@   ,,   @@@/   ___ @@   @@@   @@@   @@@@@   @@@
echo @@@@  @@@@@@*  @@@@   @@@     /@@@   @@@   @@@   @@@@@,  @@@
echo @@@@  .@@@@@@   @@@   @@@@@@@   @@   @@@   @@@@@@@@@@@   @@@
echo @@@@   @@@@@@@      @@@@       @@@@        @@@   @@@@@  @@@@
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@
echo @@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@     Osu 2 configs script.
echo @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@                .@@@@@@@@@@@@@@@@@@@@@      Created by Bliwi.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
goto:choise
:choise
set /P c=
if /I "%c%" EQU "Y" goto:script
if /I "%c%" EQU "N" goto:no-script
goto:choise
:no-script
cls
echo @@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@\@@@@@ \             /  @@@@@/@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@\     @\@@@@@@@@@@@/@@@    / @@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@    \@@@@@@\@@@@@@@@@/@@@@@@@/@    @@@@@@@@@@@@         Installation Cancelled
echo @@@@@@@@@@@   @@@@\@@@@@@\@@@@@@@/@@@@@@@/@@@@@   @@@@@@@@@@
echo @@@@@@@@@   @@@@@@@\@@@@@@\@@@@@/@@@@@@@/@@@@@@@@   @@@@@@@@  If you are in here because of an error
echo @@@@@@@   @@@@@@@@@@\@@@@@@\@@@/@@@@@@@/@@@@@@@@@@@   @@@@@@   please leave a comment on my video
echo @@@@@@  .@@@@@@@@@@@@\@@@@@@\@/@@@@@@@/@@@@@@@@@@@@@   @@@@@ so i can help you and improve the script.
echo @@@@@   @@@@@@@@@@@@@@\@@@@@@\@@@@@@@/@@@@@@@@   @@@@   @@@@
echo @@@@(  @@@@@@@@@@@@@@@@\@@@@/@\@@@@@/@@@@@@@@@   @@@@@  @@@@     
echo @@@@  .@@@@@@   ,,   @@@\  /___\@@ / @@@   @@@   @@@@@   @@@
echo @@@@  @@@@@@*  @@@@   @@@\/   /@\@/  @@@   @@@   @@@@@,  @@@
echo @@@@  .@@@@@@   @@@   @@@/\@@   @\   @@@   @@@@@@@@@@@   @@@
echo @@@@   @@@@@@@      @@@@/  \   @/@\        @@@   @@@@@  @@@@   Press any key to close this screen...
echo @@@@@   @@@@@@@@@@@@@@@/@@@@\@@/@@@\@@@@@@@@@@@@@@@@@   @@@@
echo @@@@@@   @@@@@@@@@@@@@/@@@@@@\/@@@@@\@@@@@@@@@@@@@@@   @@@@@
echo @@@@@@@   @@@@@@@@@@@/@@@@@@@/\@@@@@@\@@@@@@@@@@@@@   @@@@@@
echo @@@@@@@@@   @@@@@@@@/@@@@@@@/@@\@@@@@@\@@@@@@@@@@   @@@@@@@@
echo @@@@@@@@@@@   @@@@@/@@@@@@@/@@@@\@@@@@@\@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@@@@@    @/@@@@@@@/@@@@@@\@@@@@@\@@    .@@@@@@@@@@@@          Osu 2 configs script.
echo @@@@@@@@@@@@@@@@@/     @@/@@@@@@@@\@@@   \  @@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@/@@@@@  /          \  .@@@\@@@@@@@@@@@@@@@@@            Created by Bliwi.
echo @@@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@@

pause
goto:eof

:script
cls
curl "https://raw.githubusercontent.com/Bliwi/osu2config/main/config2.bat" -o "config2.bat"
echo[
echo Downloaded script
copy NUL config1
copy "osu!.%USER%.cfg" "osu!.%USER%-config2.cfg"
echo[
echo Created new files
echo[
echo Installation Complete!
echo[
timeout 1
cls
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@(     @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@                  Installation Complete!
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@       You can press any key to close this window,
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@     and then run any of the config*.bat to open osu!
echo @@@@@@  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@   @@@@
echo @@@@(  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  @@@@
echo @@@@  .@@@@@@   ,,   @@@/   ___ @@   @@@   @@@   @@@@@   @@@
echo @@@@  @@@@@@   @@@@   @@@     /@@@   @@@   @@@   @@@@@,  @@@
echo @@@@  .@@@@@@   @@@   @@@@@@@   @@   @@@   @@@@@@@@@@@   @@@
echo @@@@   @@@@@@@      @@@@       @@@@        @@@   @@@@@  @@@@
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@
echo @@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@   Please, consider subscribing to my channel on youtube!
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@                    Osu 2 configs script.
echo @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@                .@@@@@@@@@@@@@@@@@@@@@                      Created by Bliwi.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
pause
goto:eof

)
)
:error-noconfig2
cls
echo                     ==========================================
echo                       d88888P
echo                      d88     88bd88b  88bd88b d8888b   88bd88b
echo                     d8bdddP  88P'  `  88P'  `d8P' ?88  88P'  `
echo                     88b     d88      d88     88b  d88 d88     
echo                     `?888P'd88'     d88'     `?8888P'd88'     
echo                     ==========================================
echo[                    
echo                       Error, Could not find the config2.bat.
echo[                    
echo                       Press [Y] to re-download. [N] To exit.
echo[                                   
echo                           If the error persists, go to: 
echo https://drive.google.com/file/d/1Im0Kycvvvq6hOiqyYydkGkBChLfHwshe/view?usp=sharing
echo                             And download it manually.
goto:choise-noconfig2
:choise-noconfig2
set /P c=
if /I "%c%" EQU "Y" goto:script
if /I "%c%" EQU "N" goto:no-script
goto:choise-noconfig2

:error-noconfigs
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ==========================================
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     d88888P
echo @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@@@@@@@@@@@@@@@    d88     88bd88b  88bd88b d8888b   88bd88b
echo @@@@@@@@@@@@@@@@(     @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@   d8bdddP  88P'  `  88P'  `d8P' ?88  88P'  `
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@   88b     d88      d88     88b  d88 d88      
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@   `?888P'd88'     d88'     `?8888P'd88'     
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@   ========================================== 
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@ 
echo @@@@@@  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@   @@@@  Config* not Found, but Config2.bat was found.
echo @@@@(  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  @@@@   
echo @@@@  .@@@@@@   ,,   @@@/   ___ @@   @@@   @@@   @@@@@   @@@  Delete Config2.bat and re-install the script?
echo @@@@  @@@@@@   @@@@   @@@     /@@@   @@@   @@@   @@@@@,  @@@  
echo @@@@  .@@@@@@   @@@   @@@@@@@   @@   @@@   @@@@@@@@@@@   @@@      [This will keep changes on the configs]
echo @@@@   @@@@@@@      @@@@       @@@@        @@@   @@@@@  @@@@  
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@                  yes [Y] no [N]
echo @@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@               Osu 2 configs script.
echo @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@                .@@@@@@@@@@@@@@@@@@@@@                 Created by Bliwi.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:choise-noconfigs
set /P c=
if /I "%c%" EQU "Y" goto:clear-configs
if /I "%c%" EQU "N" goto:no-script
goto:choise-noconfig2

:clear-configs
del config2.bat
goto:script

:osu-not-found

echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    ==========================================
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      d88888P
echo @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@@@@@@@@@@@@@@@     d88     88bd88b  88bd88b d8888b   88bd88b
echo @@@@@@@@@@@@@@@@(     @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@    d8bdddP  88P'  `  88P'  `d8P' ?88  88P'  `
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@    88b     d88      d88     88b  d88 d88      
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@    `?888P'd88'     d88'     `?8888P'd88'     
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@    ========================================== 
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@ 
echo @@@@@@  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@   @@@@            Osu!.exe Was not found.
echo @@@@(  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  @@@@   
echo @@@@  .@@@@@@   ,,   @@@/   ___ @@   @@@   @@@   @@@@@   @@@  Are you sure you have placed the script on your
echo @@@@  @@@@@@   @@@@   @@@     /@@@   @@@   @@@   @@@@@,  @@@                   osu! folder?
echo @@@@  .@@@@@@   @@@   @@@@@@@   @@   @@@   @@@@@@@@@@@   @@@
echo @@@@   @@@@@@@      @@@@       @@@@        @@@   @@@@@  @@@@  
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@
echo @@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@               Osu 2 configs script.
echo @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@                .@@@@@@@@@@@@@@@@@@@@@                 Created by Bliwi.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
pause
goto:oef

:gosurunning

copy NUL gosu

cls
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@@@@@@@@@@@@@@@          Detected gosumemory is running.
echo @@@@@@@@@@@@@@@@(     @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      Add it to run automatically with osu!?
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@
echo @@@@@@  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@   @@@@             If you change idea later,
echo @@@@(  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  @@@@            delete the gosu blank file.
echo @@@@  .@@@@@@   ,,   @@@/   ___ @@   @@@   @@@   @@@@@   @@@
echo @@@@  @@@@@@   @@@@   @@@     /@@@   @@@   @@@   @@@@@,  @@@
echo @@@@  .@@@@@@   @@@   @@@@@@@   @@   @@@   @@@@@@@@@@@   @@@
echo @@@@   @@@@@@@      @@@@       @@@@        @@@   @@@@@  @@@@                   [Y] Yes.
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@
echo @@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@                    [N] No.
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@              Osu 2 configs script.
echo @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@                .@@@@@@@@@@@@@@@@@@@@@                Created by Bliwi.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

set /P c=
if /I "%c%" EQU "Y" goto:install-gosu
if /I "%c%" EQU "N" goto:script-start

:install-gosu
cls
echo Please type the exact location of your gosumemory install.
set /P gosulocation=
timeout 1
echo start %gosulocation%\gosumemory.exe >> "config1.bat"
echo start %gosulocation%\gosumemory.exe >> "config2.bat"
echo Done!
goto:script-start

:start 
start Osu!.exe
