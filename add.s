.data
a:.word 12436785,76548765
b:.word 34679245,93654257
c:.word 0
.text
LDR r0,=a
LDR r1,=b
LDR r2,=c
LDR r4,[r0]
LDR r5,[r1]
ADDS r6,r4,r5
LDR r7,[r0,#4]
LDR r8,[r1,#4]
ADDS r9,r7,r8
STR r6,[r3]
STR r7,[r3,#4]

SWI 0X11