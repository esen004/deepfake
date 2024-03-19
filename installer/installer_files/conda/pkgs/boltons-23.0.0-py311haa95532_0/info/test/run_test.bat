



pytest -vv --doctest-modules boltons tests -k "not test_reverse_iter_lines"
IF %ERRORLEVEL% NEQ 0 exit /B 1
pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
