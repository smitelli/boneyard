BEGIN:
CLS
COLOR 14: PRINT "Here it is!!! Our very first"
COLOR 12: PRINT "л   л  ллллл  л   л  лллл   л"
PRINT "лл лл    л    лл  л  л   л  л"
PRINT "л л л    л    л л л  л   л  л"
PRINT "л   л    л    л  лл  л   л  л"
PRINT "л   л  ллллл  л   л  лллл   л"
PRINT "                            л"
PRINT " ллл    ллл   л   л  ллллл  л"
PRINT "л   л  л   л  лл лл  л      л"
PRINT "л      ллллл  л л л  ллл"
PRINT "л  пл  л   л  л   л  л"
PRINT " ллл   л   л  л   л  ллллл  л"
COLOR 15
PRINT ""
PRINT "This is our first mind game. We decided to use lateral thinking puzzles,"
PRINT "or word problems involving no math. If you get the answer right, there will"
PRINT "be a secret code on your screen. Write this code on the prize request form"
PRINT "in Mrs. Smitelli's room and she will give you a reward. (It's not like we're"
PRINT "going to give you one dinky lollipop, these are"; : COLOR 12: PRINT " real "; : COLOR 15: PRINT "prizes.)"
PRINT ""
COLOR 10: PRINT "Press any key to start!"
DO: LOOP UNTIL INKEY$ <> ""
CLS
COLOR 15: PRINT "Before we get started, tell me a little about yourself."
INPUT "What are your initials? ", INIT.L$
INIT.U$ = UCASE$(INIT.L$)
PRINT "So tell me, "; INIT.U$; : INPUT ", what's the square root of infinity? ", NULL$
COLOR 14: PRINT "(That one's not important . . .)"
COLOR 15: PRINT ""
COLOR 10: PRINT "Press any key to play!"
DO: LOOP UNTIL INKEY$ <> ""
CLS
COLOR 14: PRINT "Pick a puzzle."
COLOR 15: PRINT ""
PRINT "A. What a Jump!"
PRINT "B. Bad Impression"
PRINT "C. A Riddle"
PRINT "D. The Flicker"
PRINT "E. Fireworks Display"
PRINT "Q. Quit"
COLOR 10: PRINT ""
PRINT "Your choice. (A - E)"
DO
LET MENU.L$ = INKEY$
LET MENU.U$ = UCASE$(MENU.L$)
IF MENU.U$ = "A" THEN GOTO JUMP
IF MENU.U$ = "B" THEN GOTO IMPRESS
IF MENU.U$ = "C" THEN GOTO RIDDLE
IF MENU.U$ = "D" THEN GOTO FLICKER
IF MENU.U$ = "E" THEN GOTO FIRE
IF MENU.U$ = "Q" THEN GOTO ENDING
LOOP


JUMP:
CLS
COLOR 15
PRINT "A man jumped 150 feet entirely on his own power. He landed safely. How did"
PRINT "he do it?"
PRINT ""
COLOR 10: PRINT "A. He was part bird."
PRINT "B. He was hang-gliding."
PRINT "C. He was ski jumping."
PRINT "D. He was Superman."
PRINT "E. None of the above."
PRINT ""
PRINT "Your choice. (A - E)"
DO
LET JUMP.L$ = INKEY$
LET JUMP.U$ = UCASE$(JUMP.L$)
IF JUMP.U$ = "A" THEN GOTO JUMPNO
IF JUMP.U$ = "B" THEN GOTO JUMPNO
IF JUMP.U$ = "C" THEN GOTO JUMPYES
IF JUMP.U$ = "D" THEN GOTO JUMPNO
IF JUMP.U$ = "E" THEN GOTO JUMPNO
LOOP
JUMPNO:
COLOR 12: LOCATE 10, 1: PRINT "Sorry, that's not correct. Try again? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO JUMP
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP
JUMPYES:
COLOR 14: LOCATE 12, 1: PRINT "Yes! The man was ski jumping. Everyone knows that hang-gliding is not"
PRINT "considered jumping."
PRINT ""
PRINT "Here is your code."
PRINT "Q_ARC: "; INIT.U$
PRINT "_DATA: 1C"
PRINT "TIME: "; TIMER
PRINT ""
COLOR 10: PRINT "Quit? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO ENDING
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP


