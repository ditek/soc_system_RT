# Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, the Altera Quartus II License Agreement,
# the Altera MegaCore Function License Agreement, or other 
# applicable license agreement, including, without limitation, 
# that your use is for the sole purpose of programming logic 
# devices manufactured by Altera and sold by Altera or its 
# authorized distributors.  Please refer to the applicable 
# agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: soc_system.tcl
# Generated on: Tue Jun 02 20:39:01 2015

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "soc_system"]} {
		puts "Project soc_system is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists soc_system]} {
		project_open -revision soc_system soc_system
	} else {
		project_new -revision soc_system soc_system
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6D6F31C8ES
	set_global_assignment -name TOP_LEVEL_ENTITY ghrd_top
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 13.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "15:03:48  MARCH 12, 2013"
	set_global_assignment -name LAST_QUARTUS_VERSION 14.0
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -entity soc_system -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -entity soc_system -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -entity soc_system -section_id Top
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name UNIPHY_SEQUENCER_DQS_CONFIG_ENABLE ON
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
	set_global_assignment -name ECO_REGENERATE_REPORT ON
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name IOBANK_VCCIO 1.5V -section_id 4A
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 3A
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7A
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7B
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7C
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7D
	set_global_assignment -name IOBANK_VCCIO 2.5V -section_id 5B
	set_global_assignment -name SEARCH_PATH "c:\\altera\\12.1sp1\\soc\\soc_system_lab_01_26_13_restored\\hssi"
	set_global_assignment -name SEARCH_PATH "c:\\altera\\12.1sp1\\soc\\soc_system_lab_01_26_13_restored\\hssi\\hssi_8channel"
	set_global_assignment -name SEARCH_PATH "c:\\altera\\12.1sp1\\soc\\soc_system_lab_01_26_13_restored\\clock_gen\\ref_pll"
	set_global_assignment -name SEARCH_PATH "c:\\altera\\12.1sp1\\soc\\soc_system_lab_01_26_13_restored\\clock_gen"
	set_global_assignment -name SEARCH_PATH "c:\\altera\\12.1sp1\\soc\\soc_system_lab_01_26_13_restored\\top"
	set_global_assignment -name SEARCH_PATH soc_system/synthesis/ -tag from_archive
	set_global_assignment -name SEARCH_PATH soc_system/synthesis/submodules/ -tag from_archive
	set_global_assignment -name SEARCH_PATH soc_system/synthesis/submodules/sequencer/ -tag from_archive
	set_global_assignment -name SEARCH_PATH ip/intr_capturer/ -tag from_archive
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
	set_global_assignment -name AUTO_OPEN_DRAIN_PINS OFF
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
	set_global_assignment -name FITTER_EFFORT "FAST FIT"
	set_global_assignment -name SEARCH_PATH soc_system_lab_01_26_13_restored/top/ -tag from_archive
	set_global_assignment -name SEARCH_PATH top/ -tag from_archive
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE cti_tapping_1int.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name USE_DLL_FREQUENCY_FOR_DQS_DELAY_CHAIN ON
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=AUTO" -section_id auto_signaltap_0
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name QIP_FILE soc_system/synthesis/soc_system.qip
	set_global_assignment -name QIP_FILE ip/altsource_probe/hps_reset.qip
	set_global_assignment -name VERILOG_FILE ip/edge_detect/altera_edge_detector.v
	set_global_assignment -name VERILOG_FILE ip/debounce/debounce.v
	set_global_assignment -name VERILOG_FILE top/config_soc.v
	set_global_assignment -name SDC_FILE soc_system_timing.sdc
	set_global_assignment -name SIGNALTAP_FILE cti_tapping.stp
	set_global_assignment -name VERILOG_FILE top/ghrd_top.v
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INCREMENTAL_ROUTING=1" -section_id auto_signaltap_0
	set_global_assignment -name TIMEQUEST_MULTICORNER_ANALYSIS ON
	set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL
	set_global_assignment -name PHYSICAL_SYNTHESIS_EFFORT FAST
	set_global_assignment -name ALLOW_POWER_UP_DONT_CARE OFF
	set_global_assignment -name ADV_NETLIST_OPT_SYNTH_WYSIWYG_REMAP ON
	set_global_assignment -name SIGNALTAP_FILE cti_tapping_1int.stp
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=131072" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=131072" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=19" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_BITS=59" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=0000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=34" -section_id auto_signaltap_0
	set_global_assignment -name SLD_FILE db/cti_tapping_1int_auto_stripped.stp
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_mem_stable_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].read_capture_clk_buffer -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to hps_0|hps_io|border|hps_sdram_inst -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PLL_COMPENSATION_MODE DIRECT -to hps_0|hps_io|border|hps_sdram_inst|pll0|fbout -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[1].read_capture_clk_buffer -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[2].read_capture_clk_buffer -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[3].read_capture_clk_buffer -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ba -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dm -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_oct_rzqin -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[4] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[4] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[5] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[5] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[6] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[6] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[7] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[7] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[8] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[8] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[9] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[9] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[10] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[10] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[11] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[11] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[12] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[12] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[13] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[13] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[14] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[14] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[15] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[15] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[16] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[16] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[17] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[17] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[18] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[18] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[19] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[19] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[20] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[20] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[21] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[21] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[22] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[22] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[23] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[23] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[24] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[24] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[25] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[25] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[26] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[26] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[27] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[27] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[28] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[28] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[29] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[29] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[30] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[30] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[31] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[31] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to memory_mem_ck -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to memory_mem_ck_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[10] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[11] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[12] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[13] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[14] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[4] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[5] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[6] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[7] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[8] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[9] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ba[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ba[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ba[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_cas_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_cke -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_cs_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_odt -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ras_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_we_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_reset_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[10] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[11] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[12] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[13] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[14] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[4] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[5] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[6] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[7] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[8] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_a[9] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ba[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ba[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ba[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_cas_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ck -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ck_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_cke -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_cs_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dm[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dm[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dm[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dm[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[10] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[11] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[12] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[13] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[14] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[15] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[16] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[17] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[18] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[19] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[20] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[21] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[22] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[23] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[24] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[25] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[26] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[27] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[28] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[29] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[30] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[31] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[4] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[5] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[6] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[7] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[8] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq[9] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs_n[0] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs_n[1] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs_n[2] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs_n[3] -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_odt -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ras_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_reset_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_we_n -entity soc_system -tag __hps_sdram_p0
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -entity soc_system -section_id Top
	set_location_assignment PIN_Y26 -to clk_100m_fpga
	set_location_assignment PIN_K14 -to clk_50m_fpga
	set_location_assignment PIN_AA16 -to clk_top1
	set_location_assignment PIN_AF14 -to clk_bot1
	set_location_assignment PIN_AJ14 -to ddr3_fpga_a[0]
	set_location_assignment PIN_AK14 -to ddr3_fpga_a[1]
	set_location_assignment PIN_AH12 -to ddr3_fpga_a[2]
	set_location_assignment PIN_AJ12 -to ddr3_fpga_a[3]
	set_location_assignment PIN_AG15 -to ddr3_fpga_a[4]
	set_location_assignment PIN_AH15 -to ddr3_fpga_a[5]
	set_location_assignment PIN_AK12 -to ddr3_fpga_a[6]
	set_location_assignment PIN_AK13 -to ddr3_fpga_a[7]
	set_location_assignment PIN_AH13 -to ddr3_fpga_a[8]
	set_location_assignment PIN_AH14 -to ddr3_fpga_a[9]
	set_location_assignment PIN_AJ9 -to ddr3_fpga_a[10]
	set_location_assignment PIN_AK9 -to ddr3_fpga_a[11]
	set_location_assignment PIN_AK7 -to ddr3_fpga_a[12]
	set_location_assignment PIN_AK8 -to ddr3_fpga_a[13]
	set_location_assignment PIN_AG12 -to ddr3_fpga_a[14]
	set_location_assignment PIN_AH10 -to ddr3_fpga_ba[0]
	set_location_assignment PIN_AJ11 -to ddr3_fpga_ba[1]
	set_location_assignment PIN_AK11 -to ddr3_fpga_ba[2]
	set_location_assignment PIN_AH7 -to ddr3_fpga_casn
	set_location_assignment PIN_AJ21 -to ddr3_fpga_cke
	set_location_assignment PIN_AA15 -to ddr3_fpga_clk_n
	set_location_assignment PIN_AA14 -to ddr3_fpga_clk_p
	set_location_assignment PIN_AB15 -to ddr3_fpga_csn
	set_location_assignment PIN_AH17 -to ddr3_fpga_dm[0]
	set_location_assignment PIN_AG23 -to ddr3_fpga_dm[1]
	set_location_assignment PIN_AK23 -to ddr3_fpga_dm[2]
	set_location_assignment PIN_AJ27 -to ddr3_fpga_dm[3]
	set_location_assignment PIN_AF18 -to ddr3_fpga_dq[0]
	set_location_assignment PIN_AE17 -to ddr3_fpga_dq[1]
	set_location_assignment PIN_AG16 -to ddr3_fpga_dq[2]
	set_location_assignment PIN_AF16 -to ddr3_fpga_dq[3]
	set_location_assignment PIN_AH20 -to ddr3_fpga_dq[4]
	set_location_assignment PIN_AG21 -to ddr3_fpga_dq[5]
	set_location_assignment PIN_AJ16 -to ddr3_fpga_dq[6]
	set_location_assignment PIN_AH18 -to ddr3_fpga_dq[7]
	set_location_assignment PIN_AK18 -to ddr3_fpga_dq[8]
	set_location_assignment PIN_AJ17 -to ddr3_fpga_dq[9]
	set_location_assignment PIN_AG18 -to ddr3_fpga_dq[10]
	set_location_assignment PIN_AK19 -to ddr3_fpga_dq[11]
	set_location_assignment PIN_AG20 -to ddr3_fpga_dq[12]
	set_location_assignment PIN_AF19 -to ddr3_fpga_dq[13]
	set_location_assignment PIN_AJ20 -to ddr3_fpga_dq[14]
	set_location_assignment PIN_AH24 -to ddr3_fpga_dq[15]
	set_location_assignment PIN_AE19 -to ddr3_fpga_dq[16]
	set_location_assignment PIN_AE18 -to ddr3_fpga_dq[17]
	set_location_assignment PIN_AG22 -to ddr3_fpga_dq[18]
	set_location_assignment PIN_AK22 -to ddr3_fpga_dq[19]
	set_location_assignment PIN_AF21 -to ddr3_fpga_dq[20]
	set_location_assignment PIN_AF20 -to ddr3_fpga_dq[21]
	set_location_assignment PIN_AH23 -to ddr3_fpga_dq[22]
	set_location_assignment PIN_AK24 -to ddr3_fpga_dq[23]
	set_location_assignment PIN_AF24 -to ddr3_fpga_dq[24]
	set_location_assignment PIN_AF23 -to ddr3_fpga_dq[25]
	set_location_assignment PIN_AJ24 -to ddr3_fpga_dq[26]
	set_location_assignment PIN_AK26 -to ddr3_fpga_dq[27]
	set_location_assignment PIN_AE23 -to ddr3_fpga_dq[28]
	set_location_assignment PIN_AE22 -to ddr3_fpga_dq[29]
	set_location_assignment PIN_AG25 -to ddr3_fpga_dq[30]
	set_location_assignment PIN_AK27 -to ddr3_fpga_dq[31]
	set_location_assignment PIN_W16 -to ddr3_fpga_dqs_n[0]
	set_location_assignment PIN_W17 -to ddr3_fpga_dqs_n[1]
	set_location_assignment PIN_AA18 -to ddr3_fpga_dqs_n[2]
	set_location_assignment PIN_AD19 -to ddr3_fpga_dqs_n[3]
	set_location_assignment PIN_V16 -to ddr3_fpga_dqs_p[0]
	set_location_assignment PIN_V17 -to ddr3_fpga_dqs_p[1]
	set_location_assignment PIN_Y17 -to ddr3_fpga_dqs_p[2]
	set_location_assignment PIN_AC20 -to ddr3_fpga_dqs_p[3]
	set_location_assignment PIN_AE16 -to ddr3_fpga_odt
	set_location_assignment PIN_AH8 -to ddr3_fpga_rasn
	set_location_assignment PIN_AK21 -to ddr3_fpga_resetn
	set_location_assignment PIN_AJ6 -to ddr3_fpga_wen
	set_location_assignment PIN_AG17 -to ddr3_fpga_rzq
	set_location_assignment PIN_AG27 -to fan_ctrl
	set_location_assignment PIN_AH2 -to irda_rxd
	set_location_assignment PIN_W25 -to user_dipsw_fpga[0]
	set_location_assignment PIN_V25 -to user_dipsw_fpga[1]
	set_location_assignment PIN_AC28 -to user_dipsw_fpga[2]
	set_location_assignment PIN_AC29 -to user_dipsw_fpga[3]
	set_location_assignment PIN_AF10 -to user_led_fpga[0]
	set_location_assignment PIN_AD10 -to user_led_fpga[1]
	set_location_assignment PIN_AE11 -to user_led_fpga[2]
	set_location_assignment PIN_AD7 -to user_led_fpga[3]
	set_location_assignment PIN_AE9 -to user_pb_fpga[0]
	set_location_assignment PIN_AE12 -to user_pb_fpga[1]
	set_location_assignment PIN_AD9 -to user_pb_fpga[2]
	set_location_assignment PIN_AD11 -to user_pb_fpga[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D0
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D1
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D2
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D3
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D4
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D5
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D6
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_D7
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_DIR
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_STP
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_usb1_NXT
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_uart0_TX
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_uart0_RX
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_qspi_IO0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_qspi_IO1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_qspi_IO2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_qspi_IO3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_qspi_SS0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_qspi_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_CMD
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D4
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D5
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D6
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_D7
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_PWREN
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_sdio_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim0_MISO
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim0_MOSI
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim0_SS0
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim1_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim1_MISO
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim1_MOSI
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim1_SS0
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_spim0_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_MDIO
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_RXD0
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_RXD1
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_RXD2
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_RXD3
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_RX_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_RX_CTL
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_TXD0
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_TXD1
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_TXD2
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_TXD3
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_TX_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_TX_CTL
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_emac1_MDC
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO09
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO35
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO48
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO53
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO54
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO55
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO56
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO61
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO62
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_gpio_GPIO00
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_i2c1_SDA
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hps_i2c1_SCL
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_oct_rzqin -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs_n[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs_n[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs_n[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_dqs_n[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_ck -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to memory_mem_ck_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[10] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[11] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[12] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[13] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[14] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[5] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[6] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[7] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[8] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_a[9] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_ba[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_ba[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_ba[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_cas_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_cke -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_cs_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_odt -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_ras_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_we_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dm[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dm[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dm[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to memory_mem_dm[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_mem_stable_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] -tag __hps_sdram_p0
	set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to hps_0|hps_io|border|hps_sdram_inst -tag __hps_sdram_p0
	set_instance_assignment -name PLL_COMPENSATION_MODE DIRECT -to hps_0|hps_io|border|hps_sdram_inst|pll0|fbout -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[1].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[2].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[3].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[5] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[6] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[7] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[8] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[9] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[10] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[11] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[12] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[13] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_a[14] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_ba -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_ba[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_ba[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_ba[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_cas_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_ck -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_ck_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_cke -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_cs_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dm -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dm[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dm[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dm[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dm[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dq -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_mem_dqs_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs_n[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs_n[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs_n[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_dqs_n[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_odt -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_ras_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to memory_mem_we_n -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to memory_oct_rzqin -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs[3] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dqs_n[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to memory_mem_ck -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to memory_mem_ck_n -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[0] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[10] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[11] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[12] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[13] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[14] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[1] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[2] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[3] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[4] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[5] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[6] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[7] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[8] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_a[9] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ba[0] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ba[1] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ba[2] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_cas_n -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_cke -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_cs_n -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_odt -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_ras_n -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_we_n -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to memory_mem_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to memory_mem_dm[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "1.5 V" -to clk_top1
	set_instance_assignment -name IO_STANDARD "1.5 V" -to clk_bot1
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_a
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_ba
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_casn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_cke
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_clk_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_clk_p
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_csn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dm
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dq
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dqs_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dqs_p
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_odt
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_rasn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_resetn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_wen
	set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_fpga_rzq
	set_instance_assignment -name IO_STANDARD "2.5 V" -to clk_100m_fpga
	set_instance_assignment -name IO_STANDARD "2.5 V" -to clk_50m_fpga
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to vga_hs
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to fan_ctrl
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to irda_rxd
	set_instance_assignment -name IO_STANDARD LVDS -to hsmc_clkin_p[2]
	set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_p[16]
	set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_p[8]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw_fpga[0]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw_fpga[1]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw_fpga[2]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw_fpga[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_led_fpga[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_led_fpga[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_led_fpga[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_led_fpga[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_pb_fpga[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_pb_fpga[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_pb_fpga[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to user_pb_fpga[3]
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_mem_stable_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[1].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[2].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[3].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] -tag __hps_sdram_p0
	set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to u0|hps_0|hps_io|border|hps_sdram_inst -tag __hps_sdram_p0
	set_instance_assignment -name PLL_COMPENSATION_MODE DIRECT -to u0|hps_0|hps_io|border|hps_sdram_inst|pll0|fbout -tag __hps_sdram_p0
	set_instance_assignment -name D5_DELAY 2 -to memory_mem_ck -tag __hps_sdram_p0
	set_instance_assignment -name D5_DELAY 2 -to memory_mem_ck_n -tag __hps_sdram_p0
	set_location_assignment PIN_AD27 -to fpga_resetn
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to fpga_resetn
	set_location_assignment PIN_AE26 -to clk_i2c_sclk
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk_i2c_sdat
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk_i2c_sclk
	set_location_assignment PIN_AJ29 -to clk_i2c_sdat
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[23] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT trigger_in -to "soc_system:u0|custom_module:real_time_tester|RTS_tester:producer|reset_module_n" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[26] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[19] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to clk_bot1 -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[8] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[14] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[16] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[31] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_location_assignment PIN_F14 -to hsmc_dut_ack[0]
	set_location_assignment PIN_G15 -to hsmc_dut_int[0]
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to hsmc_dut_ack[0] -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[12] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[7] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[9] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[10] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[21] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[30] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[20] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[27] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_location_assignment PIN_F15 -to hsmc_dut_ack[1]
	set_location_assignment PIN_G13 -to hsmc_dut_ack[2]
	set_location_assignment PIN_H14 -to hsmc_dut_ack[3]
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[0] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[5] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[11] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[13] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[22] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[24] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[28] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_location_assignment PIN_H15 -to hsmc_dut_int[1]
	set_location_assignment PIN_A13 -to hsmc_dut_int[2]
	set_location_assignment PIN_B13 -to hsmc_dut_int[3]
	set_location_assignment PIN_B11 -to hsmc_dut_R_Wn
	set_location_assignment PIN_E12 -to hsmc_dut_data[0]
	set_location_assignment PIN_C12 -to hsmc_dut_data[1]
	set_location_assignment PIN_C13 -to hsmc_dut_data[6]
	set_location_assignment PIN_C8 -to hsmc_dut_data[5]
	set_location_assignment PIN_B12 -to hsmc_dut_data[4]
	set_location_assignment PIN_B8 -to hsmc_dut_data[3]
	set_location_assignment PIN_F13 -to hsmc_dut_data[2]
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to "soc_system:u0|custom_module:real_time_tester|RTS_tester:producer|reset_module_n" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to hsmc_dut_ack[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to hsmc_dut_ack[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to hsmc_dut_ack[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to hsmc_dut_int[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to hsmc_dut_int[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to hsmc_dut_int[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to hsmc_dut_int[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to "soc_system:u0|custom_module:real_time_tester|RTS_tester:producer|clk" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to "soc_system:u0|custom_module:real_time_tester|RTS_tester:producer|data_out_valid" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to "soc_system:u0|custom_module:real_time_tester|RTS_tester:producer|reset_module_n" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to "soc_system:u0|real_time_tester_dut_signals_ack[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to "soc_system:u0|real_time_tester_dut_signals_ack[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to "soc_system:u0|real_time_tester_dut_signals_ack[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to "soc_system:u0|real_time_tester_dut_signals_ack[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to "soc_system:u0|real_time_tester_dut_signals_int[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to "soc_system:u0|real_time_tester_dut_signals_int[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to "soc_system:u0|real_time_tester_dut_signals_int[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to "soc_system:u0|real_time_tester_dut_signals_int[3]" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[1] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[2] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[3] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[4] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[6] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[15] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[17] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[18] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[25] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[29] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hsmc_dut_R_Wn
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hsmc_dut_ack[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hsmc_dut_ack[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hsmc_dut_ack[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to hsmc_dut_ack[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_int[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_int[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_int[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_int[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hsmc_dut_data[3]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
