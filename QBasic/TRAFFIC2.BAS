10 CLS
20 L1.ID$ = " Light A "        'This is the name of Light 1. Refered to as L1
30 L2.ID$ = "  Light B "       'This is the name of Light 2. Refered to as L2
40 L1.GREEN = 5                'Time (in seconds) that L1 is GREEN
50 L1.AMBER = 1                'Time (in seconds) that L1 is AMBER
60 L1.RED.TO.L2.GREEN = 1      'Time (in seconds) between L1 RED to L2 GREEN
70 L2.GREEN = 5                'Time (in seconds) that L2 is GREEN
80 L2.AMBER = 1                'Time (in seconds) that L2 is AMBER
90 L2.RED.TO.L1.GREEN = 1      'Time (in seconds) between L2 RED to L1 GREEN
130 COLOR 14: PRINT "ÚÄÄÄÄÄÄÄÄ¿      ÚÄÄÄÄÄÄÄÄ¿"
140 PRINT "³        ³      ³        ³"
150 PRINT "³        ³      ³        ³"
160 PRINT "³        ³      ³        ³"
170 PRINT "³        ³      ³        ³"
180 PRINT "³        ³      ³        ³"
190 PRINT "³        ³      ³        ³"
200 PRINT "³        ³      ³        ³"
210 PRINT "ÀÄÄÄÄÄÄÄÄÙ      ÀÄÄÄÄÄÄÄÄÙ"
220 COLOR 15: LOCATE 11, 1: PRINT L1.ID$: LOCATE 11, 17: PRINT L2.ID$
230 LOCATE 3, 5: COLOR 12: PRINT "°°"
240 LOCATE 5, 5: COLOR 14: PRINT "°°"
250 LOCATE 7, 5: COLOR 10: PRINT "°°"
260 LOCATE 3, 21: COLOR 12: PRINT "°°"
270 LOCATE 5, 21: COLOR 14: PRINT "°°"
280 LOCATE 7, 21: COLOR 10: PRINT "°°"
290 LOCATE 3, 21: COLOR 12: PRINT "ÛÛ": LOCATE 10, 17: PRINT "    Red  "
300 LOCATE 7, 5: COLOR 10: PRINT "ÛÛ": SOUND 125, 2: LOCATE 10, 1: PRINT "  Green  "
320 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + L1.GREEN
330 LOCATE 7, 5: COLOR 10: PRINT "°°"
340 LOCATE 5, 5: COLOR 14: PRINT "ÛÛ": SOUND 125, 2: LOCATE 10, 1: PRINT "  Yellow  "
360 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + L1.AMBER
370 LOCATE 5, 5: COLOR 14: PRINT "°°"
380 LOCATE 3, 5: COLOR 12: PRINT "ÛÛ": SOUND 125, 2: LOCATE 10, 1: PRINT "    Red  "
400 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + L1.RED.TO.L2.GREEN
410 LOCATE 3, 21: COLOR 12: PRINT "°°"
420 LOCATE 7, 21: COLOR 10: PRINT "ÛÛ": SOUND 125, 2: LOCATE 10, 17: PRINT "  Green  "
440 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + L2.GREEN
450 LOCATE 7, 21: COLOR 10: PRINT "°°"
460 LOCATE 5, 21: COLOR 14: PRINT "ÛÛ": SOUND 125, 2: LOCATE 10, 17: PRINT "  Yellow   "
480 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + L2.AMBER
490 LOCATE 5, 21: COLOR 14: PRINT "°°"
500 LOCATE 3, 21: COLOR 12: PRINT "ÛÛ": SOUND 125, 2: LOCATE 10, 17: PRINT "    Red   "
520 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + L2.RED.TO.L1.GREEN
530 GOTO 230

