
#include "system.h"
#include <io.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
//#include "sys/alt_gpio.h"
#include <sys/alt_stdio.h>
#include <sys/alt_irq.h>

#include "interrupt_handler_uart.h"
#include "simple_printf.h"
#include "test_config.h"
//#include "nios2.h"
//
//#define HAL_PLATFORM_RESET()   NIOS2_WRITE_STATUS(0);   NIOS2_WRITE_IENABLE(0);   ((void (*) (void)) NIOS2_RESET_ADDR) ()

#define UART_0_NEW_BAUD 9600

#if TIME_SCALER == 0
	#define TIME_SCALER 1
#endif

#define CHECK_FOR_ERRORS if(error_check()) goto Error;

volatile int context_uart0;
volatile uint32_t *uart = (volatile uint32_t*) UART_0_BASE;

#define LINE_BUFFER_SIZE 50
char buffer[LINE_BUFFER_SIZE];
const char error[] = "error";
const char unknown[] = "unknown";

void start_test();
char dump_memory();

void InitUart()
{
	void* context_uart0_ptr = (void*) &context_uart0;
	InitUart1(UART_0_NEW_BAUD);

	alt_ic_isr_register(UART_0_IRQ_INTERRUPT_CONTROLLER_ID, UART_0_IRQ, IsrUart1, context_uart0_ptr, 0x0); // install UART1 ISR
	alt_ic_irq_enable (UART_0_IRQ_INTERRUPT_CONTROLLER_ID, UART_0_IRQ);
}

void putc_uart0(char c)
{
	while ((uart[2] & (1<<6)) == 0);
	uart[1] = c;
	alt_printf("%c", c);
}

void putstr_uart0(char* str)
{
	alt_printf("%s", str);
	char *ptr = str;
	while (*ptr != '\0')
	{
	 while ((uart[2] & (1<<6)) == 0);
	 uart[1] = *ptr;
//	 PutUart1(*ptr);
	 ptr++;
	}
}

char error_check()
{
	if(received_word)
	{
		received_word = 0;
		memset(buffer,'\0',sizeof(buffer));
		int i=0;
		unsigned char data;
		do
		{
			data = GetUart1();
			buffer[i++] = data;
		}
		while(i<LINE_BUFFER_SIZE && data != '\n');

		if(strncmp(error, buffer, 5) == 0)
		{
			alt_printf("ERROR \n");
			return 1;
		}
	}
	return 0;
}

int main() {

//	uint32_t module_address = REAL_TIME_TESTER_BASE;
char cmd;

	InitUart();
//	putstr_uart0("init\n");
//	usleep(3000*1000);
////	putstr_uart0("rm txt3\n");
////	usleep(1000*1000);
//	putstr_uart0("ls\n");
//	usleep(1000*1000);
//
//	flush_rx_buffer();
//	putstr_uart0("test\n");
//	usleep(1000*1000);
//	CHECK_FOR_ERRORS;
//
//	putstr_uart0("hello world\n");
//	usleep(1000*1000);
//	CHECK_FOR_ERRORS;
//
//	putstr_uart0("end of file\n");
//	usleep(1000*1000);
//	CHECK_FOR_ERRORS;
//
//	putstr_uart0("ls\n");
//	usleep(1000*1000);




	Error:
	while(1)
	{
		if(!EmptyUart1())
		{
			cmd = GetUart1();
			switch(cmd)
			{
			// 'test' command
			case 't':
				start_test();
				break;
			// 'ready' inquiry
			case 'r':
				PutUart1('a');		// Acknowledge
				break;
			// 'memory' command
			case 'm':
				PutUart1('a');		// Acknowledge
//				flush_rx_buffer();
				if(dump_memory())
					PutUart1('s');
				else
					PutUart1('f');
				break;
			// 'configuration' commnand
			case 'c':

				break;
			default:

				break;
			}
		}
		//PutUart1('a');
		//alt_printf("test\n");
		//usleep(1000*1000);
	}
	return( 0 );
}

