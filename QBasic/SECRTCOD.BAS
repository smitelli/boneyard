10 CLS
20 PRINT "Message (No commas)?"
30 INPUT Z$
35 MessageIn$ = UCASE$(Z$)
40 MessageLength = LEN(MessageIn$)
50 IF MessageLength <= 0 THEN GOTO 10
60 IF MessageLength >= 81 THEN GOTO 10
70 FOR A = 1 TO 79 STEP 2
80 IF A = MessageLength THEN LET MessageStat$ = "ODD"
90 NEXT A
100 FOR A = 2 TO 80 STEP 2
110 IF A = MessageLength THEN LET MessageStat$ = "EVEN"
120 NEXT A
130 FOR B = 1 TO MessageLength
140 C = B / 10: CHAR$(C) = MID$(MessageIn$, B, 1)
150 NEXT B
FOR X = .1 TO MessageLength / 10: PRINT CHAR$(X); : NEXT X
160 FOR A = .1 TO MessageLength / 10 STEP .2
170 IF CHAR$(A) = "A" THEN LET PreOutput$(A) = "C"
180 IF CHAR$(A) = "B" THEN LET PreOutput$(A) = "D"
190 IF CHAR$(A) = "C" THEN LET PreOutput$(A) = "E"
200 IF CHAR$(A) = "D" THEN LET PreOutput$(A) = "F"
210 IF CHAR$(A) = "E" THEN LET PreOutput$(A) = "G"
220 IF CHAR$(A) = "F" THEN LET PreOutput$(A) = "H"
230 IF CHAR$(A) = "G" THEN LET PreOutput$(A) = "I"
240 IF CHAR$(A) = "H" THEN LET PreOutput$(A) = "J"
250 IF CHAR$(A) = "I" THEN LET PreOutput$(A) = "K"
260 IF CHAR$(A) = "J" THEN LET PreOutput$(A) = "L"
270 IF CHAR$(A) = "K" THEN LET PreOutput$(A) = "M"
280 IF CHAR$(A) = "L" THEN LET PreOutput$(A) = "N"
290 IF CHAR$(A) = "M" THEN LET PreOutput$(A) = "O"
300 IF CHAR$(A) = "N" THEN LET PreOutput$(A) = "P"
310 IF CHAR$(A) = "O" THEN LET PreOutput$(A) = "Q"
320 IF CHAR$(A) = "P" THEN LET PreOutput$(A) = "R"
330 IF CHAR$(A) = "Q" THEN LET PreOutput$(A) = "S"
340 IF CHAR$(A) = "R" THEN LET PreOutput$(A) = "T"
350 IF CHAR$(A) = "S" THEN LET PreOutput$(A) = "U"
360 IF CHAR$(A) = "T" THEN LET PreOutput$(A) = "V"
370 IF CHAR$(A) = "U" THEN LET PreOutput$(A) = "W"
380 IF CHAR$(A) = "V" THEN LET PreOutput$(A) = "X"
390 IF CHAR$(A) = "W" THEN LET PreOutput$(A) = "Y"
400 IF CHAR$(A) = "X" THEN LET PreOutput$(A) = "Z"
410 IF CHAR$(A) = "Y" THEN LET PreOutput$(A) = "A"
420 IF CHAR$(A) = "Z" THEN LET PreOutput$(A) = "B"
430 IF CHAR$(A) = "1" THEN LET PreOutput$(A) = "3"
440 IF CHAR$(A) = "2" THEN LET PreOutput$(A) = "4"
450 IF CHAR$(A) = "3" THEN LET PreOutput$(A) = "5"
460 IF CHAR$(A) = "4" THEN LET PreOutput$(A) = "6"
470 IF CHAR$(A) = "5" THEN LET PreOutput$(A) = "7"
480 IF CHAR$(A) = "6" THEN LET PreOutput$(A) = "8"
490 IF CHAR$(A) = "7" THEN LET PreOutput$(A) = "9"
500 IF CHAR$(A) = "8" THEN LET PreOutput$(A) = "0"
510 IF CHAR$(A) = "9" THEN LET PreOutput$(A) = "1"
520 IF CHAR$(A) = "0" THEN LET PreOutput$(A) = "2"
530 IF CHAR$(A) = "`" THEN LET PreOutput$(A) = "!"
540 IF CHAR$(A) = "~" THEN LET PreOutput$(A) = "@"
550 IF CHAR$(A) = "!" THEN LET PreOutput$(A) = "#"
560 IF CHAR$(A) = "@" THEN LET PreOutput$(A) = "$"
570 IF CHAR$(A) = "#" THEN LET PreOutput$(A) = "%"
580 IF CHAR$(A) = "$" THEN LET PreOutput$(A) = "^"
590 IF CHAR$(A) = "%" THEN LET PreOutput$(A) = "&"
600 IF CHAR$(A) = "^" THEN LET PreOutput$(A) = "*"
610 IF CHAR$(A) = "&" THEN LET PreOutput$(A) = "("
620 IF CHAR$(A) = "*" THEN LET PreOutput$(A) = ")"
630 IF CHAR$(A) = "(" THEN LET PreOutput$(A) = "-"
640 IF CHAR$(A) = ")" THEN LET PreOutput$(A) = "_"
650 IF CHAR$(A) = "-" THEN LET PreOutput$(A) = "="
660 IF CHAR$(A) = "_" THEN LET PreOutput$(A) = "+"
670 IF CHAR$(A) = "=" THEN LET PreOutput$(A) = "["
680 IF CHAR$(A) = "+" THEN LET PreOutput$(A) = "{"
690 IF CHAR$(A) = "[" THEN LET PreOutput$(A) = "]"
700 IF CHAR$(A) = "{" THEN LET PreOutput$(A) = "}"
710 IF CHAR$(A) = "]" THEN LET PreOutput$(A) = "\"
720 IF CHAR$(A) = "}" THEN LET PreOutput$(A) = "|"
730 IF CHAR$(A) = "\" THEN LET PreOutput$(A) = ";"
740 IF CHAR$(A) = "|" THEN LET PreOutput$(A) = ":"
750 IF CHAR$(A) = ";" THEN LET PreOutput$(A) = "'"
760 IF CHAR$(A) = ":" THEN LET PreOutput$(A) = CHR$(34)
770 IF CHAR$(A) = "'" THEN LET PreOutput$(A) = "<"
780 IF CHAR$(A) = CHR$(34) THEN LET PreOutput$(A) = "."
790 IF CHAR$(A) = "<" THEN LET PreOutput$(A) = ">"
800 IF CHAR$(A) = "." THEN LET PreOutput$(A) = "/"
810 IF CHAR$(A) = ">" THEN LET PreOutput$(A) = "?"
820 IF CHAR$(A) = "/" THEN LET PreOutput$(A) = "`"
830 IF CHAR$(A) = "?" THEN LET PreOutput$(A) = "~"
840 IF CHAR$(A) = " " THEN LET PreOutput$(A) = " "
850 NEXT A

