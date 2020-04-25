100 REM STEPS
110 DIM X(7)
120 LET C=6
130 FOR A=2 TO 7
140 LET X(A)=C+2-A
150 NEXT A
160 LET X(1)=0
170 LET ZZ=-1
180 GOSUB 1100
190 LET Y=14:LET X=0:GOSUB 1700:PRINT"press s for solution"
200 GOSUB 380
210 LET Y=12:LET X=0:GOSUB 1700:PRINT"press keys 1 to 6"
220 LET X=0:LET Y=10:GOSUB 1700:PRINT "************"
230 GOSUB 1500
240 IF G$="s" THEN GOTO 650
250 LET K$=G$:LET P=1:GOSUB 2700:LET G=A-48:IF G<1 OR G>6 THEN GOTO 230
260 FOR B=1 TO C+1
270 IF G=X(B) THEN LET Q=B
280 IF X(B)=0 THEN LET R=B
290 NEXT B
300 IF ABS(Q-R)<3 THEN GOTO 330
310 LET X=0:LET Y=10:GOSUB 1700:PRINT"invalid move"
320 LET T=5:GOSUB 1400:GOTO 220
330 LET X(Q)=0
340 LET X(R)=G
350 GOSUB 380
360 GOTO 220
370 REM DRAWS BOARD
380 LET X=0:LET Y=4:GOSUB 1700:PRINT " ***************"
390 LET Y=6:GOSUB 1700:PRINT " ***************"
400 LET Y=5:GOSUB 1700:PRINT "{space*16}"
410 FOR N=1 TO C+1:LET X=2*N:GOSUB 1700
420 IF X(N)>0 THEN LET R=X(N)-16:GOSUB 2500:PRINT R$;
430 NEXT N:FOR X=1 TO 15 STEP 2:GOSUB 1700:PRINT "*";
440 NEXT X
450 LET ZZ=ZZ+1:LET F=0
460 FOR N=1 TO C+1
470 IF X(N)<>N-1 THEN LET F=1
480 NEXT N
490 IF F=1 THEN RETURN
500 IF G$="s" THEN PRINT:PRINT"i only took ";ZZ;" moves":GOTO 530
510 LET X=0:LET Y=12:GOSUB 1700:PRINT"congratulations !!"
520 PRINT:PRINT"you took ";ZZ;" moves{space*3}"
530 LET X=0:LET Y=15:GOSUB 1700
540 STOP
550 REM COMPUTER MOVES
560 FOR B=1 TO C+1
570 IF G=X(B) THEN LET Q=B
580 IF X(B)=0 THEN LET R=B
590 NEXT B
600 LET X(Q)=0
610 LET X(R)=G
620 GOSUB 380
630 LET T=2:GOSUB 1400
640 RETURN
650 REM AUTOPLAY
660 GOSUB 1100
670 FOR A=1 TO C+1
680 LET X(A)=C+2-A
690 NEXT A
700 LET X(1)=0
710 GOSUB 380
720 FOR M=1 TO 4
730 FOR G=5 TO 1 STEP -2
740 GOSUB 550
750 NEXT G
760 IF M=4 THEN PRINT:STOP
770 FOR G=2 TO 6 STEP 2
780 GOSUB 550
790 NEXT G
800 NEXT M
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
