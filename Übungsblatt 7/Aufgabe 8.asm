JMP start

input:
DB 00101010b

start:
MOV A, [input]
MOV D, 232

.loop:
CMP A, 128
JB printNull
MOV [D], '1'
JMP loopEnd

printNull:
MOV [D], '0'

loopEnd:
SHL A, 1
INC D
CMP D, 240
JB .loop

HLT
