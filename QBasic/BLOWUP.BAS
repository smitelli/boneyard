CLS
COLOR 7
FOR Index% = 50 TO 1 STEP -1
   LOCATE 1, 1: PRINT Index%; "Seconds to detonation!"
   SOUND 500, 1
   SOUND 32000, Index% * .1
NEXT Index%
SOUND 500, 100
LOCATE 12, 12: PRINT "Bye Bye, Archie!!!"
COLOR 0

