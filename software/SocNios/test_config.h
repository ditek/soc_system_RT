

#ifndef _test_config__H
#define _test_config__H

//Platform clock in MHz
#define F_CLK			50

//Time scaler, multiplies the clock period TIME_SCALER-times, [2, R>, 0 disables, 1 has no effect
#define TIME_SCALER		3

//Specify the test duration ms
#define TEST_DURATION 	10

//Specify start address for the data, and memory size
#define MEMORY_BASE		DATA_MEMORY_BASE
#define MEMORY_SIZE 	0x1000

//Time the tester will hold the data in ns after initiating an interrupt
#define HOLD_TIME		1

//Writing to memory using BURST, undefining will use normal writing
#define BURST_WRITE 	0

//specify a period in us (microseconds), 0 or undef disables the int
#define INT_A_PERIOD	10    //us
#define INT_B_PERIOD 	10
#define INT_C_PERIOD	10
#define INT_D_PERIOD	10






#endif /* _test_config__H */


