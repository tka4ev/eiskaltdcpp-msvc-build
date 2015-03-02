@echo off
setlocal EnableDelayedExpansion

set projectdir=%1
set outdir=%2

if not exist %outdir%po (
	mkdir %outdir%po
) else (
	del /q %outdir%po\*.*
)

for %%i in (%projectdir%eiskaltdcpp\dcpp\*.cpp %projectdir%eiskaltdcpp\dcpp\*.h) do (
	@echo %%~fi >> %outdir%po\libeiskaltdcpp_srcs.txt
)

xgettext.exe --add-comments=TRANSLATORS --files-from="%outdir%po\libeiskaltdcpp_srcs.txt" --copyright-holder="EiskaltDC++ team" --msgid-bugs-address="http://code.google.com/p/eiskaltdc/issues/list" --from-code=UTF-8 --keyword=_ --keyword=N_ --keyword=F_ --keyword=F_:2 --flag=F_:2:pass-c-format --keyword=FN_ --output="%outdir%po\libeiskaltdcpp.pot"
