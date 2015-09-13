.include "nios_macros.s"

.equ UART, 0x8810
.equ HEX, 0x8818
.equ LEDR, 0x8800

/********************************************************************************
 * RESET SECTION
 * Note: "ax" is REQUIRED to designate the section as allocatable and executable.
 * Also, the Debug Client automatically places the ".reset" section at the reset
 * location specified in the CPU settings in SOPC Builder.
 */
.section .reset, "ax"
	br _start					/* branch to start function */

/********************************************************************************
 * EXCEPTIONS SECTION
 * Note: "ax" is REQUIRED to designate the section as allocatable and executable.
 * Also, the Debug Client automatically places the ".exceptions" section at the
 * exception location specified in the CPU settings in SOPC Builder.
 */
.section .exceptions, "ax"
.global exception_handler
exception_handler:
	eret						/* no handling; just return */

/********************************************************************************
 * TEXT SECTION
 */
.text

/********************************************************************************
 * Entry point.
 */
.global _start
_start:							/* start function */
	/* set up sp and fp */
	movia 	sp, 0x8000			/* stack starts from top of memory */
	mov 	fp, sp

	/* this program scrolls the digits "de2" on the hex display,
	 * going from left to right, then right to left, ad infinitum 
	 */

	/* initialize buffer (DE2 just before being visible on left side) */
	movia 	r16, BUFFER
	movi	r17, 0xde2
	stw		r17, 0(r16)
	stw		zero, 4(r16)
	stw		zero, 8(r16)

	/* shift direction will be stored in r2, where 0 = left and 1 = right */
	movi	r2, 1

do_display:
	call UPDATE_HEX_DISPLAY

	/* delay loop of approximately 1/4 second
	 * since two instructions are executed in the loop, and assuming one clock 
	 * cycle per instruction and a clock frequency of 50 MHz, 
	 * use a value of 50000000/4/2
	 */
	movia	r16, 50000000/4/2
delay_loop:
	subi	r16, r16, 1
	bne		r16, zero, delay_loop

check_shift:
	/* check if the shift direction should be reversed */
	call	SHOULD_REVERSE_SHIFT
	beq		r3, zero, do_shift

do_reverse_shift:
	xori	r2, r2, 1					/* toggle shift direction */

do_shift:
	beq 	r2, zero, do_left_shift

do_right_shift:
	call 	SHIFT_BUFFER_RIGHT
	br 		do_display

do_left_shift:
	call	SHIFT_BUFFER_LEFT
	br 		do_display

/********************************************************************************
 * Shifts the buffer by one hex digit to the right.
 *
 * r16
 * r17
 * r18
 */
.global SHIFT_BUFFER_RIGHT
SHIFT_BUFFER_RIGHT:
	/* save registers */
	stw 	ra, -4(sp)
	stw 	fp, -8(sp)
	stw		r16, -12(sp)
	stw		r17, -16(sp)
	stw		r18, -20(sp)
	mov 	fp, sp
	subi	sp, sp, 20

	movia	r16, BUFFER

	/* shift third word */
	ldw		r17, 8(r16)				/* third word */
	ldw		r18, 4(r16)				/* second word */
	srli	r17, r17, 4
	slli	r18, r18, 28			/* put least significant nibble of second word at the */
	or		r17, r17, r18			/* most significant nibble of third word */
	stw		r17, 8(r16)

	/* shift second word */
	ldw		r17, 4(r16)				/* second word */
	ldw		r18, 0(r16)				/* first word */
	srli	r17, r17, 4
	slli	r18, r18, 28			/* put least significant nibble of second word at the */
	or		r17, r17, r18			/* most significant nibble of third word */
	stw		r17, 4(r16)

	/* shift first word */
	ldw		r17, 0(r16)				/* first word */
	srli	r17, r17, 4
	stw		r17, 0(r16)

	/* restore registers */
	addi	sp, sp, 20
	ldw		r18, -20(sp)
	ldw		r17, -16(sp)
	ldw		r16, -12(sp)
	ldw		fp, -8(sp)
	ldw		ra, -4(sp)

	ret

/********************************************************************************
 * Shifts the buffer by one hex digit to the left.
 *
 * r16
 * r17
 * r18
 */
