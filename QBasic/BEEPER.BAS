CLS
PRINT "This program requires that you open up a Motorola Minitor beeper."
PRINT "Do it now and locate the board with the speaker and volume knob."
PRINT "Pull this board from the other one and hold it component side up."
PRINT "Now hold the board in the position shown in the picture. Locate the"
PRINT "two decoders below the battery compartment."
PRINT ""
PRINT "ÚÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ¿"
PRINT "³    ³           ³"
PRINT "³    ³           ³"
PRINT "ÃÄÄÄÄÁÄÄÄÄ¿      ³"
PRINT "ÃÄÄÄÄÄÄÄÄÄ´      ³"
PRINT "ÃÄÄÄÄÄÄÄÄÄÙ      ³"
PRINT "³                ³"
PRINT "~                ~"
PRINT ""
PRINT "The decoders show the word FREQ then a number. ex. FREQ 1251.4"
PRINT "The other decoder works the same way. ex. FREQ 746.8"
PRINT "The decoder closest to the battery compartment is defined as A."
PRINT "The other one is B."
PRINT "Enter the numbers and press [Enter] to to hear the two tones that"
PRINT "adress that beeper."
PRINT ""
INPUT "Number A?"; A
INPUT "Number B?"; B
SOUND A, 15
SOUND B, 15

