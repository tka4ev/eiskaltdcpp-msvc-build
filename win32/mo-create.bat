@echo off
setlocal EnableDelayedExpansion

set SolutionDir=%1
set OutDir=%2
set Platform=%3
set Configuration=%4
set Lang=%5

msgattrib.exe --output "%OutDir%po\%Lang%.po" "%SolutionDir%eiskaltdcpp\dcpp\po\%Lang%.po"
msgmerge.exe --backup=none -U "%OutDir%po\%Lang%.po" "%OutDir%po\libeiskaltdcpp.pot"
msgfmt.exe -o "%SolutionDir%compiled\%Platform%\%Configuration%\resources\locale\%Lang%\LC_MESSAGES\libeiskaltdcpp.mo" "%OutDir%po\%Lang%.po"
