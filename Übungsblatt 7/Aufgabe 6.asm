JMP start

input:
DB 101010b

start:
MOV A, [input]
MOV B, 8

.loop:
MOV C, A
DIV 2
MUL 2
SUB C, A
ADD D, C
SHR A, 1
DEC B
JNZ .loop

ADD D, '0'
MOV [232], D

HLT
