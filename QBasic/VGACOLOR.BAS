SCREEN 12
PRINT "                                  VGA Colors"
FOR J% = 1 TO 4
   LINE (J% * 125, 125)-STEP(75, 150), J%, BF
NEXT J%

LOCATE 20, 19: PRINT "Blue"
LOCATE 20, 34: PRINT "Green"
LOCATE 20, 51: PRINT "Red"
LOCATE 20, 64: PRINT "Composite"

Increment% = 1
FOR BlueIndex% = 7 TO 63 STEP Increment%
   LOCATE 22, 19
   PRINT BlueIndex%
   BlueVGA& = 65536 * BlueIndex%
   FOR GreenIndex% = 7 TO 63 STEP Increment%
      LOCATE 22, 34
      PRINT GreenIndex%
      GreenVGA& = 256 * GreenIndex%
      FOR RedIndex% = 1 TO 63 STEP Increment%
         LOCATE 22, 50
         PRINT RedIndex%
         RedVGA& = RedIndex%

         ColorVGA& = BlueVGA& + GreenVGA& + RedVGA&
         LOCATE 22, 64
         PRINT ColorVGA&

         PALETTE 1, BlueVGA&
         PALETTE 2, GreenVGA&
         PALETTE 3, RedVGA&
         PALETTE 4, ColorVGA&

         NOW! = TIMER
         DO
         LOOP UNTIL TIMER > NOW! + .00005
      NEXT RedIndex%
   NEXT GreenIndex%
NEXT BlueIndex%

