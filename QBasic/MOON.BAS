5 CLS
PRINT "                               Your Moon Weight"
PRINT ""
PRINT "Press 1 [ENTER] to figure out your moon weight."
PRINT "Press 2 [ENTER] to figure out your moon weight and your backpack weight."
INPUT "Your choice"; A$
CLS
PRINT "Due to strict standards, NASA's spacecraft load cannot exceed 100 lbs."
PRINT ""
INPUT "What is your weight on earth"; weight
PRINT "Thank you."
PRINT ""
LET final = weight / 6
PRINT "Your weight on the moon is "; final; " pounds."
PRINT ""
IF final <= 100 THEN GOTO 45
IF final > 100 THEN GOTO 15
15 BEEP
26 PRINT "Your weight exceeded 100 moon pounds! Please try again."
27 INPUT "Press enter"; E$
35 GOTO 5
45 PRINT "Good job, space cadet!!"
IF A$ = "1" THEN END
PRINT ""
INPUT "What is your backpack weight on earth"; backpack.weight
PRINT "Thank you."
PRINT ""
LET moon.backpack.weight = backpack.weight / 6
LET real.final = final + moon.backpack.weight
PRINT "Your weight on the moon is now "; real.final; " pounds."
PRINT ""
IF real.final <= 100 THEN GOTO 40
IF real.final > 100 THEN GOTO 10
10 BEEP
20 PRINT "Your weight exceeded 100 moon pounds! Please try again."
25 INPUT "Press enter"; E$
30 GOTO 5
40 PRINT "Good job, space cadet!!"
END

