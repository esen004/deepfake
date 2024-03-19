



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
conda create -v --dry-run -n requests-test numpy
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
