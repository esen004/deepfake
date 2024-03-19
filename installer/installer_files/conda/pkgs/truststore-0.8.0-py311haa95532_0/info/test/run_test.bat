



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
pytest -v -s -rs --no-flaky-report --max-runs=3 tests/
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
