100 REM FISH
110 GOSUB 1100
120 PRINT "{space*4}stupid fish"
130 LET T=2:GOSUB 1400:GOSUB 2800
140 LET N=9:GOSUB 1300:LET A=R:GOSUB 1300:LET B=R:GOSUB 1300:LET C=R:LET S=0
150 LET S=S+1:PRINT:PRINT STR$(S);"{space*2}e/w:";
160 GOSUB 1500:GOSUB 3100:LET D=GG-48:IF D<1 OR D>9 THEN GOTO 160
170 PRINT G$;" s/n:";
180 GOSUB 1500:GOSUB 3100:LET E=GG-48:IF E<1 OR E>9 THEN GOTO 180
190 PRINT G$;" d:";
200 GOSUB 1500:GOSUB 3100:LET F=GG-48:IF F<1 OR F>9 THEN GOTO 200
210 PRINT G$:PRINT:IF A=D AND B=E AND C=F THEN PRINT "you hooked it!":GOTO 330
220 PRINT "go ";
230 IF A=D AND B=E THEN GOTO 300
240 IF E<B THEN PRINT "north";
250 IF E>B THEN PRINT "south";
260 IF D>A THEN PRINT "east";
270 IF D<A THEN PRINT "west";
280 IF F=C THEN GOTO 320
290 PRINT " & ";
300 IF F<C THEN PRINT "down";
310 IF F>C THEN PRINT "up";
320 PRINT:PRINT:GOTO 150
330 LET T=4:GOSUB 1400:GOSUB 2800:PRINT:PRINT:PRINT "you took ";STR$(S);" goes"
340 PRINT:PRINT "to hook the fish"
350 PRINT:PRINT:PRINT:STOP
1000 REM VIC20 SUBROUTINES
1100 W=20:D=23
1110 F=8:GOSUB 1200:RETURN
1200 PRINT CHR$(147)
1210 FOR LL=1 TO 8:PRINT:NEXT LL
1220 PRINT;
1230 RETURN
1300 R=INT(RND(1)*N+1):RETURN
1400 FOR Z=1 TO 1000*T:NEXT Z:RETURN
1500 GET G$:IF G$="" THEN 1500
1510 RETURN
1600 GET K$:RETURN
1700 PRINT CHR$(19)
1710 IF Y>0 THEN FOR LL=1 TO Y:PRINT CHR$(17);:NEXT LL
1720 IF X>0 THEN FOR LL=1 TO X:PRINT CHR$(29);:NEXT LL
1730 RETURN
1800 IF X>0 THEN FOR LL=1 TO X:PRINT CHR$(29);:NEXT LL
1810 RETURN
1900 PRINT CHR$(145);:RETURN
2000 PRINT CHR$(29);:RETURN
2100 INPUT K:RETURN
2200 INPUT K$:RETURN
2300 PRINT CHR$(147):RETURN
2400 POKE 36878,15:POKE 36876,Z+128
2410 FOR M=1 TO 50:NEXT M
2420 POKE 36876,0:RETURN
2500 R$=CHR$(R+64):RETURN
2600 P$=MID$(K$,P,1):RETURN
2700 GOSUB 2600:A=ASC(P$):RETURN
2800 PRINT CHR$(147):RETURN
2900 DIM V$(26):RETURN
3000 DIM W$(60):RETURN
3100 GG=ASC(G$):RETURN