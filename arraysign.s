.data
a:.word 10,20,-2,-3,50,60,0
.text
LDR R0,=a
MOV R2,#7
L:
LDR R1,[R0],#4
CMP R1,#0
BEQ L1
BGT L2
BLT L3
L4:SUBS R2,R2,#1
BNE L
SWI 0x011
L1:
ADDS R3,R3,#1
B L4
L2:
ADDS R4,R4,#1
B L4
L3:
ADDS R5,R5,#1
B L4