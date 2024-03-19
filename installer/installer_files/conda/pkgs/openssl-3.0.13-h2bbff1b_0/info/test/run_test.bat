



copy NUL checksum.txt
IF %ERRORLEVEL% NEQ 0 exit /B 1
openssl sha256 checksum.txt
IF %ERRORLEVEL% NEQ 0 exit /B 1
openssl ecparam -name prime256v1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if "%SSL_CERT_FILE%"=="" exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
if not exist "%SSL_CERT_FILE%" exit 1
IF %ERRORLEVEL% NEQ 0 exit /B 1
python -c "import urllib.request; urllib.request.urlopen('https://pypi.org')"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
