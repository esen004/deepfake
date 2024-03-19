



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
pytest -v --cov=conda_package_handling --color=yes tests/
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
