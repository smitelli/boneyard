10 CLS
14 FOR X% = 1 TO 120
15 CLS
16 PRINT "Calculating pass:"; X%
20 A = INT(RND * 46) + 1
30 B = INT(RND * 46) + 1
40 C = INT(RND * 46) + 1
50 D = INT(RND * 46) + 1
60 E = INT(RND * 46) + 1
70 F = INT(RND * 46) + 1
80 IF A = B OR A = C OR A = D OR A = E OR A = F THEN GOTO 20
90 IF B = C OR B = D OR B = E OR B = F THEN GOTO 20
100 IF C = D OR C = E OR C = F THEN GOTO 20
110 IF D = E OR D = F THEN GOTO 20
120 IF E = F THEN GOTO 20
140 LPRINT "Pass"; X%; "of 120. Pick Six Numbers: "; A; B; C; D; E; F
150 NEXT X%
160 LPRINT "Copyright 1997 Scott Enterprises INC. All Rights Reserved."
165 CLS
170 PRINT "Done."
180 END

