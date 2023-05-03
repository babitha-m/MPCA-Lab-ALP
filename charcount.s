.data
str:.ASCIZ "SHINCHAN"
char:.ASCIZ "N"
.equ SWI_WriteC,0x02
.equ SWI_Exit,0x11

.text
LDR R0,=str
LDR R1,=char
MOV R5,#0
LDRB R3,[R1]
LOOP:
LDRB R2,[R0],#1
CMP R2,#0
BEQ EXIT
CMP R2,R3
BNE LOOP
ADD R5,R5,#1
B LOOP
LDR R0,=str
swi SWI_WriteC
EXIT: swi SWI_Exit
.end