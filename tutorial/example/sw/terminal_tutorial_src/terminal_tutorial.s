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

	/* global registers - these never change */
	movia	r2, UART			/* UART base address */
	movia	r3, HEX				/* hexadecimal display base address */

	/* send special character sequence to clear terminal */
	movia	r16, CLEAR_SCREEN
	stw		r16, -4(sp)
	subi	sp, sp, 4
	call	WRITE_STRING
	addi	sp, sp, 4

	/* write the test string to the terminal */
	movia	r16, TEST_STRING
	stw		r16, -4(sp)
	subi	sp, sp, 4
	call	WRITE_STRING
	addi	sp, sp, 4

	/* loop that'll read characters from the UART and echo them back */
read:
	ldhuio	r16, 0(r2)			/* read data register from UART */
	andi	r17, r16, 0x8000	/* check data valid bit */
	beq		r17, zero, read		/* if zero, no data, go back to poll loop */

	/* r16 contains the contents of the data register and the lowest
	 * byte contains the character to write to the JTAG UART
	 */
	andi	r16, r16, 0xff		/* mask character bits in lower 16-bits */

	/* write character to JTAG UART */
	stw		r16, -4(sp)
	subi	sp, sp, 4
	call	WRITE_CHAR
	addi	sp, sp, 4

	/* display hex value of character on hex display */
	stw		r16, 0(r3)

	br		read				/* continue read loop */

/********************************************************************************
 * Writes a character to the JTAG UART.
 * r2 should be the base address of the JTAG UART.
 *
 * PARAMETER 0(sp) - full-word whose lowest byte is character to write
 * r16
 */
.global WRITE_CHAR
WRITE_CHAR:
	/* save registers */
	stw		ra, -4(sp)
	stw		fp, -8(sp)
	stw		r16, -12(sp)
	mov		fp, sp
	subi	sp, sp, 12

	/* wait for room to appear in the JTAG UART write FIFO */
WRITE_CHAR_wait_for_space:
	ldwio	r16, 4(r2)			/* load control register */
	andhi	r16, r16, 0xffff	/* upper 16-bits contain the number of */
								/* spaces available in the FIFO */
	beq		r16, zero, WRITE_CHAR_wait_for_space

	/* space is available
	 * store character to write in r16
	 */
	ldw		r16, 0(fp)
	andi	r16, r16, 0xff
	
	/* write character to JTAG UART */
	stbio	r16, 0(r2)

	/* restore registers */
	addi	sp, sp, 12
	ldw		r16, -12(sp)
	ldw		fp, -8(sp)
	ldw		ra, -4(sp)

	ret

/********************************************************************************
 * Writes a null-terminated string to the JTAG UART.
 * r2 should be the base address of the JTAG UART.
 *
 * PARAMETER 0(sp) - address of first character in null-terminated string
 * r16
 * r17
 */
.global WRITE_STRING
WRITE_STRING:
	/* save registers */
	stw		ra, -4(sp)
	stw		fp, -8(sp)
	stw		r16, -12(sp)
	stw		r17, -16(sp)
	mov		fp, sp
	subi	sp, sp, 16

	ldw		r16, 0(fp)			/* address of character */
	mov		r17, zero			/* zero out register that'll hold character */

WRITE_STRING_load_char:
	ldb		r17, 0(r16)			/* load character at current address */
	beq		r17, zero, WRITE_STRING_done

	addi	r16, r16, 1			/* increment address to next character */

	/* write character */
	stw		r17, -4(sp)
	subi	sp, sp, 4
	call	WRITE_CHAR
	addi	sp, sp, 4
	
	br WRITE_STRING_load_char

WRITE_STRING_done:
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

/* sequence to clear the terminal */
CLEAR_SCREEN:
	.string "\x1b[2J"

TEST_STRING:
	.string "Hello Altera Monitor Program!"

.end

