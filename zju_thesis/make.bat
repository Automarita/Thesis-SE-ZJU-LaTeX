@echo off
title Monster XeLaTeX Template
:start
cls
echo ��ӭʹ���Ϲ� XeLaTeX ѧλ����ģ�壬��ָʾ������Ҫ~
echo ----------------
echo 0. ���������ļ�
echo 1. ���� prepare
echo 2. �˳�
echo ----------------
set /p num="����������ѡ��: "
if "%num%"=="1" goto prepare
if "%num%"=="2" goto exit
if "%num%"=="0" goto clean
echo �����ѡ��
pause
goto start

:prepare
cls
call "clean.bat"
xelatex prepare
bibtex prepare
xelatex prepare
xelatex prepare
prepare.pdf
echo work down!
pause
goto start

:clean
call "clean.bat"
echo work down!
pause
goto start

:exit
exit