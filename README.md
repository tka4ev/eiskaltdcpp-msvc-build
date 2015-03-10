# eiskaltdcpp-msvc-build

## Instruction: ##

- Install Microsoft Visual Studo 2013 community edition.
- Install Qt4|Qt5 (example to: d:\dev\) - required version (4.8.6|5.4.1)
        --> http://sourceforge.net/projects/qtx64/files/
- Install gettext, required utilites - (msgattrib.exe | msgmerge.exe | msgfmt.exe | xgettext.exe)
        - add location to utilites in the environment variable "PATH"
        --> http://mlocati.github.io/gettext-iconv-windows/
- Install Perl (for configure aspell and boost)
        - add location in the environment variable "PATH"
        --> http://www.activestate.com/activeperl
- Get boost source --> http://www.boost.org/users/download/
        - unpack boost source (example to: d:\dev\boost)
        - add environment variable "BOOST_ROOT" (example: BOOST_ROOT=d:\dev\boost\)
        - open visual studio "Developer Command Prompt" from main windows menu and type:
        - 1. C:\Program Files (x86)\Microsoft Visual Studio 12.0> d: & cd d:\dev\boost <type enter>
        - 2. D:\dev\boost> bootstrap <type enter>
        - 3. D:\dev\boost> b2 ^ <type enter>
        - 4. More? --build-dir="d:\dev\boost-build" ^ <type enter>
        - 5. More? --stagedir=stage32 --build-type=complete msvc stage ^ <type enter>
        - 6. More? --with-system --with-thread --with-chrono --with-date_time <type enter>
        - if need x64 build replace line 5:
        - 5. More? --stagedir=stage64 --build-type=complete msvc stage address-model=64 architecture=x86 ^
- Open eiskaltdcpp-msvc.sln with visual studio
        - goto "View\Other Windows\Property Manager\eiskaltdcpp-qt\Release|Win32\BuildConfig\User Macros"
        - set QTDIR to d:\dev\qt-4.8.6-x86-msvc2013\ 
        - set USE_QT to (4 or 5) (dependecy from installed Qt version 4 or 5).
        - set other (optional) build options.
- Set build mode (Debug-Win32|Debug-x64|Release-Win32|Release-x64) and build app (x64 build unstable and more warnings).
- To correctly display the type of "Qt" (QString|QMap|...) in the debugger, set "qt5.natvis" or "autoexp.dat" from the folder 
        - "win32\for_debugging". Installation instructions, see the Internet.