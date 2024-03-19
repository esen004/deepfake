



if [[ $(grep "#[[:blank:]]*define PYBIND11_INTERNALS_VERSION" include/pybind11/detail/internals.h | rev | cut -d' ' -f1) != "4" ]]; then exit 1; fi
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
