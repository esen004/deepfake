



if exist %LIBRARY_PREFIX%\include\reproc++\reproc.hpp (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_PREFIX%\lib\cmake\reproc++\reproc++-config.cmake (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_PREFIX%\lib\reproc++.lib (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_PREFIX%\bin\reproc++.dll (exit 0) else (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
