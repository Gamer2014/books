100 REM PYRAMID
110 DIM X(10)
120 GOSUB 1100
130 LET N=0:LET C=9
140 FOR L=1 TO 10
150 FOR A=C TO C+N STEP 2
160 LET X=A:LET Y=L:GOSUB 1700:PRINT "* "
170 NEXT A
180 LET C=C-1
190 LET N=N+2
200 NEXT L
210 LET X=0:LET Y=14:GOSUB 1700:PRINT"enter 10 digits"
220 FOR N=1 TO 10
230 GOSUB 1500:LET K$=G$:LET P=1:GOSUB 2700:LET Y=A-48
240 IF Y<0 OR Y>9 THEN GOTO 230
250 LET X(N)=Y
260 LET X=2*N-2:LET Y=10:GOSUB 1700:PRINT G$;
270 NEXT N
280 LET X=0:LET Y=14:GOSUB 1700:PRINT "press s to start"
290 GOSUB 1500:IF G$<>"s" THEN GOTO 290
300 FOR L=9 TO 1 STEP -1
310 LET T=2:GOSUB 1400
320 FOR N=1 TO L
330 LET X(N)=X(N)+X(N+1)
340 IF X(N)>9 THEN LET X(N)=X(N)-9*INT(X(N)/10)
350 LET X=8-L+2*N:LET Y=L:GOSUB 1700:PRINT "{left}";X(N);:REM BUGFIX (RMS)
360 NEXT N
370 NEXT L
380 LET X=0:LET Y=14:GOSUB 1700
390 PRINT "the end result is ";X(1)
400 STOP
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
