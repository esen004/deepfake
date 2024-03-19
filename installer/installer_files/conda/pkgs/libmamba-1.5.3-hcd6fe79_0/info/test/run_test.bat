



if not exist %LIBRARY_PREFIX%\include\mamba\version.hpp (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_PREFIX%\lib\cmake\libmamba\libmambaConfig.cmake (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_PREFIX%\lib\cmake\libmamba\libmambaConfigVersion.cmake (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_PREFIX%\bin\libmamba.dll (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist %LIBRARY_PREFIX%\lib\libmamba.lib (exit 1)
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
