10 CLS
20 PLAY "MB T100 O3  C... G... L8 F E C L4 >C..< G... L8 F E C L4 >C..<"
30 PLAY "MB T100 O3  G... L8 F E F L4 D....."
40 COLOR 15
50 LOCATE 25, 1
60 PRINT "Luke, trust your feelings. And bet with your head, not over it."
70 FOR Z = 1 TO 9
80 LET X = 24
90 FOR Y = 1 TO 80
100 LOCATE X, Y
110 PRINT "³"
120 NEXT Y
130 NEXT Z
140 COLOR 28
150 PRINT "Duplicate found. . . Re-calculating now."
160 COLOR 10
170 DO
180 FOR X = 1 TO 2000
190 NEXT X
200 A = INT(RND * 48) + 1
210 B = INT(RND * 48) + 1
220 C = INT(RND * 48) + 1
230 D = INT(RND * 48) + 1
240 E = INT(RND * 48) + 1
250 F = INT(RND * 48) + 1
260 IF A = B OR A = C OR A = D OR A = E OR A = F THEN GOTO 140
270 IF B = C OR B = D OR B = E OR B = F THEN GOTO 140
280 IF C = D OR C = E OR C = F THEN GOTO 140
290 IF D = E OR D = F THEN GOTO 140
300 IF E = F THEN GOTO 140
310 PRINT "Calculating winning Pick 6 Numbers: ";
320 COLOR 14
330 PRINT A; B; C; D; E; F
340 COLOR 10
350 LOOP UNTIL INKEY$ = CHR$(27)
360 COLOR 6
370 END

