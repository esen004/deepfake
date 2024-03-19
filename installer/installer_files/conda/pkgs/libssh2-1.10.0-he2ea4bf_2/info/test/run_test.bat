



if not exist %LIBRARY_INC%\\libssh2.h           exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_INC%\\libssh2_publickey.h exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_INC%\\libssh2_sftp.h      exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_LIB%\\libssh2.lib         exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
