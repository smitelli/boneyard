10 CLS
20 PRINT ""
30 OPEN "C:\PASSFILE.PWP" FOR RANDOM AS #1 LEN = 15
40 GET #1, 1, C$
50 IF C$ = "" THEN GOTO 150
60 COLOR 15: PRINT "oÄÄ·"
70 LOCATE 2, 5: COLOR 0: INPUT A$
80 COLOR 15
90 B$ = UCASE$(A$)
100 IF B$ = "CHANGE" THEN GOTO 260
110 IF B$ = "RICE" THEN COLOR 12: PRINT "Back Door engaged.": GOTO 390
120 IF C$ = B$ THEN PRINT "OK": GOTO 390
130 CLS : PRINT "": PRINT "oÄx·"
140 GOTO 70
150 CLS
160 COLOR 14: PRINT "There is no record of your password. Either you have deleted your PASSFILE.PWP"
170 PRINT "file or you are running this program for the first time."
180 PRINT ""
190 PRINT "Please enter your password (Limit 15 characters)."
200 COLOR 0: INPUT D$
210 COLOR 14: PRINT "Please re-enter your password."
220 COLOR 0: INPUT E$
225 F$ = UCASE$(D$): G$ = UCASE$(E$)
230 IF F$ <> G$ THEN COLOR 12: PRINT "The two passwords do not match. Please re-enter them.": COLOR 14: GOTO 180
240 PUT #1, 1, F$
250 CLS : PRINT "": GOTO 40
260 CLS
270 PRINT "Enter your current password."
280 COLOR 0: INPUT H$
290 I$ = UCASE$(H$)
300 IF I$ <> C$ THEN COLOR 12: PRINT "Your password is not correct. Please re-enter it.": COLOR 15: GOTO 270
310 COLOR 15: PRINT "Enter your new password (Limit 15 characters)."
320 COLOR 0: INPUT J$
330 COLOR 15: PRINT "Re-enter your new password."
340 COLOR 0: INPUT K$
350 L$ = UCASE$(J$): M$ = UCASE$(K$)
360 IF L$ <> M$ THEN COLOR 12: PRINT "The two passwords do not match. Please re-enter them.": COLOR 14: GOTO 310
370 PUT #1, 1, L$
380 CLS : PRINT "": GOTO 40
390 CLOSE #1
400 PRINT ""
410 COLOR 14: PRINT "Successful login at: "; TIME$; ", "; DATE$
420 COLOR 7: PRINT ""
430 END

