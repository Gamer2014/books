10 rem ** minefield **
20 g=1024:h=55296:dimm%(60),s%(20)
30 s=54272:cb=53280:cs=53281:gosub3000
40 pokes+14,8:pokes+18,32:pokes+3,2:pokes+24,143:pokes+6,242:pokes+4,65
50 pokecb,5:pokecs,15:poke649,1
60 pokes+7,100:pokes+8,1:pokes+13,240
70 pokes+11,129:pokes+24,1
80 print"{clear}":input"level (1-10)";l$
90 l=val(l$):ifl<1orl>10then80
100 print"{clear}"
110 forj=1to30+3*l:m%(j)=rnd(1)*920+40:pokeh+m%(j),15:pokeg+m%(j),42:next
120 forj=1to20:s%(j)=rnd(1)*920+40
130 fs=0:fork=1to30+3*l
140 ifs%(j)=m%(k)thenfs=1
150 next
160 iffs=1then120
170 pokes%(j)+h,5:pokes%(j)+g,160
180 next
190 f=0:p=0:pn=0:pd=1:fs=1:pokeg,209:pokeh,2:ti$="000000"
200 forj=1to5
210 c%(j)=7*j:cn%(j)=c%(j):cd%(j)=2:pokeg+c%(j),35:pokeh+c%(j),0
220 next
230 geta$
240 ifa$="u"thenpn=p-40
250 ifa$="j"thenpn=p+1
260 ifa$="h"thenpn=p-1
270 ifa$="n"thenpn=p+40
280 ifpn<0orpn>999thenpn=p
290 ifa$="h"andint(p/40)=p/40ora$="j"andint((p+1)/40)=(p+1)/40thenpn=p
300 ifpn=999then700
310 pg=peek(g+pn)
320 ifpg=42then800
330 ifpg=35thenpn=p
340 ifpn=pthen400
350 pokeg+p,32+fs*128
360 iffs=1thenpokeh+p,5:fs=0
370 ss=peek(h+pn)and7
380 ifss=5thenfs=1
390 p=pn:pokeg+p,209:pokeh+p,2+fs*3
400 j=1
410 ifcd%(j)=0thencn%(j)=c%(j)-40
420 ifcd%(j)=1thencn%(j)=c%(j)+1
430 ifcd%(j)=2thencn%(j)=c%(j)+40
440 ifcd%(j)=3thencn%(j)=c%(j)-1
450 ifcn%(j)<0orcn%(j)>999thencn%(j)=cn%(j)-1000*sgn(cn%(j))
460 pg=peek(g+cn%(j))
470 ifpg=42orpg=35orpg=209thencd%(j)=cd%(j)+1:cn%(j)=c%(j)
480 ifcd%(j)=4thencd%(j)=0
490 iffs=1then530
500 d=abs(p-cn%(j)):ifd=1ord=40thenfg=1
510 ifl>5andd=2orl>5andd=80thenfg=1
520 iffg=1then900
530 ifpg=209then1000
540 ifcn%(j)=c%(j)then600
550 ifl>8thencc%(j)=0
560 pokeg+c%(j),32+128*cc%(j)
570 ifcc%(j)=1thenpokeh+c%(j),5:cc%(j)=0
580 ps=peek(h+cn%(j))and7:ifps=5thencc%(j)=1
590 c%(j)=cn%(j):pokeg+c%(j),35:pokeh+c%(j),0:pokes+24,1
600 j=j+1:ifj<6then410
610 ifrnd(1)<.8then230
620 fr=30000+int(rnd(1)*25000)
630 pokes+4,65:pokes+11,128
640 pokes+24,143:forj=1to25
650 fq=fr-peek(s+27)*80:hf=int(fq/256):lf=fq-hf*256
660 pokes,lf:pokes+1,hf
670 next
680 pokes+4,64:pokes+12,2:pokes+13,252:pokes+7,20:pokes+8,2:pokes+11,129
690 goto230
700 print"{clear}{white}":pokecb,6:pokecs,2:gosub3000
710 printtab(10)"{down*3}you have escaped!":printtab(11)"{down*2}in";int(ti/60);"seconds"
720 pokes+24,15:pokes+5,100:pokes+6,80
730 fl=75:fh=34:d=4:gosub2000:gosub2000
740 fl=94:fh=32:d=2:gosub2000
750 fl=75:fh=34:gosub2000
760 fl=126:fh=38:gosub2000
770 fl=214:fh=28:d=8:gosub2000
780 fl=177:fh=25:gosub2000
790 pokes+24,0:goto1500
800 print"{clear}":gosub3000
810 pokes+24,15:pokes+12,8:pokes+13,250:pokes+7,20:pokes+8,2:pokes+11,129
820 pokecb,0:pokecs,0
830 fork=1to10:next
840 pokecs,1
850 fork=1to5:next
860 pokes+11,128:pokecs,0
870 printtab(12)"{down*3}you were mined":printtab(10)"{down*2}after";int(ti/60);"seconds"
880 goto1500
900 print"{clear}":pokecb,2:pokecs,2:gosub3000
910 pokes+24,15:pokes+6,240:pokes,56:pokes+1,27
920 forj=1to15
930 pokes+4,129
940 fork=1to5:next
950 pokes+4,128
960 fork=1to20:next
970 next:pokes+24,0
980 printtab(13)"{down*3}you were shot":printtab(11)"{down*2}after",int(ti/60);"seconds"
990 goto1500
1000 print"{clear}":pokecb,2:pokecs,2
1010 gosub3000
1020 pokes+24,15:pokes,144:pokes+1,235:pokes+5,15:pokes+6,240:pokes+4,33
1025 pokes+7,100:pokes+8,100:pokes+13,240:pokes+11,129
1030 forj=1to1500:next
1040 pokes+4,32:pokes+11,128
1050 pokes+24,0
1060 printtab(10)"{down*3}you were run over":printtab(10)"{down*3}after";int(ti/60);"seconds"
1500 geta$:ifa$<>" "then1500
1510 print"{blue}":fg=0:goto30
2000 pokes,fl:pokes+1,fh:pokes+4,33
2010 fork=1to120*d:next
2020 pokes+4,32
2030 return
3000 forj=0to24:pokes+j,0:next
3010 return