void start_test()
{
	int success = 0;
	int ret = 3;
	int hold_cycles = F_CLK*HOLD_TIME;

	#if INT_A_PERIOD > 0
		int int_A_scaler = F_CLK*INT_A_PERIOD/TIME_SCALER;
	#endif

	#if INT_B_PERIOD > 0
		int int_B_scaler = F_CLK*INT_B_PERIOD/TIME_SCALER;
	#endif

	#if INT_C_PERIOD > 0
		int int_C_scaler = F_CLK*INT_C_PERIOD/TIME_SCALER;
	#endif

	#if INT_D_PERIOD > 0
		int int_D_scaler = F_CLK*INT_D_PERIOD/TIME_SCALER;
	#endif

	alt_printf("Starting write to mem from costum module test\n");
//	if( ( fd = fopen( "/dev/data_memory", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
//	if( ( fd = fopen( DATA_MEMORY_NAME, "w" ) ) == NULL ) {
//		alt_printf( "ERROR: could not open \"/dev/data_memory\"...\n" );
//		return( 1 );
//	}

	alt_printf("Address = %x , Address base: %x \n", (uint32_t)REAL_TIME_TESTER_BASE, (uint32_t)DATA_MEMORY_BASE);
	//reseting
	WRITE(ADDR_CTRL, 0);
	alt_printf("STATUS= %x \n", IORD(ADDR_STATUS, 0));
	//setting base address and mem size
	WRITE(ADDR_MEM_BASE, DATA_MEMORY_BASE);
	WRITE(ADDR_MEM_SIZE, MEMORY_SIZE);
	//write the hold time
	WRITE(ADDR_HOLD_TIME, hold_cycles);

	//write time scaler if its enabled
	#if TIME_SCALER >= 2
		WRITE(ADDR_CLK_SCALER, TIME_SCALER);
	#endif
	//write the chosen int periods

	#if INT_A_PERIOD > 0
		WRITE(ADDR_INT_A_FREQ_SCALER,int_A_scaler);
	#else
		WRITE(ADDR_INT_A_FREQ_SCALER, 0);
	#endif

	#if INT_B_PERIOD > 0
		WRITE(ADDR_INT_B_FREQ_SCALER, int_B_scaler);
	#else
		WRITE(ADDR_INT_B_FREQ_SCALER, 0);
	#endif

	#if INT_C_PERIOD > 0
		WRITE(ADDR_INT_C_FREQ_SCALER, int_C_scaler);
	#else
		WRITE(ADDR_INT_C_FREQ_SCALER, 0);
	#endif

	#if INT_D_PERIOD > 0
		WRITE(ADDR_INT_D_FREQ_SCALER, int_D_scaler)
	#else
		WRITE(ADDR_INT_D_FREQ_SCALER, 0);
	#endif

	//starting the test
	WRITE(ADDR_CTRL, ( 1<<CTRL_WRITE_MEM | BURST_WRITE<<CTRL_BURST | 1<<CTRL_RESET_CONSUMER_N | 1<<CTRL_RESET_PRODUCER_N ));
	alt_printf("STATUS= %x \n",IORD(ADDR_STATUS, 0));
	alt_printf("CTRL= %x \n",IORD(ADDR_CTRL, 0));

	usleep( TEST_DURATION*1000 );

	alt_printf("Finished. STATUS= %x \n",IORD(ADDR_STATUS, 0));
	WRITE(ADDR_CTRL, 0);
	success = 1;

		fail:
		if (success)
		{
			PutUart1('s');
		}
		else
		{
			PutUart1('f');
		}

	//	close( fd );
}

char dump_memory()
{
	int i;
	char buf[20] = {'\0'};
	for (i = 0; i<(DATA_MEMORY_SIZE_VALUE); i+=8)
	{
		memset(buf,'\0',sizeof(buf));
		raw_sprintf(buf,"%x%x\n",IORD_32DIRECT(DATA_MEMORY_BASE, i), IORD_32DIRECT(DATA_MEMORY_BASE, (i+4)));
		putstr_uart0(buf);
		//putc_uart0('\n');
		// Give enough time for sd-card storage
		usleep(14*1000);
		// If anything is received before the operation completes then there's something wrong
//		if(!EmptyUart1())
//			return 0;
	}
	return 1;
}

