.DATA 
A:.WORD 1,2,3,4,5,6,7,8,9,10
S:.WORD 3

C: .ASCIZ "SUCCESSFUL SEARCH"
U: .ASCIZ "UNSUCCESSFUL SEARCH"

.TEXT

LDR R6, =A;
LDR R1, =S; 
MOV R2, #21;searching for 21
MOV R3, #0;

L1:
	LDR R4,[R6];
	CMP R2,R4;
	BEQ update;
	
	ADD R6,R6,#4;
	ADD R3,R3,#1;
	CMP R3, #10;
	BNE L1;
	LDR R0,=U
	SWI 0X02
	B DONE;

update: LDR R0,=C
             SWI 0X02
	
DONE:
	SWI 0X011;