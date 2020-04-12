1 REM SNAKEPIT
2 CO=54272:GOTO2000
5 REM GET DIRECTION
6 IFN=1THEN8
7 IFJL<>0THEN18
8 JL=PEEK(56321)
10 JL=15-(JLAND15)
12 IFJL=0THEN18
14 IFJL=1THENX1=0:Y1=-1:GOTO100
15 IFJL=2THENX1=0:Y1=1:GOTO100
16 IFJL=8THENX1=1:Y1=0:GOTO100
17 IFJL=4THENX1=-1:Y1=0:GOTO100
18 JL=0:JR=PEEK(56320)
19 JR=15-(JRAND15)
20 IFJR=0THEN50
21 IFJR=1THENX2=0:Y2=-1:GOTO100
22 IFJR=2THENX2=0:Y2=1:GOTO100
23 IFJR=8THENX2=1:Y2=0:GOTO100
24 IFJR=4THENX2=-1:Y2=0:GOTO100
50 GETA$:IFA$=""THEN100
55 IFA$="i"THENX2=0:Y2=-1:GOTO100
60 IFA$="w"THENX1=0:Y1=-1:GOTO100
65 IFA$="m"THENX2=0:Y2=1:GOTO100
70 IFA$="z"THENX1=0:Y1=1:GOTO100
75 IFA$="k"THENX2=1:Y2=0:GOTO100
80 IFA$="s"THENX1=1:Y1=0:GOTO100
85 IFA$="j"THENX2=-1:Y2=0:GOTO100
90 IFA$="a"THENX1=-1:Y1=0:GOTO100
100 REM PLOT PLAYER POSITION
120 P1=P1+X1+(Y1*40):P=P1:S=1:GOSUB200
130 IFS=0THEN2380
135 IFN=1THENGOSUB600
140 P2=P2+X2+(Y2*40):P=P2:S=2:GOSUB200
150 IFS=0THEN2380
160 POKEP1,81:POKEP1+CO,2
180 POKEP2,87:POKEP2+CO,5
190 FORT=1TOF*F+F*20:NEXT:GOTO5
200 REM CHECK FOR HIT
220 IFPEEK(P)=32THENRETURN
230 FORI=4TO0STEP-1:POKE53280,I:GOSUB500
240 POKEP,81:POKEP+54272,S*3-1:FORT=1TO60:NEXT
250 POKEP,81:POKEP+54272,3:NEXT
260 IFS=1THENS2=S2+1:S=0
270 IFS=2THENS1=S1+1:S=0
280 FORT=1TO200:NEXT
290 IFS1<7ANDS2<7THENRETURN
300 REM WINNERS ROUTINE
320 GOSUB1000:PRINT"{home}{reverse on}{right}{red}player 1:{space*2}{right*16}{green}player 2:{space*2}"
340 PRINT"{home}{red}{reverse on}"SPC(10)S1SPC(24)"{green}"S2
350 IFS1<S2THENN=2:PRINT"{home}{reverse on}{green}"
360 IFS2<S1THENN=1:PRINT"{home}{reverse on}{red}"
390 PRINT"{down*5}{right*11}{reverse on}winner....player ";
400 PRINTN
420 PRINT"{down*5}{right*11}another game? (y/n)"
430 GETA$:IFA$="y"THENRUN
440 IFA$<>"n"THEN430
450 SYS65535
460 END
500 REM SOUND
510 POKECO+6,240:POKECO+4,17
520 POKECO+1,34:POKECO,75
530 FORT=1TO100:NEXT
540 POKECO+1,0:POKECO,0
550 POKECO+4,33:POKECO+1,6:POKECO,206
560 FORT=1TO200:NEXT
570 POKECO+1,0:POKECO,0
590 RETURN
600 REM COMPUTERS MOVE
620 IFPEEK(P2+X2+Y2*40)=32ANDRND(.)<.85THENRETURN
650 XN=X2:YN=Y2:Y2=0
655 X2=1-(INT(RND(.)*3)):IFX2=0THEN655
660 X=PEEK(P2+X2+Y2*40):IFX=32THENIFX2=1THENA$="k":RETURN
680 IFX=32THENIFX2=-1THENA$="j":RETURN
700 X2=0
710 Y2=1:X=PEEK(P2+X2+Y2*40):IFX=32THENA$="m":RETURN
720 Y2=-1:X=PEEK(P2+X2+Y2*40):IFX=32THENA$="i":RETURN
740 X2=XN:Y2=YN
760 RETURN
1000 POKE53280,0:POKE53281,3
1010 PRINT"{clear}{reverse on}{black}{space*15}snake pit{space*17}"
1020 FORI=1TO22:PRINT"{left}{reverse on}{space*2}":NEXT
1030 PRINT"{reverse on}{left}{space*40}{home}"
1040 POKE2023,160:POKE56295,0
1050 RETURN
2000 GOSUB1000
2080 PRINT"{right*5}player 1's keys{space*3}player 2's keys"
2100 PRINT"{right*2}up"SPC(9)"w"SPC(17)"i"
2120 PRINT"{right*2}left"SPC(7)"a"SPC(17)"j"
2140 PRINT"{right*2}right"SPC(6)"s"SPC(17)"k"
2160 PRINT"{right*2}down"SPC(7)"z"SPC(17)"m"
2200 PRINT"{right*3}joystick(port b){space*3}joystick(port a)"
2240 PRINT"{right*3}enter number 1 or 2 for"
2250 PRINT"{right*9}number of players."
2260 PRINT"{right*3}the computer will be player 2"
2270 PRINT"{right*9}when only 1 player available."
2280 PRINT"{right*3}number of players: ";
2290 PRINT"{reverse on} {reverse off}";:FORT=1TO80:NEXT
2300 GETA$:IFA$="1"ORA$="2"THEN2325
2320 PRINT"{left} {left}";:FORT=1TO80:NEXT:GOTO2290
2325 N=VAL(A$)
2330 PRINT"{home}{down*22}{right*2}enter speed (1:fast - 9:slow) ";:GOTO2340
2334 PRINT"{reverse on} {reverse off}";:FORT=1TO80:NEXT
2336 PRINT"{left} {left}";:FORT=1TO80:NEXT
2340 GETA$:IFA$<"1"ORA$>"9"THEN2334
2360 F=VAL(A$):GOSUB60000
2380 GOSUB1000:PRINT"{home}{reverse on}{right}{red}player 1:{space*2}{right*16}{green}player 2:{space*2}"
2390 PRINT"{home}{red}{reverse on}"SPC(10)S1SPC(24)"{green}"S2
2400 REM SET RANDOM WALLS
2420 NW=INT(RND(.)*4):PRINT"{home}";
2430 IFNW=0THEN2600
2440 FORI=1TONW
2460 FORJ=1TORND((.)*6)+3
2480 PRINT:NEXT
2500 PRINTSPC((RND(.)*8)+8):FORK=1TORND(.)*16+8:PRINT"{black}{reverse on} ";:NEXT
2540 NEXT
2600 REM SET INITIAL POSITIONS
2620 P1=1106:P2=1141:X1=0:X2=0:Y1=1:Y2=1:S=9:POKE198,0
2630 IFN=2THEN2640
2640 FORI=COTOCO+24:POKEI,0:NEXT
2650 POKECO+24,15:POKECO+4,0
2660 GOTO20
60000 FORI=828TO853:READA:POKEI,A:NEXT:SYS828:RETURN
60010 DATA120,169,73,141,20,3,169,3,141,21,3,88,96,169,1,141,139,2,169,0
60020 DATA141,140,2,76,49,234