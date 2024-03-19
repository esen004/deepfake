



if not exist %LIBRARY_BIN%\\yaml-cpp.dll exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
test/test.bat
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
