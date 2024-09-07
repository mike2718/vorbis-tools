@echo off
cd /d "%~dp0"
mkdir .\vorbis-tools-1.4.2-win32-bin
copy /y .\Release\*.exe .\vorbis-tools-1.4.2-win32-bin\
upx .\vorbis-tools-1.4.2-win32-bin\*.exe
del /q vorbis-tools-1.4.2-win32-bin.zip vorbis-tools-1.4.2-win32-bin.7z
zip -r vorbis-tools-1.4.2-win32-bin.zip vorbis-tools-1.4.2-win32-bin
7z a -t7z vorbis-tools-1.4.2-win32-bin.7z vorbis-tools-1.4.2-win32-bin

pause