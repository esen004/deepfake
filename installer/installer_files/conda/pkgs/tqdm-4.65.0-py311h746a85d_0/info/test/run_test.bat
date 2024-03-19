



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
tqdm --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
tqdm -v | rg 4.65.0
IF %ERRORLEVEL% NEQ 0 exit /B 1
pytest -k "not tests_perf"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
