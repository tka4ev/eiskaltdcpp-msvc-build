# eiskaltdcpp-msvc-build

Instructions:

1. Install Qt - minimum required version 4.8, set environment variable QTDIR (QTDIR=/path/to/installed/qt).
2. Install gettext, required utilites - msgattrib.exe | msgmerge.exe | msgfmt.exe | xgettext.exe, set environment variable GETTEXT (GETTEXT=/path/to/dir/with/required/utilites). --> http://mlocati.github.io/gettext-iconv-windows/
3. Cloning git repository https://github.com/tka4ev/eiskaltdcpp.git (branch msvc12) to path - path/to/eiskaltdcpp-msvc-build/eiskaltdcpp
4. Install boost library and set environment variable BOOST_ROOT (BOOST_ROOT=/path/to/installed/boost/library).
4. Open eiskaltdcpp-msvc.sln with visual studio 2013 and build.
