



xz.exe --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
unxz.exe --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%\\Library\\bin\\liblzma.dll exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%\\Library\\lib\\liblzma.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%\\Library\\lib\\liblzma_static.lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%\\Library\\include\\lzma.h exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %PREFIX%\\Library\\bin\\xz.exe exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if exist %PREFIX%\\lib exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
