10 CLS
20 INPUT "Please enter a password. ", B$
30 LET A$ = UCASE$(B$)
40 PRINT ""
50 PRINT "Type "; A$; " and press Enter to resume using your computer."
60 PRINT ""
70 INPUT "Press Enter to 'lock up' your computer. ", B$
80 CLS
90 COLOR 23: LOCATE 1, 1: PRINT "_"
100 LET C$ = INKEY$
110 IF C$ = CHR$(13) THEN GOTO 140
120 LET PRE$ = PRE$ + C$
130 GOTO 100
140 LET OUT$ = UCASE$(PRE$)
150 IF OUT$ = A$ THEN COLOR 7: CLS : END
160 IF PRE$ = "??" THEN LET PRE$ = "": COLOR 7: LOCATE 2, 1: PRINT A$: TIME = TIMER: DO: LOOP UNTIL TIMER = TIME + 5: GOTO 80
170 IF OUT$ <> A$ THEN LET PRE$ = "": GOTO 100