.global SHIFT_BUFFER_LEFT
SHIFT_BUFFER_LEFT:
	/* save registers */
	stw 	ra, -4(sp)
	stw 	fp, -8(sp)
	stw		r16, -12(sp)
	stw		r17, -16(sp)
	stw		r18, -20(sp)
	mov 	fp, sp
	subi	sp, sp, 20

	movia	r16, BUFFER

	/* shift first word */
	ldw		r17, 0(r16)				/* first word */
	ldw		r18, 4(r16)				/* second word */
	slli	r17, r17, 4
	srli	r18, r18, 28			/* put most significant nibble of second word at the */
	or		r17, r17, r18			/* least significant nibble of first word */
	stw		r17, 0(r16)

	/* shift second word */
	ldw		r17, 4(r16)				/* second word */
	ldw		r18, 8(r16)				/* third word */
	slli	r17, r17, 4
	srli	r18, r18, 28			/* put most significant nibble of third word at the */
	or		r17, r17, r18			/* least significant nibble of second word */
	stw		r17, 4(r16)

	/* shift third word */
	ldw		r17, 8(r16)				/* third word */
	slli	r17, r17, 4
	stw		r17, 8(r16)

	/* restore registers */
	addi	sp, sp, 20
	ldw		r18, -20(sp)
	ldw		r17, -16(sp)
	ldw		r16, -12(sp)
	ldw		fp, -8(sp)
	ldw		ra, -4(sp)

	ret

/********************************************************************************
 * Checks if the shift direction should be reversed, based on the current shift 
 * direction and contents of the buffer.
 *
 * PARAMETER r2 - current shift direction
 * RETURNS r3; 1 if shift direction should be reversed, 0 otherwise
 * r16
 * r17
 */
.global SHOULD_REVERSE_SHIFT
SHOULD_REVERSE_SHIFT:
	/* save registers */
	stw		ra, -4(sp)
	stw		fp, -8(sp)
	stw		r16, -12(sp)
	stw		r17, -16(sp)
	mov		fp, sp
	subi	sp, sp, 16

	/* if the current shift direction is to the left, then the shift should be reversed
	 * when the first and second words are zero; the shift should be reversed for the right
	 * shift direction when the second and third words are zero
	 *
	 * in both cases, the second word needs to be checked, so check that first
	 */
	movia	r16, BUFFER
	ldw		r17, 4(r16)				/* second word */
	cmpeq	r17, r17, zero			/* r17 <= r17 == 0 */
	beq		r17, zero, SRS_done

	beq 	r2, zero, SRS_load_third_word

SRS_load_first_word:
	ldw		r17, 0(r16)
	br		SRS_do_check

SRS_load_third_word:
	ldw		r17, 8(r16)

SRS_do_check:
	cmpeq	r17, r17, zero			/* r17 <= r17 == 0 */

SRS_done:
	mov 	r3, r17					/* store return value */

	/* restore registers */
	addi	sp, sp, 16
	ldw		r17, -16(sp)
	ldw		r16, -12(sp)
	ldw		fp, -8(sp)
	ldw		ra, -4(sp)

	ret

/********************************************************************************
 * Updates the value displayed on the hex display. The value is taken from the 
 * buffer.
 *
 * r16
 * r17
 */
.global UPDATE_HEX_DISPLAy
UPDATE_HEX_DISPLAY:
	/* save registers */
	stw		ra, -4(sp)
	stw		fp, -8(sp)
	stw 	r16, -12(sp)
	stw 	r17, -16(sp)
	mov		fp, sp
	subi	sp, sp, 16

	/* load hex value to display */
	movia	r16, BUFFER
	ldw		r17, 4(r16)		/* value to display is in second full-word of buffer */

	/* write value to hex display */
	movia	r16, HEX
	stwio	r17, 0(r16)

	/* restore registers */
	addi	sp, sp, 16
	ldw		r17, -16(sp)
	ldw		r16, -12(sp)
	ldw		fp, -8(sp)
	ldw		ra, -4(sp)

	ret

/********************************************************************************
 * DATA SECTION
 */

.data

/* Buffer to hold values to display on the hex display.
 * The buffer contains 3 full-words: before, visible, after
 */
BUFFER:
	.fill 3, 4, 0

.end

