	.include "asm/macros.inc"
	.include "global.inc"

	.text

	.public sub_0200A110
	.public sub_0200A8A0
	.public sub_0200A8B0
	.public sub_0200A8DC

	thumb_func_start sub_0200AA9C
sub_0200AA9C: ; 0x0200AA9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x18]
	bl sub_020256FC
	cmp r6, #5
	bhi _0200AB0A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200AABE: ; jump table
	.short _0200AACA - _0200AABE - 2 ; case 0
	.short _0200AAD6 - _0200AABE - 2 ; case 1
	.short _0200AAE4 - _0200AABE - 2 ; case 2
	.short _0200AAEE - _0200AABE - 2 ; case 3
	.short _0200AAF8 - _0200AABE - 2 ; case 4
	.short _0200AB02 - _0200AABE - 2 ; case 5
_0200AACA:
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200AB0C
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAD6:
	ldr r2, [sp]
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0200AB2C
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAE4:
	add r1, r5, #0
	bl sub_0200AB50
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAEE:
	add r1, r5, #0
	bl sub_0200AB6C
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAF8:
	add r1, r5, #0
	bl sub_0200AB88
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AB02:
	add r1, r5, #0
	bl sub_0200ABA4
	str r0, [r4, #8]
_0200AB0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200AA9C

	thumb_func_start sub_0200AB0C
sub_0200AB0C: ; 0x0200AB0C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedCharacterData
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0200AB0C

	thumb_func_start sub_0200AB2C
sub_0200AB2C: ; 0x0200AB2C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r6, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedPaletteData
	str r5, [r4, #4]
	str r6, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0200AB2C

	thumb_func_start sub_0200AB50
sub_0200AB50: ; 0x0200AB50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedCellBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200AB50

	thumb_func_start sub_0200AB6C
sub_0200AB6C: ; 0x0200AB6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedAnimBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200AB6C

	thumb_func_start sub_0200AB88
sub_0200AB88: ; 0x0200AB88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedMultiCellBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200AB88

	thumb_func_start sub_0200ABA4
sub_0200ABA4: ; 0x0200ABA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedMCAnimBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200ABA4

	thumb_func_start sub_0200ABC0
sub_0200ABC0: ; 0x0200ABC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200ABCE
	bl FreeToHeap
_0200ABCE:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200ABC0

	thumb_func_start sub_0200ABD4
sub_0200ABD4: ; 0x0200ABD4
	push {r4, lr}
	add r4, r0, #0
	bne _0200ABDE
	bl GF_AssertFail
_0200ABDE:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200ABE8
	bl GF_AssertFail
_0200ABE8:
	ldr r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200ABD4

	thumb_func_start sub_0200ABEC
sub_0200ABEC: ; 0x0200ABEC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	bl sub_02025600
	str r0, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	bl sub_0200AA9C
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_0200ABEC

	thumb_func_start sub_0200AC18
sub_0200AC18: ; 0x0200AC18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl GfGfxLoader_LoadFromNarc
	add r1, r0, #0
	ldr r0, [r5]
	ldr r2, [sp, #0x14]
	bl sub_020255C4
	str r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200AA9C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200AC18

	thumb_func_start sub_0200AC50
sub_0200AC50: ; 0x0200AC50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_0200ACA4
	add r1, r0, #0
	ldr r0, [r5]
	ldr r2, [sp, #0x14]
	bl sub_020255C4
	str r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200AA9C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200AC50

	thumb_func_start sub_0200AC88
sub_0200AC88: ; 0x0200AC88
	mov r3, #0
	ldr r2, [r0]
	sub r1, r3, #2
	cmp r2, r1
	beq _0200AC9E
	sub r1, r3, #2
_0200AC94:
	add r0, #0x18
	ldr r2, [r0]
	add r3, r3, #1
	cmp r2, r1
	bne _0200AC94
_0200AC9E:
	add r0, r3, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0200AC88

	thumb_func_start sub_0200ACA4
sub_0200ACA4: ; 0x0200ACA4
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r2, #0
	add r2, r6, #0
	bl NARC_AllocAndReadWholeMember
	add r4, r0, #0
	beq _0200ACEA
	cmp r5, #0
	beq _0200ACEA
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200ACCA
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	bl AllocFromHeap
	b _0200ACD4
_0200ACCA:
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	bl AllocFromHeapAtEnd
_0200ACD4:
	add r5, r0, #0
	cmp r5, #0
	beq _0200ACE8
	add r0, r4, #0
	add r1, r5, #0
	bl MI_UncompressLZ8
	add r0, r4, #0
	bl FreeToHeap
_0200ACE8:
	add r4, r5, #0
_0200ACEA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0200ACA4

	thumb_func_start sub_0200ACF0
sub_0200ACF0: ; 0x0200ACF0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200ACFC
	bl GF_AssertFail
_0200ACFC:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AD0A
	bl GF_AssertFail
_0200AD0A:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021758
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200ACF0

	thumb_func_start sub_0200AD30
sub_0200AD30: ; 0x0200AD30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AD3A
	bl GF_AssertFail
_0200AD3A:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AD62
	add r4, r6, #0
_0200AD44:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AD58
	bl sub_0200ACF0
	cmp r0, #0
	bne _0200AD58
	bl GF_AssertFail
_0200AD58:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AD44
_0200AD62:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AD30

	thumb_func_start sub_0200AD64
sub_0200AD64: ; 0x0200AD64
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200AD70
	bl GF_AssertFail
_0200AD70:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AD7E
	bl GF_AssertFail
_0200AD7E:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_020217B0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200AD64

	thumb_func_start sub_0200ADA4
sub_0200ADA4: ; 0x0200ADA4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200ADB0
	bl GF_AssertFail
_0200ADB0:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200ADBE
	bl GF_AssertFail
_0200ADBE:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021758
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200ADA4

	thumb_func_start sub_0200ADE4
sub_0200ADE4: ; 0x0200ADE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200ADEE
	bl GF_AssertFail
_0200ADEE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AE16
	add r4, r6, #0
_0200ADF8:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AE0C
	bl sub_0200ADA4
	cmp r0, #0
	bne _0200AE0C
	bl GF_AssertFail
_0200AE0C:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200ADF8
_0200AE16:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200ADE4

	thumb_func_start sub_0200AE18
sub_0200AE18: ; 0x0200AE18
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200AE24
	bl GF_AssertFail
_0200AE24:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AE32
	bl GF_AssertFail
_0200AE32:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_020217B0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200AE18

	thumb_func_start sub_0200AE58
sub_0200AE58: ; 0x0200AE58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AE62
	bl GF_AssertFail
_0200AE62:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AE8A
	add r4, r6, #0
_0200AE6C:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AE80
	bl sub_0200AE18
	cmp r0, #0
	bne _0200AE80
	bl GF_AssertFail
_0200AE80:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AE6C
_0200AE8A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AE58

	thumb_func_start sub_0200AE8C
sub_0200AE8C: ; 0x0200AE8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200AE96
	bl GF_AssertFail
_0200AE96:
	add r0, r5, #0
	bl sub_0200A7FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200A810
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202183C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200AE8C

	thumb_func_start sub_0200AEB0
sub_0200AEB0: ; 0x0200AEB0
	push {r4, lr}
	add r4, r0, #0
	bne _0200AEBA
	bl GF_AssertFail
_0200AEBA:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AEC8
	bl GF_AssertFail
_0200AEC8:
	add r0, r4, #0
	bl sub_0200A7FC
	bl sub_02021884
	pop {r4, pc}
	thumb_func_end sub_0200AEB0

	thumb_func_start sub_0200AED4
sub_0200AED4: ; 0x0200AED4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AEDE
	bl GF_AssertFail
_0200AEDE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AEFE
	add r4, r6, #0
_0200AEE8:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AEF4
	bl sub_0200AEB0
_0200AEF4:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AEE8
_0200AEFE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AED4

	thumb_func_start sub_0200AF00
sub_0200AF00: ; 0x0200AF00
	push {r4, lr}
	add r4, r0, #0
	bne _0200AF0A
	bl GF_AssertFail
_0200AF0A:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AF18
	bl GF_AssertFail
_0200AF18:
	add r0, r4, #0
	bl sub_0200A7FC
	bl sub_02021910
	pop {r4, pc}
	thumb_func_end sub_0200AF00

	thumb_func_start sub_0200AF24
sub_0200AF24: ; 0x0200AF24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0200AF32
	bl GF_AssertFail
_0200AF32:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AF40
	bl GF_AssertFail
_0200AF40:
	cmp r5, #0
	bne _0200AF48
	bl GF_AssertFail
_0200AF48:
	add r0, r5, #0
	bl sub_0200A8A0
	cmp r0, #2
	beq _0200AF56
	bl GF_AssertFail
_0200AF56:
	add r0, r4, #0
	bl sub_0200A7FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200A840
	add r1, r0, #0
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	ldr r1, [r1]
	bl sub_02021934
	cmp r0, #0
	bne _0200AF7E
	add r0, r4, #0
	bl sub_02021910
	bl sub_020219B8
_0200AF7E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200AF24

	thumb_func_start sub_0200AF80
sub_0200AF80: ; 0x0200AF80
	push {r4, lr}
	add r4, r0, #0
	bne _0200AF8A
	bl GF_AssertFail
_0200AF8A:
	add r0, r4, #0
	bl sub_02021A50
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0200AF80

	thumb_func_start sub_0200AF94
sub_0200AF94: ; 0x0200AF94
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200AFA0
	bl GF_AssertFail
_0200AFA0:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200AFAE
	bl GF_AssertFail
_0200AFAE:
	add r0, r4, #0
	bl sub_0200A828
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0200A8DC
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_02022660
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200AF94

	thumb_func_start sub_0200AFD8
sub_0200AFD8: ; 0x0200AFD8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AFE2
	bl GF_AssertFail
_0200AFE2:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200B00A
	add r4, r6, #0
_0200AFEC:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200B000
	bl sub_0200AF94
	cmp r0, #0
	bne _0200B000
	bl GF_AssertFail
_0200B000:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AFEC
_0200B00A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AFD8

	thumb_func_start sub_0200B00C
sub_0200B00C: ; 0x0200B00C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200B018
	bl GF_AssertFail
_0200B018:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200B026
	bl GF_AssertFail
_0200B026:
	add r0, r4, #0
	bl sub_0200A828
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0200A8DC
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_020226A4
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200B00C

	thumb_func_start sub_0200B050
sub_0200B050: ; 0x0200B050
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200B05A
	bl GF_AssertFail
_0200B05A:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200B082
	add r4, r6, #0
_0200B064:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200B078
	bl sub_0200B00C
	cmp r0, #0
	bne _0200B078
	bl GF_AssertFail
_0200B078:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200B064
_0200B082:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200B050

	thumb_func_start sub_0200B084
sub_0200B084: ; 0x0200B084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200B08E
	bl GF_AssertFail
_0200B08E:
	add r0, r5, #0
	bl sub_0200A7FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200A828
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020226E4
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200B084

	thumb_func_start sub_0200B0A8
sub_0200B0A8: ; 0x0200B0A8
	push {r4, lr}
	add r4, r0, #0
	bne _0200B0B2
	bl GF_AssertFail
_0200B0B2:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200B0C0
	bl GF_AssertFail
_0200B0C0:
	add r0, r4, #0
	bl sub_0200A7FC
	bl sub_02022744
	pop {r4, pc}
	thumb_func_end sub_0200B0A8

	thumb_func_start sub_0200B0CC
sub_0200B0CC: ; 0x0200B0CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200B0D6
	bl GF_AssertFail
_0200B0D6:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200B0F6
	add r4, r6, #0
_0200B0E0:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200B0EC
	bl sub_0200B0A8
_0200B0EC:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200B0E0
_0200B0F6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200B0CC

	thumb_func_start sub_0200B0F8
sub_0200B0F8: ; 0x0200B0F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200B106
	bl GF_AssertFail
_0200B106:
	add r0, r5, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200B114
	bl GF_AssertFail
_0200B114:
	add r0, r5, #0
	bl sub_0200A7FC
	cmp r4, #0
	beq _0200B126
	add r1, r4, #0
	bl sub_020227D4
	pop {r3, r4, r5, pc}
_0200B126:
	bl sub_020227AC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B0F8

	thumb_func_start sub_0200B12C
sub_0200B12C: ; 0x0200B12C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_0200B0F8
	add r1, r4, #0
	bl NNS_G2dGetImagePaletteLocation
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0200B14C
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #5
_0200B14C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0200B12C
