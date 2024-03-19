



if not exist %LIBRARY_INC%\solv\repo.h (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_BIN%\solv.dll (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_LIB%\solv.lib (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_BIN%\solvext.dll (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_LIB%\solvext.lib (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_LIB%\solv_static.lib (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %LIBRARY_LIB%\solvext_static.lib (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
dumpsolv.exe -h
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
