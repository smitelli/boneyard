10 COLOR 7, 7
20 CLS
30 COLOR 15, 7: PRINT "��"
40 PRINT "� ��"
50 PRINT "�   ��"
60 PRINT "�    ��"
70 PRINT "����  �� "
80 PRINT "    ���"
90 LOCATE 22, 45: PRINT "  ��KENNY$��"
100 FOR X = 1 TO 2500
110 FOR Y = 1 TO 15
120 COLOR Y: LOCATE 23, 15: PRINT "��"
130 NEXT Y
140 NEXT X
150 LOCATE 7, 1: COLOR 0, 3
160 PRINT "�������������������������������������������������Ŀ"
170 PRINT "�                                                 �"
180 PRINT "�    PIXEL% Function overflow. Cannot allocate    �"
190 PRINT "�   enough VGA handles to parse in the required   �"
200 PRINT "� video window. Program execution will terminate. �"
210 PRINT "�                                                 �"
220 PRINT "�������������������������������������������������Ĵ"
230 PRINT "�                                                 �"
240 PRINT "�      Press SPACE to move, ENTER to select.      �"
250 PRINT "�                                                 �"
260 PRINT "�                                                 �"
270 PRINT "���������������������������������������������������"
280 LOCATE 16, 2: PRINT "          [Close]             [Details]"
285 PLAY "MBT200O3E..F..E..C...."
290 LOCATE 16, 12: COLOR 15: PRINT "[Close]"
300 A$ = INKEY$
310 IF A$ = CHR$(32) THEN GOTO 340
320 IF A$ = CHR$(13) THEN COLOR 7, 0: CLS : END
330 GOTO 300
340 LOCATE 16, 12: COLOR 0: PRINT "[Close]"
350 LOCATE 16, 32: COLOR 15: PRINT "[Details]"
360 A$ = INKEY$
370 IF A$ = CHR$(32) THEN GOTO 400
380 IF A$ = CHR$(13) THEN GOTO 430
390 GOTO 360
400 LOCATE 16, 32: COLOR 0: PRINT "[Details]"
410 LOCATE 16, 12: COLOR 15: PRINT "[Close]"
420 GOTO 300
430 COLOR 15, 1
440 CLS
450 COLOR 12: PRINT "PIXEL% Function overflow. Cannot allocate enough VGA handles to parse in the"
460 PRINT "required video window. Program execution will terminate."
470 COLOR 15: PRINT ""
480 PRINT "Module SPRINTER.PCX encountered an unexpected program halt."
490 PRINT "UMB 0F25:000C (SVGA control block.)"
500 PRINT "Fault encountered at: "; TIME$; ", "; DATE$; "."
510 PRINT ""
520 COLOR 14: INPUT "Press Enter. ", Z$
530 GOTO 150

