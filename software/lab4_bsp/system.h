/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_qsys' in SOPC Builder design 'firstQsys'
 * SOPC Builder design path: D:/backupC/altera/12.1/quartus/nios/firstQsys.sopcinfo
 *
 * Generated: Sat Aug 29 23:28:11 CEST 2015
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x80820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x14
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x40020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "nios2_qsys"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x40000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x80820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x14
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x40020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x40000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_QSYS


/*
 * HEX0 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX0 altera_avalon_pio
#define HEX0_BASE 0x3f0
#define HEX0_BIT_CLEARING_EDGE_REGISTER 0
#define HEX0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX0_CAPTURE 0
#define HEX0_DATA_WIDTH 8
#define HEX0_DO_TEST_BENCH_WIRING 0
#define HEX0_DRIVEN_SIM_VALUE 0x0
#define HEX0_EDGE_TYPE "NONE"
#define HEX0_FREQ 50000000u
#define HEX0_HAS_IN 0
#define HEX0_HAS_OUT 1
#define HEX0_HAS_TRI 0
#define HEX0_IRQ -1
#define HEX0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX0_IRQ_TYPE "NONE"
#define HEX0_NAME "/dev/HEX0"
#define HEX0_RESET_VALUE 0x0
#define HEX0_SPAN 16
#define HEX0_TYPE "altera_avalon_pio"


/*
 * HEX1 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX1 altera_avalon_pio
#define HEX1_BASE 0x410
#define HEX1_BIT_CLEARING_EDGE_REGISTER 0
#define HEX1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX1_CAPTURE 0
#define HEX1_DATA_WIDTH 8
#define HEX1_DO_TEST_BENCH_WIRING 0
#define HEX1_DRIVEN_SIM_VALUE 0x0
#define HEX1_EDGE_TYPE "NONE"
#define HEX1_FREQ 50000000u
#define HEX1_HAS_IN 0
#define HEX1_HAS_OUT 1
#define HEX1_HAS_TRI 0
#define HEX1_IRQ -1
#define HEX1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX1_IRQ_TYPE "NONE"
#define HEX1_NAME "/dev/HEX1"
#define HEX1_RESET_VALUE 0x0
#define HEX1_SPAN 16
#define HEX1_TYPE "altera_avalon_pio"


/*
 * HEX2 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX2 altera_avalon_pio
#define HEX2_BASE 0x420
#define HEX2_BIT_CLEARING_EDGE_REGISTER 0
#define HEX2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX2_CAPTURE 0
#define HEX2_DATA_WIDTH 8
#define HEX2_DO_TEST_BENCH_WIRING 0
#define HEX2_DRIVEN_SIM_VALUE 0x0
#define HEX2_EDGE_TYPE "NONE"
#define HEX2_FREQ 50000000u
#define HEX2_HAS_IN 0
#define HEX2_HAS_OUT 1
#define HEX2_HAS_TRI 0
#define HEX2_IRQ -1
#define HEX2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX2_IRQ_TYPE "NONE"
#define HEX2_NAME "/dev/HEX2"
#define HEX2_RESET_VALUE 0x0
#define HEX2_SPAN 16
#define HEX2_TYPE "altera_avalon_pio"


/*
 * HEX3 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX3 altera_avalon_pio
#define HEX3_BASE 0x430
#define HEX3_BIT_CLEARING_EDGE_REGISTER 0
#define HEX3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX3_CAPTURE 0
#define HEX3_DATA_WIDTH 8
#define HEX3_DO_TEST_BENCH_WIRING 0
#define HEX3_DRIVEN_SIM_VALUE 0x0
#define HEX3_EDGE_TYPE "NONE"
#define HEX3_FREQ 50000000u
#define HEX3_HAS_IN 0
#define HEX3_HAS_OUT 1
#define HEX3_HAS_TRI 0
#define HEX3_IRQ -1
#define HEX3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX3_IRQ_TYPE "NONE"
#define HEX3_NAME "/dev/HEX3"
#define HEX3_RESET_VALUE 0x0
#define HEX3_SPAN 16
#define HEX3_TYPE "altera_avalon_pio"


/*
 * HEX5 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX5 altera_avalon_pio
#define HEX5_BASE 0x440
#define HEX5_BIT_CLEARING_EDGE_REGISTER 0
#define HEX5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX5_CAPTURE 0
#define HEX5_DATA_WIDTH 8
#define HEX5_DO_TEST_BENCH_WIRING 0
#define HEX5_DRIVEN_SIM_VALUE 0x0
#define HEX5_EDGE_TYPE "NONE"
#define HEX5_FREQ 50000000u
#define HEX5_HAS_IN 0
#define HEX5_HAS_OUT 1
#define HEX5_HAS_TRI 0
#define HEX5_IRQ -1
#define HEX5_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX5_IRQ_TYPE "NONE"
#define HEX5_NAME "/dev/HEX5"
#define HEX5_RESET_VALUE 0x0
#define HEX5_SPAN 16
#define HEX5_TYPE "altera_avalon_pio"


/*
 * HEX6 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX6 altera_avalon_pio
#define HEX6_BASE 0x450
#define HEX6_BIT_CLEARING_EDGE_REGISTER 0
#define HEX6_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX6_CAPTURE 0
#define HEX6_DATA_WIDTH 8
#define HEX6_DO_TEST_BENCH_WIRING 0
#define HEX6_DRIVEN_SIM_VALUE 0x0
#define HEX6_EDGE_TYPE "NONE"
#define HEX6_FREQ 50000000u
#define HEX6_HAS_IN 0
#define HEX6_HAS_OUT 1
#define HEX6_HAS_TRI 0
#define HEX6_IRQ -1
#define HEX6_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX6_IRQ_TYPE "NONE"
#define HEX6_NAME "/dev/HEX6"
#define HEX6_RESET_VALUE 0x0
#define HEX6_SPAN 16
#define HEX6_TYPE "altera_avalon_pio"


/*
 * HEX7 configuration
 *
 */

