@echo off
setlocal EnableDelayedExpansion

set SolutionDir=%1
set OutDir=%2
set Configuration=%3
set Lang=%4

%GETTEXTDIR%\msgattrib.exe --output "%OutDir%po\%Lang%.po" "%SolutionDir%eiskaltdcpp\dcpp\po\%Lang%.po"
%GETTEXTDIR%\msgmerge.exe --backup=none -U "%OutDir%po\%Lang%.po" "%OutDir%po\libeiskaltdcpp.pot"
%GETTEXTDIR%\msgfmt.exe -o "%SolutionDir%compiled\%Configuration%\resources\locale\%Lang%\LC_MESSAGES\libeiskaltdcpp.mo" "%OutDir%po\%Lang%.po"
