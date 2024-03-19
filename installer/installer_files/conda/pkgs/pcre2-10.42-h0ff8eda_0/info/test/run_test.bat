



pcre2test --version
IF %ERRORLEVEL% NEQ 0 exit /B 1
pcre2grep --version
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_INC%\\pcre2.h exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_INC%\\pcre2posix.h exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_BIN%\\pcre2-8.dll exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_BIN%\\pcre2-posix.dll exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_PREFIX%\\lib\\pkgconfig\\libpcre2-posix.pc exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_PREFIX%\\lib\\pkgconfig\\libpcre2-8.pc exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