IMPRESS:
CLS
COLOR 15
PRINT "A man entered a city art gallery and did terrible damage to some very valuable"
PRINT "Impressionist paintings. Later that day, instead of being arrested, he was"
PRINT "thanked by the curator of the art gallery for his actions. How come?"
PRINT ""
COLOR 10: PRINT "A. He was the artist finishing his paintings."
PRINT "B. He was just plain insane."
PRINT "C. The museum curator was his brother."
PRINT "D. He was fighting a fire."
PRINT "E. None of the above."
PRINT ""
PRINT "Your choice. (A - E)"
DO
LET IMPRESS.L$ = INKEY$
LET IMPRESS.U$ = UCASE$(IMPRESS.L$)
IF IMPRESS.U$ = "A" THEN GOTO IMPRESSNO
IF IMPRESS.U$ = "B" THEN GOTO IMPRESSNO
IF IMPRESS.U$ = "C" THEN GOTO IMPRESSNO
IF IMPRESS.U$ = "D" THEN GOTO IMPRESSYES
IF IMPRESS.U$ = "E" THEN GOTO IMPRESSNO
LOOP
IMPRESSNO:
COLOR 12: LOCATE 11, 1: PRINT "Sorry, that's not correct. Try again? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO IMPRESS
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP
IMPRESSYES:
COLOR 14: LOCATE 11, 1: PRINT "Yes! The man was a firefighter who, in the course of putting out a fire,"
PRINT "sprayed the room and paintings with water. He had indeed damaged the paintings,"
PRINT "but saved them and others from complete destruction."
PRINT ""
PRINT "Here is your code."
PRINT "Q_ARC: "; INIT.U$
PRINT "_DATA: 2D"
PRINT "TIME: "; TIMER
PRINT ""
COLOR 10: PRINT "Quit? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO ENDING
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP


RIDDLE:
CLS
COLOR 15
PRINT "Four men sat down to play."
PRINT "They played all night till break of day."
PRINT "They played for gold and not for fun,"
PRINT "With seperate scores for everyone."
PRINT "When they came to square accounts"
PRINT "They all made quite fair amounts."
PRINT "Can you this paradox explain?"
PRINT "If no one lost, how could all gain?"
PRINT ""
COLOR 10: PRINT "A. They evened out all their money."
PRINT "B. They didn't."
PRINT "C. Does anyone have a calculator?"
PRINT "D. They didn't keep score right."
PRINT "E. None of the above."
PRINT ""
PRINT "Your choice. (A - E)"
DO
LET RIDDLE.L$ = INKEY$
LET RIDDLE.U$ = UCASE$(RIDDLE.L$)
IF RIDDLE.U$ = "A" THEN GOTO RIDDLENO
IF RIDDLE.U$ = "B" THEN GOTO RIDDLENO
IF RIDDLE.U$ = "C" THEN GOTO RIDDLENO
IF RIDDLE.U$ = "D" THEN GOTO RIDDLENO
IF RIDDLE.U$ = "E" THEN GOTO RIDDLEYES
LOOP
RIDDLENO:
COLOR 12: LOCATE 16, 1: PRINT "Sorry, that's not correct. Try again? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO RIDDLE
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP
RIDDLEYES:
COLOR 14: LOCATE 16, 1: PRINT "Yes! For the music they played,"
PRINT "Each band member was paid."
PRINT ""
PRINT "Here is your code."
PRINT "Q_ARC: "; INIT.U$
PRINT "_DATA: 3D"
PRINT "TIME: "; TIMER
PRINT ""
COLOR 10: PRINT "Quit? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO ENDING
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP


