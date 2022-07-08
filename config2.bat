@echo off
set "USER=%USERNAME%"
if exist "config2" (
echo Currently on config 2
goto:start
) else (
if exist "config1" (
rename config1 config2
rename "osu!.%USER%.cfg" "osu!.%USER%-config1.cfg"
rename "osu!.%USER%-config2.cfg" "osu!.%USER%.cfg"

goto:start

) else (
echo                    ==========================================
echo                      d88888P
echo                     d88     88bd88b  88bd88b d8888b   88bd88b
echo                    d8bdddP  88P'  `  88P'  `d8P' ?88  88P'  `
echo                    88b     d88      d88     88b  d88 d88     
echo                    `?888P'd88'     d88'     `?8888P'd88'     
echo                    ==========================================
echo[
echo                          Could not find the Config* file.
echo                             You might have renamed it.
echo[
echo                  Please run Config1.bat to re-install the script.
echo                        [This will not affect your configs].
echo[
echo      If the error persists, please leave a comment on the video so i can help you.
echo[
pause
goto:eof
)
)

:start
start Osu!.exe
goto:eof