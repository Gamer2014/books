100 REM HILO
110 GOSUB 1100
120 PRINT "{space*3}high low"
130 LET T=2:GOSUB 1400:GOSUB 2800
140 PRINT:PRINT "what is limit? ";
150 GOSUB 2100
160 LET N=K
170 GOSUB 1300
180 LET T=2:GOSUB 1400
190 LET G=0
200 GOSUB 2800
210 LET G=G+1
220 PRINT
230 PRINT "i've picked a number"
240 PRINT
250 PRINT "between 1 and ";STR$(N)
260 PRINT:PRINT
270 PRINT "what is it? ";
280 GOSUB 2100
290 IF K=R THEN GOTO 350
300 PRINT:PRINT
310 IF K<R THEN PRINT "too low"
320 IF K>R THEN PRINT "too high"
330 LET T=1:GOSUB 1400
340 GOTO 200
350 PRINT:PRINT
360 IF G>6 THEN PRINT "dreadful!!"
370 IF G<7 AND G>4 THEN PRINT "not bad!"
380 IF G<5 THEN PRINT "very good!!"
390 PRINT:PRINT:PRINT"you took ";STR$(G);" tries"
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
