echo off
rem set dir=.\0C\
set dir=.\extra\

for /f tokens^=* %%i in ('where %dir%:*.db') do (
(echo.%%~nxi) && (unhide %dir%\%%~ni.db) && ^
echo. && echo --------------------------- && ^
echo.EXPECTED && (type "%dir%\%%~ni.txt") && ^
echo. && echo ============================ && ^
echo.
)

pause	