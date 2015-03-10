@echo on
setlocal EnableDelayedExpansion

set Config=%1
set OutDir=%2
set BuildMode=%3

@echo #pragma once >  !Config!
@echo. >>  !Config!
@echo #define _DATADIR "/" >>  !Config!
@echo #define CLIENT_DATA_DIR "resources" >>  !Config!
@echo #define MAN_DIR "resources/man/man1" >>  !Config!
@echo #define LOCALE_DIR "resources/locale" >>  !Config!
@echo #define CLIENT_SOUNDS_DIR "/resources/sounds" >>  !Config!
@echo #define CLIENT_ICONS_DIR "/resources/qt/icons" >>  !Config!
@echo #define CLIENT_RES_DIR "/resources/qt/resources" >>  !Config!
@echo #define CLIENT_TRANSLATIONS_DIR "/resources/qt/ts" >>  !Config!
@echo #define CLIENT_SCRIPTS_DIR "resources/qt/qtscripts" >>  !Config!
@echo. >>  !Config!

rem @echo #define USE_QT >> !Config!

if "%USE_QT%" == "5" (
rem     @echo #define USE_QT5 >> !Config!
rem     @echo. >>  !Config!
    @echo #ifndef _WINSOCKAPI_ >> !Config!
    @echo #  define _WINSOCKAPI_ >> !Config!
    @echo #endif >> !Config!
    @echo. >>  !Config!
    @echo #ifndef Q_WS_WIN >> !Config!
    @echo #  define Q_WS_WIN >> !Config!
    @echo #endif >> !Config!
    @echo. >>  !Config!
)

if "%USE_QT_QML%" == "ON" (
    @echo #define USE_QML >> !Config!
    @set USE_JS="ON"
) else (
    @echo #undef USE_QML >> !Config!
)

if "%USE_JS%" == "ON" (
    @echo #define USE_JS >> !Config!
) else (
    @echo #undef USE_JS >> !Config!
)

if "%USE_DHT%" == "ON" (
    @echo #define WITH_DHT >> !Config!
) else (
    @echo #undef WITH_DHT >> !Config!
)

if "%USE_FREE_SPACE_BAR%" == "ON" (
    @echo #define FREE_SPACE_BAR_C >> !Config!
) else (
    @echo #undef FREE_SPACE_BAR_C >> !Config!
)

if "%USE_MINIUPNP%" == "ON" (
    @echo #define USE_MINIUPNP >> !Config!
) else (
    @echo #undef USE_MINIUPNP >> !Config!
)

if "%USE_QT_SQLITE%" == "ON" (
    @echo #define USE_QT_SQLITE >> !Config!
) else (
    @echo #undef USE_QT_SQLITE >> !Config!
)

if "%USE_ASPELL%" == "ON" (
    @echo #define USE_ASPELL >> !Config!
) else (
    @echo #undef USE_ASPELL >> !Config!
)

if "%USE_PERL_REGEX%" == "ON" (
    @echo #define PERL_REGEX >> !Config!
) else (
    @echo #undef PERL_REGEX >> !Config!
)

if "%USE_LUA_SCRIPT%" == "ON" (
    @echo #define LUA_SCRIPT >> !Config!
) else (
    @echo #undef LUA_SCRIPT >> !Config!
)

@echo. >>  !Config!

if "%USE_QT%" == "4" (
    if "!BuildMode!" == "Release" (
        @echo #pragma comment^(lib, "QtCore4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtGui4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtXml4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtNetwork4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtMultimedia4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "qtmain.lib"^) >> !Config!
    ) else (
        @echo #pragma comment^(lib, "QtCored4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtGuid4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtXmld4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtNetworkd4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "QtMultimediad4.lib"^) >> !Config!
        @echo #pragma comment^(lib, "qtmaind.lib"^) >> !Config!
    )
) else (
    if "!BuildMode!" == "Release" (
        @echo #pragma comment^(lib, "Qt5Core.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Gui.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Widgets.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Xml.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Network.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Multimedia.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Concurrent.lib"^) >> !Config!
        @echo #pragma comment^(lib, "qtmain.lib"^) >> !Config!
    ) else (
        @echo #pragma comment^(lib, "Qt5Cored.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Guid.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Widgetsd.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Xmld.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Networkd.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Multimediad.lib"^) >> !Config!
        @echo #pragma comment^(lib, "Qt5Concurrentd.lib"^) >> !Config!
        @echo #pragma comment^(lib, "qtmaind.lib"^) >> !Config!
    )
)

if "%USE_QT_QML%" == "ON" (
    if "%USE_QT%" == "4" (
        @if "!BuildMode!" == "Release" (
            @echo #pragma comment^(lib, "QtDeclarative4.lib"^) >> !Config!
        ) else (
            @echo #pragma comment^(lib, "QtDeclaratived4.lib"^) >> !Config!
        )
    ) else (
        @if "!BuildMode!" == "Release" (
            @echo #pragma comment^(lib, "Qt5Declarative.lib"^) >> !Config!
        ) else (
            @echo #pragma comment^(lib, "Qt5Declaratived.lib"^) >> !Config!
        )
    )
)

if "%USE_JS%" == "ON" (
    if "%USE_QT%" == "4" (
        @if "!BuildMode!" == "Release" (
            @echo #pragma comment^(lib, "QtScript4.lib"^) >> !Config!
        ) else (
            @echo #pragma comment^(lib, "QtScriptd4.lib"^) >> !Config!
        )
    ) else (
        @if "!BuildMode!" == "Release" (
            @echo #pragma comment^(lib, "Qt5Script.lib"^) >> !Config!
        ) else (
            @echo #pragma comment^(lib, "Qt5Scriptd.lib"^) >> !Config!
        )
    )
)

if "%USE_QT_SQLITE%" == "ON" (
    if "%USE_QT%" == "4" (
        @if "!BuildMode!" == "Release" (
            @echo #pragma comment^(lib, "QtSql4.lib"^) >> !Config!
        ) else (
            @echo #pragma comment^(lib, "QtSqld4.lib"^) >> !Config!
        )
    ) else (
        @if "!BuildMode!" == "Release" (
            @echo #pragma comment^(lib, "Qt5Sql.lib"^) >> !Config!
        ) else (
            @echo #pragma comment^(lib, "Qt5Sqld.lib"^) >> !Config!
        )
    )
)

if "%USE_DHT%" == "ON" (
    @echo #pragma comment^(lib, "dht.lib"^) >> !Config!
)

if "%USE_MINIUPNP%" == "ON" (
    @echo #pragma comment^(lib, "miniupnpc.lib"^) >> !Config!
)

if "%USE_ASPELL%" == "ON" (
    @echo #pragma comment^(lib, "aspell.lib"^) >> !Config!
)

if "%USE_PERL_REGEX%" == "ON" (
    @echo #pragma comment^(lib, "pcre.lib"^) >> !Config!
    @echo #pragma comment^(lib, "pcrecpp.lib"^) >> !Config!
)

if "%USE_LUA_SCRIPT%" == "ON" (
    @echo #pragma comment^(lib, "lua.lib"^) >> !Config!
)
