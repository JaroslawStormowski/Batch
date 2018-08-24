@echo off
color 0A

rem Set below the proper 7-Zip directory
set ZipDir="C:\Program Files\7-Zip\7z.exe"



echo Do you want to start archiving?
pause

echo *********************************************
echo             Archiving started
echo *********************************************
set CurrDir=%cd%

if not exist %ZipDir% (
color 0C
echo ERROR: 7zip was not found!
echo Set right 7zip directory in ZipDir variable.
pause
exit
)

echo.
FOR /D %%n in ("%CurrDir%"\*.*) DO (%ZipDir% u -y -t7z "%%n.7z" "%%n" -r -x!*.tmp)

echo.
echo 
echo.
echo *********************************************
echo             Archiving ended
echo *********************************************
pause