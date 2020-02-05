@echo on
call :sub > info-out-local-user-powershell.txt
exit /b

:sub
echo -------------------
echo Powershell Commands
echo -------------------
echo powershell -NoProfile -ExecutionPolicy bypass -Command get-localuser
powershell -NoProfile -ExecutionPolicy bypass -Command get-localuser
echo
echo description
echo -------------------
echo powershell -NoProfile -ExecutionPolicy bypass -Command get-localgroup
powershell -NoProfile -ExecutionPolicy bypass -Command get-localgroup

echo
echo description
echo -------------------
echo powershell -NoProfile -ExecutionPolicy bypass -Command Get-BitLockerVolume
powershell -NoProfile -ExecutionPolicy bypass -Command Get-BitLockerVolume

echo
echo description
echo -------------------
echo powershell -NoProfile -ExecutionPolicy bypass -Command Get-ComputerInfo
powershell -NoProfile -ExecutionPolicy bypass -Command Get-ComputerInfo

echo
echo description
echo -------------------
echo powershell -NoProfile -ExecutionPolicy bypass -Command Get-FileShare
powershell -NoProfile -ExecutionPolicy bypass -Command Get-FileShare

echo
echo description
echo -------------------
echo powershell -NoProfile -ExecutionPolicy bypass -Command Get-HotFix
powershell -NoProfile -ExecutionPolicy bypass -Command Get-HotFix

echo
echo description
echo -------------------
echo command
command

echo
echo description
echo -------------------
echo command
command


exit /b