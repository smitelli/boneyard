10 CLS
20 COLOR 11: PRINT "                           Computerized Alarm Clock"
30 LOCATE 10, 1
40 A1$ = "08:30:00"
50 A2$ = "09:25:00"
60 A3$ = "10:20:00"
70 A4$ = "11:15:00"
80 A5$ = "12:10:00"
90 A6$ = "13:05:00"
100 A7$ = "14:00:00"
110 A8$ = "14:55:00"
120 A9$ = "16:00:00"
130 COLOR 6: LOCATE 10, 1: PRINT "     ALM1  -  "; A1$
140 PRINT "     ALM2  -  "; A2$
150 PRINT "     ALM3  -  "; A3$
160 PRINT "     ALM4  -  "; A4$
170 PRINT "     ALM5  -  "; A5$
180 PRINT "     ALM6  -  "; A6$
190 PRINT "     ALM7  -  "; A7$
200 PRINT "     ALM8  -  "; A8$
210 PRINT "     ALM9  -  "; A9$
215 COLOR 9: LOCATE 20, 1: PRINT "            Press ESC to exit  Г  Press ENTER for alarm on/off."
220 A$ = INKEY$
225 LOCATE 7, 10: COLOR 14: PRINT "                "
230 COLOR 14: LOCATE 5, 10: PRINT "The time is "; TIME$; "."
240 IF TIME$ = A1$ THEN LOCATE 6, 10: PRINT "Now executing ALM1.": GOTO 370
250 IF TIME$ = A2$ THEN LOCATE 6, 10: PRINT "Now executing ALM2.": GOTO 370
260 IF TIME$ = A3$ THEN LOCATE 6, 10: PRINT "Now executing ALM3.": GOTO 370
270 IF TIME$ = A4$ THEN LOCATE 6, 10: PRINT "Now executing ALM4.": GOTO 370
280 IF TIME$ = A5$ THEN LOCATE 6, 10: PRINT "Now executing ALM5.": GOTO 370
290 IF TIME$ = A6$ THEN LOCATE 6, 10: PRINT "Now executing ALM6.": GOTO 370
300 IF TIME$ = A7$ THEN LOCATE 6, 10: PRINT "Now executing ALM7.": GOTO 370
310 IF TIME$ = A8$ THEN LOCATE 6, 10: PRINT "Now executing ALM8.": GOTO 370
320 IF TIME$ = A9$ THEN LOCATE 6, 10: PRINT "Now executing ALM9.": GOTO 370
330 IF A$ = CHR$(60) THEN GOTO 370
340 IF A$ = CHR$(13) THEN GOTO 420
350 IF A$ = CHR$(27) THEN GOTO 530
360 GOTO 220
370 COLOR 31: CLS : FOR X = 1 TO 20
371 PRINT "     лллллллллллллллллллллллллллл             ллллллллллллллллллллллллллллл"
372 NEXT X
373 COLOR 12, 0: FOR X = 1 TO 20
374 LOCATE X, 35: PRINT "Alarm Time!"
375 NEXT X
379 PLAY "O3 T150 L16 F P64 F P64 F P64 F P3 F P64 F P64 F P64 F P64 P3"
380 PLAY "F P64 F P64 F P64 F P3 F P64 F P64 F P64 F P64 P3"
390 PLAY "F P64 F P64 F P64 F P3 F P64 F P64 F P64 F P64 P3"
400 GOTO 10
420 A$ = INKEY$
425 LOCATE 7, 10: COLOR 26: PRINT "Alarm silenced."
430 COLOR 14: LOCATE 5, 10: PRINT "The time is "; TIME$; "."
450 IF A$ = CHR$(13) THEN GOTO 220
460 IF A$ = CHR$(27) THEN GOTO 530
470 GOTO 420
530 COLOR 7
540 CLS
550 PRINT "Thank you for using the Computerized Alarm Clock."
560 PRINT ""

