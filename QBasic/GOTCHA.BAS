10 CLS : COLOR 7
20 INPUT "C:\DOS>", A$
30 B$ = UCASE$(A$)
40 IF B$ = "YOU GOT ME" THEN GOTO 690
50 IF B$ = "AUTOEXEC" THEN PRINT "Error: Cannot unmap the Shadow ROM. XMS Driver not installed.": PRINT "": GOTO 20
60 IF B$ = "COMMAND" THEN PRINT "Error in CONFIG.SYS line 4.": PRINT "": GOTO 20
70 IF B$ = "A:" THEN PRINT "Invalid COMMAND.COM. Insert disk with COMMAND.COM in drive A.": INPUT "Press any key to continue...", C$: PRINT "": GOTO 20
80 IF B$ = "CD\" THEN PRINT "Insufficient room in root directory.": PRINT "": GOTO 20
90 IF B$ = "FDISK" THEN PRINT "Error reading hard disk.": PRINT "": GOTO 20
100 IF B$ = "FDISK /W" THEN PRINT "Error writing hard disk.": PRINT "": GOTO 20
110 IF B$ = "WIN" THEN PRINT "WINA20.386 cannot load in High Memory Area.": PRINT "": GOTO 20
120 IF B$ = "DIR" THEN CLS : SHELL "DIR C:\": FOR Z = 1 TO 25: PRINT "": NEXT Z: GOTO 20
130 IF B$ = "KEYB" THEN PRINT "Bad or missing Keyboard Definition File.": PRINT "": GOTO 20
140 IF B$ = "CHKDSK" THEN CLS : SHELL "CHKDSK": FOR Z = 1 TO 17: PRINT "": NEXT Z: LOCATE 23, 1: PRINT "Cannot read system area of disk.": PRINT "": GOTO 20
150 IF B$ = "FASTOPEN A:" THEN PRINT "Cannot use FASTOPEN for drive A.": PRINT "": GOTO 20
160 IF B$ = "CLS" THEN CLS : GOTO 20
170 IF B$ = "QBASIC" THEN PRINT "QBASIC: Cannot find/load QBASIC.INI.": PRINT "": GOTO 20
180 IF B$ = "EDIT" THEN PRINT "EDIT.COM not found": PRINT "": GOTO 20
190 IF B$ = "VER" THEN PRINT "Incorrect DOS version.": PRINT "": GOTO 20
200 IF B$ = "MEM" THEN PRINT "HMAMIN parameter out of range.": PRINT "": GOTO 20
210 IF B$ = "EXE2BIN" THEN PRINT "File type not supported.": PRINT "": GOTO 20
220 IF B$ = "FC" THEN PRINT "Out of memory.": PRINT "": GOTO 20
230 IF B$ = "FORMAT A:" THEN PRINT "Device driver not installed.": PRINT "": GOTO 20
240 IF B$ = "DATE" THEN PRINT "Date/time not set.": PRINT "": GOTO 20
250 IF B$ = "TIME" THEN PRINT "Date/time not set.": PRINT "": GOTO 20
260 IF B$ = "TREE" THEN PRINT "File allocation table bad drive C.": PRINT "": GOTO 20
270 IF B$ = "EDLIN" THEN PRINT "FCB unavailable": PRINT "": GOTO 20
280 IF B$ = "MD" THEN PRINT "Directory creation error.": PRINT "": GOTO 20
290 IF B$ = "ANSI" THEN PRINT "ANSI display error": PRINT "": COLOR 30: GOTO 20
300 IF B$ = "CEMM" THEN PRINT "CEMM not installed - unable to set page frame base address": PRINT "": GOTO 20
310 IF B$ = "RECOVER" THEN PRINT "Cannot recover an ASSIGNed or SUBSTed drive.": PRINT "": GOTO 20
320 IF B$ = "FORMAT A: /S" THEN PRINT "Cannot find System files.": PRINT "": GOTO 20
330 IF B$ = "TURN ANSI OFF" THEN COLOR 7: PRINT "": GOTO 20
340 IF B$ = "" THEN GOTO 20
350 IF B$ = "MIRROR" THEN PRINT "Cannot install. Already resident, or unknown status.": PRINT "": GOTO 20
360 IF B$ = "DEL *.*" THEN PRINT "Cannot load COMMAND, operation terminated.": PRINT "": GOTO 20
370 IF B$ = "UNDELETE *.*" THEN PRINT "Cannot operate on specified drive (C:). It may be a network drive.": PRINT "": GOTO 20
380 IF B$ = "DISKCOPY A: A:" THEN PRINT "Device not ready.": PRINT "": GOTO 20
390 IF B$ <> "CREDITS" THEN GOTO 540
400 FOR X = 1 TO 26
410 TIME = TIMER
420 DO: LOOP UNTIL TIMER > TIME + .1
430 PRINT ""
440 NEXT X
450 LOCATE 1, 1: COLOR 14: PRINT "SDOS Version 1.0": COLOR 7
460 LOCATE 4, 1: PRINT "                           Another fine product from the software labs of"
470 COLOR 12: PRINT "                                   SCOTT SMITELLI ENTERPRISES!!!": COLOR 7
480 LOCATE 10, 1: PRINT "This program is only a practical joke. It does no harm to your computer. This"
490 PRINT "program may have some rather odd and/or frightening results, but it's not real."
500 PRINT "The ANSI command messes up your display's colors. To turn off the ANSI color,"
510 PRINT "type TURN ANSI OFF. Type CREDITS to see this screen, and type YOU GOT ME to"
520 PRINT "turn off this really scary and realistic program."
530 LOCATE 24, 1: INPUT "Hit Enter. ", Z$: CLS : GOTO 20
540 IF B$ = "WHOAMI" THEN PRINT "You are a helpless user trapped in an endless string of errors.": PRINT "": GOTO 20
550 IF B$ = "SYS" THEN PRINT "Cannot SYS a SUBSTed or ASSIGNed drive.": PRINT "": GOTO 20
560 IF B$ = "EXTDISK" THEN PRINT "CMOS is not properly set up.": PRINT "": GOTO 20
570 IF B$ = "XCOPY *.* A:" THEN PRINT "Insufficient disk space": PRINT "": GOTO 20
580 IF B$ = "NORTON" THEN PRINT "Norton Utilities: Unable to load NDD.INI.": PRINT "": GOTO 20
590 IF B$ = "SPEEDISK" THEN PRINT "NU Speed Disk: SD.INI is unreadable. File may be corrupted.": PRINT "": GOTO 20
600 IF B$ = "MODE" THEN PRINT "Code page not prepared.": PRINT "": GOTO 20
610 IF B$ = "CEMMP" THEN PRINT "CMOS memory configuration is invalid - SETUP must be run": PRINT "": GOTO 20
615 IF B$ = "DOWNCLS" THEN CLS: FOR Z = 1 TO 26: PRINT "": NEXT Z: GOTO 20
620 IF B$ = "B:" THEN PRINT "Invalid media or Track 0 bad - disk unusable": PRINT "": GOTO 20
630 IF B$ = "HIMEM" THEN PRINT "Invalid memory block address": PRINT "": GOTO 20
635 IF B$ = "SKIP" THEN PRINT "": PRINT "": GOTO 20
640 IF B$ = "PASSWORD" THEN PRINT "oÄXÄ·": PRINT "": GOTO 20
650 IF B$ = "RECONFIG" THEN PRINT "Invalid STACK parameters.": PRINT "": GOTO 20
660 IF B$ = "WINWORD" THEN PRINT "Program too big to fit in memory": PRINT "": GOTO 20
670 IF B$ = "BACKUP" THEN PRINT "Write failure - Disk unusable.": PRINT "": GOTO 20
675 IF B$ = "IS IT REAL?" THEN PRINT "Yes, it is.": PRINT "": GOTO 20
680 PRINT "Bad command or file name": PRINT "": GOTO 20
690 CLS
700 COLOR 14: PRINT "Hahahahahahahahaha! You were worried, weren't you? He he heee! Ya shoulda"
710 PRINT "seen the look on your face when that error popped up! Ha, ha. People are funny!"
720 LOCATE 4, 1: COLOR 7: PRINT "DOS is restored, ya goof. (Really!)"
730 PRINT ""


