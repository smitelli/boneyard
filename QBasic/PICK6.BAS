1 CLS
RANDOMIZE TIMER
a% = INT(RND * 45) + 1
b% = INT(RND * 45) + 1
c% = INT(RND * 45) + 1
d% = INT(RND * 45) + 1
e% = INT(RND * 45) + 1
f% = INT(RND * 45) + 1
PRINT "Your Pick Six numbers are: "; a%; b%; c%; d%; e%; f%; " If you don't"
PRINT "like them, press ";
COLOR 10
PRINT "Y ";
COLOR 7
PRINT "and then ";
COLOR 20
PRINT "[ды Enter]";
COLOR 7
PRINT ". ";
PRINT "If they're ok, just press ";
COLOR 20
PRINT "[ды Enter]";
COLOR 7
PRINT "."
INPUT a$
IF a$ = "y" THEN GOTO 1
IF a$ = "Y" THEN GOTO 1
END

