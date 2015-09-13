/*
 * lab3_io.c
 *
 *  Created on: 29-08-2015
 *      Author: Radek
 */
#include "lab_3_io.h"

typedef unsigned char uint8_t;
int* getHexNum(int number)
{
	// if problem then maybe negative hex logic in fpga, then negate HEX_CODES
	uint8_t HEX_CODES[11] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
			0x7F, 0x67, 0x00 }; // 8bit number - msb is not linked to any pin so by default is always 0

	static uint8_t digits[3];
	int buffer = number;

	//check if how many digits has the number
	//handle first digit
	if (number > 99) {
		digits[0] = buffer / 100;
		buffer = buffer - (digits[0] * 100);
	} else {
		digits[0] = 10; // tenth position in code array is blank character
	}
	if (number > 9) {
		digits[1] = buffer / 10;
		buffer = buffer - (digits[1] * 10);
	} else {
		digits[1] = 10; // tenth position in code array is blank character
	}
	digits[2] = buffer;

	//convert to hex codes
	digits[0] = HEX_CODES[digits[0]];
	digits[1] = HEX_CODES[digits[1]];
	digits[2] = HEX_CODES[digits[2]];

	return digits;
}

void zad1to3_lab3() {
	volatile int * red_LED_ptr = (int *) SLIDER_SWITCHES_BASE; // red LED address
	volatile int * green_LED_ptr = (int *) GREEN_LED_BASE; // green LED address
	volatile int * SW_switch_ptr = (int *) SLIDER_SWITCHES_BASE; // SW slider switch address
	int switches = 0, prev_switches = 0;
	int c_sum = 0;
	int read_IO_button = 0;

	printf("Hello from Nios II!\n");
	printf("Lab 3 zadania 1 - 3\n");

	while (1) {
		//zad1
		//switches = IORD_ALTERA_AVALON_PIO_DATA(SLIDER_SWITCHES_BASE); // reads switches every loop
		switches = IORD_ALTERA_AVALON_PIO_EDGE_CAP(SLIDER_SWITCHES_BASE); //reads switches only when change in switches state occurs

		//display current switches state green leds
		IOWR_ALTERA_AVALON_PIO_DATA(GREEN_LED_BASE, switches);

		//update cumulative sum
		if (prev_switches != switches) { //change occurred add new state to cumulative sum
			c_sum += switches;
		}

		//display sum on red leds
		IOWR_ALTERA_AVALON_PIO_DATA(RED_LED_BASE, c_sum);

		//zad2
		//with push_button added - > change qsys design and quatros verilog file
		//all above is not used
		read_IO_button = IORD_ALTERA_AVALON_PIO_EDGE_CAP(PUSH_BUTTON1_BASE); // set as positive edge -> read only on positive egde of button this register
		if (read_IO_button) {
			switches = IORD_ALTERA_AVALON_PIO_DATA(SLIDER_SWITCHES_BASE);
			c_sum += switches;
			IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PUSH_BUTTON1_BASE, 0);
		}

		//display current switches state green leds
		IOWR_ALTERA_AVALON_PIO_DATA(GREEN_LED_BASE, switches);

		//display sum on red leds
		IOWR_ALTERA_AVALON_PIO_DATA(RED_LED_BASE, c_sum);

		//zad3
		//display current switches number on hex display
		int *currNum = getHexNum(switches); //decode switches number from 0x00 to 0xFF and
		int *currSum = getHexNum(c_sum);

		//display switches number on hex displays
		//add HEX0 - 3 base in Qsys
		IOWR_ALTERA_AVALON_PIO_DATA(HEX0_BASE, *(currNum + 2));
		IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, *(currNum + 1));
		IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, *currNum);

		//display accumulated sum on hex display
		IOWR_ALTERA_AVALON_PIO_DATA(HEX5_BASE, *(currSum + 2));
		IOWR_ALTERA_AVALON_PIO_DATA(HEX6_BASE, *(currSum + 1));
		IOWR_ALTERA_AVALON_PIO_DATA(HEX7_BASE, *currSum);

		 //
	}
}

