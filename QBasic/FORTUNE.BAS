CLS
PRINT "                               Yes or No. . . ."
PRINT "Enter a question with a yes or no answer."
INPUT "Question"; A$
PRINT ""
PRINT ""
RANDOMIZE TIMER
COLOR 31
b% = INT(RND * 5)
IF b% = 0 THEN PRINT "Does the General jump Hazzard Lake?????????"
IF b% = 1 THEN PRINT "Can Boss Hogg spare a dime?????????????????"
IF b% = 2 THEN PRINT "Does Roscoe land in Hazzard Lake???????????"
IF b% = 3 THEN PRINT "Does Cooter ever miss a customer???????????"
IF b% = 4 THEN PRINT "Does Enos ever crash into Roscoe???????????"
IF b% = 5 THEN PRINT "Do Bo and Luke ever get caught by Boss?????"
COLOR 7
PRINT ""
PRINT ""
PRINT "Thank you for using Fortune Teller. You will be charged ";
COLOR 20
PRINT "100 ";
COLOR 7
PRINT "dollars"
PRINT "for the first nanosecond, ";
COLOR 20
PRINT "50 ";
COLOR 7
PRINT "dollars for each additional nanosecond."
END

