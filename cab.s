.data
a: .word 1,2,3,4,5,6,7,8,9
b: .word 1,2,3,4,5,6,7,8,9
c: .word 0
.text
ldr r0, =a 
ldr r1, =b 
ldr r2, =c
mov r3, #3 ; rows 
mov r4, #3 ; columns 
mov r5, #0 ; i
mov r6, #0 ; j 
for_i:
for_j:
stmfd r13!, {r5,r6} 
bl get_addr
ldmfd r13!, {r5,r6,r7}
add r8, r0, r7 ; address a[i][j] 
add r9, r1, r7 ; address b[i][j] 
ldr r8, [r8]
ldr r9, [r9]
add r8, r8, r9 ;address a[i][j] 
add r9, r2, r7 ;address b[i][j] 
str r8, [r9]
add r6, r6, #1 ;j++ 
cmp r6, r4
bne for_j 
mov r6, #0 
add r5, r5, #1 
cmp r5, r3 
beq exit
b for_i 
get_addr:
ldmfd r13!, {r5, r6} 
mla r8, r4, r5, r6 
mov r9, #4
mul r7, r8, r9
stmfd r13!, {r5, r6, r7}
bx lr
exit: SWI 0x011
.end