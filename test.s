back1:  ldrb r0,[r1]
	swi 0x200    ;Set 8 segment
;light up
	bl delay
	add r1,r1,#1
	sub r5,r5,#1
	cmp r5,#0
	bne back1
	b again
loop2:	mov r5,#16
	ldr r1,=F
back2:	ldrb r0,[r1]
	swi 0x200 

bl delay
sub r1,r1,#1


delay:	mov r4, #64000
loop3:	sub r4,r4,#1
	cmp r4,#0
	bge loop3
	mov pc,lr
.data 
zero:     byte 0b11101101
one:      byte 0b01100000
two:      byte 0b
three:
four:
five:
six:
seven:
eight:
nine:
A:
B:
C:
D:
E:
F:
