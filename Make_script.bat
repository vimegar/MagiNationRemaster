@echo on
make -f makefile.gnu
CD ROM
ISLK32 -v -t -us -nologo -w bank-over -G MUSYX=$304000 MUSYX\MUSYX.O -G MUSYXB0=$03ab0 MUSYX\MUSYXB0.O -G MUSYX_DATA=$314000 ROM_SOUND.O -o ..\GAME.ISX ROM_SOURCE.O MBIT00.O MBIT01.O MBIT02.O MBIT03.O MBIT04.O MBIT05.O MBIT08.O MBIT09.O MBIT0A.O MBIT0B.O MBIT0C.O MBIT0D.O MBIT0E.O MBIT0F.O > ..\lnk.txt 
type ..\lnk.txt
Del *.O

@echo off
IF ERRORLEVEL 1 GOTO 1

CD ..
isx2gb -r -f GAME.ISX
@echo No error.
GOTO END

:1
@echo A link error has occurred.
GOTO END

:END
pause
exit