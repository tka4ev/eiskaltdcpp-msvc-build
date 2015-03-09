# eiskaltdcpp-msvc-build

## Instruction: ##

- Install Qt4 - minimum required version 4.8, set environment variable QTDIR (QTDIR=/path/to/installed/qt).
        --> http://sourceforge.net/projects/qtx64/files/.
- Install gettext. Required utilites - (msgattrib.exe | msgmerge.exe | msgfmt.exe | xgettext.exe) and append to PATH
        --> http://mlocati.github.io/gettext-iconv-windows/
- Install/Build boost library and set environment variable BOOST_ROOT (BOOST_ROOT=/path/to/installed/boost/library).
- Install Perl (for configure aspell). --> http://www.activestate.com/activeperl
- Open eiskaltdcpp-msvc.sln with visual studio 2013 community and build.
