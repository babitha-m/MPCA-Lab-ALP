.data
src:.asciz "VIRAT"
dest:.asciz "ABD GAYLE"

.text
start: 
LDR R1,=src
LDR R0,=dest
strcpy:
LDRB R2,[R1],#1
STRB R2,[R0],#1
CMP R2,#0
BNE strcpy
LDR R0,=src
SWI 0x02
LDR R0,=dest
SWI 0x02
SWI 0x011
.end