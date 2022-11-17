MOV C, '0'
MOV D, 232

.loop:
MOV [D], C
INC C
INC D
CMP C, '9'
JBE .loop

HLT
