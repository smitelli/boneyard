COLOR 14, 1
CLS
FOR X = 1 TO 80
LOCATE 20, X: PRINT "Ä"
NEXT X
LOCATE 21, 1: PRINT " Installer status:   "
LOCATE 1, 1: PRINT "                               Install -O- Matic"
LOCATE 5, 1: PRINT "Please wait while            is installed."
COLOR 12, 1: LOCATE 5, 19: PRINT "PIANO-RAMA"
COLOR 7, 1
FOR X = 1 TO 50
Y = X + 15
LOCATE 23, Y: PRINT "±"
NEXT X

COLOR 10, 1: LOCATE 21, 20: PRINT "Preparing To Install. . ."
COLOR 14, 1
FOR X = 2 TO 100 STEP 2
LOCATE 23, 9
PRINT X; "%"
Y = X / 2: Z = Y + 15: LOCATE 23, Z: PRINT "Û"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .1
NEXT X

COLOR 7, 1
FOR X = 1 TO 50
Y = X + 15
LOCATE 23, Y: PRINT "±"
NEXT X
COLOR 14, 1: LOCATE 23, 10: PRINT "  0 %"
COLOR 15, 1: LOCATE 21, 20: PRINT "Ready.                   "

TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + 1

COLOR 10, 1: LOCATE 21, 20: PRINT "Creating Directory. . .  "
COLOR 14, 1
LOCATE 23, 9: PRINT "      "
FOR X = 2 TO 100 STEP 2
LOCATE 23, 9
PRINT X; "%"
Y = X / 2: Z = Y + 15: LOCATE 23, Z: PRINT "Û"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .02
NEXT X

COLOR 7, 1
FOR X = 1 TO 50
Y = X + 15
LOCATE 23, Y: PRINT "±"
NEXT X
COLOR 14, 1: LOCATE 23, 10: PRINT "  0 %"
COLOR 15, 1: LOCATE 21, 20: PRINT "Ready.                   "

TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + 1

COLOR 10, 1: LOCATE 21, 20: PRINT "Copying Files. . .       "
COLOR 14, 1
LOCATE 23, 9: PRINT "      "
FOR X = 2 TO 100 STEP 2
LOCATE 23, 9
PRINT X; "%"
Y = X / 2: Z = Y + 15: LOCATE 23, Z: PRINT "Û"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .2
NEXT X

COLOR 7, 1
FOR X = 1 TO 50
Y = X + 15
LOCATE 23, Y: PRINT "±"
NEXT X
COLOR 14, 1: LOCATE 23, 10: PRINT "  0 %"
COLOR 15, 1: LOCATE 21, 20: PRINT "Ready.                   "

TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + 1

COLOR 10, 1: LOCATE 21, 20: PRINT "Finishing Installation. ."
COLOR 14, 1
LOCATE 23, 9: PRINT "      "
FOR X = 2 TO 100 STEP 2
LOCATE 23, 9
PRINT X; "%"
Y = X / 2: Z = Y + 15: LOCATE 23, Z: PRINT "Û"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .2
NEXT X

COLOR 7, 1
FOR X = 1 TO 50
Y = X + 15
LOCATE 23, Y: PRINT "±"
NEXT X
COLOR 14, 1: LOCATE 23, 10: PRINT "  0 %"
COLOR 15, 1: LOCATE 21, 20: PRINT "Ready.                   "

TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + 1

COLOR 15, 0
CLS
PRINT "                  Now completing the installation. . . ."

TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + 2.5

CLS
SHELL "C:"
SHELL "CD\"
SHELL "MD PIANO"
SHELL "CD\PIANO"
SHELL "A:"
SHELL "COPY DATAFILE C:\PIANO"
SHELL "C:"
SHELL "CD\PIANO"
SHELL "RENAME DATAFILE INSTALL.EXE"
SHELL "C:\PIANO\INSTALL.EXE"
SHELL "CD\PIANO"
SHELL "DEL INSTALL.EXE"
SHELL "CD\"
SHELL "A:"
CLS
COLOR 14: PRINT "                              Installation Complete."
COLOR 7:
PRINT ""

