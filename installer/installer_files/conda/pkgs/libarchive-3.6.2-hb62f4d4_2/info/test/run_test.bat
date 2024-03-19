



bsdcat --version
IF %ERRORLEVEL% NEQ 0 exit /B 1
bsdcpio --version
IF %ERRORLEVEL% NEQ 0 exit /B 1
bsdtar --version
IF %ERRORLEVEL% NEQ 0 exit /B 1
pushd test-archives
IF %ERRORLEVEL% NEQ 0 exit /B 1
bsdtar -vxf hello_world.xar 2>&1 | rg "x hello_world"
IF %ERRORLEVEL% NEQ 0 exit /B 1
bsdtar -vxf archive.7z 2>&1 | rg "x 7zip-archive"
IF %ERRORLEVEL% NEQ 0 exit /B 1
bsdtar -vxf hello_world.tar.zst 2>&1 | rg "greets"
IF %ERRORLEVEL% NEQ 0 exit /B 1
popd
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
