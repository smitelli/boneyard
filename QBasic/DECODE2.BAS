CLS
PRINT "Enter the two key numbers."
INPUT "A : ", A
INPUT "B : ", B
PRINT ""
PRINT "Enter the coded message EXACTLY as it appears. Remember, it's case sensitive."
PRINT "Don't press ENTER until you reach the end."
INPUT "", C$
CLS
PRINT "Please wait. . ."
LET KEY.NUM = (B - 128) / (A / 4)
LENGTH = LEN(C$)
IF LENGTH >= 205 THEN PRINT "ERROR 02 : Message greater than 205 charachters.": END
IF MID$(C$, 1, 4) <> "hmaB" THEN PRINT "ERROR 03 : First four charachters invalid.": END
FOR X = LENGTH TO 5 STEP -1
REPEAT = 0
PRE.CODE = ASC(MID$(C$, X, 1))
PRE.CODE = PRE.CODE - KEY.NUM
DecodeLoop:
IF PRE.CODE = 34 THEN LET PRE.CODE = 34 - KEY.NUM
IF PRE.CODE = 44 THEN LET PRE.CODE = 44 - KEY.NUM
IF PRE.CODE <= 31 THEN LET PRE.CODE = 127 - (32 - PRE.CODE): REPEAT = REPEAT + 1: GOTO DecodeLoop
FINAL$ = FINAL$ + CHR$(PRE.CODE)
NEXT X
FOR X = 1 TO 25
LOCATE 3, 3: PRINT "|"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .1
LOCATE 3, 3: PRINT "/"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .1
LOCATE 3, 3: PRINT "-"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .1
LOCATE 3, 3: PRINT "\"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .1
NEXT X
CLS
PRINT "This is the decoded message. Thanks for using DE-CODER!"
PRINT ""
PRINT FINAL$

