JMP start

input:
DB 42

start:
MOV A, [input]
MOV D, 234

.loop:
MOV B, A
DIV 10
MUL 10
SUB B, A
ADD B, '0'
MOV [D], B
DEC D
DIV 10
JNZ .loop

HLT
