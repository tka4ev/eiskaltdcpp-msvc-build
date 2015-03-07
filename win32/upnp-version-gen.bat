@echo off
setlocal EnableDelayedExpansion

set OutPath=%1
set FullPath=%2

if exist %OutPath% (
    del /q %OutPath%
)

for /f "delims=!" %%a in ( ' findstr /r "^" "%FullPath%" ' ) do (
   set var=%%a
   set var=!var:${CMAKE_SYSTEM_NAME}=%OS%!
   set var=!var:${MINIUPNPC_VERSION}=%MINIUPNPC_VERSION%!
   echo !var! >> %OutPath%
)

endlocal
