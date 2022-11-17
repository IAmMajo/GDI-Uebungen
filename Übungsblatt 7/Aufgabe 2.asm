MOV D, 232

.loop:
MOV [D], 'A'
INC D
CMP D, 252
JB .loop

HLT
