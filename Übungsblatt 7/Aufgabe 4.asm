MOV B, 1

.loop:
ADD A, B
INC B
CMP B, C
JBE .loop

HLT
