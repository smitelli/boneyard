10 CLS
20 COLOR 14: PRINT "                        This Is Mike Stevens' Program"
30 COLOR 13: LOCATE 5, 1: PRINT "1. See Fury3 --CHEAT CODES--"
40 PRINT "2. See the credits"
50 PRINT "3. Find out more stuff"
60 PRINT "4. Reach the author"
70 PRINT "5. Exit"
75 LOCATE 22, 1: PRINT "To make this fill up a whole screen, press ALT+ENTER."
76 PRINT "To turn it off, hit it again."
80 COLOR 11: LOCATE 12, 1: INPUT "Type your choice (1 - 5) and then press ENTER. ", A
90 IF A = 1 THEN GOTO 10
100 IF A = 2 THEN GOTO 140
110 IF A = 3 THEN GOTO 240
120 IF A = 4 THEN GOTO 10
130 IF A = 5 THEN CLS : END
135 GOTO 80
140 CLS
150 COLOR 14: PRINT "This program was written by a seventh-grader named Scott Smitelli."
160 PRINT "It was written using QuickBASIC 1.0 for DOS. It was compiled into an executable"
170 PRINT "using The FirstBasic Compiler 1.00 for DOS. It was created on a crappy ol' IBM"
180 PRINT "PS/2 computer. No CD-ROM, SoundBlaster, only 8mb of RAM, and a 20MHz processor."
190 PRINT "Comepare that to the 400MHz PCs that Intel is churnin' out. (For people who "
200 PRINT "don't know squat about computers, that's pretty lousy.) Anyhoo, if you like this"
210 PRINT "program please do not send $15.00 to the address in ''Reach the author.''"
220 COLOR 11: LOCATE 20, 1: INPUT "Hit ENTER to continue. ", A$
230 GOTO 10
240 CLS
250 COLOR 8: PRINT "Mike Stevens' number is 652-1432."
260 COLOR 9: PRINT "His screen name (as of 6-17-98) is Krushed5@AOL.COM."
270 COLOR 10: PRINT "His PC wouldn't boot right so they re-installed Windows 95."
280 COLOR 11: PRINT "I gave him the address HTTP://GONZO.TAMU.EDU/NERD-BACKWARDS.HTML."
290 COLOR 12: PRINT "MIKE & SCOTT GOT FURY3 CHEAT CODES!!!"
300 COLOR 13: PRINT "I just E-Mailed Mike an MST 3K picture."
310 COLOR 9: PRINT "C     A     C"
320 COLOR 10: PRINT "O     R     O"
330 COLOR 11: PRINT "L     E     O"
340 COLOR 12: PRINT "O           L"
350 COLOR 13: PRINT "R"
360 COLOR 14: PRINT "S"
370 COLOR 11: LOCATE 20, 1: INPUT "That good enough for ya? Hit ENTER. ", A$
380 GOTO 10


