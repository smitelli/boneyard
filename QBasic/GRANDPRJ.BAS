DECLARE SUB BossButton ()
DECLARE SUB StartUp ()
DECLARE SUB PrettyPicture ()
DECLARE SUB Back1 ()
DECLARE SUB Back2 ()
DECLARE SUB LoopMe ()
DECLARE SUB MoveTitle ()
DECLARE SUB Back3 ()

StartUp:
CLS
SCREEN 12
FOR X = 1 TO 480 STEP 4
FOR Y = 1 TO 640 STEP 4
Z = INT(RND * 15)
PSET (Y, X), Z
NEXT Y
NEXT X

MoveTitle:
DO
N = INT(RND * 41) + 1
LOCATE 1, N: PRINT "Moire Picture. Ain't it purty???????????"
FOR M = 1 TO 10000
NEXT M

PrettyPicture:
SCREEN 12
CLS
A = INT(RND * 640) + 1
B = INT(RND * 480) + 1
O = INT(RND * 15) + 1
C = 1
FOR D = 1 TO 640 STEP 7
LINE (A, B)-(D, C), O
NEXT D
E = 640
FOR F = 1 TO 480 STEP 7
LINE (A, B)-(E, F), O
NEXT F
G = 480
H = 640

Back1:
LINE (A, B)-(H, G), O
H = H - 7
IF H < 7 THEN GOTO Back2:
GOTO Back1:

Back2:
I = 1
J = 480

Back3:
LINE (A, B)-(I, J), O
LET J = J - 7
IF J < 7 THEN GOTO LoopMe:
GOTO Back3:

LoopMe:
LOOP UNTIL INKEY$ = CHR$(27)

BossButton:
CLS
PRINT "Type EXIT at the DOS prompt to return to this program."
FOR X = 1 TO 10000
NEXT X
CLS
SCREEN 0
PRINT "C:\>ver"
SHELL "COMMAND"
CLS
GOTO PrettyPicture:

