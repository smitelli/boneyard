SCREEN 12
CLS
PRINT "                        --The  New  VGA  Colorometer--"
FOR J% = 1 TO 4
LINE (J% * 125, 125)-STEP(75, 150), J%, BF
NEXT J%
A = 63
B = 63
C = 63
LOCATE 7, 20: PRINT "Red"
LOCATE 7, 34: PRINT "Green"
LOCATE 7, 51: PRINT "Blue"
LOCATE 7, 64: PRINT "Composite"
LOCATE 19, 1: PRINT "Values"
PALETTE 1, 63
PALETTE 2, 16128
PALETTE 3, 4128768
PALETTE 4, 4144959
LOCATE 19, 20: PRINT A
LOCATE 19, 35: PRINT B
LOCATE 19, 52: PRINT C
LOCATE 19, 64: PRINT (A + (B * 256) + (C * 65536))
LOCATE 25, 1: INPUT " P R E S S   E N T E R   T O   B E G I N .   .   .   ", DUMMY$
SCREEN 0
CLS
PRINT "This program mixes the monitor's primary colors (Red, Green and Blue) to create"
PRINT "a composite color. Each of the three colors have 64 different intensities"
PRINT "ranging from 0 (off) to 63 (full intensity). There are 262,144 different"
PRINT "composite colors. The composite numbers range from 0 to 4,144,959. The"
PRINT "reason for all of the extra numbers is in the mathematical formula:"
PRINT ""
PRINT "        Composite = Red + (Green X 256) + (Blue X 65,536)"
PRINT ""
PRINT "While you are inside the program, there are really only four keys that"
PRINT "you will have to use. Num Lock must be on for this program to function"
PRINT "properly. Here are the keys to use:"
PRINT ""
PRINT "Spacebar - Use this key to change the selected color."
PRINT "Up arrow - Use this key to make the selected color more intense."
PRINT "Dn arrow - Use this key to make the selected color less intense."
PRINT "Escape   - Use this key to quit the program."
PRINT ""
PRINT "    NOTE:  The Up and Down arrows refer to 8 and 2 (respectivley) on the"
PRINT "           numeric keypad."
COLOR 15: INPUT "P r e s s   E N T E R   t o   c o n t i n u e .   .   .", A$: COLOR 7
SCREEN 12
CLS
FOR J% = 1 TO 4
LINE (J% * 125, 125)-STEP(75, 150), J%, BF
NEXT J%
A = 0
B = 0
C = 0
LOCATE 7, 20: PRINT "Red"
LOCATE 7, 34: PRINT "Green"
LOCATE 7, 51: PRINT "Blue"
LOCATE 7, 64: PRINT "Composite"
LOCATE 19, 1: PRINT "Values"
PALETTE 1, A
PALETTE 2, B
PALETTE 3, C
PALETTE 4, (A + (B * 256) + (C * 65536))
LOCATE 19, 20: PRINT A
LOCATE 19, 35: PRINT B
LOCATE 19, 52: PRINT C
LOCATE 19, 64: PRINT (A + (B * 256) + (C * 65536))
Red:
COLOR 15: LOCATE 19, 52: PRINT C
COLOR 12: LOCATE 19, 20: PRINT A
A$ = INKEY$
IF A$ = "8" THEN LET A = A + 1
IF A >= 64 THEN LET A = 0
IF A$ = "2" THEN LET A = A - 1
IF A < 0 THEN LET A = 63
IF A$ = CHR$(32) THEN GOTO Green
IF A$ = CHR$(27) THEN SCREEN 0: COLOR 7: CLS : END
LOCATE 19, 20: PRINT A
PALETTE 1, A
PALETTE 4, (A + (B * 256) + (C * 65536))
COLOR 15: LOCATE 19, 64: PRINT (A + (B * 256) + (C * 65536)): COLOR 12
GOTO Red
Green:
COLOR 15: LOCATE 19, 20: PRINT A
COLOR 12: LOCATE 19, 35: PRINT B
B$ = INKEY$
IF B$ = "8" THEN LET B = B + 1
IF B >= 64 THEN LET B = 0
IF B$ = "2" THEN LET B = B - 1
IF B < 0 THEN LET B = 63
IF B$ = CHR$(32) THEN GOTO Blue
IF B$ = CHR$(27) THEN SCREEN 0: COLOR 7: CLS : END
LOCATE 19, 35: PRINT B
PALETTE 2, (B * 256)
PALETTE 4, (A + (B * 256) + (C * 65536))
COLOR 15: LOCATE 19, 64: PRINT (A + (B * 256) + (C * 65536)): COLOR 12
GOTO Green
Blue:
COLOR 15: LOCATE 19, 35: PRINT B
COLOR 12: LOCATE 19, 52: PRINT C
C$ = INKEY$
IF C$ = "8" THEN LET C = C + 1
IF C >= 64 THEN LET C = 0
IF C$ = "2" THEN LET C = C - 1
IF C < 0 THEN LET C = 63
IF C$ = CHR$(32) THEN GOTO Red
IF C$ = CHR$(27) THEN SCREEN 0: COLOR 7: CLS : END
LOCATE 19, 52: PRINT C
PALETTE 3, (C * 65536)
PALETTE 4, (A + (B * 256) + (C * 65536))
COLOR 15: LOCATE 19, 64: PRINT (A + (B * 256) + (C * 65536)): COLOR 12
GOTO Blue

