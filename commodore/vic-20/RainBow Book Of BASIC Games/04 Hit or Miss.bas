100 REM HITMISS
110 GOSUB 1100:LET H=0
120 PRINT "hit or miss":PRINT:PRINT
130 PRINT "you have 10 shells"
140 LET H=0:FOR G=1 TO 10
150 LET N=29:GOSUB 1300:LET R=500*R+500
160 LET T=3:GOSUB 1400
170 GOSUB 2800:PRINT:PRINT "target at ";R;" mtrs"
180 PRINT:PRINT "angle of fire? ";:GOSUB 2100:IF K>90 OR K<1 THEN GOTO 170
190 PRINT:PRINT:PRINT
200 IF K=90 THEN PRINT:PRINT "*boom* you are dead!":GOTO 270
210 LET D=15000*SIN(6.28*K/180)
220 LET E=250*INT((D-R)/250+.5):IF ABS(E)>250 THEN GOTO 250
230 PRINT:PRINT:PRINT "**boom**"
240 LET H=H+1:GOTO 270
250 LET M$="short":IF E>0 THEN LET M$="far"
260 PRINT:PRINT "that was ";ABS(E);" m":PRINT:PRINT "too ";M$
270 NEXT G
280 PRINT:PRINT "out of shells !"
290 LET T=3:GOSUB 1400:GOSUB 2800
300 IF H>5 THEN LET C$=" great shooting !":GOTO 330
310 IF H>2 THEN LET C$="{space*4}not bad !":GOTO 330
320 LET C$="you need practice !"
330 PRINT:PRINT:PRINT C$
340 PRINT:PRINT:PRINT "you hit ";H;" targets"
350 PRINT:PRINT "out of a possible 10"
360 PRINT:PRINT:PRINT:STOP
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
