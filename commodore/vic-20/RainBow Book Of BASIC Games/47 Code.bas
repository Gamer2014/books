100 REM CODE
110 GOSUB 1100
120 PRINT"enter secret message"
130 PRINT:GOSUB 2200
140 LET S=0
150 LET L=LEN(K$)
160 GOSUB 1200
170 DIM C(26)
180 DIM J(L)
190 DIM M(L)
200 FOR N=1 TO 26
210 LET C(N)=N+64
220 NEXT N
230 FOR N=25 TO 2 STEP -1
240 GOSUB 1300
250 LET T=C(N+1)
260 LET C(N+1)=C(R)
270 LET C(R)=T
280 NEXT N
290 FOR P=1 TO L
300 GOSUB 2700
310 LET M(P)=A
320 IF A=32 THEN LET J(P)=A
330 IF A<>32 THEN LET J(P)=C(A-64)
340 LET R=J(P)-64:GOSUB 2500:PRINT R$;
350 NEXT P
360 LET X=0
370 LET Y=F+2
380 GOSUB 1700
390 FOR P=1 TO L
400 IF M(P)=32 THEN PRINT" ";
410 IF M(P)<>32 THEN PRINT"-";
420 NEXT P
430 LET Y=F+4
440 GOSUB 1700
450 PRINT"you have ";STR$(S);" points"
460 PRINT:PRINT"{space*19}"
470 LET Y=F+6:GOSUB 1700
480 GOSUB 1500
490 PRINT"try ";G$;" stands for ";
500 LET H$=G$:GOSUB 2200
510 LET Y=F+2
520 GOSUB 1700
530 LET H=0
540 FOR P=1 TO L
550 LET R=J(P)-64:GOSUB 2500:LET X$=R$
560 LET R=M(P)-64:GOSUB 2500:LET Y$=R$
570 IF H$=X$ AND K$=Y$ THEN LET H=1:GOTO 590
580 GOTO 600
590 LET X=P-1:GOSUB 1700:PRINT K$;:LET X=0
600 NEXT P
610 IF H=0 THEN LET S=S+2
620 GOTO 430
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
