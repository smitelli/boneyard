10 COLOR 7, 7
20 CLS
30 COLOR 15, 7: PRINT "ÛÜ"
40 PRINT "Û ßÜ"
50 PRINT "Û   ßÜ"
60 PRINT "Û    Üß"
70 PRINT "ÛÜßÜ  ßÜ "
80 PRINT "    ßßß"
90 LOCATE 22, 45: PRINT "  ÄÄKENNY$ÄÄ"
100 FOR X = 1 TO 2500
110 FOR Y = 1 TO 15
120 COLOR Y: LOCATE 23, 15: PRINT "ÛÛ"
130 NEXT Y
140 NEXT X
150 LOCATE 7, 1: COLOR 0, 3
160 PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
170 PRINT "³                                                 ³"
180 PRINT "³    PIXEL% Function overflow. Cannot allocate    ³"
190 PRINT "³   enough VGA handles to parse in the required   ³"
200 PRINT "³ video window. Program execution will terminate. ³"
210 PRINT "³                                                 ³"
220 PRINT "ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´"
230 PRINT "³                                                 ³"
240 PRINT "³      Press SPACE to move, ENTER to select.      ³"
250 PRINT "³                                                 ³"
260 PRINT "³                                                 ³"
270 PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
280 LOCATE 16, 2: PRINT "          [Close]             [Details]"
285 PLAY "MBT200O3E..F..E..C...."
290 LOCATE 16, 12: COLOR 15: PRINT "[Close]"
300 A$ = INKEY$
310 IF A$ = CHR$(32) THEN GOTO 340
320 IF A$ = CHR$(13) THEN COLOR 7, 0: CLS : END
330 GOTO 300
340 LOCATE 16, 12: COLOR 0: PRINT "[Close]"
350 LOCATE 16, 32: COLOR 15: PRINT "[Details]"
360 A$ = INKEY$
370 IF A$ = CHR$(32) THEN GOTO 400
380 IF A$ = CHR$(13) THEN GOTO 430
390 GOTO 360
400 LOCATE 16, 32: COLOR 0: PRINT "[Details]"
410 LOCATE 16, 12: COLOR 15: PRINT "[Close]"
420 GOTO 300
430 COLOR 15, 1
440 CLS
450 COLOR 12: PRINT "PIXEL% Function overflow. Cannot allocate enough VGA handles to parse in the"
460 PRINT "required video window. Program execution will terminate."
470 COLOR 15: PRINT ""
480 PRINT "Module SPRINTER.PCX encountered an unexpected program halt."
490 PRINT "UMB 0F25:000C (SVGA control block.)"
500 PRINT "Fault encountered at: "; TIME$; ", "; DATE$; "."
510 PRINT ""
520 COLOR 14: INPUT "Press Enter. ", Z$
530 GOTO 150

