10 COLOR 4, 1
100 CLS
150 PRINT "(Turn CAPS LOCK off!)"
200 PRINT "The Unknown Coin: Part I"
201 PRINT " "
202 PRINT "Theme song? (y/n)"
203 INPUT THEME$
204 IF THEME$ = "y" THEN GOTO 206
205 IF THEME$ = "n" THEN GOTO 210
206 CLS
207 SCREEN 1
208 PRINT "The Unknown Coin Part I"
209 PLAY "G A D D A F G2 F A D D A G2"
210 CLS
300 SCREEN 2
400 PRINT "You are walking in a forest near your house with your sister."
500 PRINT "OOF! You stumble over a stump.  You are ok."
600 PRINT "When you stumbled, you broke the stump, and an old coin came out."
700 PRINT "You decide to go home."
800 PRINT "When you get home your mom asks what your holding in your hand."
900 PRINT "What are you going to do?  Do you tell her?"
1000 PRINT "Type Y for Yes N for No"
1100 INPUT YESNO$
1200 IF YESNO$ = "y" THEN GOTO 1600
1300 IF YESNO$ = "n" THEN GOTO 1800
1400 IF YESNO$ <> "y" THEN GOTO 1000
1500 IF YESNO$ <> "n" THEN GOTO 1000
1550 CLS
1600 PRINT "Your Mom looks at the coin and says: This coin may be valuable."
1700 PRINT "Bring it to the coin shop."
1750 GOTO 2000
1775 CLS
1800 PRINT "You say a dime. Your Mom opens up your hand and sees the old coin.  She takes itand punishes you for lying."
1850 GOTO 10253
1900 CLS
2000 PRINT "You hop on your bike and ride to the coin shop on the inner part of town."
2300 PRINT "You ask the man about your coin."
2400 PRINT "The Man looks really excited and yells: This is a whole gold"
2500 PRINT "Dabloon from Marco Polo's time.  My boy, I'll buy this for a"
2600 PRINT "million, no two million, maybe three!!!!!!!!!!!!!!!!!!!!!!!! "
2700 PRINT "Do you sell? Type Y For Yes N for No."
2800 INPUT YESNO$
2900 IF YESNO$ = "y" THEN GOTO 3300
3000 IF YESNO$ = "n" THEN GOTO 3400
3100 IF YESNO$ <> "y" THEN GOTO 2700
3200 IF YESNO$ <> "n" THEN GOTO 2700
3300 GOTO 3600
3350 CLS
3400 PRINT "Are you dumb? You could do lots of stuff with that dough!"
3500 GOTO 5000
3550 CLS
3600 PRINT "As the man hands you your money he throws the coin in a box that"
3700 PRINT "says RAFFLE.  You decide to buy a ticket."
3800 PRINT "As you buy the ticket, a crowd of people come in, it was drawing time!"
3900 PRINT "The man yells Number 88.  You have ticket #88! You win your coin back"
4000 PRINT "This is your lucky day!"
5000 PRINT "You decide to take the forest path home.  As you are walking you find a very"
5500 PRINT "deep hole."
6000 PRINT "Do you go down the hole because you see something shiny?"
7000 PRINT "Type Y for Yes and N for No."
7050 INPUT YESNO$
8000 IF YESNO$ = "y" THEN GOTO 10200
9000 IF YESNO$ = "n" THEN GOTO 10300
10000 IF YESNO$ <> "y" THEN GOTO 7000
10100 IF YESNO$ <> "n" THEN GOTO 7000
10150 CLS
10200 PRINT "As you slip down the hole you here this terrible screeching noise."
10250 PRINT "You decide this is way to dangerous.  You try to climb up, but slip."
10251 PRINT "You hear the noise coming closer.  As you turn around you see razor sharp teeth."
10252 PRINT "CHOMP, CHOMP, CHOMP!, you are dead."
10253 END
10254 CLS
10300 PRINT "When you get home your sister wants you to read the coin inscription for her."
10400 PRINT "It reads: 10 dabloons."
10500 PRINT "As you read the coin you get teleported to World War II."
10600 PRINT "You see the German Dictator Adolph Hitler pointing a gun at you.  He asks, Are  you a German?"
10700 PRINT "Do you say you are?"
10800 PRINT "Type Y for Yes and N for No."
10900 INPUT YESNO$
100000 IF YESNO$ = "y" THEN GOTO 100400
100100 IF YESNO$ = "n" THEN GOTO 100600
100200 IF YESNO$ <> "y" THEN GOTO 10800
100300 IF YESNO$ <> "n" THEN GOTO 10800
100350 CLS
100400 PRINT "You know you are lying but hey it was a life or death situation."
100500
100600 PRINT "Hitler assumes you are a Jew.  He starts to pull the trigger but you jump at hislegs and use your Karate on him.  He is now dead.  Uh oh! You altered history."
100650 PRINT "Now German soldiers grab you.  It's too late for Karate. You are brought to the"
100651 PRINT "German Dictators. You are brought to your cell.  In the cell there is a bed, a  sink, a wee-wee pot and a pile of... coins!"
100700 PRINT "The coins cover a small cabinet.  You decide to go through the coins.  As you   are sifting through the pile of coins you find one that matches your own. You   read it:  10 Dabloons.  As  you read a bublish sign appears above you.  It says:"
100800 PRINT "Go into the cabinet."
100900 PRINT "Do you go into the cabinet?"
101000 INPUT YESNO$
101100 IF YESNO$ = "y" THEN GOTO 101500
101200 IF YESNO$ = "n" THEN GOTO 101800
101300 IF YESNO$ <> "y" THEN GOTO 10900
101400 IF YESNO$ <> "n" THEN GOTO 100900
101450 CLS
101500 PRINT "You go into the cabinet and everything is normal, (except your history book)."
101600 PRINT "The bubbely sign reappears and says: Put the coins on top of each other. You do, and the coins desinigrate into a fine golden dust.  You put the dust into Mrs. Fosbenner's lunch and as she takes her first bite she disappears forever. Yes!!!"
101700 END
101750 CLS
101800 PRINT "You are doomed to live in the wee-wee pot forever."
101900 GOTO 101700


