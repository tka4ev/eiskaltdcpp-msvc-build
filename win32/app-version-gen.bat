@echo off
setlocal EnableDelayedExpansion

set OutPath=%1
set FullPath=%2

if exist %OutPath% (
    del /q %OutPath%
)

for /f "delims=!" %%a in ( ' findstr /r "^" "%FullPath%" ' ) do (
   set var=%%a
   set var=!var:@VERSION@=%VERSION%!
   set var=!var:@PROJECT_NAME@=%PROJECT_NAME%!
   set var=!var:@eiskaltdcpp_WC_REVISION@=%VERSION_SUFFIX%!
   echo !var! >> %OutPath%
)

endlocal
