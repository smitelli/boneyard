RANDOMIZE TIMER
CLS
PRINT "Enter the message to be encoded. This program is case sensitive."
PRINT "No commas or quotation marks, please!"
PRINT ""
INPUT "", A$
CLS
PRINT "Please Wait. . ."
LENGTH = LEN(A$)
IF LENGTH >= 200 THEN PRINT "ERROR 02 : Message greater than 200 charachters.": END
RANDM = INT(RND * 50) + 1
RANDM2 = INT(RND * 9) + 1
FOR X = LENGTH TO 1 STEP -1
REPEAT = 0
PRE.CODE = ASC(MID$(A$, X, 1))
PRE.CODE = PRE.CODE + RANDM
EncodeLoop:
IF REPEAT >= 100 THEN PRINT "": PRINT "ERROR 01 : Random adjustment overflow.": END
IF PRE.CODE = 34 THEN LET PRE.CODE = 34 + RANDM
IF PRE.CODE = 44 THEN LET PRE.CODE = 34 + RANDM
IF PRE.CODE >= 127 THEN LET PRE.CODE = (PRE.CODE - 126) + 31: REPEAT = REPEAT + 1: GOTO EncodeLoop
FINALA$ = FINALA$ + CHR$(PRE.CODE)
FINAL$ = "hmaB" + FINALA$
NEXT X
RANDM3 = RANDM * RANDM2
A.VARIABLE = RANDM2 * 4
B.VARIABLE = RANDM3 + 128
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
PRINT "Here are two important numbers. Copy them EXACTLY."
PRINT "A :"; A.VARIABLE
PRINT "B :"; B.VARIABLE
PRINT ""
PRINT "Here is your encoded message. Remember that the decoder is case sensitive."
PRINT "Thanks for using EN-CODER!"
PRINT ""
PRINT FINAL$

