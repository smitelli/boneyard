10 CLS
20 PRINT "I wanna go to the Bonkers, I wanna go to the Bonkers, I wanna go to"
30 PRINT "the Bonkers, ";
35 RANDOMIZE TIMER
40 a% = INT(RND * 3) + 1
50 IF a% = 1 THEN PRINT "to sleep under the bed."
60 IF a% = 2 THEN PRINT "to sleep in the bathtub."
70 IF a% = 3 THEN PRINT "to sleep in the T. V."
80 END

