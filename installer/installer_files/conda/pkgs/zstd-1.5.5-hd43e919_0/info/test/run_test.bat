



zstd -be -i5
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_INC%\zstd.h exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_BIN%\libzstd.dll exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_LIB%\libzstd.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_LIB%\libzstd_static.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
