10 rem ** magic jigsaw **
20 print"{clear}":g=1024:h=55296:s=54272:poke 53280,6:poke 53281,10
30 for j=0 to 25:poke s+j,0:next:poke s+24,15:poke s+6,240:poke 649,1
40 for p=1 to 9
50 n=int(rnd(1)*9)+1:f=0
60 for j=1 to 9
70 if f(j,0)=n then f=1
80 next
90 if f=1 then 50
100 f(p,0)=n
110 gosub 900
120 q=int(rnd(1)*2)+1:f(p,1)=q
130 if n=1 then 150
140 for j=1 to 48*(n-1):read x:next
150 on q gosub 1000,2000
160 restore
170 next
180 for j=0 to 2
190 for k=0 to 2
200 poke g+287+9*k+320*j,49+k+3*j:poke h+287+9*k+320*j,1
210 next:next
220 ff=1:for n=1 to 9
230 if f(n,0)<>n or f(n,1)<>1 then ff=0
240 next
250 if ff=1 then 460
260 restore:gosub 3000
270 get a$:if a$="" then 270
280 p=val(a$):if p<1 or p>9 then 220
290 restore:gosub 3000
300 gosub 3010
310 restore
320 get a$:if a$="" then 320
330 r=val(a$):restore
340 if r=0 then 400
350 pt=f(p,0):qt=f(p,1)
360 f(p,0)=f(r,0):f(p,1)=f(r,1)
370 f(r,0)=pt:f(r,1)=qt
380 gosub 3500
390 p=r:gosub 3500:goto 220
400 if f(p,0)=1 then 420
410 for k=1 to (f(p,0)-1)*48:read x:next
420 if f(p,1)=1 then f(p,1)=2:goto 440
430 f(p,1)=1:gosub 900
440 on f(p,1) gosub 1000,2000
450 goto 220
460 print"{clear}":restore
470 for n=1 to 9
480 d=128+240*(int((n+2)/3-1))+8*(n-int((n-1)/3)*3-1)
490 gosub 1000
500 next
510 for j=1 to 38:gosub 4000:next
520 get a$:if a$="" then 520
530 restore:for j=1 to 432:read x:next
540 goto 510
900 d=47+320*(int((p+2)/3-1))+9*(p-int((p-1)/3)*3-1)
910 return
1000 for l=d to 200+d step 40
1010 for m=0 to 7
1020 read x
1030 poke g+l+m,160
1040 poke h+l+m,x
1050 next:next
1060 return
2000 for l=200+d to d step-40
2010 for m=7 to 0 step-1
2020 read x
2030 poke g+l+m,160
2040 poke h+l+m,x
2050 next:next
2060 return
3000 for j=1 to 432:read x:next
3010 for j=1 to 2
3020 gosub 4000
3030 next
3040 return
3500 if f(p,0)=1 then 3540
3510 for j=1 to (f(p,0)-1)*48
3520 read x
3530 next
3540 gosub 900
3550 on f(p,1) gosub 1000,2000
3560 restore
3570 return
4000 read lf,hf
4010 poke s,lf:poke s+1,hf
4020 read x
4030 poke s+4,17
4040 for k=1 to 100*x:next
4050 poke s+4,16
4060 return
5000 data 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
5010 data 6,6,6,6,6,7,7,7,6,6,6,6,7,7,7,7,6,7,6,7,7,0,7,7
5020 data 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,6,6,6,6,6,6,6,1
5030 data 7,6,6,6,6,6,6,1,7,7,6,6,6,6,6,6,0,7,7,6,6,6,6,6
5040 data 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1,6,6,6,6,6
5050 data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,6,6,6,6,6
5060 data 6,3,6,7,7,1,7,7,6,3,6,7,7,7,7,7,6,6,3,7,7,7,7,7
5070 data 6,6,6,4,4,4,4,4,6,6,6,6,3,3,3,3,2,2,2,2,2,3,2,2
5080 data 1,7,7,6,6,6,6,6,7,7,7,6,6,6,6,6,7,7,7,6,6,6,6,6
5090 data 4,4,4,3,3,6,6,6,3,3,6,6,6,3,6,6,3,2,2,2,2,7,2,2
5100 data 6,6,1,1,1,1,6,6,6,6,1,1,1,1,6,6,6,6,6,6,6,6,6,6
5110 data 6,6,6,6,8,6,6,6,6,6,6,8,7,8,6,6,2,2,2,2,8,2,2,2
5120 data 2,2,2,2,2,3,2,2,2,2,2,2,2,3,2,2,2,2,2,2,9,9,2,2
5130 data 5,2,2,2,2,2,2,2,5,5,2,5,2,2,5,2,5,5,5,5,5,5,5,5
5140 data 3,2,2,2,2,2,2,2,3,2,2,2,2,2,2,2,9,9,2,2,2,2,2,2
5150 data 2,2,2,2,2,2,5,2,2,2,2,5,5,2,5,2,5,5,5,5,5,5,5,5
5160 data 2,2,2,2,5,2,8,2,2,2,8,2,5,8,7,8,2,8,7,8,5,2,8,2
5170 data 2,2,8,2,5,2,2,2,5,2,2,2,5,2,5,2,5,5,5,5,5,5,5,5
6000 data 195,16,4,31,21,2,209,18,4,96,22,2,31,21,2,30,25,2,165,31,2,135,33,6
6010 data 31,21,4,30,25,2,96,22,4,49,28,2,30,25,2,31,21,2,195,16,2,209,18,6
6020 data 31,21,2,96,22,2,30,25,2,96,22,2,30,25,2,49,28,2,30,25,2,49,28,2
6030 data 165,31,2,135,33,4,135,33,1,162,37,1,62,42,2,135,33,2,135,33,2
6040 data 193,44,2,193,44,2,62,42,2,162,37,2,135,33,2,165,31,2,135,33,6
