	.text
	.file	"led.c"
	.globl	main
	.align	2
	.type	main,@function
main:                                   ; @main
; BB#0:                                 ; %entry
	sbi	4, 5
	ldi	r24, 16
	ldi	r25, 39
	ldi	r18, 144
	ldi	r19, 1
	ldi	r20, 0
	ldi	r21, 0
LBB0_1:                                 ; %while.body
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
                                        ;     Child Loop BB0_4 Depth 2
	sbi	5, 5
	movw	r30, r24
LBB0_2:                                 ; %while.body.i
                                        ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	movw	r26, r18
	;APP
	1: sbiw R26,1
	brne 1b
	;NO_APP
	sbiw	r30, 1
	cp	r30, r20
	cpc	r31, r21
	brne	LBB0_2
; BB#3:                                 ; %_delay_ms.exit
                                        ;   in Loop: Header=BB0_1 Depth=1
	cbi	5, 5
	movw	r30, r24
LBB0_4:                                 ; %while.body.i.10
                                        ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	movw	r26, r18
	;APP
	1: sbiw R26,1
	brne 1b
	;NO_APP
	sbiw	r30, 1
	cp	r30, r20
	cpc	r31, r21
	brne	LBB0_4
	rjmp	LBB0_1
.Lfunc_end0:
	.size	main, .Lfunc_end0-main


