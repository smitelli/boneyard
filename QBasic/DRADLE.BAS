10 CLS
20 PRINT "                              --"
30 PRINT "                              ||"
40 PRINT "                          ----------"
50 PRINT "                          ~~~~~~~~~~"
60 PRINT "                          |        |"
70 PRINT "                          ~~~~~~~~~~"
80 PRINT "                          \        /"
90 PRINT "                           \      /"
100 PRINT "                            \    /"
110 PRINT "                             ----"
120 PLAY "O3 T250 G E G E G E.. E G G F E D... P2 D F D F D F D.. D G G F D C...."
130 RANDOMIZE TIMER
140 LET A = INT(RND * 4) + 1
150 IF A = 1 THEN GOTO 190
160 IF A = 2 THEN GOTO 330
170 IF A = 3 THEN GOTO 10
180 IF A = 4 THEN GOTO 10
190 CLS
200 PRINT "                              --"
210 PRINT "                              ||"
220 PRINT "                          ----------"
230 PRINT "                          | ------ |"
240 PRINT "                          | |    | |"
250 PRINT "                          | |    | |"
260 PRINT "                          \        /"
270 PRINT "                           \      /"
280 PRINT "                            \    /"
290 PRINT "                             ----"
300 INPUT "Hit a key or press X to exit"; B$
310 IF B$ = "x" THEN END
320 GOTO 10
330 CLS
340 PRINT "                              --"
350 PRINT "                              ||"
360 PRINT "                          ----------"
370 PRINT "                          |      . |"
380 PRINT "                          | | |  | |"
390 PRINT "                          | |-   | |"
400 PRINT "                          \ ------ /"
410 PRINT "                           \      /"
420 PRINT "                            \    /"
430 PRINT "                             ----"
440 INPUT "Hit a key or press X to exit"; B$
450 IF B$ = "x" THEN END
460 GOTO 10

