10 CLS
15 RANDOMIZE TIMER
20 LET A = INT(RND * 10) + 1
25 LET C = 0
30 PRINT "I am thinking of a number between 1 and 10. You have 8 chances to"
40 PRINT "guess the number."
50 INPUT "What is the number"; B
55 LET C = C + 1
60 IF A = B THEN GOTO 100
70 IF C >= 8 THEN GOTO 120
80 LET D = 8 - C
90 PRINT "Sorry, that's not right. But you still have "; D; " tries left."
95 GOTO 50
100 PRINT "WOW!! You got the answer in "; C;
101 IF C = 1 THEN GOTO 104
102 PRINT "tries! ";
103 GOTO 105
104 PRINT "try! ";
105 PRINT "Great job!!"
110 END
120 PRINT "Sorry. You've used up all your tries. The number was "; A; "."
130 PRINT "Better luck next time!!"
140 END



