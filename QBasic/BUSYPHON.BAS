10 CLS
20 PRINT "What phone number are you calling from?"
30 PRINT "Type only numbers. (Example: 5551212)"
40 INPUT " ", A$
50 B$ = "ECHO ATDT" + A$ + " > COM1"             'Change COM1 to COM2 if you
60 C$ = "ECHO ATH0 > COM1"                       'have an internal modem card.
70 CLS
80 PRINT "Dialing "; A$; "."
90 PRINT "Press SPACEBAR to abort."
100 SHELL B$
110 TIME = TIMER
120 DO
130 D$ = INKEY$: IF D$ = CHR$(32) THEN GOTO 240
140 LOOP UNTIL TIMER >= TIME + 20
150 CLS
160 PRINT "Hanging up the phone."
170 PRINT "Press SPACEBAR to abort."
180 SHELL C$
190 TIME = TIMER
200 DO
210 D$ = INKEY$: IF D$ = CHR$(32) THEN GOTO 240
220 LOOP UNTIL TIMER >= TIME + 5
230 GOTO 70
240 CLS
250 SHELL C$

