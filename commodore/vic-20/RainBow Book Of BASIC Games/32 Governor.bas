100 REM GOVERNOR
110 GOSUB 1100
120 PRINT
130 PRINT "{space*4}the wise king"
140 PRINT
150 PRINT "{space*7}and the{space*3}"
160 PRINT
170 PRINT "{space*6}dishonest{space*2}"
180 PRINT
190 PRINT "{space*6}governor{space*3}"
200 LET T=5:GOSUB 1400
210 GOSUB 2800
220 PRINT
230 PRINT "the governors'"
240 PRINT
250 PRINT "bars should weigh"
260 PRINT:PRINT "1 *{space*10}1000"
270 PRINT:PRINT "2 * *{space*8}2000"
280 PRINT:PRINT "3 * * *{space*6}3000"
290 PRINT:PRINT "4 * * * *{space*4}4000"
300 PRINT:PRINT "5 * * * * *{space*2}5000"
310 LET N=5:GOSUB 1300
320 LET S=R*10
330 LET T=15000-S
340 PRINT:PRINT "but total was ";STR$(T)
350 LET T=10:GOSUB 1400
360 GOSUB 1200
370 PRINT:PRINT STR$(S);" grams short"
380 PRINT:PRINT "which governor"
390 PRINT:PRINT "was beheaded? ";
400 GOSUB 2100
410 PRINT
420 IF K=R THEN PRINT "correct":GOTO 450
430 PRINT "wrong"
440 PRINT:PRINT "it was number ";STR$(R)
450 STOP
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
