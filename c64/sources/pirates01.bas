0 REM PIRAT
1 IFPEEK(38181)<>133THENLOAD"64KSUPPORT",8,1
4 POKE52,142:POKE56,142:CLR:T$=""
5 GOSUB40:GOSUB19000:GOTO50
7 VZ=VA+2*V:POKEVZ,FNLB(ZV):POKEVZ+1,ZV/KP:RETURN
8 VZ=VA+2*V:ZV=PEEK(VZ)+KP*PEEK(VZ+1):RETURN
10 POKEA0,FNLB(F*KP):POKEA1,F:POKEA2,FNLB(T*KP):POKEA3,T:POKEA4,FNLB(L*KP)
11 POKEA5,L:SYSM64K:RETURN
12 POKEA0,F:POKEA2,FNLB(T*KP):POKEA3,T:POKEA4,FNLB(L*KP)
13 POKEA5,L:SYSSB:RETURN
30 POKEA1,Y:POKEA3,DY:POKEA4,CO:POKEA0,X:POKEA2,DX:SYSWN:RETURN
40 POKE792,193:POKE808,234:POKE56333,129:RETURN
41 POKE56333,127:POKE808,237:POKE792,71:RETURN
50 VB=150*KP:WN=153.5*KP:CTY=143*KP:CLN=24:PRS=148*KP
55 PTY=PRS+32:MP=155.5*KP:TR=142*KP:SO=158*KP:LG=147*KP:DTA=6*KP
80 GOSUB14000
90 F=0:T=TR/KP:L=1:GOSUB12:T=LG/KP:L=2:GOSUB12:DAY=INT(RND(0)*150)+50
95 F$="FIXMAP":GOSUB12900:GOSUB12500
100 T$="WELCOME TO 'PIRATES!'£RETURN WITH US TO THÅGOLDEN AGE OF"
105 T$=T$+" BUCCANEERINÇON THE SPANISH MAIN®"
106 T$=T$+"DO YOU WISH TO..® START A NEW CAREER¿"
107 T$=T$+" CONTINUE A SAVED GAME¿ COMMAND A FAMOUS EXPEDITION¿"
110 SYSVB:X=5:Y=3:GOSUB8000:GOSUB12500:IFC=5THEN750
120 IFC=6THEN200
140 X=1:Y=1:DX=37:DY=15:GOSUB30:PRINT"SELECT AN EXPEDITION...":PRINT
150 PRINT,"BATTLE OF SAN JUAN DE ULUA":PRINT,"  (JOHN HAWKINS, 1569)"
151 PRINT,"THE SILVER TRAIN AMBUSH":PRINT,"  (FRANCIS DRAKE, 1573)"
152 PRINT,"THE TREASURE FLEET":PRINT,"  (PIET HEYN, 1628)"
153 REMPRINT,"THE PIRATES OF TORTUGA":PRINT,"  (PIERRE LE GRAND, 1635)"
154 PRINT,"THE SACK OF MARACAIBO":PRINT,"  (L&OLLONAIS, 1666)"
155 PRINT,"THE KING&S PIRATE":PRINT,"  (HENRY MORGAN, 1671)"
156 PRINT,"THE LAST EXPEDITION":PRINT,"  (BARON DE POINTIS, 1697)"
160 X=9:N=14:Z=12:AA=0:GOSUB8050:PRINT""
165 REMT$="SCENARIO NOT AVAILABLE®":GOSUB7999:GOTO100
170 POKEPRS,INT(C/2)+16:POKEPRS+18,1:SN=-1:GOTO850
200 GOSUB12500
205 T$="INSERT GAME SAVE DISËTHEN..® PRESS THE TRIGGER®":X=8:Y=6:GOSUB8000
206 GOSUB22000:IFI$<>"3"THEN205
208 GOSUB2000
210 T$="WHICH SAVED GAME DÏYOU WISH TO CONTINUE¿ SAVED GAME 1£ SAVED GAME 2£"
211 T$=T$+" SAVED GAME 3£ SAVED GAME 4£":X=8:Y=3:GOSUB8000
220 POKEPTY,0:F$="SAVEGAME"+STR$(C-1):BF=TR:GOSUB17790
225 IFPEEK(PTY)=0THENT$="FILE NOT FOUNÄ":GOSUB7999:GOSUB295:GOTO100
230 NC=PEEK(CTY+1023)-3:SN=PEEK(PRS+26):POKEPRS+18,PEEK(PRS+18)OR2
240 DF=PEEK(PRS-3):V=22:ZV=NC:GOSUB7:V=41:ZV=FD:GOSUB7:GOSUB5950:GOSUB12950
250 T$="LOAD COMPLETED, NO×INSERT "
260 T$=T$+"GAME DISK (SIDE 1)£THEN..® PRESS THE TRIGGER®":X=8:Y=6:GOSUB8000
265 GOSUB22000:IFI$<>"1"THEN250
270 BF=DTA:F$="MAIN"+STR$(SN)+".DTA":GOSUB17790
290 GOTO990
295 T$="INSERT GAME DISK (SIDE 1)£ THEN PRESS THE TRIGGER®":X=4:Y=6:GOSUB8000
296 GOSUB22000:IFI$<>"1"THEN295
297 RETURN
750 T$="DO YOU WISH TO SELECT ÁSPECIAL HISTORICAL PERIOD¿ NO, THANKS® YES®"
760 X=2:Y=1:GOSUB8000:IFC<>3THENSN=5:GOTO820
800 T$="SELECT A TIME PERIODº"
802 T$=T$+" THE SILVER EMPIRE (1560)£"
803 T$=T$+" MERCHANTS AND SMUGGLERS (1600)£"
804 T$=T$+" THE NEW COLONISTS (1620)£"
805 T$=T$+" WAR FOR PROFIT (1640)£"
806 T$=T$+" THE BUCCANEER HEROES (1660)£"
807 T$=T$+" PIRATES& SUNSET (1680)£"
810 X=2:Y=1:DC=4:GOSUB8000:SN=C+(C=1):DC=0
820 BF=CTY:F$="CITIES"+STR$(SN)+".DTA":GOSUB17790:NC=PEEK(CTY+1023)-3
825 BF=DTA:F$="MAIN"+STR$(SN)+".DTA":GOSUB17790:POKEPRS+26,SN
850 GOSUB1000:DY=DAY-360*INT(DAY/360):POKEPRS+19,DAY/360
851 Z=INT(DY/15)-18+2*(SNAND1):IFZ<0THENZ=Z+24
852 POKEPRS+27,Z:POKEPRS-1,255:IFZ<15THENPOKEPRS-1,PEEK(CTY+1008+Z)
855 Z=INT(DY/15)-6+2*(SNAND1):IFZ<0THENZ=Z+24
856 POKEPRS+28,Z:POKEPRS-2,255:IFZ<15THENPOKEPRS-2,PEEK(CTY+992+Z)
860 POKEPRS+29,RND(0)*4
900 REM
905 Y=DAY/6:FORI=0TO2:FORJ=I+1TO3:Z=FNEX(PRS+64+I*4+J):X=PEEK(LG):POKELG,X+1
910 A=LG+X*4+1:POKEA,FNLB(Y):POKEA+1,Y/KP:IFZ<>0THENPOKEA+2,17+Z:POKEA+3,I*4+J
911 IFZ=0THENPOKEA+2,RND(0)*5+11:POKEA+3,RND(0)*NC
913 Y=Y+DAY/6:NEXTJ:NEXTI:POKEPTY,1
915 T$="WHAT IS YOUR FAMILY NAME¿(SMITH, JONES, ETC.)£££":X=5:Y=10:GOSUB8005
920 POKE214,12:PRINT,:PRINT"YOUR NAME?";:X=21:Y=13:NA$="":GOSUB1900
922 Z=LEN(NA$):IFRIGHT$(NA$,1)=" "THENNA$=LEFT$(NA$,Z-1):GOTO922
923 IFNA$=""THENNA$="INCOGNITO"
925 FORI=1TOLEN(NA$):POKEPRS+79+I,ASC(MID$(NA$,I)):NEXTI
930 T$="MR. "+NA$+", WHICÈDIFFICULTY LEVEÌWILL YOU CHOOSE¿ APPRENTICÅ JOURNEYMAÎ
931 T$=T$+" ADVENTUREÒ SWASHBUCKLEÒ":X=12:Y=13:GOSUB8000:DF=C-3:POKEPRS+24,DF
932 T$="WHICH SPECIAL ABILITÙDO YOU HAVE¿ SKILL AT FENCINÇ SKILL AT NAVIGATIOÎ"
933 T$=T$+" SKILL AT GUNNERÙ WIT AND CHARÍ SKILL AT MEDICINÅ"
934 X=7:Y=15:GOSUB8000:POKEPRS+23,C-1
940 F$="HIST":GOSUB12900:GOSUB5950:V=22:ZV=NC:GOSUB7:GOSUB12950
942 GOSUB1100
990 T$="INSERT GAME DISK SIDE 2£THEN..® PRESS THE TRIGGER®":X=4:Y=6:GOSUB8000
991 GOSUB22000:IFI$<>"2"THEN990
995 SYSVB+3:POKE53269,0:GOTO21900
1000 REM
1010 F=192:T=228:L=8:GOSUB10:BF=192*KP:F$="CHARS.DTA":GOSUB17790
1012 IFSN<0THENC=0:T(C)=PEEK(PRS):GOTO1040
1015 Z=0:GOSUB8700:IFSN>1THENFORI=5TOSN*4:READX:NEXTI
1020 FORI=1TO4:READX:T(I)=X:NEXTI
1021 IFSN<6THENFORI=SN*4TO23:READX:NEXTI
1025 T$="ARE YOU AN¿":FORI=1TO4:A=BF+T(I)*80-80:IFT(I)=0THEN1035
1030 T$=T$+" ":FORJ=0TO19:T$=T$+CHR$(PEEK(A+J)):NEXTJ:T$=T$+"£"
1035 NEXTI:X=10:Y=5:GOSUB8000:POKEPRS,T(C)
1040 POKE53269,0:A=BF+T(C)*80-80:FORJ=0TO12:POKEPTY+3+J,PEEK(A+20+J):NEXTJ
1045 FORJ=0TO6:POKEPTY+20+J,PEEK(A+33+J):NEXTJ
1050 FORJ=0TO3:POKEPRS+8+J,PEEK(A+48+J):NEXTJ:POKEPRS+12,255:POKEPRS+2,20
1052 FORJ=0TO3:POKEPRS+13+J,PEEK(A+52+J):NEXTJ
1055 FORJ=0TO15:POKEPRS+64+J,PEEK(A+56+J):NEXTJ
1060 I=INT(RND(0)*3)*2:FORJ=0TO1:POKEPTY+1+J,PEEK(A+40+I+J):NEXTJ
1070 IFSN>=0THEN1080
1071 SN=PEEK(A+72):POKEPRS+26,SN:DAY=PEEK(A+73)+KP*PEEK(A+74)
1072 POKEPRS+7,PEEK(A+75)
1075 BF=CTY:F$="CITIES"+STR$(SN)+".DTA":GOSUB17790:NC=PEEK(CTY+1023)-3
1076 BF=DTA:F$="MAIN"+STR$(SN)+".DTA":GOSUB17790
1080 POKEVB+16,PEEK(PTY+1):POKEVB+17,PEEK(PTY+2)+48:POKEA0,NC:SYSWN+6
1081 CC=PEEK(A0):POKEPRS+25,CC
1082 A=CTY+CC*CLN:POKEA,PEEK(A)OR128
1085 F=228:T=192:L=8:GOSUB10:RETURN
1099 DATA 1,2,7,0, 4,5,6,7, 8,9,3,7, 8,10,6,7, 12,13,14,7, 15,13,11,16
1100 REM
1104 GOSUB1250:C=PEEK(PRS):IFC>16THENFORI=0TO23:READX:NEXTI:GOTO1110
1106 FORI=1TOC
1107 READX:IFX<>-1THEN1107
1108 NEXTI:GOSUB12500
1110 READAA:ZZ=ABS(AA):IFZZ=97THENGOSUB1400:GOTO1110
1111 IFABS(AA+.5)<1THENRETURN
1114 IFZZ=50THENF$="TAVERN":C1=0:C2=10:GOTO1180
1115 IFZZ=51THENF$="GOVERNOR":C1=0:C2=10:GOTO1180
1116 IFZZ=52THENF$="SHIP 4":C1=14:C2=9:GOTO1180
1117 IFZZ=53THENF$="HAPPY":C1=0:C2=10:GOTO1180
1118 IFZZ=54THENF$="MAN":C1=0:C2=10:GOTO1180
1119 IFZZ=55THENF$="YOU":C1=0:C2=10:GOTO1180
1120 X=0:Y=0:FF=ZZ-1:GOSUB8590
1121 IFZZ=41THENX=3:Y=9
1122 IFZZ=42THENX=12:Y=12
1123 IFAA<0THENGOSUB12500
1125 GOSUB8000:IFZZ=41THENPOKEPRS,C+C
1126 IFZZ=42THENPOKEPRS,PEEK(PRS)+C:GOSUB1300
1127 IFZZ=6ANDC=7THENPOKE192*KP+16,0:RESTORE:GOSUB14200:SYSVB+3:GOTO80
1130 GOTO1110
1180 IFAA<0THENGOSUB12500
1185 X=10:Y=9:GOSUB8100:GOTO1110
1189 DATA -40,41,42,-52,3,0,4,97,5,6,0,-1
1190 DATA 1,51,2,41,42,-3,53,0,4,97,5,6,0,-1
1191 DATA 7,50,8,41,42,-3,52,35,97,-53,23,0,11,12,97,5,6,-1
1192 DATA 36,55,37,41,42,-3,52,26,97,-51,17,0,28,97,29,6,-1
1193 DATA 7,50,8,41,42,-9,97,-54,10,0,11,12,97,5,6,-1
1194 DATA 21,51,22,14,41,42,-20,97,-54,23,0,16,12,97,5,6,-1
1195 DATA 34,51,2,41,42,-52,35,97,-53,27,0,4,97,5,6,-1
1196 DATA 32,53,33,41,42,-15,97,-54,23,0,20,97,29,6,-1
1197 DATA 13,53,14,41,42,-15,97,-51,17,0,16,12,97,5,6,-1
1198 DATA 31,51,2,41,42,-9,97,-54,10,0,4,97,5,6,-1
1199 DATA 36,55,37,41,42,-52,3,26,97,-51,17,0,28,97,29,6,-1
1200 DATA 39,51,8,41,42,-35,97,-53,23,0,4,97,5,6,-1
1201 DATA 18,55,19,41,42,-20,97,-54,10,0,16,20,97,5,6,-1
1202 DATA 38,55,37,41,42,-26,97,-51,17,0,12,97,29,6,-1
1203 DATA 7,50,37,41,42,-26,97,-52,27,0,28,97,29,6,-1
1204 DATA 21,51,22,14,41,42,-15,97,-54,23,0,20,97,5,6,-1
1205 DATA 24,51,25,41,42,-26,97,-53,27,0,28,97,29,6,-1
1250 A=CTY+CLN*(PEEK(PRS+128)AND63):GOSUB2950
1260 CO$="THE SILVER TRAIN ":IFPEEK(PRS+128)AND64THENCO$="THE TREASURE FLEET "
1270 C$=C$+" IN"+STR$(1560+SN*20)+"; MR. "+NA$:RETURN
1300 F$="FIXMAP":GOSUB12900:GOSUB5950:V=22:ZV=NC:GOSUB7:V=41:ZV=FD:GOSUB7
1310 GOTO12980
1400 PRINT"":POKEVB+15,0:F$="DECK":X=-1:Y=2:C1=11:C2=9:GOSUB8100
1405 POKE214,17:PRINT:PRINT"   ENEMY CAPTAIN","    MR. "NA$;
1410 C1=248:C2=192:GOSUB1490:C1=252:C2=196:GOSUB1490:V=73:ZV=PEEK(PRS-3):GOSUB7
1420 Z=195.75:GOSUB12970:IFPEEK(A0)=4THEN1420
1430 GOSUB1490:C1=248:C2=192:GOSUB1490:POKE53269,0:POKE53276,0:POKE53277,0
1440 RETURN
1490 F=C1:T=232:L=4:GOSUB10:F=C2:T=C1:GOSUB10:F=232:T=C2:GOSUB10:RETURN
1900 POKE198,0:POKE214,Y:PRINT:POKE211,X:PRINTNA$" "
1905 GETA$:IFA$=""THEN1905
1909 Z=ASC(A$)
1910 IF(Z=20ORZ=157)ANDLEN(NA$)>0THENNA$=MID$(NA$,1,LEN(NA$)-1):GOTO1900
1920 IFZ<96ANDZ>31AND(Z<>34)ANDLEN(NA$)<9THENNA$=NA$+A$:GOTO1900
1930 IFZ<>13THEN1900
1940 RETURN
2000 SYSVB+3:POKE214,12:PRINT:PRINT"SAVED GAMES:"
2010 FORK=1TO4:POKEPTY,0:F$="SAVEGAME"+STR$(K):BF=TR:GOSUB17790:NA$="":I=0
2015 IFPEEK(PTY)=0THENPRINT""K". NO DATA":PRINT:GOTO2090
2020 Z=PEEK(PRS+80+I):IFZTHENNA$=NA$+CHR$(Z):I=I+1:GOTO2020
2030 SN=PEEK(PRS+26):DAY=FNDP(LG+4*PEEK(LG)-3):YR=INT(DAY/360):DF=PEEK(PRS-3)
2040 F$=MID$("APPRENTICEJOURNEYMANADVENTURERSWASHBUCLR",DF*10+1,10)
2050 A=CTY+PEEK(PRS+25)*CLN:GOSUB2950
2080 PRINT""K". "NA$" IN "C$"("1560+SN*20+YR")"
2085 PRINT,""F$":"FNDP(PRS+2)*10"GOLD PCS."
2090 NEXTK:PRINT"":SYSVB:RETURN
2900 A=0:REM FIND CITY(A,C$) AT CURSOR
2910 POKEA0,NC:SYSWN+6:Z=CTY+CLN*PEEK(A0):IFZ=ATHEN2910
2940 A=Z
2950 C$="":FORI=A+12TOA+23:C$=C$+CHR$(PEEK(I)):NEXTI:IFMO=2THENRETURN
2955 Z=LEN(C$):IFRIGHT$(C$,1)=" "THENC$=LEFT$(C$,Z-1):GOTO2955
2960 RETURN
2980 T$=" PRESS TRIGGER TO CONTINUÅ":X=9:Y=21:GOSUB8000
2985 POKEA0,9:POKEA1,21:POKEA2,28:POKEA3,2:POKEA4,CO:SYSWN:RETURN
2990 REM
2991 RR=0:IFPEEK(VB+14)=1THEN2991
2992 RR=RR+1:IFPEEK(VB+14)=0THENONRR/199+1GOTO2992,2994
2993 POKEVB+16,0:RETURN
2994 GOSUB2980:GOTO2993
3000 IFPEEK(PRS+18)THENPRINT"","LOADING MORE PIRATES!":RETURN
3005 FORI=0TO3:T(I)=-1:Y(I)=999:NEXTI
3010 A=CTY+CC*CLN:X=PEEK(A+1):Y=PEEK(A+2)
3020 FORI=0TONC:A=CTY+I*CLN:ZZ=PEEK(A+3):IFI=CCTHEN3050
3030 Z=ABS(X-PEEK(A+1))+ABS(Y-PEEK(A+2))
3040 IFZ<Y(ZZ)THENY(ZZ)=Z:T(ZZ)=I
3050 NEXTI
3100 PRINT"":X=7:Y=6:DX=32:DY=18:CO=4:GOSUB30:X$=""
3105 A=CTY+CC*CLN:GOSUB2950:ZZ=PEEK(A+3):K=ZZ:GOSUB3900:X=PEEK(A+1):Y=PEEK(A+2)
3110 PRINT""X$"THE SAILING MASTER TAKES YOU"
3115 PRINTX$"ASIDE.  %HERE IN "C$","
3120 PRINTX$"YOU&LL PROBABLY BE WANTIN& TO"
3125 PRINTX$"SEE THE "A$" GOVERNOR AND"
3130 PRINTX$"VISIT A TAVERN OR TWO. THE"
3135 PRINTX$"MEN&LL BE ANXIOUS FOR PLUNDER"
3140 PRINTX$"AND ADVENTURE SO WE NEEDN&T"
3145 PRINTX$"BE SIGHTSEEIN& FOR TOO LONG.";
3150 REMPRINT"I&VE TAKEN LIBERTY OF CHECKIN&"
3155 REMPRINT"THE MAP AND MAKING SOME NOTES.";
3180 FORK=0TO3:IFK=PEEK(CTY+CLN*CC+3)ORT(K)=-1THEN3199
3185 PRINT:A=CTY+T(K)*CLN:GOSUB2950:GOSUB3900:GOSUB3200
3190 PRINTX$"THE CLOSEST "A$" CITY IS"
3195 PRINTX$""C$" WHICH LIES "CO$
3196 PRINTX$"DAYS SAILING TO THE "T$".";
3199 NEXTK:PRINT"'";:RETURN
3200 DX=PEEK(A+1)-X:DY=PEEK(A+2)-Y
3210 IFABS(DX)>2*ABS(DY)THENDY=0
3215 IFABS(DY)>2*ABS(DX)THENDX=0
3220 T$="":IFDY<0THENT$="NORTH"
3225 IFDY>0THENT$="SOUTH"
3230 IFDX<0THENT$=T$+"WEST"
3235 IFDX>0THENT$=T$+"EAST"
3240 Z=ABS(DX)+ABS(DY):CO$="A FEW":IFZ>30THENCO$="MANY"
3250 RETURN
3900 A$=MID$("SPANISHENGLISHFRENCHDUTCH",K*9+1,9):RETURN
5950 Z=-1:GOSUB8700:V=64:ZV=DTA:GOSUB7:V=65:ZV=MP:GOSUB7:V=66:ZV=SP:GOSUB7
5960 V=68:ZV=SO:GOSUB7:V=69:ZV=A0:GOSUB7:V=70:ZV=VB:GOSUB7:V=71:ZV=WN:GOSUB7
5970 V=67:ZV=PRS+128:GOSUB7:F=0:T=ZV/KP:L=.5:GOSUB12:V=72:ZV=CTY:GOSUB7
5980 V=73:ZV=DF:GOSUB7:V=74:ZV=PTY:GOSUB7:V=75:ZV=TR:GOSUB7:V=76:ZV=SA:GOSUB7
5990 V=77:ZV=PRS:GOSUB7:V=78:ZV=192*KP:GOSUB7:POKES+18,128
5995 Z=PEEK(54299):FORI=0TO100:IFPEEK(54299)=ZTHENNEXTI:GOTO6000
5996 RETURN
6000 T$="THE RANDOM NUMBER GENERATOÒIN THIS COMPUTER (SID CHIP -£"
6010 T$=T$+"OSC. 3) IS NOT FUNCTIONINÇCORRECTLY.  PROGRAM WILL NOÔ"
6020 T$=T$+"WORK UNLESS THIS IS REPAIRED®"
6030 GOSUB12500:POKE53280,10:X=3:Y=6:GOSUB8000:RETURN
7999 X=20-INT(LEN(T$)/2):Y=20
8000 C=0:GOTO8010:REM
8005 C=1
8010 AA=PRS+131:POKEAA-1,0:POKEVB+15,1:T$="®"+T$:SYSWN+12:XL=PEEK(AA-2):DX=XL+2
8015 IFX=0THENX=INT((40-DX)/2)
8016 N=PEEK(AA-3):DY=N+1:IFY=0THENY=ABS(INT((9-DY)/2))
8017 IF(X+DX)>39THENDX=39-X
8018 IF(Y+DY)>24THENDY=24-Y
8020 CO=2+6*RND(0):GOSUB30:POKESP,176:Z=AA+PEEK(AA-1)
8030 POKE214,Y:PRINT"";:FORI=AA+NTOAA+1STEP-1:POKE211,X+1:IFZ=ITHENPRINT"";
8040 PRINTMID$(T$,PEEK(I)+2,PEEK(I-1)-PEEK(I))
8045 NEXTI:PRINT"";:IFCTHENRETURN
8050 Z=N-Z+AA:POKEVB+16,X*4+4:POKEVB+17,(Y+Z+DC)*8+60:POKE53269,1:IFZ=NTHEN2990
8060 C=INT(PEEK(VB+17)/8)-7-Y:IFC<ZTHENC=Z
8070 IFC>=NTHENC=N-1
8071 L=PEEK(216*KP+(Y+C)*40+X+42)AND15:POKEA0,X+1:POKEA1,Y+C+1:POKEA2,0:SYSWN+15
8072 GOSUB8090:IFPEEK(VB+14)THENPOKEVB+16,0:POKEA2,6*SGN(L):SYSWN+15:RETURN
8074 POKEA2,L:SYSWN+15:GOSUB8090:GOTO8060
8080 POKEVB+16,0:RETURN
8090 FORI=0TO20:IFPEEK(VB+14)THENI=999
8091 NEXTI:RETURN
8099 C1=0:C2=10
8100 REM
8110 F=236:T=161:L=2:GOSUB10:F$=F$+".WIN":BF=232*KP:GOSUB17790
8115 Z=ABS(X)+Y*40+41:AX=216*KP+Z:Z=PEEK(648)*KP+Z
8120 POKEA0,ABS(X):POKEA1,Y:POKEA2,19-18*(X=-1):POKEA3,15:POKEA4,0:SYSWN
8130 POKE53282,C1:POKE53283,C2:F=232:T=228:L=6:GOSUB10:F=161:T=236:L=2:GOSUB10
8140 POKEA0,FNLB(Z):POKEA1,Z/KP:POKEA2,FNLB(AX):POKEA3,AX/KP:SYSWN+9
8150 IFX=-1THENX=0:Z=Z+18:ZZ=ZZ+18:AX=AX+18:GOTO8140
8160 RETURN
8590 REM
8600 T$="":REM
8610 RR=PEEK(53269):POKE53269,0:OPEN15,8,15:OPEN5,8,5,"#"
8615 PRINT#15,"B-R:";5;0;INT((FF+1)/21)+1;FF+1-INT((FF+1)/21)*21
8620 INPUT#5,F$:IFF$="CO$"THENT$=T$+CO$:GOTO8620
8622 IFF$="C$"THENT$=T$+C$:GOTO8620
8625 Z=LEN(F$):IFF$="ZZ"THENT$=T$+MID$(STR$(ZZ),2)+" ":GOTO8620
8630 T$=T$+LEFT$(F$,Z-1)+CHR$(ASC(MID$(F$,Z))+128):IFST=0THEN8620
8640 CLOSE5:CLOSE15:POKE53269,RR:RETURN
8700 Z=4*KP+ABS(Z)*100+2*(Z<0):REM MUSIC(Z)
8710 POKEA0,FNLB(Z):POKEA1,Z/KP:POKEA2,13:POKEA3,64
8720 Z=2:POKES+3,Z:POKES+10,Z:POKES+17,Z:POKEA4,9:POKEA5,10:SYSVB+9:RETURN
12000 REM
12010 POKE56578,PEEK(56578)OR3:POKE56576,(PEEK(56576)AND252)OR0
12020 S=54272:FORI=0TO23:POKES+I,0:NEXTI:POKES+24,15:POKES+15,10:POKES+18,129
12030 POKE53270,24:POKE53272,48+8:POKE648,204:POKEVB+15,0
12040 SX=53248:SY=53249:SC=53287:POKE53269,0:SP=PEEK(648)*KP+1016
12050 FORI=0TO7:POKESP+I,176:POKESX+I+I,0:POKESY+I+I,0:NEXTI:RETURN
12500 POKE648,204:POKE53272,48+8:REM TEXT SCREEN
12510 PRINT"";:POKE53269,0:POKE53280,14:POKE53281,1:POKE53282,0:MO=1
12515 POKE53271,0:POKE53277,0:POKE53276,0
12520 POKE53270,24:POKE53265,27:RETURN
12900 REM
12910 F=0:T=VA/KP:L=4:GOSUB12:POKE53269,0
12920 F$=F$+".SID":BF=174*KP
12930 GOSUB17790:IF(ST AND191)<>0THEN12930
12940 RETURN
12950 REM
12960 POKEA0,0:POKEA1,174:SYSVAR-24:RETURN
12970 POKEA0,FNLB(Z*KP):POKEA1,Z:SYSVAR-24:RETURN
12980 POKEA0,0:POKEA1,174:SYSVAR-24:IFPEEK(PRS-3)<4THENRETURN
12985 READX:IFXTHEN12985
12989 RETURN
13000 VB=150*256:POKEVB+13,0:REM SET UP STANDARD SCREEN
13010 POKE56578,PEEK(56578)OR3:POKE56576,(PEEK(56576)AND252)OR3
13020 POKE53265,27
13030 POKE53270,8:POKE53272,21:POKE648,4:SYSVB+3
13040 POKE53269,0:POKE53280,0:POKE53281,6:PRINT"":RETURN
14000 REM
14010 BF=192*KP:IFPEEK(BF+16)=170THENGOSUB12000:RETURN
14012 BF=192*KP:F$="MAIN.CHR":GOSUB17800:F$="MAIN":GOSUB17900
14015 BF=224*KP:F$="MAIN.FNT":GOSUB17800
14025 BF=240*KP:F$="SWORD.PIC":GOSUB17800:F=240:T=208:L=16:GOSUB10
14035 BF=158*KP:F$="3DSHIPS.PIC0":GOSUB17800
14036 BF=240*KP:F$="3DSHIPS.PIC1":GOSUB17800
14070 F$="MUSIC"+STR$((PEEK(162)AND1)+1)+".DTA":BF=4*KP:GOSUB17800:POKEBF+98,1
14090 POKEBF+99,0:GOSUB14200
14092 BF=181.5*KP:F$="MAIN.PIC0":GOSUB17800
14093 BF=186.5*KP:F$="MAIN.PIC1":GOSUB17800
14094 BF=236*KP:F$="MAIN.PIC2":GOSUB17800
14095 BF=251.75*KP:F$="MAIN.PIC3":GOSUB17800EADY.
14199 RETURN
14200 POKE53265,0:GOSUB12000:GOSUB12500
14205 X=6:Y=2:DX=27:DY=4:CO=7:GOSUB30:PRINT"","      PIRATES !"
14210 PRINT"      (C) 1987 MICROPROSE SOFTWARE"
14215 X=10:Y=10:DX=19:DY=11:CO=3:GOSUB30
14220 PRINT,"DESIGN AND":PRINT,"PROGRAMMING:":PRINT,"SID MEIER":PRINT
14230 PRINT,"ART:":PRINT,"MICHAEL HAIRE":PRINT
14240 PRINT,"DOCUMENTATION,":PRINT,"SCENARIO DESIGN:"
14245 PRINT,"ARNOLD HENDRICK":POKE214,22:PRINT:PRINT" V 132X01"
14250 POKE53265,27:RETURN
14999 RETURN
17790 SYSVB+3:GOSUB41:GOSUB17800:GOSUB40:SYSVB:RETURN
17800 RR=0
17805 GOSUB19520
17806 POKEA1,FNLB(BF):POKEA2,BF/256:RR=PEEK(53269):POKE53269,0
17810 POKEA0,0:POKEA4,213:POKEA5,255:SYSKERNEL:POKE53269,RR
17820 RETURN
17900 RR=255:GOTO17805
19000 DEFFNDP(X)=PEEK(X)+256*PEEK(X+1)
19001 DEFFNLB(X)=(X-32768)AND255:DEFFNEX(X)=PEEK(X)+256*(PEEK(X)>127)
19002 DEFFNRG(X)=-X*(X>=0ANDX<256)-255*(X>255)
19003 A0=165:A1=A0+1:A2=A1+1:A3=A2+1:A4=A3+1:A5=A4+1:A6=A5+1:KP=256:KK=KP*KP
19004 K=149*KP:SB=K+41:MVB=K+70:BMVB=K+103:KERNEL=K+142:S64K=K+29:M64K=K+20
19010 FD=035:VAR=159*KP:RETURN
19520 FORI=0TOLEN(F$)-1:POKE830+I,ASC(MID$(F$,I+1,1)):NEXTI
19526 POKEA0,0:POKEA1,8:POKEA2,1:POKEA4,186:POKEA5,255:SYSKE
19528 POKEA0,LEN(F$):POKEA1,62:POKEA2,3:POKEA4,189:POKEA5,255:SYSKE:RETURN
21900 GOSUB3000
21905 PRINT"LOAD "CHR$(34)"MAIN"CHR$(34)",8,1:":PRINT"RUN:"
21920 GOSUB41:POKE631,19:POKE632,13:POKE633,13:POKE198,3:NEW
22000 REM
22060 RR=PEEK(53269):POKE53269,0:OPEN15,8,15,"I0:":OPEN2,8,2,"#1"
22070 PRINT#15,"U1";2;0;18;0:PRINT#15,"B-P";2;163:GET#2,I$:CLOSE2:CLOSE15
22090 POKE53269,RR:RETURN
