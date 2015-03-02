@echo off
setlocal EnableDelayedExpansion

set OutDir=%1
set FullPath=%2
set FileName=%3
set OS_Ver=%4
set Version=%5

del %outdir%%FileName%

for /f "delims=!" %%a in ( ' findstr /r "^" "%FullPath%" ' ) do (
   set var=%%a
   set var=!var:${CMAKE_SYSTEM_NAME}=%OS_Ver%!
   set var=!var:${MINIUPNPC_VERSION}=%Version%!
   echo !var! >> %outdir%%FileName%
)

endlocal
