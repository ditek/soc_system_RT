// ============================================================================
// Copyright (c) 2013 by Arrow Electronics, Inc.
// ============================================================================
//
// Permission:
//
//   Arrow grants permission to use and modify this code for use
//   in synthesis for all Arrow Development Boards. Other use of this code, 
//	  including the selling ,duplication, or modification of any portion is 
//   strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Arrow provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Arrow Technologies Inc
//  Englewood, CO. USA
//  
//  
//                     web: http://www.Arrow.com/  
//                     
//
// ============================================================================
// Date:  Mon Mar 27 13:20:22 2013
// ============================================================================
//
// ============================================================================
// Revision Change list:
// ============================================================================
//
// 								soc_system_20130323
//	
//	Description: Connected hps_fpga_reset_n output to verilog top level reset.
//					 Added button debounce circuitry. Bypassed at present. Debug required.
//					 Used clk_bot1. clk_50m_fpga does not work. Debug required.
//
//
// 								soc_system_20130408
//
//	Description: Changed vga_sync_n & vga_blank_n from inputs to outputs
//					 Changed ddr3_fpga_rasn, ddr3_fpga_resetn, ddr3_fpga_wen from 
//					 inputs to outputs.
//
//
// 								soc_system_20130411
//
//	Description: Removed debounce circuit. External 74HC245 performs pushbutton 
//					 debounce.
//
//
// 								soc_system_20131109
//
//	Description: Upgrade to release 13.1 
//					 Quartus: Changed top level to ghrd_top
//					 Quartus: Added Source/Probe Megawizard instances for f2h cold/warm/debug resets
//					 Quartus: Added system trace connections
//					 Qsys: Changed naming for jtag_master from master_secure to hps_only_master
//					 Qsys: Changed naming for jtag_master from master_non_sec to fpga_only_master
//					 Qsys: hps_component. Enabled input ports for f2h cold/warm/debug resets
//					 Qsys: hps_component. Enabled system trace ports
//
//
// 								soc_system_20140711
//
//	Description: Upgrade to release 14.0 
//					 Quartus: Changed device to 5CSXFC6D6F31C6
//					 Qsys: hps_component. Enabled f2dram_0, 256 bit bidirectional Avalon-MM FPGA to SDRAM interface
//					 Qsys: Added f2sdram_only jtag_master
//
//
// ============================================================================
// Qsys System :
// ============================================================================
//
// Description: 
//
//		To view the Qsys system open Qsys and selected soc_system.qsys.
//		This system mimics the Altera Development kit GHRD design. The system
//		console script, "ghrd_sc_script.tcl", which can be found in this projects  
//		root directory, is identical to the Altera script and will implement all 
//		the functionality described in the GHRD Users Guide. All software examples 
//		shown in the users guide will also be fully functional on the Arrow SoCKIT.
//
//
// ============================================================================

module ghrd_top (						
	
	//FPGA-GPLL-CLK------------------------//X pins
//   input          clk_100m_fpga,       // 2.5V    //50 MHz ajustable from SiLabs SI5338
//   input          clk_50m_fpga,        // 2.5V    //50 MHz ajustable from SiLabs SI5338
//	input          clk_top1,            // 2.5V    //50 MHz ajustable from SiLabs SI5338
   input          clk_bot1,            // 1.5V    //50 MHz ajustable from SiLabs SI5338
//	input          fpga_resetn,         // 2.5V    //FPGA Reset Pushbutton	

	////////////////////	REAL-TIME TESTER DUT CONNECTIONS 	 		////////////////////	
	output									[3:0]		hsmc_dut_int,	//	dut_int
	input	 									[3:0]		hsmc_dut_ack,	//	dut_ack
	input 												hsmc_dut_R_Wn,	//	dut_R_Wn
	inout		 								[6:0]		hsmc_dut_data		//	dut_data
   
);
  
// internal wires and registers declaration
//  wire        hps_fpga_reset_n;
//  wire [2:0]  hps_reset_req;
//  wire        hps_cold_reset;
//  wire        hps_warm_reset;
//  wire        hps_debug_reset;
 
    soc_system u0 (
        .clk_clk                               (clk_bot1),                          	 
//        .reset_reset_n                         (hps_fpga_reset_n),                      
		  .real_time_tester_dut_signals_ack		  (hsmc_dut_ack),  
		  .real_time_tester_dut_signals_r_wn	  (hsmc_dut_R_Wn), 
		  .real_time_tester_dut_signals_int	 	  (hsmc_dut_int),  
		  .real_time_tester_dut_signals_data	  (hsmc_dut_data)  
    );
      
// Source/Probe megawizard instance
//hps_reset hps_reset_inst (
//  .source_clk (clk_bot1),
//  .source     (hps_reset_req)
//);
//
//altera_edge_detector pulse_cold_reset (
//  .clk       (clk_bot1),
//  .rst_n     (hps_fpga_reset_n),
//  .signal_in (hps_reset_req[0]),
//  .pulse_out (hps_cold_reset)
//);
//  defparam pulse_cold_reset.PULSE_EXT = 6;
//  defparam pulse_cold_reset.EDGE_TYPE = 1;
//  defparam pulse_cold_reset.IGNORE_RST_WHILE_BUSY = 1;
//
//altera_edge_detector pulse_warm_reset (
//  .clk       (clk_bot1),
//  .rst_n     (hps_fpga_reset_n),
//  .signal_in (hps_reset_req[1]),
//  .pulse_out (hps_warm_reset)
//);
//  defparam pulse_warm_reset.PULSE_EXT = 2;
//  defparam pulse_warm_reset.EDGE_TYPE = 1;
//  defparam pulse_warm_reset.IGNORE_RST_WHILE_BUSY = 1;
//  
//altera_edge_detector pulse_debug_reset (
//  .clk       (clk_bot1),
//  .rst_n     (hps_fpga_reset_n),
//  .signal_in (hps_reset_req[2]),
//  .pulse_out (hps_debug_reset)
//);
//  defparam pulse_debug_reset.PULSE_EXT = 32;
//  defparam pulse_debug_reset.EDGE_TYPE = 1;
//  defparam pulse_debug_reset.IGNORE_RST_WHILE_BUSY = 1;
    
endmodule
