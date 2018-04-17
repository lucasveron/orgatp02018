	.file	1 "tp0.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.globl	quantityCharactersInBuffer
	.globl	quantityCharactersInBuffer
	.section	.bss
	.align	2
	.type	quantityCharactersInBuffer, @object
	.size	quantityCharactersInBuffer, 4
quantityCharactersInBuffer:
	.space	4
	.rdata
	.align	2
$LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.globl	convertIntToCharacter
	.ent	convertIntToCharacter
convertIntToCharacter:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	sw	$zero,36($fp)
	sw	$zero,40($fp)
$L18:
	lw	$v0,40($fp)
	slt	$v0,$v0,11
	bne	$v0,$zero,$L21
	b	$L19
$L21:
	lw	$v1,40($fp)
	addu	$v0,$fp,24
	addu	$v0,$v0,$v1
	sb	$zero,0($v0)
	lw	$v0,40($fp)
	addu	$v0,$v0,1
	sw	$v0,40($fp)
	b	$L18
$L19:
	addu	$a0,$fp,24
	la	$a1,$LC0
	lw	$a2,68($fp)
	la	$t9,sprintf
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,44($fp)
	sw	$zero,40($fp)
$L22:
	lw	$v0,40($fp)
	slt	$v0,$v0,20
	beq	$v0,$zero,$L23
	lw	$v1,44($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L24
	b	$L23
$L24:
	lw	$v1,40($fp)
	addu	$v0,$fp,24
	addu	$v0,$v0,$v1
	lb	$v0,0($v0)
	bne	$v0,$zero,$L26
	sw	$zero,44($fp)
	b	$L27
$L26:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
$L27:
	lw	$v0,40($fp)
	addu	$v0,$v0,1
	sw	$v0,40($fp)
	b	$L22
$L23:
	lw	$v0,24($fp)
	lw	$v1,64($fp)
	sw	$v0,0($v1)
	lw	$v0,28($fp)
	lw	$v1,64($fp)
	sw	$v0,4($v1)
	lw	$v0,32($fp)
	lw	$v1,64($fp)
	sw	$v0,8($v1)
	lw	$v0,36($fp)
	lw	$v1,64($fp)
	sw	$v0,12($v1)
	lw	$v0,64($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	convertIntToCharacter
	.size	convertIntToCharacter, .-convertIntToCharacter
	.rdata
	.align	2
$LC1:
	.ascii	"640x480\000"
	.align	2
$LC2:
	.ascii	"0+0i\000"
	.align	2
$LC3:
	.ascii	"2\000"
	.align	2
$LC4:
	.ascii	"-0.726895347709114071439+0.188887129043845954792i\000"
	.text
	.align	2
	.globl	initParams
	.ent	initParams
initParams:
	.frame	$fp,40,$ra		# vars= 24, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 0
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	move	$v1,$a0
	la	$v0,$LC1
	sw	$v0,8($fp)
	la	$v0,$LC2
	sw	$v0,12($fp)
	la	$v0,$LC3
	sw	$v0,16($fp)
	la	$v0,$LC3
	sw	$v0,20($fp)
	la	$v0,$LC4
	sw	$v0,24($fp)
	sw	$zero,28($fp)
	lw	$v0,8($fp)
	sw	$v0,0($v1)
	lw	$v0,12($fp)
	sw	$v0,4($v1)
	lw	$v0,16($fp)
	sw	$v0,8($v1)
	lw	$v0,20($fp)
	sw	$v0,12($v1)
	lw	$v0,24($fp)
	sw	$v0,16($v1)
	lw	$v0,28($fp)
	sw	$v0,20($v1)
	move	$v0,$v1
	move	$sp,$fp
	lw	$fp,36($sp)
	addu	$sp,$sp,40
	j	$ra
	.end	initParams
	.size	initParams, .-initParams
	.rdata
	.align	2
$LC5:
	.ascii	"resolution\000"
	.align	2
$LC6:
	.ascii	"center\000"
	.align	2
$LC7:
	.ascii	"width\000"
	.align	2
$LC8:
	.ascii	"height\000"
	.align	2
$LC9:
	.ascii	"seed\000"
	.align	2
$LC10:
	.ascii	"output\000"
	.data
	.align	2
$LC11:
	.word	$LC5
	.word	1
	.word	0
	.word	114
	.word	$LC6
	.word	1
	.word	0
	.word	99
	.word	$LC7
	.word	1
	.word	0
	.word	119
	.word	$LC8
	.word	1
	.word	0
	.word	72
	.word	$LC9
	.word	1
	.word	0
	.word	115
	.word	$LC10
	.word	1
	.word	0
	.word	111
	.word	0
	.word	0
	.word	0
	.word	0
	.globl	memcpy
	.rdata
	.align	2
$LC12:
	.ascii	"r:c:w:H:s:o:\000"
	.text
	.align	2
	.globl	retrieveParams
	.ent	retrieveParams
retrieveParams:
	.frame	$fp,192,$ra		# vars= 144, regs= 3/0, args= 24, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,192
	.cprestore 24
	sw	$ra,184($sp)
	sw	$fp,180($sp)
	sw	$gp,176($sp)
	move	$fp,$sp
	sw	$a0,192($fp)
	sw	$a1,196($fp)
	sw	$a2,200($fp)
	li	$v0,1			# 0x1
	sw	$v0,32($fp)
	addu	$v0,$fp,40
	la	$v1,$LC11
	move	$a0,$v0
	move	$a1,$v1
	li	$a2,112			# 0x70
	la	$t9,memcpy
	jal	$ra,$t9
	sw	$zero,152($fp)
	sb	$zero,156($fp)
	la	$v0,$LC12
	sw	$v0,160($fp)
$L30:
	addu	$v1,$fp,40
	addu	$v0,$fp,152
	sw	$v0,16($sp)
	lw	$a0,192($fp)
	lw	$a1,196($fp)
	lw	$a2,160($fp)
	move	$a3,$v1
	la	$t9,getopt_long
	jal	$ra,$t9
	sb	$v0,156($fp)
	lbu	$v0,156($fp)
	sll	$v0,$v0,24
	sra	$v1,$v0,24
	li	$v0,-1			# 0xffffffffffffffff
	beq	$v1,$v0,$L31
	lw	$v1,32($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L32
	b	$L31
$L32:
	lb	$v0,156($fp)
	addu	$v0,$v0,-72
	sw	$v0,168($fp)
	lw	$v1,168($fp)
	sltu	$v0,$v1,48
	beq	$v0,$zero,$L41
	lw	$v0,168($fp)
	sll	$v1,$v0,2
	la	$v0,$L42
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	.cpadd	$v0
	j	$v0
	.rdata
	.align	2
$L42:
	.gpword	$L38
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L36
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L40
	.gpword	$L41
	.gpword	$L41
	.gpword	$L35
	.gpword	$L39
	.gpword	$L41
	.gpword	$L41
	.gpword	$L41
	.gpword	$L37
	.text
$L35:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,0($v1)
	b	$L30
$L36:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,4($v1)
	b	$L30
$L37:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,8($v1)
	b	$L30
$L38:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,12($v1)
	b	$L30
$L39:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,16($v1)
	b	$L30
$L40:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,20($v1)
	b	$L30
$L41:
	sw	$zero,32($fp)
	b	$L30
$L31:
	lw	$v0,32($fp)
	bne	$v0,$zero,$L43
	li	$v0,5			# 0x5
	sw	$v0,164($fp)
	b	$L29
$L43:
	sw	$zero,164($fp)
$L29:
	lw	$v0,164($fp)
	move	$sp,$fp
	lw	$ra,184($sp)
	lw	$fp,180($sp)
	addu	$sp,$sp,192
	j	$ra
	.end	retrieveParams
	.size	retrieveParams, .-retrieveParams
	.rdata
	.align	3
$LC13:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	getPixelRe
	.ent	getPixelRe
getPixelRe:
	.frame	$fp,24,$ra		# vars= 8, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,24
	.cprestore 0
	sw	$fp,20($sp)
	sw	$gp,16($sp)
	move	$fp,$sp
	sw	$a0,24($fp)
	sw	$a1,28($fp)
	sw	$a2,32($fp)
	sw	$a3,36($fp)
	lw	$v1,52($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L45
	lw	$v1,56($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L45
	l.d	$f0,24($fp)
	s.d	$f0,8($fp)
	b	$L44
$L45:
	l.d	$f2,40($fp)
	l.d	$f0,$LC13
	div.d	$f2,$f2,$f0
	l.d	$f0,24($fp)
	sub.d	$f4,$f0,$f2
	l.s	$f0,48($fp)
	cvt.d.w	$f6,$f0
	l.s	$f0,56($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,40($fp)
	div.d	$f0,$f0,$f2
	mul.d	$f0,$f6,$f0
	add.d	$f4,$f4,$f0
	s.d	$f4,8($fp)
$L44:
	l.d	$f0,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$ra
	.end	getPixelRe
	.size	getPixelRe, .-getPixelRe
	.rdata
	.align	3
$LC14:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	getPixelIm
	.ent	getPixelIm
getPixelIm:
	.frame	$fp,24,$ra		# vars= 8, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,24
	.cprestore 0
	sw	$fp,20($sp)
	sw	$gp,16($sp)
	move	$fp,$sp
	sw	$a0,24($fp)
	sw	$a1,28($fp)
	sw	$a2,32($fp)
	sw	$a3,36($fp)
	lw	$v1,52($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L47
	lw	$v1,56($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L47
	l.d	$f0,32($fp)
	s.d	$f0,8($fp)
	b	$L46
$L47:
	l.d	$f2,40($fp)
	l.d	$f0,$LC14
	div.d	$f2,$f2,$f0
	l.d	$f0,32($fp)
	add.d	$f4,$f2,$f0
	l.s	$f0,48($fp)
	cvt.d.w	$f6,$f0
	l.s	$f0,52($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,40($fp)
	div.d	$f0,$f0,$f2
	mul.d	$f0,$f6,$f0
	sub.d	$f4,$f4,$f0
	s.d	$f4,8($fp)
$L46:
	l.d	$f0,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$ra
	.end	getPixelIm
	.size	getPixelIm, .-getPixelIm
	.rdata
	.align	2
$LC15:
	.ascii	"-\000"
	.align	2
$LC16:
	.ascii	"[Warning] El archivo de output no pudo ser cerrado corre"
	.ascii	"ctamente: %s \n\000"
	.text
	.align	2
	.globl	closeFile
	.ent	closeFile
closeFile:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	lw	$v0,fileOutput
	beq	$v0,$zero,$L50
	lw	$v0,48($fp)
	beq	$v0,$zero,$L50
	la	$a0,$LC15
	lw	$a1,48($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L49
$L50:
	sw	$zero,fileOutput
	b	$L48
$L49:
	lw	$v0,fileOutput
	beq	$v0,$zero,$L48
	lw	$a0,fileOutput
	la	$t9,fclose
	jal	$ra,$t9
	sw	$v0,24($fp)
	lw	$v1,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L52
	la	$a0,__sF+176
	la	$a1,$LC16
	lw	$a2,48($fp)
	la	$t9,fprintf
	jal	$ra,$t9
$L52:
	sw	$zero,fileOutput
$L48:
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	closeFile
	.size	closeFile, .-closeFile
	.align	2
	.globl	getNewRealValue
	.ent	getNewRealValue
getNewRealValue:
	.frame	$fp,16,$ra		# vars= 0, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,16
	.cprestore 0
	sw	$fp,12($sp)
	sw	$gp,8($sp)
	move	$fp,$sp
	s.d	$f12,16($fp)
	s.d	$f14,24($fp)
	l.d	$f2,16($fp)
	l.d	$f0,16($fp)
	mul.d	$f2,$f2,$f0
	l.d	$f4,24($fp)
	l.d	$f0,24($fp)
	mul.d	$f0,$f4,$f0
	sub.d	$f2,$f2,$f0
	l.d	$f0,32($fp)
	add.d	$f2,$f2,$f0
	mov.d	$f0,$f2
	move	$sp,$fp
	lw	$fp,12($sp)
	addu	$sp,$sp,16
	j	$ra
	.end	getNewRealValue
	.size	getNewRealValue, .-getNewRealValue
	.align	2
	.globl	getNewImaginValue
	.ent	getNewImaginValue
getNewImaginValue:
	.frame	$fp,16,$ra		# vars= 0, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,16
	.cprestore 0
	sw	$fp,12($sp)
	sw	$gp,8($sp)
	move	$fp,$sp
	s.d	$f12,16($fp)
	s.d	$f14,24($fp)
	l.d	$f0,16($fp)
	add.d	$f0,$f0,$f0
	l.d	$f2,24($fp)
	mul.d	$f0,$f0,$f2
	l.d	$f2,32($fp)
	add.d	$f0,$f0,$f2
	move	$sp,$fp
	lw	$fp,12($sp)
	addu	$sp,$sp,16
	j	$ra
	.end	getNewImaginValue
	.size	getNewImaginValue, .-getNewImaginValue
	.rdata
	.align	2
$LC17:
	.ascii	"[Error] Hubo un error al escribir en el archivo. \n\000"
	.text
	.align	2
	.globl	writeBufferInOFile
	.ent	writeBufferInOFile
writeBufferInOFile:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	lw	$v0,fileOutput
	beq	$v0,$zero,$L57
	lw	$v0,68($fp)
	blez	$v0,$L57
	b	$L56
$L57:
	sw	$zero,40($fp)
	b	$L55
$L56:
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
	sw	$zero,28($fp)
	lw	$v0,68($fp)
	sw	$v0,32($fp)
$L58:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L60
	b	$L59
$L60:
	lw	$v1,64($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lw	$a0,ofd
	move	$a1,$v0
	lw	$a2,32($fp)
	la	$t9,write
	jal	$ra,$t9
	sw	$v0,36($fp)
	lw	$v0,36($fp)
	bgez	$v0,$L61
	la	$a0,__sF+176
	la	$a1,$LC17
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
	b	$L55
$L61:
	lw	$v1,28($fp)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	sw	$v0,28($fp)
	lw	$v1,68($fp)
	lw	$v0,28($fp)
	subu	$v0,$v1,$v0
	sw	$v0,32($fp)
	lw	$v0,32($fp)
	bgtz	$v0,$L58
	sw	$zero,24($fp)
	b	$L58
$L59:
	sw	$zero,40($fp)
$L55:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	writeBufferInOFile
	.size	writeBufferInOFile, .-writeBufferInOFile
	.rdata
	.align	2
$LC18:
	.ascii	"[Error] Hubo un error de asignacion de memoria (buffer)."
	.ascii	" \n\000"
	.text
	.align	2
	.globl	loadDataInBuffer
	.ent	loadDataInBuffer
loadDataInBuffer:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	move	$v0,$a0
	sb	$v0,24($fp)
	lw	$v0,buffer
	bne	$v0,$zero,$L64
	li	$a0,100			# 0x64
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,buffer
	lw	$v0,buffer
	bne	$v0,$zero,$L65
	la	$a0,__sF+176
	la	$a1,$LC18
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,4			# 0x4
	sw	$v0,28($fp)
	b	$L63
$L65:
	sw	$zero,quantityCharactersInBuffer
$L64:
	lw	$v1,buffer
	lw	$v0,quantityCharactersInBuffer
	addu	$v1,$v1,$v0
	lbu	$v0,24($fp)
	sb	$v0,0($v1)
	lw	$v0,quantityCharactersInBuffer
	addu	$v0,$v0,1
	sw	$v0,quantityCharactersInBuffer
	sw	$zero,28($fp)
$L63:
	lw	$v0,28($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	loadDataInBuffer
	.size	loadDataInBuffer, .-loadDataInBuffer
	.align	2
	.globl	putch
	.ent	putch
putch:
	.frame	$fp,56,$ra		# vars= 16, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,56
	.cprestore 16
	sw	$ra,48($sp)
	sw	$fp,44($sp)
	sw	$gp,40($sp)
	move	$fp,$sp
	move	$v0,$a0
	sb	$v0,24($fp)
	lw	$v0,quantityCharactersInBuffer
	slt	$v0,$v0,100
	beq	$v0,$zero,$L67
	lb	$v0,24($fp)
	move	$a0,$v0
	la	$t9,loadDataInBuffer
	jal	$ra,$t9
	sw	$v0,32($fp)
	b	$L66
$L67:
	lw	$a0,buffer
	lw	$a1,quantityCharactersInBuffer
	la	$t9,writeBufferInOFile
	jal	$ra,$t9
	sw	$v0,28($fp)
	lw	$v0,28($fp)
	beq	$v0,$zero,$L68
	lw	$v0,28($fp)
	sw	$v0,32($fp)
	b	$L66
$L68:
	sw	$zero,quantityCharactersInBuffer
	lb	$v0,24($fp)
	move	$a0,$v0
	la	$t9,loadDataInBuffer
	jal	$ra,$t9
	sw	$v0,32($fp)
$L66:
	lw	$v0,32($fp)
	move	$sp,$fp
	lw	$ra,48($sp)
	lw	$fp,44($sp)
	addu	$sp,$sp,56
	j	$ra
	.end	putch
	.size	putch, .-putch
	.align	2
	.globl	flush
	.ent	flush
flush:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	lw	$v0,quantityCharactersInBuffer
	blez	$v0,$L70
	lw	$a0,buffer
	lw	$a1,quantityCharactersInBuffer
	la	$t9,writeBufferInOFile
	jal	$ra,$t9
	sw	$v0,24($fp)
	b	$L69
$L70:
	sw	$zero,24($fp)
$L69:
	lw	$v0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	flush
	.size	flush, .-flush
	.rdata
	.align	2
$LC19:
	.ascii	"w\000"
	.align	2
$LC20:
	.ascii	"[Error] El archivo de output no pudo ser abierto para es"
	.ascii	"critura: %s \n\000"
	.text
	.align	2
	.globl	openFile
	.ent	openFile
openFile:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	la	$v0,__sF+88
	sw	$v0,fileOutput
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L73
	la	$a0,$LC15
	lw	$a1,48($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L72
$L73:
	sw	$zero,24($fp)
$L72:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L74
	lw	$a0,48($fp)
	la	$a1,$LC19
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,fileOutput
	lw	$v0,fileOutput
	bne	$v0,$zero,$L74
	la	$a0,__sF+176
	la	$a1,$LC20
	lw	$a2,48($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,3			# 0x3
	sw	$v0,28($fp)
	b	$L71
$L74:
	lw	$v0,fileOutput
	lh	$v0,14($v0)
	sw	$v0,ofd
	sw	$zero,28($fp)
$L71:
	lw	$v0,28($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	openFile
	.size	openFile, .-openFile
	.align	2
	.globl	loadPixelBrightness
	.ent	loadPixelBrightness
loadPixelBrightness:
	.frame	$fp,72,$ra		# vars= 32, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,72
	.cprestore 16
	sw	$ra,64($sp)
	sw	$fp,60($sp)
	sw	$gp,56($sp)
	move	$fp,$sp
	sw	$a0,72($fp)
	addu	$a0,$fp,24
	lw	$a1,72($fp)
	la	$t9,convertIntToCharacter
	jal	$ra,$t9
	sw	$zero,40($fp)
	sw	$zero,44($fp)
$L77:
	lw	$v0,44($fp)
	lw	$v1,36($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L80
	b	$L78
$L80:
	lw	$v1,44($fp)
	addu	$v0,$fp,24
	addu	$v0,$v0,$v1
	lb	$v0,0($v0)
	move	$a0,$v0
	la	$t9,putch
	jal	$ra,$t9
	sw	$v0,40($fp)
	lw	$v0,40($fp)
	beq	$v0,$zero,$L79
	lw	$v0,40($fp)
	sw	$v0,48($fp)
	b	$L76
$L79:
	lw	$v0,44($fp)
	addu	$v0,$v0,1
	sw	$v0,44($fp)
	b	$L77
$L78:
	lw	$v0,40($fp)
	sw	$v0,48($fp)
$L76:
	lw	$v0,48($fp)
	move	$sp,$fp
	lw	$ra,64($sp)
	lw	$fp,60($sp)
	addu	$sp,$sp,72
	j	$ra
	.end	loadPixelBrightness
	.size	loadPixelBrightness, .-loadPixelBrightness
	.rdata
	.align	2
$LC21:
	.ascii	"[Error] Hubo un error de asignacion de memoria (bufferTo"
	.ascii	"Load). \n\000"
	.text
	.align	2
	.globl	writeHeader
	.ent	writeHeader
writeHeader:
	.frame	$fp,96,$ra		# vars= 56, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,96
	.cprestore 16
	sw	$ra,88($sp)
	sw	$fp,84($sp)
	sw	$gp,80($sp)
	move	$fp,$sp
	sw	$a0,96($fp)
	sw	$a1,100($fp)
	sw	$a2,104($fp)
	addu	$a0,$fp,24
	lw	$a1,96($fp)
	la	$t9,convertIntToCharacter
	jal	$ra,$t9
	addu	$v0,$fp,40
	move	$a0,$v0
	lw	$a1,100($fp)
	la	$t9,convertIntToCharacter
	jal	$ra,$t9
	lw	$v1,52($fp)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,9
	sw	$v0,56($fp)
	lw	$a0,56($fp)
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,60($fp)
	lw	$v0,60($fp)
	bne	$v0,$zero,$L83
	la	$a0,__sF+176
	la	$a1,$LC21
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,4			# 0x4
	sw	$v0,76($fp)
	b	$L82
$L83:
	lw	$v1,60($fp)
	li	$v0,80			# 0x50
	sb	$v0,0($v1)
	lw	$v0,60($fp)
	addu	$v1,$v0,1
	li	$v0,50			# 0x32
	sb	$v0,0($v1)
	lw	$v0,60($fp)
	addu	$v1,$v0,2
	li	$v0,10			# 0xa
	sb	$v0,0($v1)
	li	$v0,3			# 0x3
	sw	$v0,64($fp)
	sw	$zero,68($fp)
$L84:
	lw	$v0,68($fp)
	lw	$v1,36($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L87
	b	$L85
$L87:
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$a0,$v1,$v0
	lw	$v1,68($fp)
	addu	$v0,$fp,24
	addu	$v0,$v0,$v1
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	lw	$v0,68($fp)
	addu	$v0,$v0,1
	sw	$v0,68($fp)
	b	$L84
$L85:
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$v1,$v1,$v0
	li	$v0,32			# 0x20
	sb	$v0,0($v1)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	sw	$zero,68($fp)
$L88:
	lw	$v0,68($fp)
	lw	$v1,52($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L91
	b	$L89
$L91:
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$a0,$v1,$v0
	addu	$v1,$fp,40
	lw	$v0,68($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	lw	$v0,68($fp)
	addu	$v0,$v0,1
	sw	$v0,68($fp)
	b	$L88
$L89:
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$v1,$v1,$v0
	li	$v0,10			# 0xa
	sb	$v0,0($v1)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$v1,$v1,$v0
	li	$v0,50			# 0x32
	sb	$v0,0($v1)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$v1,$v1,$v0
	li	$v0,53			# 0x35
	sb	$v0,0($v1)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$v1,$v1,$v0
	li	$v0,53			# 0x35
	sb	$v0,0($v1)
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	lw	$v1,60($fp)
	lw	$v0,64($fp)
	addu	$v1,$v1,$v0
	li	$v0,10			# 0xa
	sb	$v0,0($v1)
	lw	$a0,60($fp)
	lw	$a1,56($fp)
	la	$t9,writeBufferInOFile
	jal	$ra,$t9
	sw	$v0,72($fp)
	lw	$a0,60($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$v0,72($fp)
	beq	$v0,$zero,$L92
	lw	$a0,104($fp)
	la	$t9,closeFile
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,76($fp)
	b	$L82
$L92:
	sw	$zero,76($fp)
$L82:
	lw	$v0,76($fp)
	move	$sp,$fp
	lw	$ra,88($sp)
	lw	$fp,84($sp)
	addu	$sp,$sp,96
	j	$ra
	.end	writeHeader
	.size	writeHeader, .-writeHeader
	.rdata
	.align	3
$LC22:
	.word	0
	.word	1074790400
	.text
	.align	2
	.globl	drawJuliaSet
	.ent	drawJuliaSet
drawJuliaSet:
	.frame	$fp,120,$ra		# vars= 56, regs= 3/0, args= 40, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,120
	.cprestore 40
	sw	$ra,112($sp)
	sw	$fp,108($sp)
	sw	$gp,104($sp)
	move	$fp,$sp
	sw	$a0,120($fp)
	lw	$v0,120($fp)
	lw	$a0,56($v0)
	la	$t9,openFile
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L94
	lw	$v0,48($fp)
	sw	$v0,96($fp)
	b	$L93
$L94:
	lw	$v0,120($fp)
	lw	$v1,120($fp)
	lw	$a2,120($fp)
	lw	$a0,4($v0)
	lw	$a1,0($v1)
	lw	$a2,56($a2)
	la	$t9,writeHeader
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L95
	lw	$v0,48($fp)
	sw	$v0,96($fp)
	b	$L93
$L95:
	sw	$zero,48($fp)
	sw	$zero,72($fp)
$L96:
	lw	$v0,120($fp)
	lw	$v1,72($fp)
	lw	$v0,0($v0)
	slt	$v0,$v1,$v0
	bne	$v0,$zero,$L99
	b	$L97
$L99:
	sw	$zero,76($fp)
$L100:
	lw	$v0,120($fp)
	lw	$v1,76($fp)
	lw	$v0,4($v0)
	slt	$v0,$v1,$v0
	bne	$v0,$zero,$L103
	b	$L101
$L103:
	lw	$v1,120($fp)
	lw	$v0,120($fp)
	l.d	$f0,24($v0)
	s.d	$f0,16($sp)
	lw	$v0,76($fp)
	sw	$v0,24($sp)
	lw	$v0,120($fp)
	lw	$v0,0($v0)
	sw	$v0,28($sp)
	lw	$v0,120($fp)
	lw	$v0,4($v0)
	sw	$v0,32($sp)
	lw	$a0,8($v1)
	lw	$a1,12($v1)
	lw	$a2,16($v1)
	lw	$a3,20($v1)
	la	$t9,getPixelRe
	jal	$ra,$t9
	s.d	$f0,56($fp)
	lw	$v1,120($fp)
	lw	$v0,120($fp)
	l.d	$f0,32($v0)
	s.d	$f0,16($sp)
	lw	$v0,72($fp)
	sw	$v0,24($sp)
	lw	$v0,120($fp)
	lw	$v0,0($v0)
	sw	$v0,28($sp)
	lw	$v0,120($fp)
	lw	$v0,4($v0)
	sw	$v0,32($sp)
	lw	$a0,8($v1)
	lw	$a1,12($v1)
	lw	$a2,16($v1)
	lw	$a3,20($v1)
	la	$t9,getPixelIm
	jal	$ra,$t9
	s.d	$f0,64($fp)
	sw	$zero,80($fp)
	li	$v0,1			# 0x1
	sw	$v0,84($fp)
$L104:
	lw	$v0,80($fp)
	slt	$v0,$v0,254
	beq	$v0,$zero,$L105
	lw	$v1,84($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L106
	b	$L105
$L106:
	l.d	$f2,56($fp)
	l.d	$f0,56($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,64($fp)
	l.d	$f0,64($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f2,$f4,$f0
	l.d	$f0,$LC22
	c.lt.d	$f0,$f2
	bc1t	$L109
	b	$L108
$L109:
	sw	$zero,84($fp)
	b	$L104
$L108:
	l.d	$f0,56($fp)
	s.d	$f0,88($fp)
	lw	$v0,120($fp)
	l.d	$f0,40($v0)
	s.d	$f0,16($sp)
	l.d	$f12,56($fp)
	l.d	$f14,64($fp)
	la	$t9,getNewRealValue
	jal	$ra,$t9
	s.d	$f0,56($fp)
	lw	$v0,120($fp)
	l.d	$f0,48($v0)
	s.d	$f0,16($sp)
	l.d	$f12,88($fp)
	l.d	$f14,64($fp)
	la	$t9,getNewImaginValue
	jal	$ra,$t9
	s.d	$f0,64($fp)
	lw	$v0,80($fp)
	addu	$v0,$v0,1
	sw	$v0,80($fp)
	b	$L104
$L105:
	lw	$a0,80($fp)
	la	$t9,loadPixelBrightness
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L111
	lw	$v0,120($fp)
	lw	$a0,56($v0)
	la	$t9,closeFile
	jal	$ra,$t9
	lw	$v0,48($fp)
	sw	$v0,96($fp)
	b	$L93
$L111:
	li	$a0,32			# 0x20
	la	$t9,putch
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L102
	lw	$v0,120($fp)
	lw	$a0,56($v0)
	la	$t9,closeFile
	jal	$ra,$t9
	lw	$v0,48($fp)
	sw	$v0,96($fp)
	b	$L93
$L102:
	lw	$v0,76($fp)
	addu	$v0,$v0,1
	sw	$v0,76($fp)
	b	$L100
$L101:
	li	$a0,10			# 0xa
	la	$t9,putch
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L98
	lw	$v0,120($fp)
	lw	$a0,56($v0)
	la	$t9,closeFile
	jal	$ra,$t9
	lw	$v0,48($fp)
	sw	$v0,96($fp)
	b	$L93
$L98:
	lw	$v0,72($fp)
	addu	$v0,$v0,1
	sw	$v0,72($fp)
	b	$L96
$L97:
	la	$t9,flush
	jal	$ra,$t9
	lw	$v0,120($fp)
	lw	$a0,56($v0)
	la	$t9,closeFile
	jal	$ra,$t9
	sw	$zero,96($fp)
$L93:
	lw	$v0,96($fp)
	move	$sp,$fp
	lw	$ra,112($sp)
	lw	$fp,108($sp)
	addu	$sp,$sp,120
	j	$ra
	.end	drawJuliaSet
	.size	drawJuliaSet, .-drawJuliaSet
	.rdata
	.align	2
$LC23:
	.ascii	"[Error] La resolucion especificada es incorrecta.\n\000"
	.align	2
$LC24:
	.ascii	"[Error] Los valores de la resolucion deben de ser mayore"
	.ascii	"s a cero.\n\000"
	.text
	.align	2
	.globl	getValidResolution
	.ent	getValidResolution
getValidResolution:
	.frame	$fp,96,$ra		# vars= 56, regs= 4/0, args= 16, extra= 8
	.mask	0xd0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,96
	.cprestore 16
	sw	$ra,92($sp)
	sw	$fp,88($sp)
	sw	$gp,84($sp)
	sw	$s0,80($sp)
	move	$fp,$sp
	sw	$a0,96($fp)
	sw	$a1,100($fp)
	sw	$sp,68($fp)
	lw	$v0,96($fp)
	lw	$v0,0($v0)
	beq	$v0,$zero,$L116
	lw	$v0,96($fp)
	lw	$v0,0($v0)
	lb	$v0,0($v0)
	bne	$v0,$zero,$L115
$L116:
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L114
$L115:
	li	$v0,120			# 0x78
	sw	$v0,24($fp)
	lw	$v0,96($fp)
	lw	$v0,0($v0)
	lb	$v0,0($v0)
	sw	$v0,28($fp)
	lw	$s0,96($fp)
	lw	$v0,96($fp)
	lw	$a0,0($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,0($s0)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	lb	$v0,0($v0)
	sw	$v0,32($fp)
	lw	$v0,28($fp)
	sll	$v1,$v0,1
	lw	$v0,_tolower_tab_
	addu	$v0,$v1,$v0
	addu	$v0,$v0,2
	lh	$v1,0($v0)
	lw	$v0,24($fp)
	beq	$v1,$v0,$L118
	lw	$v0,32($fp)
	sll	$v1,$v0,1
	lw	$v0,_tolower_tab_
	addu	$v0,$v1,$v0
	addu	$v0,$v0,2
	lh	$v1,0($v0)
	lw	$v0,24($fp)
	beq	$v1,$v0,$L118
	b	$L117
$L118:
	li	$v1,6			# 0x6
	sw	$v1,64($fp)
	b	$L114
$L117:
	sw	$zero,36($fp)
	li	$v0,1			# 0x1
	sw	$v0,40($fp)
	li	$v0,1			# 0x1
	sw	$v0,44($fp)
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,48($fp)
	li	$v0,1			# 0x1
	sw	$v0,52($fp)
	sw	$zero,56($fp)
$L119:
	lw	$v0,96($fp)
	lw	$a0,0($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,56($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L122
	b	$L120
$L122:
	lw	$v0,96($fp)
	lw	$v1,0($v0)
	lw	$v0,56($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	sll	$v1,$v0,1
	lw	$v0,_tolower_tab_
	addu	$v0,$v1,$v0
	addu	$v0,$v0,2
	lh	$v1,0($v0)
	lw	$v0,24($fp)
	bne	$v1,$v0,$L123
	lw	$v0,40($fp)
	bne	$v0,$zero,$L124
	sw	$zero,52($fp)
	b	$L121
$L124:
	lw	$v0,56($fp)
	sw	$v0,36($fp)
	sw	$zero,40($fp)
	b	$L121
$L123:
	lw	$v0,48($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L128
	lw	$v0,48($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L128
	b	$L121
$L128:
	sw	$zero,44($fp)
$L121:
	lw	$v0,56($fp)
	addu	$v0,$v0,1
	sw	$v0,56($fp)
	b	$L119
$L120:
	lw	$v0,44($fp)
	beq	$v0,$zero,$L130
	lw	$v1,40($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L130
	lw	$v0,52($fp)
	bne	$v0,$zero,$L129
$L130:
	la	$a0,__sF+176
	la	$a1,$LC23
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L114
$L129:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,60($fp)
	lw	$v0,60($fp)
	addu	$v0,$v0,-1
	addu	$v0,$v0,1
	addu	$v0,$v0,7
	srl	$v0,$v0,3
	sll	$v0,$v0,3
	subu	$sp,$sp,$v0
	addu	$v1,$sp,16
	sw	$v1,72($fp)
	sw	$zero,56($fp)
$L131:
	lw	$v0,56($fp)
	lw	$v1,36($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L134
	b	$L132
$L134:
	lw	$v0,56($fp)
	lw	$v1,72($fp)
	addu	$a0,$v1,$v0
	lw	$v0,96($fp)
	lw	$v1,0($v0)
	lw	$v0,56($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,56($fp)
	addu	$v0,$v0,1
	sw	$v0,56($fp)
	b	$L131
$L132:
	lw	$v0,36($fp)
	lw	$v1,72($fp)
	addu	$v0,$v1,$v0
	sb	$zero,0($v0)
	lw	$s0,100($fp)
	lw	$a0,72($fp)
	la	$t9,atoi
	jal	$ra,$t9
	sw	$v0,4($s0)
	lw	$v0,100($fp)
	lw	$v0,4($v0)
	bgtz	$v0,$L135
	la	$a0,__sF+176
	la	$a1,$LC24
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,68($fp)
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L114
$L135:
	lw	$v0,96($fp)
	lw	$a0,0($v0)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,60($fp)
	lw	$v1,60($fp)
	lw	$v0,36($fp)
	subu	$v0,$v1,$v0
	sw	$v0,60($fp)
	lw	$v0,60($fp)
	addu	$v0,$v0,-1
	addu	$v0,$v0,1
	addu	$v0,$v0,7
	srl	$v0,$v0,3
	sll	$v0,$v0,3
	subu	$sp,$sp,$v0
	addu	$v1,$sp,16
	sw	$v1,76($fp)
	sw	$zero,56($fp)
$L136:
	lw	$v0,60($fp)
	addu	$v1,$v0,-1
	lw	$v0,56($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L139
	b	$L137
$L139:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	lw	$v0,56($fp)
	lw	$v1,76($fp)
	addu	$a0,$v1,$v0
	lw	$v0,96($fp)
	lw	$v1,0($v0)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,56($fp)
	addu	$v0,$v0,1
	sw	$v0,56($fp)
	b	$L136
$L137:
	lw	$v0,60($fp)
	lw	$v1,76($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	sb	$zero,0($v0)
	lw	$s0,100($fp)
	lw	$a0,76($fp)
	la	$t9,atoi
	jal	$ra,$t9
	sw	$v0,0($s0)
	lw	$v0,100($fp)
	lw	$v0,0($v0)
	bgtz	$v0,$L140
	la	$a0,__sF+176
	la	$a1,$LC24
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,68($fp)
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L114
$L140:
	lw	$sp,68($fp)
	sw	$zero,64($fp)
$L114:
	lw	$v0,64($fp)
	move	$sp,$fp
	lw	$ra,92($sp)
	lw	$fp,88($sp)
	lw	$s0,80($sp)
	addu	$sp,$sp,96
	j	$ra
	.end	getValidResolution
	.size	getValidResolution, .-getValidResolution
	.rdata
	.align	2
$LC25:
	.ascii	"[Error] No hay valor de centro especificado.\n\000"
	.align	2
$LC26:
	.ascii	"[Error] No hay valor de semilla especificado.\n\000"
	.align	2
$LC27:
	.ascii	"[Error] Formato incorrecto del numero complejo para el c"
	.ascii	"entro.\n\000"
	.align	2
$LC28:
	.ascii	"[Error] Formato incorrecto del numero complejo para la s"
	.ascii	"emilla.\n\000"
	.text
	.align	2
	.globl	getValidComplex
	.ent	getValidComplex
getValidComplex:
	.frame	$fp,136,$ra		# vars= 96, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,136
	.cprestore 16
	sw	$ra,128($sp)
	sw	$fp,124($sp)
	sw	$gp,120($sp)
	move	$fp,$sp
	sw	$a0,136($fp)
	sw	$a1,140($fp)
	sw	$a2,144($fp)
	sw	$a3,148($fp)
	sw	$sp,108($fp)
	lw	$v0,144($fp)
	bne	$v0,$zero,$L142
	lw	$v0,136($fp)
	lw	$v0,4($v0)
	bne	$v0,$zero,$L142
	la	$a0,__sF+176
	la	$a1,$LC25
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L141
$L142:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L143
	lw	$v0,136($fp)
	lw	$v0,16($v0)
	bne	$v0,$zero,$L143
	la	$a0,__sF+176
	la	$a1,$LC26
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v1,6			# 0x6
	sw	$v1,104($fp)
	b	$L141
$L143:
	sw	$zero,24($fp)
	lw	$v0,144($fp)
	bne	$v0,$zero,$L144
	lw	$v0,136($fp)
	lw	$v0,4($v0)
	sw	$v0,24($fp)
$L144:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L145
	lw	$v0,136($fp)
	lw	$v0,16($v0)
	sw	$v0,24($fp)
$L145:
	lw	$v0,24($fp)
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L147
	lw	$v0,24($fp)
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L146
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L147
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L147
	b	$L146
$L147:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L148
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
$L148:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L149
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L149:
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L141
$L146:
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-2
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L151
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-2
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L151
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	lb	$v1,0($v0)
	li	$v0,105			# 0x69
	bne	$v1,$v0,$L151
	b	$L150
$L151:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L152
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
$L152:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L153
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L153:
	li	$v1,6			# 0x6
	sw	$v1,104($fp)
	b	$L141
$L150:
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,28($fp)
	li	$v0,1			# 0x1
	sw	$v0,32($fp)
	li	$v0,1			# 0x1
	sw	$v0,36($fp)
	li	$v0,1			# 0x1
	sw	$v0,40($fp)
	li	$v0,1			# 0x1
	sw	$v0,44($fp)
	sb	$zero,48($fp)
	li	$v0,1			# 0x1
	sw	$v0,52($fp)
$L154:
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	addu	$v1,$v0,-1
	lw	$v0,52($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L157
	b	$L155
$L157:
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,48($fp)
	lb	$v1,48($fp)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L159
	lb	$v1,48($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L159
	b	$L158
$L159:
	lw	$v0,32($fp)
	bne	$v0,$zero,$L160
	sw	$zero,36($fp)
	b	$L156
$L160:
	lw	$v0,52($fp)
	sw	$v0,28($fp)
	sw	$zero,32($fp)
	b	$L156
$L158:
	lb	$v1,48($fp)
	li	$v0,105			# 0x69
	bne	$v1,$v0,$L156
	sw	$zero,40($fp)
$L156:
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L154
$L155:
	lw	$v0,36($fp)
	beq	$v0,$zero,$L165
	lw	$v0,44($fp)
	beq	$v0,$zero,$L165
	lw	$v1,32($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L165
	lw	$v0,40($fp)
	bne	$v0,$zero,$L164
$L165:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L166
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
$L166:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L167
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L167:
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L141
$L164:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,56($fp)
	lw	$v0,56($fp)
	addu	$v0,$v0,-1
	addu	$v0,$v0,1
	addu	$v0,$v0,7
	srl	$v0,$v0,3
	sll	$v0,$v0,3
	subu	$sp,$sp,$v0
	addu	$v1,$sp,16
	sw	$v1,112($fp)
	sw	$zero,60($fp)
	sw	$zero,64($fp)
	sw	$zero,68($fp)
	li	$v0,1			# 0x1
	sw	$v0,72($fp)
	sw	$zero,52($fp)
$L168:
	lw	$v0,52($fp)
	lw	$v1,28($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L171
	b	$L169
$L171:
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,68($fp)
	lw	$v0,68($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L173
	lw	$v0,68($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L173
	b	$L172
$L173:
	lw	$v1,68($fp)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L172
	lw	$v1,68($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L172
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	beq	$v1,$v0,$L172
	li	$v0,1			# 0x1
	sw	$v0,60($fp)
	b	$L174
$L172:
	lw	$v1,68($fp)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L175
	lw	$v1,68($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L175
	lw	$v0,52($fp)
	lw	$v1,112($fp)
	addu	$a0,$v1,$v0
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
$L175:
	lw	$v1,68($fp)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L174
	sw	$zero,72($fp)
$L174:
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L170
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
$L170:
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L168
$L169:
	lw	$v0,28($fp)
	lw	$v1,112($fp)
	addu	$v0,$v1,$v0
	sb	$zero,0($v0)
	lw	$v0,64($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L179
	lw	$v1,60($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L179
	b	$L178
$L179:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L180
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
$L180:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L181
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L181:
	lw	$sp,108($fp)
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L141
$L178:
	lw	$a0,112($fp)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,80($fp)
	lw	$v0,72($fp)
	bne	$v0,$zero,$L182
	l.d	$f0,80($fp)
	neg.d	$f0,$f0
	s.d	$f0,80($fp)
$L182:
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,28($fp)
	subu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	sw	$v0,56($fp)
	lw	$v0,56($fp)
	addu	$v0,$v0,-1
	addu	$v0,$v0,1
	addu	$v0,$v0,7
	srl	$v0,$v0,3
	sll	$v0,$v0,3
	subu	$sp,$sp,$v0
	addu	$v1,$sp,16
	sw	$v1,116($fp)
	sw	$zero,60($fp)
	sw	$zero,64($fp)
	sw	$zero,68($fp)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,88($fp)
	sw	$zero,52($fp)
$L183:
	lw	$v0,56($fp)
	addu	$v1,$v0,-1
	lw	$v0,52($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L186
	b	$L184
$L186:
	lw	$v1,24($fp)
	lw	$v0,88($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,68($fp)
	lw	$v0,68($fp)
	slt	$v0,$v0,48
	beq	$v0,$zero,$L187
	lw	$v0,68($fp)
	slt	$v0,$v0,58
	bne	$v0,$zero,$L187
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	beq	$v1,$v0,$L187
	li	$v0,1			# 0x1
	sw	$v0,60($fp)
	b	$L188
$L187:
	lw	$v0,52($fp)
	lw	$v1,116($fp)
	addu	$a0,$v1,$v0
	lw	$v1,24($fp)
	lw	$v0,88($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
$L188:
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L189
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
$L189:
	lw	$v0,88($fp)
	addu	$v0,$v0,1
	sw	$v0,88($fp)
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L183
$L184:
	lw	$v0,56($fp)
	lw	$v1,116($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	sb	$zero,0($v0)
	lw	$v0,64($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L191
	lw	$v1,60($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L191
	b	$L190
$L191:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L192
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
$L192:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L193
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L193:
	lw	$sp,108($fp)
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L141
$L190:
	lw	$a0,116($fp)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,96($fp)
	lw	$v1,24($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L194
	l.d	$f0,96($fp)
	neg.d	$f0,$f0
	s.d	$f0,96($fp)
$L194:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L195
	lw	$v0,140($fp)
	l.d	$f0,80($fp)
	s.d	$f0,8($v0)
	lw	$v0,140($fp)
	l.d	$f0,96($fp)
	s.d	$f0,16($v0)
$L195:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L196
	lw	$v0,140($fp)
	l.d	$f0,80($fp)
	s.d	$f0,40($v0)
	lw	$v0,140($fp)
	l.d	$f0,96($fp)
	s.d	$f0,48($v0)
$L196:
	lw	$sp,108($fp)
	sw	$zero,104($fp)
$L141:
	lw	$v0,104($fp)
	move	$sp,$fp
	lw	$ra,128($sp)
	lw	$fp,124($sp)
	addu	$sp,$sp,136
	j	$ra
	.end	getValidComplex
	.size	getValidComplex, .-getValidComplex
	.rdata
	.align	2
$LC29:
	.ascii	"[Error] Debe de especificarse el ancho.\n\000"
	.align	2
$LC30:
	.ascii	"[Error] Formato incorrecto para el ancho.\n\000"
	.align	2
$LC31:
	.ascii	"[Error] El ancho deben de ser mayores a cero.\n\000"
	.text
	.align	2
	.globl	getValidWidth
	.ent	getValidWidth
getValidWidth:
	.frame	$fp,64,$ra		# vars= 24, regs= 4/0, args= 16, extra= 8
	.mask	0xd0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,60($sp)
	sw	$fp,56($sp)
	sw	$gp,52($sp)
	sw	$s0,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	lw	$v0,64($fp)
	lw	$v0,8($v0)
	bne	$v0,$zero,$L198
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L197
$L198:
	sw	$zero,24($fp)
	sw	$zero,32($fp)
	sw	$zero,36($fp)
$L199:
	lw	$v0,64($fp)
	lw	$a0,8($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,36($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L202
	b	$L200
$L202:
	lw	$v0,64($fp)
	lw	$v1,8($v0)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,28($fp)
	lw	$v1,28($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L203
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	b	$L201
$L203:
	lw	$v0,28($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L206
	lw	$v0,28($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L206
	b	$L201
$L206:
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L201:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L199
$L200:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L208
	lw	$v0,32($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L208
	b	$L207
$L208:
	la	$a0,__sF+176
	la	$a1,$LC30
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L197
$L207:
	lw	$s0,68($fp)
	lw	$v0,64($fp)
	lw	$a0,8($v0)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,24($s0)
	lw	$v0,68($fp)
	l.d	$f2,24($v0)
	mtc1	$zero,$f0
	mtc1	$zero,$f1
	c.le.d	$f2,$f0
	bc1t	$L210
	b	$L209
$L210:
	la	$a0,__sF+176
	la	$a1,$LC31
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L197
$L209:
	sw	$zero,40($fp)
$L197:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,60($sp)
	lw	$fp,56($sp)
	lw	$s0,48($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	getValidWidth
	.size	getValidWidth, .-getValidWidth
	.rdata
	.align	2
$LC32:
	.ascii	"[Error] Debe de especificarse el alto.\n\000"
	.align	2
$LC33:
	.ascii	"[Error] Formato incorrecto para el alto.\n\000"
	.align	2
$LC34:
	.ascii	"[Error] El alto deben de ser mayores a cero.\n\000"
	.text
	.align	2
	.globl	getValidHeight
	.ent	getValidHeight
getValidHeight:
	.frame	$fp,64,$ra		# vars= 24, regs= 4/0, args= 16, extra= 8
	.mask	0xd0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,60($sp)
	sw	$fp,56($sp)
	sw	$gp,52($sp)
	sw	$s0,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	lw	$v0,64($fp)
	lw	$v0,12($v0)
	bne	$v0,$zero,$L212
	la	$a0,__sF+176
	la	$a1,$LC32
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L211
$L212:
	sw	$zero,24($fp)
	sw	$zero,32($fp)
	sw	$zero,36($fp)
$L213:
	lw	$v0,64($fp)
	lw	$a0,12($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,36($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L216
	b	$L214
$L216:
	lw	$v0,64($fp)
	lw	$v1,12($v0)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,28($fp)
	lw	$v1,28($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L217
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	b	$L215
$L217:
	lw	$v0,28($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L220
	lw	$v0,28($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L220
	b	$L215
$L220:
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L215:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L213
$L214:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L222
	lw	$v0,32($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L222
	b	$L221
$L222:
	la	$a0,__sF+176
	la	$a1,$LC33
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L211
$L221:
	lw	$s0,68($fp)
	lw	$v0,64($fp)
	lw	$a0,12($v0)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,32($s0)
	lw	$v0,68($fp)
	l.d	$f2,32($v0)
	mtc1	$zero,$f0
	mtc1	$zero,$f1
	c.le.d	$f2,$f0
	bc1t	$L224
	b	$L223
$L224:
	la	$a0,__sF+176
	la	$a1,$LC34
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L211
$L223:
	sw	$zero,40($fp)
$L211:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,60($sp)
	lw	$fp,56($sp)
	lw	$s0,48($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	getValidHeight
	.size	getValidHeight, .-getValidHeight
	.rdata
	.align	2
$LC35:
	.ascii	"[Error] Formato incorrecto como nombre de archivo de sal"
	.ascii	"ida.\n\000"
	.align	2
$LC36:
	.ascii	"[Error] Extension incorrecta para el archivo de salida.\n"
	.ascii	"\000"
	.text
	.align	2
	.globl	getValidPathOutput
	.ent	getValidPathOutput
getValidPathOutput:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	lw	$v0,64($fp)
	lw	$v0,20($v0)
	beq	$v0,$zero,$L227
	lw	$v0,64($fp)
	la	$a0,$LC15
	lw	$a1,20($v0)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L226
$L227:
	lw	$v0,68($fp)
	lw	$v1,64($fp)
	lw	$v1,20($v1)
	sw	$v1,56($v0)
	sw	$zero,44($fp)
	b	$L225
$L226:
	sw	$zero,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,28($fp)
	sw	$zero,36($fp)
$L228:
	lw	$v0,64($fp)
	lw	$a0,20($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,36($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L231
	b	$L229
$L231:
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,32($fp)
	lw	$v1,32($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L232
	lw	$v0,36($fp)
	sw	$v0,28($fp)
	b	$L230
$L232:
	lw	$v0,32($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L235
	lw	$v0,32($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L235
	b	$L230
$L235:
	lw	$v0,32($fp)
	slt	$v0,$v0,65
	bne	$v0,$zero,$L236
	lw	$v0,32($fp)
	slt	$v0,$v0,91
	beq	$v0,$zero,$L236
	b	$L230
$L236:
	lw	$v0,32($fp)
	slt	$v0,$v0,97
	bne	$v0,$zero,$L237
	lw	$v0,32($fp)
	slt	$v0,$v0,123
	beq	$v0,$zero,$L237
	b	$L230
$L237:
	lw	$v1,32($fp)
	li	$v0,47			# 0x2f
	beq	$v1,$v0,$L230
	lw	$v1,32($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L230
	lw	$v1,32($fp)
	li	$v0,95			# 0x5f
	beq	$v1,$v0,$L230
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L230:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L228
$L229:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L239
	lw	$v0,28($fp)
	bne	$v0,$zero,$L238
$L239:
	la	$a0,__sF+176
	la	$a1,$LC35
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,44($fp)
	b	$L225
$L238:
	lw	$v0,64($fp)
	lw	$a0,20($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,28($fp)
	subu	$v0,$v1,$v0
	sw	$v0,40($fp)
	lw	$v1,40($fp)
	li	$v0,4			# 0x4
	beq	$v1,$v0,$L240
	la	$a0,__sF+176
	la	$a1,$LC36
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,44($fp)
	b	$L225
$L240:
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,46			# 0x2e
	beq	$v1,$v0,$L241
	la	$a0,__sF+176
	la	$a1,$LC35
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,44($fp)
	b	$L225
$L241:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,112			# 0x70
	beq	$v1,$v0,$L242
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,80			# 0x50
	beq	$v1,$v0,$L242
	la	$a0,__sF+176
	la	$a1,$LC36
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,44($fp)
	b	$L225
$L242:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,103			# 0x67
	beq	$v1,$v0,$L243
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,71			# 0x47
	beq	$v1,$v0,$L243
	la	$a0,__sF+176
	la	$a1,$LC36
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,44($fp)
	b	$L225
$L243:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,109			# 0x6d
	beq	$v1,$v0,$L244
	lw	$v0,64($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,77			# 0x4d
	beq	$v1,$v0,$L244
	la	$a0,__sF+176
	la	$a1,$LC36
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,44($fp)
	b	$L225
$L244:
	lw	$v0,68($fp)
	lw	$v1,64($fp)
	lw	$v1,20($v1)
	sw	$v1,56($v0)
	sw	$zero,44($fp)
$L225:
	lw	$v0,44($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	getValidPathOutput
	.size	getValidPathOutput, .-getValidPathOutput
	.align	2
	.globl	executeFractal
	.ent	executeFractal
executeFractal:
	.frame	$fp,120,$ra		# vars= 80, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,120
	.cprestore 16
	sw	$ra,112($sp)
	sw	$fp,108($sp)
	sw	$gp,104($sp)
	move	$fp,$sp
	sw	$a0,120($fp)
	lw	$a0,120($fp)
	addu	$a1,$fp,24
	la	$t9,getValidResolution
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L246
	lw	$v0,88($fp)
	sw	$v0,96($fp)
	b	$L245
$L246:
	lw	$a0,120($fp)
	addu	$a1,$fp,24
	move	$a2,$zero
	li	$a3,1			# 0x1
	la	$t9,getValidComplex
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L247
	lw	$v0,88($fp)
	sw	$v0,96($fp)
	b	$L245
$L247:
	lw	$a0,120($fp)
	addu	$a1,$fp,24
	li	$a2,1			# 0x1
	move	$a3,$zero
	la	$t9,getValidComplex
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L248
	lw	$v0,88($fp)
	sw	$v0,96($fp)
	b	$L245
$L248:
	lw	$a0,120($fp)
	addu	$a1,$fp,24
	la	$t9,getValidWidth
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L249
	lw	$v0,88($fp)
	sw	$v0,96($fp)
	b	$L245
$L249:
	lw	$a0,120($fp)
	addu	$a1,$fp,24
	la	$t9,getValidHeight
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L250
	lw	$v0,88($fp)
	sw	$v0,96($fp)
	b	$L245
$L250:
	lw	$a0,120($fp)
	addu	$a1,$fp,24
	la	$t9,getValidPathOutput
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L251
	lw	$v0,88($fp)
	sw	$v0,96($fp)
	b	$L245
$L251:
	sw	$zero,buffer
	sw	$zero,fileOutput
	addu	$a0,$fp,24
	la	$t9,drawJuliaSet
	jal	$ra,$t9
	sw	$v0,92($fp)
	lw	$v0,buffer
	beq	$v0,$zero,$L252
	lw	$a0,buffer
	la	$t9,free
	jal	$ra,$t9
	sw	$zero,buffer
$L252:
	lw	$v0,fileOutput
	beq	$v0,$zero,$L253
	lw	$a0,80($fp)
	la	$t9,closeFile
	jal	$ra,$t9
$L253:
	lw	$v0,92($fp)
	sw	$v0,96($fp)
$L245:
	lw	$v0,96($fp)
	move	$sp,$fp
	lw	$ra,112($sp)
	lw	$fp,108($sp)
	addu	$sp,$sp,120
	j	$ra
	.end	executeFractal
	.size	executeFractal, .-executeFractal
	.rdata
	.align	2
$LC37:
	.ascii	"[Error] Incorrecta option de menu.\n\000"
	.text
	.align	2
	.globl	execute
	.ent	execute
execute:
	.frame	$fp,72,$ra		# vars= 32, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,72
	.cprestore 16
	sw	$ra,64($sp)
	sw	$fp,60($sp)
	sw	$gp,56($sp)
	move	$fp,$sp
	sw	$a0,72($fp)
	sw	$a1,76($fp)
	addu	$a0,$fp,24
	la	$t9,initParams
	jal	$ra,$t9
	lw	$a0,72($fp)
	lw	$a1,76($fp)
	addu	$a2,$fp,24
	la	$t9,retrieveParams
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v0,48($fp)
	beq	$v0,$zero,$L255
	la	$a0,__sF+176
	la	$a1,$LC37
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,5			# 0x5
	sw	$v0,52($fp)
	b	$L254
$L255:
	addu	$a0,$fp,24
	la	$t9,executeFractal
	jal	$ra,$t9
	sw	$v0,52($fp)
$L254:
	lw	$v0,52($fp)
	move	$sp,$fp
	lw	$ra,64($sp)
	lw	$fp,60($sp)
	addu	$sp,$sp,72
	j	$ra
	.end	execute
	.size	execute, .-execute
	.rdata
	.align	2
$LC38:
	.ascii	"[Error] Cantidad de par\303\241metros incorrecta: %d \n\000"
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	lw	$v0,48($fp)
	slt	$v0,$v0,14
	beq	$v0,$zero,$L258
	lw	$v0,48($fp)
	slt	$v0,$v0,2
	bne	$v0,$zero,$L258
	b	$L257
$L258:
	la	$a0,__sF+176
	la	$a1,$LC38
	lw	$a2,48($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
	b	$L256
$L257:
	lw	$a0,48($fp)
	lw	$a1,52($fp)
	la	$t9,execute
	jal	$ra,$t9
	sw	$v0,24($fp)
$L256:
	lw	$v0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	main
	.size	main, .-main

	.comm	fileOutput,4

	.comm	buffer,4

	.comm	ofd,4
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
