5 REM *** OH SUZANNAH BY STEPHEN FOSTER 
10 FOR M = 54272 TO 54296 : POKE M,0 : NEXT 
20 POKE 54296,15 
30 POKE 54277,7 : POKE 54278,5 
40 READH,L,DR 
50 IFH<0THEN900 
60 POKE 54273,H : POKE 54272,L 
70 POKE 54276,33 
80 FORT = 1 TO DR : NEXT 
90 POKE54276,32 
95 FOR B = 1 TO 34 : NEXT 
100 GOTO 40 
200 DATA 18,209,75,21,31,75,23,181,150,28,49,150,28,49,225,31,165,75 
210 DATA 28,49,150,23,181,150,18,209,225,21,31,75,23,181,150,23,181,150 
220 DATA 21,31,150,18,209,150,21,31,450,18,209,75,21,31,75,23,181,150 
230 DATA 28,49,150,28,49,225,31,165,75,28,49,150,23,181,150,18,209,225 
240 DATA 21,31,75,23,181,150,23,181,150,21,31,150,21,31,150,18,209,900 
250 DATA -1,-1,-1 
900 I = I + 1 : IF I = 2 THEN POKE 54296,0 : END 
910 RESTORE : GOTO 40 