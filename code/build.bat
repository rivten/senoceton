@echo off

rem --------------------------------------------------------------------------
rem                        COMPILATION
rem --------------------------------------------------------------------------

rem set SDLPath=C:\SDL2-2.0.7\
rem set SDLBinPath=%SDLPath%\lib\x64\
rem set SDLNetPath=C:\SDL2_net-2.0.1\
rem set SDLNetBinPath=%SDLNetPath%\lib\x64\
rem set ClangPath="C:\Program Files\LLVM"
rem set ClangBinPath=%ClangPath%\lib
rem 
rem set UntreatedWarnings=/wd4100 /wd4244 /wd4201 /wd4127 /wd4505 /wd4456 /wd4996 /wd4003 /wd4706 /wd4200
rem set CommonCompilerDebugFlags=/MT /Od /Oi /fp:fast /fp:except- /Zo /Gm- /GR- /EHa /WX /W4 %UntreatedWarnings% /Z7 /nologo
rem set CommonLinkerDebugFlags=/incremental:no /opt:ref /subsystem:console kernel32.lib %ClangBinPath%\libclang.lib
rem 
rem pushd ..\build\
rem cl %CommonCompilerDebugFlags% -I %ClangPath%\include\ ..\code\senoceton.cpp /link %CommonLinkerDebugFlags%
rem popd

rem --------------------------------------------------------------------------

zig build

echo Compilation completed...
