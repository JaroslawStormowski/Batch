@echo off
color 0A
rem How many minutes to wait?
echo *********************************************
Echo Hello
echo.
set /P t1=Set time to shut down computer [min]: 
echo.
echo *********************************************
choice /c yn /M "Do you want to shutdown computer in %t1% min"
if errorlevel 2 goto :a
if errorlevel 1 goto :y

:y
set /a t2=%t1% * 60
color 0C
echo.
echo 
shutdown /s /t %t2% /f
echo.


echo *********************************************
choice /c a /M "Push 'a' to abort shutdown process"
if errorlevel 1 goto :a

:a
shutdown /a
color 0A
echo 
echo.
echo Shutdown is canceled.

