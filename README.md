# eiskaltdcpp-msvc-build

## Instructions: ##

- Install Qt4 - minimum required version 4.8, set environment variable QTDIR (QTDIR=/path/to/installed/qt).
        --> http://sourceforge.net/projects/qtx64/files/
- Install gettext, required utilites - msgattrib.exe | msgmerge.exe | msgfmt.exe | xgettext.exe, set environment variable
        - GETTEXTDIR (GETTEXTDIR=/path/to/dir/with/required/utilites). --> http://mlocati.github.io/gettext-iconv-windows/
- Install/Build boost library and set environment variable BOOST_ROOT (BOOST_ROOT=/path/to/installed/boost/library).
- Install Perl (for configure aspell). --> http://www.activestate.com/activeperl
- Open eiskaltdcpp-msvc.sln with visual studio 2013 and build.
