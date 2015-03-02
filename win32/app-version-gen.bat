@echo off
setlocal EnableDelayedExpansion

set OutDir=%1
set FullPath=%2
set PROJECT_NAME=%3
set VERSION=%4
set SOVERSION=%5
set VERSION_SUFFIX=%6

set OutPath=%OutDir%VersionGlobal.h

if exist %OutPath% (
    del /q %OutPath%
)

for /f "delims=!" %%a in ( ' findstr /r "^" "%FullPath%" ' ) do (
   set var=%%a
   set var=!var:@PROJECT_NAME@=%PROJECT_NAME%!
   set var=!var:@VERSION@=%VERSION%!
   set var=!var:@eiskaltdcpp_WC_REVISION@=%VERSION_SUFFIX%!
   echo !var! >> %OutPath%
)

endlocal
