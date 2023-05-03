.data
a:.word 100,40,20,90,45

.text
LDR r0,=a
MOV r5,#0
LDR r3,[r0]
l1:
ADD r0,r0,#4
LDR r4,[r0]
CMP r3,r4
BGT L
B L2
L:
MOV r3,r4
L2:
ADDS r5,r5,#1
CMP r5,#4
BNE l1
