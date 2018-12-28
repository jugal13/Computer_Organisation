mov r0,#5
fact: 
	sub sp,sp,#8
	str lr,[sp,#4]
	str r0,[sp,#0]
	cmp r0,#1
	bge L1
	mov r0,#1
	add sp,sp,#8
	mov pc,lr
L1:
	sub r0,r0,#1
	bl fact
	mov r12,r0
	ldr r0,[sp,#0]
	ldr lr,[sp,#4]
	add sp,sp,#8
	mul r0,r12,r0	
	cmp lr,#0
	beq L
	mov pc,lr
L:
swi 0x11