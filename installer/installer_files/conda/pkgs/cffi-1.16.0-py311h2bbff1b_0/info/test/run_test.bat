



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
python -X faulthandler -c "from cffi import FFI; print(FFI().dlopen('ucrtbase'))"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
