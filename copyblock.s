.DATA
A: .WORD 1,2,3,4,5,6,7,8,9,10,11,12
B: .WORD 0,0,0,0,0,0,0,0,0,0,0,0
.TEXT
LDR R1,=A
LDR R2,=B
MOV R3,#0
copy: LDMIA R1!,{R4,R5,R6,R7}
	STMIA R2!,{R4,R5,R6,R7}
	ADD R3,R3,#1
	CMP R3,#4
	BNE copy
	SWI 0X011
