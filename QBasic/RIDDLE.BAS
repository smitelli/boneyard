10 CLS
20 PRINT "What do computers eat?"
30 PRINT "M-MicroChips, B-Bytes, D-Disks"
40 PRINT "Your choice?"
50 INPUT A$
60 IF A$ = "m" THEN GOTO 90
70 PRINT "Wrong! Try again."
80 GOTO 20
90 PRINT "Good job!!!"
100 END

