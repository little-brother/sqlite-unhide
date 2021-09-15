echo off
for /f tokens^=* %%i in ('where .:*.db') do (echo.%%~nxi) && (unhide %%~ni.db) && (echo.---------------------------) && (echo.EXPECTED) && (type %%~ni.txt) && echo. && (echo ============================) && echo.

	
pause	