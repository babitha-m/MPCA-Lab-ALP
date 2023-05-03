.TEXT
MOV R0,#12
MOV R1,#96
up:CMP R0,R1
BEQ end
BGT greater
SUB R1,R1,R0
B up
greater:SUB R0,R0,R1
	B up
end: SWI 0x011