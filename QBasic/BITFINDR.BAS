10 CLS
20 COLOR 11: PRINT "                          Welcome to BitFinder 1.0!"
30 COLOR 15: LOCATE 5, 1: PRINT "BitFinder is a very useful program to find out the decimal values of binary"
40 PRINT "numbers. For example: if you have color that is 4 bits, this program will tell"
50 PRINT "you that 4 bits is equal to 16 different colors. You may not quite understand"
60 PRINT "how the math is done, but trust me... It's easier to use this program than work"
70 PRINT "it out with a pencil and paper."
80 PRINT ""
85 LOCATE 12, 1: PRINT "Hit Enter with no numbers to quit"
90 LOCATE 11, 1: COLOR 30: PRINT "                                   ллл"; : COLOR 14: PRINT " bits."
100 COLOR 14: LOCATE 11, 1: INPUT "How many bits do you wish to find? ", A
110 IF A = 0 THEN GOTO 370
120 IF A >= 128 THEN GOTO 340
125 B = 1
130 FOR X = 1 TO A
140 B = B + B
150 NEXT X
160 CLS
170 COLOR 12: PRINT " ллл      л     л        ллл    л   л   л         л     ллллл   ллллл   л   л л"
180 PRINT "л   л    л л    л       л   л   л   л   л        л л      л       л     л   л л"
190 PRINT "л       л   л   л       л       л   л   л       л   л     л       л     лл  л л"
200 PRINT "л       ллллл   л       л       л   л   л       ллллл     л       л     л л л"
210 PRINT "л       л   л   л       л       л   л   л       л   л     л       л     л  лл"
220 PRINT "л   л   л   л   л       л   л   л   л   л       л   л     л       л     л   л"
230 PRINT " ллл    л   л   ллллл    ллл     ллл    ллллл   л   л     л     ллллл   л   л"
240 COLOR 10: PRINT "PLEASE WAIT."
250 FOR X = 5 TO 1 STEP -1
260 LOCATE 9, 1: PRINT X
270 TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + 1
280 NEXT X
290 LOCATE 9, 1: PRINT "Finished Condensing."
300 LOCATE 8, 1: PRINT "             "
310 LOCATE 15, 1: COLOR 14: PRINT A; "bits is equal to"; B; "."
320 LOCATE 20, 1: COLOR 10: INPUT "Hit Enter. ", A$
330 GOTO 10
340 CLS
350 PRINT "You typed in too big a number. Numbers 1 - 127 are valid."
360 GOTO 85
370 CLS
380 COLOR 15: PRINT "Thank you for using BitFinder. Another fine product from Scott Smitelli's"
390 PRINT "Shack O' Stuff Software."
400 PRINT ""
410 END

