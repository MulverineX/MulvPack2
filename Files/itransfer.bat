@echo off
if not exist "%appdata%\Mulvpack\" mkdir %appdata%\Mulvpack
xcopy /s "%cd%\Mulvpack" "%appdata%\Mulvpack\"
cd ..
del Install.lnk
copy %cd%\Files\Done.txt %cd%
start Done.txt
cd %appdata%\Mulvpack\
start /min shortcut.bat
exit
