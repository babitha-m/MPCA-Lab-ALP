.data
A: .word 100, 200, 300, 400, 500, 600, 700, 800
B: .word 0, 0, 0, 0, 0, 0, 0, 0

.text
LDR R0, =A
LDR R9, =B
MOV R5,#0
L:LDMIA R0!, {R1-R4}
STMIA R9!, {R1-R4}
ADD R5,R5,#1
CMP R5,#2
BNE L
.end
