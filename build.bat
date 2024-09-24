@echo off
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x86 --vcvars_ver=14.16
set CCFLAGS=/nologo /D _USING_V110_SDK71_ /D _WIN32_WINNT=0x0503
set LDFLAGS=/nologo /subsystem:console,"5.01"
call nuitka.cmd --msvc=14.3 --module --no-pyi-file --remove-output --nowarn-mnemonic=old-python-windows-console decrypt.py
call nuitka.cmd --standalone --onefile --onefile-no-compression --msvc=14.3 --remove-output --nowarn-mnemonic=old-python-windows-console bootstrap.py
pause