FLICKER:
CLS
COLOR 15
PRINT "A man was running along a corridor clutching a piece of paper. He saw the"
PRINT "lights flicker. He gave a cry of anguish and walked on dejectedly. Why?"
PRINT ""
COLOR 10: PRINT "A. A man was executed in an electric chair."
PRINT "B. He got a really bad paper cut."
PRINT "C. He was nutty."
PRINT "D. He was reading the paper and lost his place."
PRINT "E. None of the above."
PRINT ""
PRINT "Your choice. (A - E)"
DO
LET FLICKER.L$ = INKEY$
LET FLICKER.U$ = UCASE$(FLICKER.L$)
IF FLICKER.U$ = "A" THEN GOTO FLICKERYES
IF FLICKER.U$ = "B" THEN GOTO FLICKERNO
IF FLICKER.U$ = "C" THEN GOTO FLICKERNO
IF FLICKER.U$ = "D" THEN GOTO FLICKERNO
IF FLICKER.U$ = "E" THEN GOTO FLICKERNO
LOOP
FLICKERNO:
COLOR 12: LOCATE 10, 1: PRINT "Sorry, that's not correct. Try again? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO FLICKER
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP
FLICKERYES:
COLOR 14: LOCATE 12, 1: PRINT "Yes! The man was carrying a stay of execution for a condemned man who was due"
PRINT "to die in the electric chair. When he saw the lights flicker, he knew he was"
PRINT "too late."
PRINT ""
PRINT "Here is your code."
PRINT "Q_ARC: "; INIT.U$
PRINT "_DATA: 4A"
PRINT "TIME: "; TIMER
PRINT ""
COLOR 10: PRINT "Quit? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO ENDING
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP


FIRE:
CLS
COLOR 15
PRINT "A young family went out to a fireworks display. On their return, the parents"
PRINT "were very sad. Why?"
PRINT ""
COLOR 10: PRINT "A. It rained."
PRINT "B. Their baby son was deaf."
PRINT "C. They were scared of fireworks."
PRINT "D. The fireworks almost killed them."
PRINT "E. None of the above."
PRINT ""
PRINT "Your choice. (A - E)"
DO
LET FIRE.L$ = INKEY$
LET FIRE.U$ = UCASE$(FIRE.L$)
IF FIRE.U$ = "A" THEN GOTO FIRENO
IF FIRE.U$ = "B" THEN GOTO FIREYES
IF FIRE.U$ = "C" THEN GOTO FIRENO
IF FIRE.U$ = "D" THEN GOTO FIRENO
IF FIRE.U$ = "E" THEN GOTO FIRENO
LOOP
FIRENO:
COLOR 12: LOCATE 10, 1: PRINT "Sorry, that's not correct. Try again? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO FIRE
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP
FIREYES:
COLOR 14: LOCATE 12, 1: PRINT "Yes! The parents discovered that their baby son was deaf. He reacted to the"
PRINT "sight of fireworks but not to loud bangs of fireworks which were out of sight."
PRINT ""
PRINT "Here is your code."
PRINT "Q_ARC: "; INIT.U$
PRINT "_DATA: 5B"
PRINT "TIME: "; TIMER
PRINT ""
COLOR 10: PRINT "Quit? (Y/N)"
DO
LET YESNO.L$ = INKEY$
LET YESNO.U$ = UCASE$(YESNO.L$)
IF YESNO.U$ = "Y" THEN GOTO ENDING
IF YESNO.U$ = "N" THEN GOTO BEGIN
LOOP


ENDING:
CLS
PLAY "MB O3 T150 L4 E L8 E E E D C E L4 D D C D E A A G F C D C E G C E D L12 D D D L4 E D C..."
FOR Y = 1 TO 11
FOR X = 8 TO 15
COLOR X
LOCATE 1, 1
PRINT "ллллл  л   л  ллллл"
PRINT "  л    л   л  л"
PRINT "  л    ллллл  ллл"
PRINT "  л    л   л  л"
PRINT "  л    л   л  ллллл"
PRINT ""
PRINT "ллллл  л   л  лллл"
PRINT "л      лл  л  л   л"
PRINT "ллл    л л л  л   л"
PRINT "л      л  лл  л   л"
PRINT "ллллл  л   л  лллл"
TIME = TIMER: DO: LOOP UNTIL TIMER >= TIME + .1
NEXT X
NEXT Y
PRINT ""
PRINT ""
END


