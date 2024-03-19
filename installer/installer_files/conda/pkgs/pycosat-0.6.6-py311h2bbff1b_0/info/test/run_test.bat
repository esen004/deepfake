



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
python test_package.py "0.6.6"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
