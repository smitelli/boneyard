Opening:
LET A$ = ""
LET FINAL$ = ""
CLS
PRINT "1 is Encoder, 2 is Decoder, 3 exits."
DO
LET SELECTION$ = INKEY$
IF SELECTION$ = "1" THEN GOTO Encode
IF SELECTION$ = "2" THEN GOTO Decode
IF SELECTION$ = "3" THEN END
LOOP

Encode:
RANDOMIZE TIMER
CLS
PRINT "Enter the message to be encoded. This program is case sensitive."
PRINT "No commas or quotation marks, please!"
PRINT ""
INPUT "", A$
CLS
PRINT "Please Wait. . ."
LENGTH = LEN(A$)
IF LENGTH = 0 THEN PRINT "ERROR 04: There is nothing to encode!": END
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
DO: LET DUMMY$ = INKEY$: LOOP UNTIL DUMMY$ <> "": GOTO Opening

Decode:
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
IF LENGTH >= 205 THEN PRINT "ERROR 02 : Message greater than 200 charachters.": END
IF MID$(C$, 1, 4) <> "hmaB" THEN PRINT "ERROR 03 : Encoding header invalid or corrupt.": END
IF C$ = "hmaB" THEN PRINT "ERROR 05: There is nothing to decode!": END
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
DO: LET DUMMY$ = INKEY$: LOOP UNTIL DUMMY$ <> "": GOTO Opening

