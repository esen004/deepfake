



if exist %LIBRARY_PREFIX%\include\fmt\core.h (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_PREFIX%\include\fmt\format.h (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_PREFIX%\lib\cmake\fmt-config.cmake (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_PREFIX%\bin\fmt.dll (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
