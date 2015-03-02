# eiskaltdcpp-msvc-build

## Instructions: ##

- Install Qt - minimum required version 4.8, set environment variable QTDIR (QTDIR=/path/to/installed/qt).
- Install gettext, required utilites - msgattrib.exe | msgmerge.exe | msgfmt.exe | xgettext.exe, set environment variable
        - GETTEXT (GETTEXT=/path/to/dir/with/required/utilites). --> http://mlocati.github.io/gettext-iconv-windows/
- Cloning git repository https://github.com/tka4ev/eiskaltdcpp.git (branch msvc12) to path
        - path/to/eiskaltdcpp-msvc-build/eiskaltdcpp
- Install boost library and set environment variable BOOST_ROOT (BOOST_ROOT=/path/to/installed/boost/library).
- Open eiskaltdcpp-msvc.sln with visual studio 2013 and build.
