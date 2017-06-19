@echo off

rem ========================================================================================================

set QT_PATH=C:\Qt\Qt5.3.2\5.3\msvc2013_64_opengl\bin
set EXE_PATH=%~p0\..\build-distribution-Desktop_Qt_5_3_MSVC2013_OpenGL_64bit-Debug\debug

rem ========================================================================================================


set PATH=%QT_PATH%;%PATH%

windeployqt.exe %EXE_PATH%

pause

