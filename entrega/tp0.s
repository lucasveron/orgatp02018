	.file	1 "tp0.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"640x480\000"
	.align	2
$LC1:
	.ascii	"0+0i\000"
	.align	2
$LC2:
	.ascii	"2\000"
	.align	2
$LC3:
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
	la	$v0,$LC0
	sw	$v0,8($fp)
	la	$v0,$LC1
	sw	$v0,12($fp)
	la	$v0,$LC2
	sw	$v0,16($fp)
	la	$v0,$LC2
	sw	$v0,20($fp)
	la	$v0,$LC3
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
$LC4:
	.ascii	"resolution\000"
	.align	2
$LC5:
	.ascii	"center\000"
	.align	2
$LC6:
	.ascii	"width\000"
	.align	2
$LC7:
	.ascii	"height\000"
	.align	2
$LC8:
	.ascii	"seed\000"
	.align	2
$LC9:
	.ascii	"output\000"
	.data
	.align	2
$LC10:
	.word	$LC4
	.word	1
	.word	0
	.word	114
	.word	$LC5
	.word	1
	.word	0
	.word	99
	.word	$LC6
	.word	1
	.word	0
	.word	119
	.word	$LC7
	.word	1
	.word	0
	.word	72
	.word	$LC8
	.word	1
	.word	0
	.word	115
	.word	$LC9
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
$LC11:
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
	la	$v1,$LC10
	move	$a0,$v0
	move	$a1,$v1
	li	$a2,112			# 0x70
	la	$t9,memcpy
	jal	$ra,$t9
	sw	$zero,152($fp)
	sb	$zero,156($fp)
	la	$v0,$LC11
	sw	$v0,160($fp)
