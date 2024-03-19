



if not exist %PREFIX%/Library/include/zlib.h exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%/Library/lib/z.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%/Library/lib/zdll.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%/Library/lib/zlib.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%/Library/lib/zlibstatic.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%/Library/bin/zlib.dll exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
