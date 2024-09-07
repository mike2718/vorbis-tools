@echo off
cd /d "%~dp0"

mkdir .\vorbis-tools-1.4.2-win32-bin
del /q .\vorbis-tools-1.4.2-win32-bin\*.dll .\vorbis-tools-1.4.2-win32-bin\*.exe
copy /y .\Release\*.exe .\vorbis-tools-1.4.2-win32-bin\
copy /y ..\..\..\libogg\bin\ogg.dll .\vorbis-tools-1.4.2-win32-bin\
copy /y ..\..\..\vorbis\bin\vorbis.dll .\vorbis-tools-1.4.2-win32-bin\
copy /y ..\..\..\vorbis\bin\vorbisfile.dll .\vorbis-tools-1.4.2-win32-bin\
copy /y ..\..\..\FLAC\bin\FLAC.dll .\vorbis-tools-1.4.2-win32-bin\

cd /d vorbis-tools-1.4.2-win32-bin
del /q vorbis-tools-1.4.2-win32-bin.7z
7z a -t7z vorbis-tools-1.4.2-win32-bin.7z *.exe *.dll LICENSE

pause