$L19:
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
	beq	$v1,$v0,$L20
	lw	$v1,32($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L21
	b	$L20
$L21:
	lb	$v0,156($fp)
	addu	$v0,$v0,-72
	sw	$v0,168($fp)
	lw	$v1,168($fp)
	sltu	$v0,$v1,48
	beq	$v0,$zero,$L30
	lw	$v0,168($fp)
	sll	$v1,$v0,2
	la	$v0,$L31
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	.cpadd	$v0
	j	$v0
	.rdata
	.align	2
$L31:
	.gpword	$L27
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L25
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L29
	.gpword	$L30
	.gpword	$L30
	.gpword	$L24
	.gpword	$L28
	.gpword	$L30
	.gpword	$L30
	.gpword	$L30
	.gpword	$L26
	.text
$L24:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,0($v1)
	b	$L19
$L25:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,4($v1)
	b	$L19
$L26:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,8($v1)
	b	$L19
$L27:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,12($v1)
	b	$L19
$L28:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,16($v1)
	b	$L19
$L29:
	lw	$v1,200($fp)
	lw	$v0,optarg
	sw	$v0,20($v1)
	b	$L19
$L30:
	sw	$zero,32($fp)
	b	$L19
$L20:
	lw	$v0,32($fp)
	bne	$v0,$zero,$L32
	li	$v0,5			# 0x5
	sw	$v0,164($fp)
	b	$L18
$L32:
	sw	$zero,164($fp)
$L18:
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
$LC12:
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
	bne	$v1,$v0,$L34
	lw	$v1,56($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L34
	l.d	$f0,24($fp)
	s.d	$f0,8($fp)
	b	$L33
$L34:
	l.d	$f2,40($fp)
	l.d	$f0,$LC12
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
$L33:
	l.d	$f0,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$ra
	.end	getPixelRe
	.size	getPixelRe, .-getPixelRe
	.rdata
	.align	3
$LC13:
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
	bne	$v1,$v0,$L36
	lw	$v1,56($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L36
	l.d	$f0,32($fp)
	s.d	$f0,8($fp)
	b	$L35
$L36:
	l.d	$f2,40($fp)
	l.d	$f0,$LC13
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
$L35:
	l.d	$f0,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$ra
	.end	getPixelIm
	.size	getPixelIm, .-getPixelIm
	.globl	resolutionInY
	.globl	resolutionInY
	.section	.bss
	.align	2
	.type	resolutionInY, @object
	.size	resolutionInY, 4
resolutionInY:
	.space	4
	.rdata
	.align	2
$LC14:
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
	sw	$a1,52($fp)
	sw	$a2,56($fp)
	lw	$v1,52($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L37
	lw	$v0,48($fp)
	beq	$v0,$zero,$L37
	lw	$a0,48($fp)
	la	$t9,fclose
	jal	$ra,$t9
	sw	$v0,24($fp)
	lw	$v1,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L37
	la	$a0,__sF+176
	la	$a1,$LC14
	lw	$a2,56($fp)
	la	$t9,fprintf
	jal	$ra,$t9
$L37:
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	closeFile
	.size	closeFile, .-closeFile
	.rdata
	.align	2
$LC15:
	.ascii	"-\000"
	.align	2
$LC16:
	.ascii	"w\000"
	.align	2
$LC17:
	.ascii	"[Error] El archivo de output no pudo ser abierto para es"
	.ascii	"critura: %s \n\000"
	.align	2
$LC18:
	.ascii	"P2\n"
	.ascii	"%i %i\n"
	.ascii	"255\n\000"
	.align	2
$LC19:
	.ascii	"%i \000"
	.align	2
$LC20:
	.ascii	"\n\000"
	.text
	.align	2
	.globl	loadPixelsInFile
	.ent	loadPixelsInFile
loadPixelsInFile:
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
	sw	$a2,80($fp)
	sw	$a3,84($fp)
	lw	$v0,resolutionInY
	addu	$v0,$v0,-1
	sw	$v0,48($fp)
	la	$v0,__sF+88
	sw	$v0,24($fp)
	li	$v0,1			# 0x1
	sw	$v0,28($fp)
	lw	$v0,76($fp)
	beq	$v0,$zero,$L42
	la	$a0,$LC15
	lw	$a1,76($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L41
$L42:
	sw	$zero,28($fp)
$L41:
	lw	$v1,28($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L43
	lw	$a0,76($fp)
	la	$a1,$LC16
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,24($fp)
	lw	$v0,24($fp)
	bne	$v0,$zero,$L43
	la	$a0,__sF+176
	la	$a1,$LC17
	lw	$a2,76($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,3			# 0x3
	sw	$v0,44($fp)
	b	$L40
$L43:
	lw	$a0,24($fp)
	la	$a1,$LC18
	lw	$a2,84($fp)
	lw	$a3,80($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$v0,32($fp)
	lw	$v0,32($fp)
	bgtz	$v0,$L45
	lw	$a0,24($fp)
	lw	$a1,28($fp)
	lw	$a2,76($fp)
	la	$t9,closeFile
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,44($fp)
	b	$L40
$L45:
	sw	$zero,36($fp)
$L46:
	lw	$v0,36($fp)
	lw	$v1,80($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L49
	b	$L47
$L49:
	sw	$zero,40($fp)
$L50:
	lw	$v0,40($fp)
	lw	$v1,84($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L53
	b	$L51
$L53:
	lw	$v0,48($fp)
	sll	$v0,$v0,2
	addu	$v1,$v0,4
	lw	$v0,36($fp)
	mult	$v1,$v0
	mflo	$v1
	lw	$v0,40($fp)
	sll	$v0,$v0,2
	addu	$v1,$v0,$v1
	lw	$v0,72($fp)
	addu	$v0,$v1,$v0
	lw	$a0,24($fp)
	la	$a1,$LC19
	lw	$a2,0($v0)
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$v0,32($fp)
	lw	$v0,32($fp)
	bgtz	$v0,$L52
	lw	$a0,24($fp)
	lw	$a1,28($fp)
	lw	$a2,76($fp)
	la	$t9,closeFile
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,44($fp)
	b	$L40
$L52:
	lw	$v0,40($fp)
	addu	$v0,$v0,1
	sw	$v0,40($fp)
	b	$L50
$L51:
	lw	$a0,24($fp)
	la	$a1,$LC20
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$v0,32($fp)
	lw	$v0,32($fp)
	bgtz	$v0,$L48
	lw	$a0,24($fp)
	lw	$a1,28($fp)
	lw	$a2,76($fp)
	la	$t9,closeFile
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,44($fp)
	b	$L40
$L48:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L46
$L47:
	lw	$a0,24($fp)
	lw	$a1,28($fp)
	lw	$a2,76($fp)
	la	$t9,closeFile
	jal	$ra,$t9
	sw	$zero,44($fp)
$L40:
	lw	$v0,44($fp)
	move	$sp,$fp
	lw	$ra,64($sp)
	lw	$fp,60($sp)
	addu	$sp,$sp,72
	j	$ra
	.end	loadPixelsInFile
	.size	loadPixelsInFile, .-loadPixelsInFile
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
	.align	3
$LC21:
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
	sw	$sp,88($fp)
	lw	$v0,120($fp)
	lw	$v0,4($v0)
	sw	$v0,resolutionInY
	lw	$v0,120($fp)
	lw	$v0,0($v0)
	addu	$v1,$v0,-1
	lw	$v0,120($fp)
	lw	$v0,4($v0)
	addu	$v0,$v0,-1
	sw	$v0,92($fp)
	lw	$v0,92($fp)
	sll	$v0,$v0,2
	addu	$v0,$v0,4
	addu	$v1,$v1,1
	mult	$v0,$v1
	mflo	$v0
	addu	$v0,$v0,7
	srl	$v0,$v0,3
	sll	$v0,$v0,3
	subu	$sp,$sp,$v0
	addu	$v0,$sp,40
	sw	$v0,96($fp)
	sw	$zero,64($fp)
$L59:
	lw	$v0,120($fp)
	lw	$v1,64($fp)
	lw	$v0,4($v0)
	slt	$v0,$v1,$v0
	bne	$v0,$zero,$L62
	b	$L60
$L62:
	sw	$zero,68($fp)
$L63:
	lw	$v0,120($fp)
	lw	$v1,68($fp)
	lw	$v0,0($v0)
	slt	$v0,$v1,$v0
	bne	$v0,$zero,$L66
	b	$L61
$L66:
	lw	$v1,120($fp)
	lw	$v0,120($fp)
	l.d	$f0,24($v0)
	s.d	$f0,16($sp)
	lw	$v0,64($fp)
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
	s.d	$f0,48($fp)
	lw	$v1,120($fp)
	lw	$v0,120($fp)
	l.d	$f0,32($v0)
	s.d	$f0,16($sp)
	lw	$v0,68($fp)
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
	s.d	$f0,56($fp)
	sw	$zero,72($fp)
	li	$v0,1			# 0x1
	sw	$v0,76($fp)
$L67:
	lw	$v0,72($fp)
	slt	$v0,$v0,254
	beq	$v0,$zero,$L68
	lw	$v1,76($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L69
	b	$L68
$L69:
	l.d	$f2,48($fp)
	l.d	$f0,48($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,56($fp)
	l.d	$f0,56($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f2,$f4,$f0
	l.d	$f0,$LC21
	c.lt.d	$f0,$f2
	bc1t	$L72
	b	$L71
$L72:
	sw	$zero,76($fp)
	b	$L67
$L71:
	l.d	$f0,48($fp)
	s.d	$f0,80($fp)
	lw	$v0,120($fp)
	l.d	$f0,40($v0)
	s.d	$f0,16($sp)
	l.d	$f12,48($fp)
	l.d	$f14,56($fp)
	la	$t9,getNewRealValue
	jal	$ra,$t9
	s.d	$f0,48($fp)
	lw	$v0,120($fp)
	l.d	$f0,48($v0)
	s.d	$f0,16($sp)
	l.d	$f12,80($fp)
	l.d	$f14,56($fp)
	la	$t9,getNewImaginValue
	jal	$ra,$t9
	s.d	$f0,56($fp)
	lw	$v0,72($fp)
	addu	$v0,$v0,1
	sw	$v0,72($fp)
	b	$L67
$L68:
	lw	$a0,64($fp)
	lw	$v0,92($fp)
	sll	$v0,$v0,2
	addu	$v1,$v0,4
	lw	$v0,68($fp)
	mult	$v1,$v0
	mflo	$v1
	move	$v0,$a0
	sll	$v0,$v0,2
	lw	$a0,96($fp)
	addu	$v0,$v0,$a0
	addu	$v1,$v0,$v1
	lw	$v0,72($fp)
	sw	$v0,0($v1)
	lw	$v0,68($fp)
	addu	$v0,$v0,1
	sw	$v0,68($fp)
	b	$L63
$L61:
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
	b	$L59
$L60:
	lw	$v0,120($fp)
	lw	$v1,120($fp)
	lw	$a3,120($fp)
	lw	$a0,96($fp)
	lw	$a1,56($v0)
	lw	$a2,0($v1)
	lw	$a3,4($a3)
	la	$t9,loadPixelsInFile
	jal	$ra,$t9
	lw	$sp,88($fp)
	move	$sp,$fp
	lw	$ra,112($sp)
	lw	$fp,108($sp)
	addu	$sp,$sp,120
	j	$ra
	.end	drawJuliaSet
	.size	drawJuliaSet, .-drawJuliaSet
	.rdata
	.align	2
$LC22:
	.ascii	"[Error] La resolucion especificada es incorrecta.\n\000"
	.align	2
$LC23:
	.ascii	"[Error] Los valores de la resolucion deben de ser mayore"
	.ascii	"s a cero.\n\000"
	.align	2
$LC24:
	.ascii	"[Error] El valor de la resolucion en el eje Y debe de se"
	.ascii	"r menores a %i.\n\000"
	.align	2
$LC25:
	.ascii	"[Error] El valor de la resolucion en el eje X debe de se"
	.ascii	"r menores a %i.\n\000"
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
	beq	$v0,$zero,$L76
	lw	$v0,96($fp)
	lw	$v0,0($v0)
	lb	$v0,0($v0)
	bne	$v0,$zero,$L75
$L76:
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L74
$L75:
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
	beq	$v1,$v0,$L78
	lw	$v0,32($fp)
	sll	$v1,$v0,1
	lw	$v0,_tolower_tab_
	addu	$v0,$v1,$v0
	addu	$v0,$v0,2
	lh	$v1,0($v0)
	lw	$v0,24($fp)
	beq	$v1,$v0,$L78
	b	$L77
$L78:
	li	$v1,6			# 0x6
	sw	$v1,64($fp)
	b	$L74
$L77:
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
$L79:
	lw	$v0,96($fp)
	lw	$a0,0($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,56($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L82
	b	$L80
$L82:
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
	bne	$v1,$v0,$L83
	lw	$v0,40($fp)
	bne	$v0,$zero,$L84
	sw	$zero,52($fp)
	b	$L81
$L84:
	lw	$v0,56($fp)
	sw	$v0,36($fp)
	sw	$zero,40($fp)
	b	$L81
$L83:
	lw	$v0,48($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L88
	lw	$v0,48($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L88
	b	$L81
$L88:
	sw	$zero,44($fp)
$L81:
	lw	$v0,56($fp)
	addu	$v0,$v0,1
	sw	$v0,56($fp)
	b	$L79
$L80:
	lw	$v0,44($fp)
	beq	$v0,$zero,$L90
	lw	$v1,40($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L90
	lw	$v0,52($fp)
	bne	$v0,$zero,$L89
$L90:
	la	$a0,__sF+176
	la	$a1,$LC22
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L74
$L89:
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
$L91:
	lw	$v0,56($fp)
	lw	$v1,36($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L94
	b	$L92
$L94:
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
	b	$L91
$L92:
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
	bgtz	$v0,$L95
	la	$a0,__sF+176
	la	$a1,$LC23
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,68($fp)
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L74
$L95:
	lw	$v0,100($fp)
	lw	$v0,4($v0)
	slt	$v0,$v0,701
	bne	$v0,$zero,$L96
	la	$a0,__sF+176
	la	$a1,$LC24
	li	$a2,700			# 0x2bc
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,68($fp)
	li	$v1,6			# 0x6
	sw	$v1,64($fp)
	b	$L74
$L96:
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
	addu	$v0,$sp,16
	sw	$v0,76($fp)
	sw	$zero,56($fp)
$L97:
	lw	$v0,60($fp)
	addu	$v1,$v0,-1
	lw	$v0,56($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L100
	b	$L98
$L100:
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
	b	$L97
$L98:
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
	bgtz	$v0,$L101
	la	$a0,__sF+176
	la	$a1,$LC23
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,68($fp)
	li	$v0,6			# 0x6
	sw	$v0,64($fp)
	b	$L74
$L101:
	lw	$v0,100($fp)
	lw	$v0,0($v0)
	slt	$v0,$v0,701
	bne	$v0,$zero,$L102
	la	$a0,__sF+176
	la	$a1,$LC25
	li	$a2,700			# 0x2bc
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,68($fp)
	li	$v1,6			# 0x6
	sw	$v1,64($fp)
	b	$L74
$L102:
	lw	$sp,68($fp)
	sw	$zero,64($fp)
$L74:
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
$LC26:
	.ascii	"[Error] No hay valor de centro especificado.\n\000"
	.align	2
$LC27:
	.ascii	"[Error] No hay valor de semilla especificado.\n\000"
	.align	2
$LC28:
	.ascii	"[Error] Formato incorrecto del numero complejo para el c"
	.ascii	"entro.\n\000"
	.align	2
$LC29:
	.ascii	"[Error] Formato incorrecto del numero complejo para la s"
	.ascii	"emilla.\n\000"
	.align	2
$LC31:
	.ascii	"[Error] La parte real de la semilla no debe de ser mayor"
	.ascii	" a %i en modulo.\n\000"
	.align	2
$LC32:
	.ascii	"[Error] La parte imaginaria de la semilla no debe de ser"
	.ascii	" mayor a %i en modulo.\n\000"
	.align	3
$LC30:
	.word	0
	.word	1079574528
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
	bne	$v0,$zero,$L104
	lw	$v0,136($fp)
	lw	$v0,4($v0)
	bne	$v0,$zero,$L104
	la	$a0,__sF+176
	la	$a1,$LC26
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L103
$L104:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L105
	lw	$v0,136($fp)
	lw	$v0,16($v0)
	bne	$v0,$zero,$L105
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v1,6			# 0x6
	sw	$v1,104($fp)
	b	$L103
$L105:
	sw	$zero,24($fp)
	lw	$v0,144($fp)
	bne	$v0,$zero,$L106
	lw	$v0,136($fp)
	lw	$v0,4($v0)
	sw	$v0,24($fp)
$L106:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L107
	lw	$v0,136($fp)
	lw	$v0,16($v0)
	sw	$v0,24($fp)
$L107:
	lw	$v0,24($fp)
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L109
	lw	$v0,24($fp)
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L108
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L109
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L109
	b	$L108
$L109:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L110
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L110:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L111
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
$L111:
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L103
$L108:
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-2
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L113
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-2
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L113
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	lb	$v1,0($v0)
	li	$v0,105			# 0x69
	bne	$v1,$v0,$L113
	b	$L112
$L113:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L114
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L114:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L115
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
$L115:
	li	$v1,6			# 0x6
	sw	$v1,104($fp)
	b	$L103
$L112:
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
$L116:
	lw	$a0,24($fp)
	la	$t9,strlen
	jal	$ra,$t9
	addu	$v1,$v0,-1
	lw	$v0,52($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L119
	b	$L117
$L119:
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,48($fp)
	lb	$v1,48($fp)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L121
	lb	$v1,48($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L121
	b	$L120
$L121:
	lw	$v0,32($fp)
	bne	$v0,$zero,$L122
	sw	$zero,36($fp)
	b	$L118
$L122:
	lw	$v0,52($fp)
	sw	$v0,28($fp)
	sw	$zero,32($fp)
	b	$L118
$L120:
	lb	$v1,48($fp)
	li	$v0,105			# 0x69
	bne	$v1,$v0,$L118
	sw	$zero,40($fp)
$L118:
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L116
$L117:
	lw	$v0,36($fp)
	beq	$v0,$zero,$L127
	lw	$v0,44($fp)
	beq	$v0,$zero,$L127
	lw	$v1,32($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L127
	lw	$v0,40($fp)
	bne	$v0,$zero,$L126
$L127:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L128
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L128:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L129
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
$L129:
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L103
$L126:
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
$L130:
	lw	$v0,52($fp)
	lw	$v1,28($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L133
	b	$L131
$L133:
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,68($fp)
	lw	$v0,68($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L135
	lw	$v0,68($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L135
	b	$L134
$L135:
	lw	$v1,68($fp)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L134
	lw	$v1,68($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L134
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	beq	$v1,$v0,$L134
	li	$v0,1			# 0x1
	sw	$v0,60($fp)
	b	$L136
$L134:
	lw	$v1,68($fp)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L137
	lw	$v1,68($fp)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L137
	lw	$v0,52($fp)
	lw	$v1,112($fp)
	addu	$a0,$v1,$v0
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
$L137:
	lw	$v1,68($fp)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L136
	sw	$zero,72($fp)
$L136:
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L132
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
$L132:
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L130
$L131:
	lw	$v0,28($fp)
	lw	$v1,112($fp)
	addu	$v0,$v1,$v0
	sb	$zero,0($v0)
	lw	$v0,64($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L141
	lw	$v1,60($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L141
	b	$L140
$L141:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L142
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L142:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L143
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
$L143:
	lw	$sp,108($fp)
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L103
$L140:
	lw	$a0,112($fp)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,80($fp)
	lw	$v0,148($fp)
	bne	$v0,$zero,$L144
	l.d	$f2,80($fp)
	l.d	$f0,$LC30
	c.lt.d	$f0,$f2
	bc1t	$L145
	b	$L144
$L145:
	la	$a0,__sF+176
	la	$a1,$LC31
	li	$a2,100			# 0x64
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,108($fp)
	li	$v1,6			# 0x6
	sw	$v1,104($fp)
	b	$L103
$L144:
	lw	$v0,72($fp)
	bne	$v0,$zero,$L146
	l.d	$f0,80($fp)
	neg.d	$f0,$f0
	s.d	$f0,80($fp)
$L146:
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
	addu	$v0,$sp,16
	sw	$v0,116($fp)
	sw	$zero,60($fp)
	sw	$zero,64($fp)
	sw	$zero,68($fp)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,88($fp)
	sw	$zero,52($fp)
$L147:
	lw	$v0,56($fp)
	addu	$v1,$v0,-1
	lw	$v0,52($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L150
	b	$L148
$L150:
	lw	$v1,24($fp)
	lw	$v0,88($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,68($fp)
	lw	$v0,68($fp)
	slt	$v0,$v0,48
	beq	$v0,$zero,$L151
	lw	$v0,68($fp)
	slt	$v0,$v0,58
	bne	$v0,$zero,$L151
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	beq	$v1,$v0,$L151
	li	$v0,1			# 0x1
	sw	$v0,60($fp)
	b	$L152
$L151:
	lw	$v0,52($fp)
	lw	$v1,116($fp)
	addu	$a0,$v1,$v0
	lw	$v1,24($fp)
	lw	$v0,88($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
$L152:
	lw	$v1,68($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L153
	lw	$v0,64($fp)
	addu	$v0,$v0,1
	sw	$v0,64($fp)
$L153:
	lw	$v0,88($fp)
	addu	$v0,$v0,1
	sw	$v0,88($fp)
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L147
$L148:
	lw	$v0,56($fp)
	lw	$v1,116($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	sb	$zero,0($v0)
	lw	$v0,64($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L155
	lw	$v1,60($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L155
	b	$L154
$L155:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L156
	la	$a0,__sF+176
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
$L156:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L157
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
$L157:
	lw	$sp,108($fp)
	li	$v0,6			# 0x6
	sw	$v0,104($fp)
	b	$L103
$L154:
	lw	$a0,116($fp)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,96($fp)
	lw	$v0,148($fp)
	bne	$v0,$zero,$L158
	l.d	$f2,96($fp)
	l.d	$f0,$LC30
	c.lt.d	$f0,$f2
	bc1t	$L159
	b	$L158
$L159:
	la	$a0,__sF+176
	la	$a1,$LC32
	li	$a2,100			# 0x64
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$sp,108($fp)
	li	$v1,6			# 0x6
	sw	$v1,104($fp)
	b	$L103
$L158:
	lw	$v1,24($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L160
	l.d	$f0,96($fp)
	neg.d	$f0,$f0
	s.d	$f0,96($fp)
$L160:
	lw	$v0,144($fp)
	bne	$v0,$zero,$L161
	lw	$v0,140($fp)
	l.d	$f0,80($fp)
	s.d	$f0,8($v0)
	lw	$v0,140($fp)
	l.d	$f0,96($fp)
	s.d	$f0,16($v0)
$L161:
	lw	$v0,148($fp)
	bne	$v0,$zero,$L162
	lw	$v0,140($fp)
	l.d	$f0,80($fp)
	s.d	$f0,40($v0)
	lw	$v0,140($fp)
	l.d	$f0,96($fp)
	s.d	$f0,48($v0)
$L162:
	lw	$sp,108($fp)
	sw	$zero,104($fp)
$L103:
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
$LC33:
	.ascii	"[Error] Debe de especificarse el ancho.\n\000"
	.align	2
$LC34:
	.ascii	"[Error] Formato incorrecto para el ancho.\n\000"
	.align	2
$LC35:
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
	bne	$v0,$zero,$L164
	la	$a0,__sF+176
	la	$a1,$LC33
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L163
$L164:
	sw	$zero,24($fp)
	sw	$zero,32($fp)
	sw	$zero,36($fp)
$L165:
	lw	$v0,64($fp)
	lw	$a0,8($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,36($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L168
	b	$L166
$L168:
	lw	$v0,64($fp)
	lw	$v1,8($v0)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,28($fp)
	lw	$v1,28($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L169
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	b	$L167
$L169:
	lw	$v0,28($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L172
	lw	$v0,28($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L172
	b	$L167
$L172:
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L167:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L165
$L166:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L174
	lw	$v0,32($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L174
	b	$L173
$L174:
	la	$a0,__sF+176
	la	$a1,$LC34
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L163
$L173:
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
	bc1t	$L176
	b	$L175
$L176:
	la	$a0,__sF+176
	la	$a1,$LC35
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L163
$L175:
	sw	$zero,40($fp)
$L163:
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
$LC36:
	.ascii	"[Error] Debe de especificarse el alto.\n\000"
	.align	2
$LC37:
	.ascii	"[Error] Formato incorrecto para el alto.\n\000"
	.align	2
$LC38:
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
	bne	$v0,$zero,$L178
	la	$a0,__sF+176
	la	$a1,$LC36
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L177
$L178:
	sw	$zero,24($fp)
	sw	$zero,32($fp)
	sw	$zero,36($fp)
$L179:
	lw	$v0,64($fp)
	lw	$a0,12($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,36($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L182
	b	$L180
$L182:
	lw	$v0,64($fp)
	lw	$v1,12($v0)
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,28($fp)
	lw	$v1,28($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L183
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	b	$L181
$L183:
	lw	$v0,28($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L186
	lw	$v0,28($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L186
	b	$L181
$L186:
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L181:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L179
$L180:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L188
	lw	$v0,32($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L188
	b	$L187
$L188:
	la	$a0,__sF+176
	la	$a1,$LC37
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L177
$L187:
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
	bc1t	$L190
	b	$L189
$L190:
	la	$a0,__sF+176
	la	$a1,$LC38
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,40($fp)
	b	$L177
$L189:
	sw	$zero,40($fp)
$L177:
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
$LC39:
	.ascii	"[Error] Formato incorrecto como nombre de archivo de sal"
	.ascii	"ida.\n\000"
	.align	2
$LC40:
	.ascii	"[Error] El archivo de salida debe contener como m\303\241"
	.ascii	"ximo %i caracteres.\n\000"
	.align	2
$LC41:
	.ascii	"[Error] Extension incorrecta para el archivo de salida.\n"
	.ascii	"\000"
	.text
	.align	2
	.globl	getValidPathOutput
	.ent	getValidPathOutput
getValidPathOutput:
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
	lw	$v0,72($fp)
	lw	$v0,20($v0)
	beq	$v0,$zero,$L193
	lw	$v0,72($fp)
	la	$a0,$LC15
	lw	$a1,20($v0)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L192
$L193:
	lw	$v0,76($fp)
	lw	$v1,72($fp)
	lw	$v1,20($v1)
	sw	$v1,56($v0)
	sw	$zero,48($fp)
	b	$L191
$L192:
	sw	$zero,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,28($fp)
	sw	$zero,32($fp)
	sw	$zero,40($fp)
$L194:
	lw	$v0,72($fp)
	lw	$a0,20($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,40($fp)
	sltu	$v0,$v0,$v1
	bne	$v0,$zero,$L197
	b	$L195
$L197:
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,40($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sw	$v0,36($fp)
	lw	$v1,36($fp)
	li	$v0,46			# 0x2e
	bne	$v1,$v0,$L198
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	lw	$v0,40($fp)
	sw	$v0,28($fp)
	b	$L196
$L198:
	lw	$v0,36($fp)
	slt	$v0,$v0,48
	bne	$v0,$zero,$L201
	lw	$v0,36($fp)
	slt	$v0,$v0,58
	beq	$v0,$zero,$L201
	b	$L196
$L201:
	lw	$v0,36($fp)
	slt	$v0,$v0,65
	bne	$v0,$zero,$L202
	lw	$v0,36($fp)
	slt	$v0,$v0,91
	beq	$v0,$zero,$L202
	b	$L196
$L202:
	lw	$v0,36($fp)
	slt	$v0,$v0,97
	bne	$v0,$zero,$L203
	lw	$v0,36($fp)
	slt	$v0,$v0,123
	beq	$v0,$zero,$L203
	b	$L196
$L203:
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L196:
	lw	$v0,40($fp)
	addu	$v0,$v0,1
	sw	$v0,40($fp)
	b	$L194
$L195:
	lw	$v1,24($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L205
	lw	$v1,32($fp)
	li	$v0,1			# 0x1
	bne	$v1,$v0,$L205
	lw	$v0,28($fp)
	bne	$v0,$zero,$L204
$L205:
	la	$a0,__sF+176
	la	$a1,$LC39
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L204:
	lw	$v0,28($fp)
	slt	$v0,$v0,11
	bne	$v0,$zero,$L206
	la	$a0,__sF+176
	la	$a1,$LC40
	li	$a2,10			# 0xa
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L206:
	lw	$v0,72($fp)
	lw	$a0,20($v0)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,28($fp)
	subu	$v0,$v1,$v0
	sw	$v0,44($fp)
	lw	$v1,44($fp)
	li	$v0,4			# 0x4
	beq	$v1,$v0,$L207
	la	$a0,__sF+176
	la	$a1,$LC41
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L207:
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,46			# 0x2e
	beq	$v1,$v0,$L208
	la	$a0,__sF+176
	la	$a1,$LC39
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L208:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,112			# 0x70
	beq	$v1,$v0,$L209
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,80			# 0x50
	beq	$v1,$v0,$L209
	la	$a0,__sF+176
	la	$a1,$LC41
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L209:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,103			# 0x67
	beq	$v1,$v0,$L210
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,71			# 0x47
	beq	$v1,$v0,$L210
	la	$a0,__sF+176
	la	$a1,$LC41
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L210:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,109			# 0x6d
	beq	$v1,$v0,$L211
	lw	$v0,72($fp)
	lw	$v1,20($v0)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,77			# 0x4d
	beq	$v1,$v0,$L211
	la	$a0,__sF+176
	la	$a1,$LC41
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,6			# 0x6
	sw	$v0,48($fp)
	b	$L191
$L211:
	lw	$v0,76($fp)
	lw	$v1,72($fp)
	lw	$v1,20($v1)
	sw	$v1,56($v0)
	sw	$zero,48($fp)
$L191:
	lw	$v0,48($fp)
	move	$sp,$fp
	lw	$ra,64($sp)
	lw	$fp,60($sp)
	addu	$sp,$sp,72
	j	$ra
	.end	getValidPathOutput
	.size	getValidPathOutput, .-getValidPathOutput
	.align	2
	.globl	executeFractal
	.ent	executeFractal
executeFractal:
	.frame	$fp,112,$ra		# vars= 72, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,112
	.cprestore 16
	sw	$ra,104($sp)
	sw	$fp,100($sp)
	sw	$gp,96($sp)
	move	$fp,$sp
	sw	$a0,112($fp)
	lw	$a0,112($fp)
	addu	$a1,$fp,24
	la	$t9,getValidResolution
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L213
	lw	$v0,88($fp)
	sw	$v0,92($fp)
	b	$L212
$L213:
	lw	$a0,112($fp)
	addu	$a1,$fp,24
	move	$a2,$zero
	li	$a3,1			# 0x1
	la	$t9,getValidComplex
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L214
	lw	$v0,88($fp)
	sw	$v0,92($fp)
	b	$L212
$L214:
	lw	$a0,112($fp)
	addu	$a1,$fp,24
	li	$a2,1			# 0x1
	move	$a3,$zero
	la	$t9,getValidComplex
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L215
	lw	$v0,88($fp)
	sw	$v0,92($fp)
	b	$L212
$L215:
	lw	$a0,112($fp)
	addu	$a1,$fp,24
	la	$t9,getValidWidth
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L216
	lw	$v0,88($fp)
	sw	$v0,92($fp)
	b	$L212
$L216:
	lw	$a0,112($fp)
	addu	$a1,$fp,24
	la	$t9,getValidHeight
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L217
	lw	$v0,88($fp)
	sw	$v0,92($fp)
	b	$L212
$L217:
	lw	$a0,112($fp)
	addu	$a1,$fp,24
	la	$t9,getValidPathOutput
	jal	$ra,$t9
	sw	$v0,88($fp)
	lw	$v0,88($fp)
	beq	$v0,$zero,$L218
	lw	$v0,88($fp)
	sw	$v0,92($fp)
	b	$L212
$L218:
	addu	$a0,$fp,24
	la	$t9,drawJuliaSet
	jal	$ra,$t9
	sw	$v0,92($fp)
$L212:
	lw	$v0,92($fp)
	move	$sp,$fp
	lw	$ra,104($sp)
	lw	$fp,100($sp)
	addu	$sp,$sp,112
	j	$ra
	.end	executeFractal
	.size	executeFractal, .-executeFractal
	.rdata
	.align	2
$LC42:
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
	beq	$v0,$zero,$L220
	la	$a0,__sF+176
	la	$a1,$LC42
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,5			# 0x5
	sw	$v0,52($fp)
	b	$L219
$L220:
	addu	$a0,$fp,24
	la	$t9,executeFractal
	jal	$ra,$t9
	sw	$v0,52($fp)
$L219:
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
$LC43:
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
	beq	$v0,$zero,$L223
	lw	$v0,48($fp)
	slt	$v0,$v0,2
	bne	$v0,$zero,$L223
	b	$L222
$L223:
	la	$a0,__sF+176
	la	$a1,$LC43
	lw	$a2,48($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
	b	$L221
$L222:
	lw	$a0,48($fp)
	lw	$a1,52($fp)
	la	$t9,execute
	jal	$ra,$t9
	sw	$v0,24($fp)
$L221:
	lw	$v0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	main
	.size	main, .-main
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
