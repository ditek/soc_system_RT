
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
//#include "sys/alt_gpio.h"
#include <sys/alt_stdio.h>
#include "test_config.h"
#include <system.h>
#include <io.h>
#include "simple_printf.h"
#include "nios2.h"

#define HAL_PLATFORM_RESET()   NIOS2_WRITE_STATUS(0);   NIOS2_WRITE_IENABLE(0);   ((void (*) (void)) NIOS2_RESET_ADDR) ()


#if TIME_SCALER == 0
	#define TIME_SCALER 1 
#endif

#define ADDR_CTRL				module_address+	 0
#define ADDR_STATUS 			module_address+	 4
#define ADDR_MEM_BASE 			module_address+	 8
#define ADDR_MEM_SIZE 			module_address+	12
#define ADDR_CLK_SCALER			module_address+	16
#define ADDR_HOLD_TIME			module_address+	20
#define ADDR_INT_A_FREQ_SCALER	module_address+	24
#define ADDR_INT_B_FREQ_SCALER	module_address+	28
#define ADDR_INT_C_FREQ_SCALER	module_address+	32
#define ADDR_INT_D_FREQ_SCALER	module_address+	36

#define CTRL_WRITE_MEM 			0
#define CTRL_BURST 				1
#define CTRL_RESET_CONSUMER_N 	2
#define CTRL_RESET_PRODUCER_N 	3


#define WRITE(ADDR,VAL)		IOWR(ADDR, 0, VAL); \
							alt_printf("wrote:%x to addr %x\n",(uint32_t)VAL,(uint32_t)ADDR); \
							if ((ret = IORD(ADDR, 0)) != VAL) \
							{ alt_printf("ERROR:: writing: A: %x, val: %x, ret: %x \n",(uint32_t)ADDR,VAL,ret); \
							goto fail ; }

int main() {
	int success = 0;
	int fd;
	int ret = 3;
	uint32_t module_address = REAL_TIME_TESTER_BASE;

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


//	int dump_file;
//	if ((dump_file = open("/home/root/dumpfile.dat", (O_RDWR | O_SYNC | O_CREAT))) == -1)
//	{
//		alt_printf("Failed opening dumpfile\n");
//		goto fail;
//	}
//
//
//	int i;
//	char buf[20] = {'\0'};
//	for (i = 0; i<(DATA_MEMORY_SIZE_VALUE); i+=8)
//	{
//		memset(buf,'\0',sizeof(buf));
//		raw_sprintf(buf,"%x%x\n",IORD(DATA_MEMORY_BASE, i), IORD(DATA_MEMORY_BASE, (i+4)));
//		write(dump_file,buf,sizeof(buf));
//	}
//
//	// clean up our memory mapping and exit
//	close(dump_file);

	success = 1;

	fail:
	if (success)
	{
		alt_printf("Test completed successfully \n");
	}
	else
	{
		alt_printf("Error during test\n");
	}

//	close( fd );

	while(1)
	{
		alt_printf("test\n");
		usleep(1000000);
	}
	return( 0 );
}
