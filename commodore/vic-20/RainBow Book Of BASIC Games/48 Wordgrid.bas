100 REM WORDGRID
110 GOSUB 1100
120 DIM S(2)
130 DIM H(7)
140 LET T=0
150 LET X=W/2-8
160 FOR Y=1 TO 12
170 GOSUB 1700
180 PRINT"*{space*15}*"
190 NEXT Y
200 GOSUB 1700
210 PRINT"**1*2*3*4*5*6*7**"
220 LET P=1
230 GOSUB 490
240 PRINT "player ";P;" column ";
250 GOSUB 2100
260 IF H(K)=7 THEN GOTO 230
270 GOSUB 490
280 PRINT "player ";P;" letter ";
290 GOSUB 2200
300 LET T=T+1
310 LET H(K)=H(K)+1
320 LET X=W/2+K*2-8
330 LET Y=F-H(K)*2+6
340 GOSUB 1700
350 PRINT K$
360 GOSUB 490
370 PRINT "player ";P;" score{space*2}";:REM BUGFIX (RMS)
380 GOSUB 2100
390 LET S(P)=S(P)+K
400 LET P=3-P
410 IF T<49 THEN GOTO 230
420 GOSUB 490
430 LET T=4:GOSUB 1400:GOSUB 2800
440 LET X=0:LET Y=4
450 GOSUB 1700
460 PRINT"player 1 scored ";S(1):PRINT
470 PRINT"player 2 scored ";S(2):PRINT
480 STOP
490 LET X=W/2-10
500 LET Y=F+6
510 GOSUB 1700
520 PRINT"{space*20}"
530 GOSUB 1700
540 RETURN
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
