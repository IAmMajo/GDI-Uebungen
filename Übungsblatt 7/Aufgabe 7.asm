MOV A, 1
CMP C, 0
JE halt

.loop:
MUL D
DEC C
JNZ .loop

halt:
HLT
