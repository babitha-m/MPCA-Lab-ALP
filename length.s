.data
A:.ASCIZ "DEVILLIERS"
.text
LDR R0,=A
MOV R1,#0  ;to calculate string length
loop:
LDRB R2,[R0],#1
CMP R2,#0
BEQ exit
ADD R1,R1,#1
B loop
exit:
SWI 0x011
.end