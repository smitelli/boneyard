10 CLS
20 PRINT "               Resistor Color Code Reader"
30 PRINT ""
40 PRINT "A typical"
50 PRINT "resistor:"
60 PRINT ""
70 PRINT " ³"
80 PRINT "ÚÁ¿"
90 PRINT "³";
100 COLOR 4
110 PRINT "Û";
120 COLOR 7
130 PRINT "³  = RED      = 20 +"
140 PRINT "³";
150 COLOR 1
160 PRINT "Û";
170 COLOR 7
180 PRINT "³  = BLUE     = 6  =26"
190 PRINT "³";
200 COLOR 2
210 PRINT "Û";
220 COLOR 7
230 PRINT "³  = GREEN    = 5  &5 0's =   2,600,000 or 2.6 Mê"
240 PRINT "³";
250 COLOR 8
260 PRINT "Û";
270 COLOR 7
280 PRINT "³  = SILVER   = ñ10%"
290 PRINT "ÀÂÙ"
300 PRINT " ³"
310 PRINT ""
320 PRINT "After you're finished reading this briefing, press Enter."
330 INPUT A$
340 CLS
350 INPUT "Type in the first color on the resistor (tolerance band last)"; N1$
360 INPUT "Type in the second color on the resistor."; N2$
370 INPUT "Type in the third color on the resistor."; N3$
380 INPUT "Type in the tolerance band (gold or silver only)."; TOLERANCE$
390 IF N1$ = "black" THEN LET f1 = 0
400 IF N1$ = "brown" THEN LET f1 = 1
410 IF N1$ = "red" THEN LET f1 = 2
420 IF N1$ = "orange" THEN LET f1 = 3
430 IF N1$ = "yellow" THEN LET f1 = 4
440 IF N1$ = "green" THEN LET f1 = 5
450 IF N1$ = "blue" THEN LET f1 = 6
460 IF N1$ = "violet" THEN LET f1 = 7
470 IF N1$ = "purple" THEN LET f1 = 7
480 IF N1$ = "grey" THEN LET f1 = 8
490 IF N1$ = "gray" THEN LET f1 = 8
500 IF N1$ = "white" THEN LET f1 = 9
510 IF N2$ = "black" THEN LET f2 = 0
520 IF N2$ = "brown" THEN LET f2 = 1
530 IF N2$ = "red" THEN LET f2 = 2
540 IF N2$ = "orange" THEN LET f2 = 3
550 IF N2$ = "yellow" THEN LET f2 = 4
560 IF N2$ = "green" THEN LET f2 = 5
570 IF N2$ = "blue" THEN LET f2 = 6
580 IF N2$ = "violet" THEN LET f2 = 7
590 IF N2$ = "purple" THEN LET f2 = 7
600 IF N2$ = "grey" THEN LET f2 = 8
610 IF N2$ = "gray" THEN LET f2 = 8
620 IF N2$ = "white" THEN LET f2 = 9
640 IF N3$ = "brown" THEN LET F$ = "O"
650 IF N3$ = "red" THEN LET F$ = "OO"
660 IF N3$ = "orange" THEN LET F$ = ",OOO"
670 IF N3$ = "yellow" THEN LET F$ = "O,OOO"
680 IF N3$ = "green" THEN LET F$ = "OO,OOO"
690 IF N3$ = "blue" THEN LET F$ = ",OOO,OOO"
750 IF TOLERANCE$ = "gold" THEN LET T$ = "ñ5%"
760 IF TOLERANCE$ = "silver" THEN LET T$ = "ñ10%"
790 CLS
800 PRINT f1; " "; f2; " "; F$; " "; T$
810 END