#define ALT_MODULE_CLASS_HEX7 altera_avalon_pio
#define HEX7_BASE 0x460
#define HEX7_BIT_CLEARING_EDGE_REGISTER 0
#define HEX7_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX7_CAPTURE 0
#define HEX7_DATA_WIDTH 8
#define HEX7_DO_TEST_BENCH_WIRING 0
#define HEX7_DRIVEN_SIM_VALUE 0x0
#define HEX7_EDGE_TYPE "NONE"
#define HEX7_FREQ 50000000u
#define HEX7_HAS_IN 0
#define HEX7_HAS_OUT 1
#define HEX7_HAS_TRI 0
#define HEX7_IRQ -1
#define HEX7_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX7_IRQ_TYPE "NONE"
#define HEX7_NAME "/dev/HEX7"
#define HEX7_RESET_VALUE 0x0
#define HEX7_SPAN 16
#define HEX7_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV GX"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x81018
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x81018
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x81018
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "firstQsys"


/*
 * green_led configuration
 *
 */

#define ALT_MODULE_CLASS_green_led altera_avalon_pio
#define GREEN_LED_BASE 0x81000
#define GREEN_LED_BIT_CLEARING_EDGE_REGISTER 0
#define GREEN_LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define GREEN_LED_CAPTURE 0
#define GREEN_LED_DATA_WIDTH 8
#define GREEN_LED_DO_TEST_BENCH_WIRING 0
#define GREEN_LED_DRIVEN_SIM_VALUE 0x0
#define GREEN_LED_EDGE_TYPE "NONE"
#define GREEN_LED_FREQ 50000000u
#define GREEN_LED_HAS_IN 0
#define GREEN_LED_HAS_OUT 1
#define GREEN_LED_HAS_TRI 0
#define GREEN_LED_IRQ -1
#define GREEN_LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define GREEN_LED_IRQ_TYPE "NONE"
#define GREEN_LED_NAME "/dev/green_led"
#define GREEN_LED_RESET_VALUE 0x0
#define GREEN_LED_SPAN 16
#define GREEN_LED_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x81018
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory2 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_BASE 0x40000
#define ONCHIP_MEMORY2_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_DUAL_PORT 0
#define ONCHIP_MEMORY2_GUI_RAM_BLOCK_TYPE "Automatic"
#define ONCHIP_MEMORY2_INIT_CONTENTS_FILE "onchip_memory2"
#define ONCHIP_MEMORY2_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_IRQ -1
#define ONCHIP_MEMORY2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_NAME "/dev/onchip_memory2"
#define ONCHIP_MEMORY2_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_RAM_BLOCK_TYPE "Auto"
#define ONCHIP_MEMORY2_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_SIZE_VALUE 204800u
#define ONCHIP_MEMORY2_SPAN 204800
#define ONCHIP_MEMORY2_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_WRITABLE 1


