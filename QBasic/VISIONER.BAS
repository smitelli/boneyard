SCREEN 12
DO
CLS
PRINT "                            Useful software. . . . .   AT A GREAT PRICE!"
PLAY "MB MS O2 C D E F G A B >C D E F G A B >C<<"
LET B = 0
FOR X% = 40 TO 550
LET A = X%
LET B = B + .75
CIRCLE (A, B), 80, 15
PAINT (A, B), 0, 15
NEXT X%
FOR Z% = 0 TO 200
LET A = A - 1
LET B = B - 2
CIRCLE (A, B), 80, 15
PAINT (A, B), 0, 15
NEXT Z%
PLAY "MB MS CFGEDCFED >ABABABAB< ML"
LOCATE 20, 30
PRINT "VISIONEER   SOFTWARE"
LOCATE 21, 30
PRINT "--------------------"
FOR M% = 1 TO 10000
NEXT M%
LOOP WHILE INKEY$ = ""

