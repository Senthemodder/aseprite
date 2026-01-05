@echo off

rem Setup VS environment
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

rem Setup CMake and Ninja
set "PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;%PATH%"
set "PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;%PATH%"

rem Setup Git and Tools (curl)
set "PATH=D:\Program Files\Git\bin;%PATH%"
set "PATH=D:\Program Files\Git\mingw64\bin;%PATH%"

rem Add an extra path element which will be invalidated by Git Bash (legacy fix from original script)
set "PATH=.;%PATH%"

rem Run build script directly with sh
sh.exe build.sh --auto
