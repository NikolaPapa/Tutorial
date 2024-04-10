	.file	"tutorial.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_v1p0_zvamo1p0_zvlsseg1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	max
	.type	max, @function
max:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bge	a4,a5,.L2
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L3
.L2:
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	max, .-max
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	li	a5,75
	sw	a5,-20(s0)
	li	a5,32
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L6
.L9:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bge	a4,a5,.L7
	lw	a5,-24(s0)
	addi	a5,a5,-10
	sw	a5,-24(s0)
	j	.L8
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,-10
	sw	a5,-20(s0)
.L8:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L9
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	max
	sw	a0,-32(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
