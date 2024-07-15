@echo off
REM

REM
flex lexer.l

REM
bison -d -v -y parser.y

REM
gcc -w y.tab.c -o executable.exe

REM
executable.exe < input_three.c

REM
del y.output
del y.tab.c
del y.tab.h
del executable.exe

echo Successfully Completed Process
pause