/*
 * push_buttons13 configuration
 *
 */

#define ALT_MODULE_CLASS_push_buttons13 altera_avalon_pio
#define PUSH_BUTTONS13_BASE 0x2f0
#define PUSH_BUTTONS13_BIT_CLEARING_EDGE_REGISTER 0
#define PUSH_BUTTONS13_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PUSH_BUTTONS13_CAPTURE 1
#define PUSH_BUTTONS13_DATA_WIDTH 3
#define PUSH_BUTTONS13_DO_TEST_BENCH_WIRING 0
#define PUSH_BUTTONS13_DRIVEN_SIM_VALUE 0x0
#define PUSH_BUTTONS13_EDGE_TYPE "RISING"
#define PUSH_BUTTONS13_FREQ 50000000u
#define PUSH_BUTTONS13_HAS_IN 1
#define PUSH_BUTTONS13_HAS_OUT 0
#define PUSH_BUTTONS13_HAS_TRI 0
#define PUSH_BUTTONS13_IRQ -1
#define PUSH_BUTTONS13_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PUSH_BUTTONS13_IRQ_TYPE "EDGE"
#define PUSH_BUTTONS13_NAME "/dev/push_buttons13"
#define PUSH_BUTTONS13_RESET_VALUE 0x0
#define PUSH_BUTTONS13_SPAN 16
#define PUSH_BUTTONS13_TYPE "altera_avalon_pio"


/*
 * red_led configuration
 *
 */

#define ALT_MODULE_CLASS_red_led altera_avalon_pio
#define RED_LED_BASE 0x10
#define RED_LED_BIT_CLEARING_EDGE_REGISTER 0
#define RED_LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RED_LED_CAPTURE 0
#define RED_LED_DATA_WIDTH 16
#define RED_LED_DO_TEST_BENCH_WIRING 0
#define RED_LED_DRIVEN_SIM_VALUE 0x0
#define RED_LED_EDGE_TYPE "NONE"
#define RED_LED_FREQ 50000000u
#define RED_LED_HAS_IN 0
#define RED_LED_HAS_OUT 1
#define RED_LED_HAS_TRI 0
#define RED_LED_IRQ -1
#define RED_LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RED_LED_IRQ_TYPE "NONE"
#define RED_LED_NAME "/dev/red_led"
#define RED_LED_RESET_VALUE 0x0
#define RED_LED_SPAN 16
#define RED_LED_TYPE "altera_avalon_pio"


/*
 * slider_switches configuration
 *
 */

#define ALT_MODULE_CLASS_slider_switches altera_avalon_pio
#define SLIDER_SWITCHES_BASE 0x0
#define SLIDER_SWITCHES_BIT_CLEARING_EDGE_REGISTER 0
#define SLIDER_SWITCHES_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SLIDER_SWITCHES_CAPTURE 1
#define SLIDER_SWITCHES_DATA_WIDTH 8
#define SLIDER_SWITCHES_DO_TEST_BENCH_WIRING 0
#define SLIDER_SWITCHES_DRIVEN_SIM_VALUE 0x0
#define SLIDER_SWITCHES_EDGE_TYPE "RISING"
#define SLIDER_SWITCHES_FREQ 50000000u
#define SLIDER_SWITCHES_HAS_IN 1
#define SLIDER_SWITCHES_HAS_OUT 0
#define SLIDER_SWITCHES_HAS_TRI 0
#define SLIDER_SWITCHES_IRQ -1
#define SLIDER_SWITCHES_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SLIDER_SWITCHES_IRQ_TYPE "NONE"
#define SLIDER_SWITCHES_NAME "/dev/slider_switches"
#define SLIDER_SWITCHES_RESET_VALUE 0x0
#define SLIDER_SWITCHES_SPAN 16
#define SLIDER_SWITCHES_TYPE "altera_avalon_pio"


/*
 * sysid_qsys configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys altera_avalon_sysid_qsys
#define SYSID_QSYS_BASE 0x81010
#define SYSID_QSYS_ID 0
#define SYSID_QSYS_IRQ -1
#define SYSID_QSYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_NAME "/dev/sysid_qsys"
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_TIMESTAMP 1440883152
#define SYSID_QSYS_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
