set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_lcssa82100_i_i int 8 regular  }
	{ p_lcssa8197_i_i int 8 regular  }
	{ p_lcssa8094_i_i int 8 regular  }
	{ p_lcssa7991_i_i int 8 regular  }
	{ p_lcssa7888_i_i int 8 regular  }
	{ p_lcssa85_i_i int 8 regular  }
	{ trunc_ln1_i int 11 regular  }
	{ cmp133_2_i_i int 1 regular {ap_stable 0} }
	{ icmp6 int 1 regular {ap_stable 0} }
	{ bytePlanes int 128 regular {fifo 1 volatile }  }
	{ cmp133_i_i int 1 regular {ap_stable 0} }
	{ icmp_ln930_i int 1 regular {ap_stable 0} }
	{ cmp94_6_i_i int 1 regular {ap_stable 0} }
	{ cmp94_5_i_i int 1 regular {ap_stable 0} }
	{ cmp94_4_i_i int 1 regular {ap_stable 0} }
	{ icmp3 int 1 regular {ap_stable 0} }
	{ cmp94_2_i_i int 1 regular {ap_stable 0} }
	{ icmp int 1 regular {ap_stable 0} }
	{ sub91_i_i int 11 regular  }
	{ cmp94_i_i int 1 regular {ap_stable 0} }
	{ img int 48 regular {fifo 0 volatile }  }
	{ p_out int 8 regular {pointer 1}  }
	{ p_out1 int 8 regular {pointer 1}  }
	{ p_out2 int 8 regular {pointer 1}  }
	{ p_out3 int 8 regular {pointer 1}  }
	{ p_out4 int 8 regular {pointer 1}  }
	{ p_out5 int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_lcssa82100_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa8197_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa8094_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa7991_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa7888_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa85_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln1_i", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp133_2_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmp133_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln930_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp94_6_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp94_5_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp94_4_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp94_2_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub91_i_i", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp94_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 48 signal 20 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 20 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 20 } 
	{ img_empty_n sc_in sc_logic 1 signal 20 } 
	{ img_read sc_out sc_logic 1 signal 20 } 
	{ p_lcssa82100_i_i sc_in sc_lv 8 signal 0 } 
	{ p_lcssa8197_i_i sc_in sc_lv 8 signal 1 } 
	{ p_lcssa8094_i_i sc_in sc_lv 8 signal 2 } 
	{ p_lcssa7991_i_i sc_in sc_lv 8 signal 3 } 
	{ p_lcssa7888_i_i sc_in sc_lv 8 signal 4 } 
	{ p_lcssa85_i_i sc_in sc_lv 8 signal 5 } 
	{ trunc_ln1_i sc_in sc_lv 11 signal 6 } 
	{ cmp133_2_i_i sc_in sc_lv 1 signal 7 } 
	{ icmp6 sc_in sc_lv 1 signal 8 } 
	{ bytePlanes_din sc_out sc_lv 128 signal 9 } 
	{ bytePlanes_num_data_valid sc_in sc_lv 10 signal 9 } 
	{ bytePlanes_fifo_cap sc_in sc_lv 10 signal 9 } 
	{ bytePlanes_full_n sc_in sc_logic 1 signal 9 } 
	{ bytePlanes_write sc_out sc_logic 1 signal 9 } 
	{ cmp133_i_i sc_in sc_lv 1 signal 10 } 
	{ icmp_ln930_i sc_in sc_lv 1 signal 11 } 
	{ cmp94_6_i_i sc_in sc_lv 1 signal 12 } 
	{ cmp94_5_i_i sc_in sc_lv 1 signal 13 } 
	{ cmp94_4_i_i sc_in sc_lv 1 signal 14 } 
	{ icmp3 sc_in sc_lv 1 signal 15 } 
	{ cmp94_2_i_i sc_in sc_lv 1 signal 16 } 
	{ icmp sc_in sc_lv 1 signal 17 } 
	{ sub91_i_i sc_in sc_lv 11 signal 18 } 
	{ cmp94_i_i sc_in sc_lv 1 signal 19 } 
	{ p_out sc_out sc_lv 8 signal 21 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_out1 sc_out sc_lv 8 signal 22 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_out2 sc_out sc_lv 8 signal 23 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ p_out3 sc_out sc_lv 8 signal 24 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_out4 sc_out sc_lv 8 signal 25 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_out5 sc_out sc_lv 8 signal 26 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "p_lcssa82100_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lcssa82100_i_i", "role": "default" }} , 
 	{ "name": "p_lcssa8197_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lcssa8197_i_i", "role": "default" }} , 
 	{ "name": "p_lcssa8094_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lcssa8094_i_i", "role": "default" }} , 
 	{ "name": "p_lcssa7991_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lcssa7991_i_i", "role": "default" }} , 
 	{ "name": "p_lcssa7888_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lcssa7888_i_i", "role": "default" }} , 
 	{ "name": "p_lcssa85_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lcssa85_i_i", "role": "default" }} , 
 	{ "name": "trunc_ln1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "trunc_ln1_i", "role": "default" }} , 
 	{ "name": "cmp133_2_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp133_2_i_i", "role": "default" }} , 
 	{ "name": "icmp6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp6", "role": "default" }} , 
 	{ "name": "bytePlanes_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bytePlanes", "role": "din" }} , 
 	{ "name": "bytePlanes_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes", "role": "full_n" }} , 
 	{ "name": "bytePlanes_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes", "role": "write" }} , 
 	{ "name": "cmp133_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp133_i_i", "role": "default" }} , 
 	{ "name": "icmp_ln930_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln930_i", "role": "default" }} , 
 	{ "name": "cmp94_6_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp94_6_i_i", "role": "default" }} , 
 	{ "name": "cmp94_5_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp94_5_i_i", "role": "default" }} , 
 	{ "name": "cmp94_4_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp94_4_i_i", "role": "default" }} , 
 	{ "name": "icmp3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp3", "role": "default" }} , 
 	{ "name": "cmp94_2_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp94_2_i_i", "role": "default" }} , 
 	{ "name": "icmp", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp", "role": "default" }} , 
 	{ "name": "sub91_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sub91_i_i", "role": "default" }} , 
 	{ "name": "cmp94_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp94_i_i", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lcssa82100_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa8197_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa8094_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa7991_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa7888_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa85_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp133_2_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bytePlanes", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp133_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp_ln930_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp94_6_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp94_5_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp94_4_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp3", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp94_2_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "sub91_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp94_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_943_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1 {
		p_lcssa82100_i_i {Type I LastRead 0 FirstWrite -1}
		p_lcssa8197_i_i {Type I LastRead 0 FirstWrite -1}
		p_lcssa8094_i_i {Type I LastRead 0 FirstWrite -1}
		p_lcssa7991_i_i {Type I LastRead 0 FirstWrite -1}
		p_lcssa7888_i_i {Type I LastRead 0 FirstWrite -1}
		p_lcssa85_i_i {Type I LastRead 0 FirstWrite -1}
		trunc_ln1_i {Type I LastRead 0 FirstWrite -1}
		cmp133_2_i_i {Type I LastRead 0 FirstWrite -1}
		icmp6 {Type I LastRead 0 FirstWrite -1}
		bytePlanes {Type O LastRead -1 FirstWrite 5}
		cmp133_i_i {Type I LastRead 0 FirstWrite -1}
		icmp_ln930_i {Type I LastRead 0 FirstWrite -1}
		cmp94_6_i_i {Type I LastRead 0 FirstWrite -1}
		cmp94_5_i_i {Type I LastRead 0 FirstWrite -1}
		cmp94_4_i_i {Type I LastRead 0 FirstWrite -1}
		icmp3 {Type I LastRead 0 FirstWrite -1}
		cmp94_2_i_i {Type I LastRead 0 FirstWrite -1}
		icmp {Type I LastRead 0 FirstWrite -1}
		sub91_i_i {Type I LastRead 0 FirstWrite -1}
		cmp94_i_i {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 2}
		p_out1 {Type O LastRead -1 FirstWrite 2}
		p_out2 {Type O LastRead -1 FirstWrite 2}
		p_out3 {Type O LastRead -1 FirstWrite 2}
		p_out4 {Type O LastRead -1 FirstWrite 2}
		p_out5 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "8188"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "8188"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_lcssa82100_i_i { ap_none {  { p_lcssa82100_i_i in_data 0 8 } } }
	p_lcssa8197_i_i { ap_none {  { p_lcssa8197_i_i in_data 0 8 } } }
	p_lcssa8094_i_i { ap_none {  { p_lcssa8094_i_i in_data 0 8 } } }
	p_lcssa7991_i_i { ap_none {  { p_lcssa7991_i_i in_data 0 8 } } }
	p_lcssa7888_i_i { ap_none {  { p_lcssa7888_i_i in_data 0 8 } } }
	p_lcssa85_i_i { ap_none {  { p_lcssa85_i_i in_data 0 8 } } }
	trunc_ln1_i { ap_none {  { trunc_ln1_i in_data 0 11 } } }
	cmp133_2_i_i { ap_stable {  { cmp133_2_i_i in_data 0 1 } } }
	icmp6 { ap_stable {  { icmp6 in_data 0 1 } } }
	bytePlanes { ap_fifo {  { bytePlanes_din fifo_data_in 1 128 }  { bytePlanes_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_fifo_cap fifo_update 0 10 }  { bytePlanes_full_n fifo_status 0 1 }  { bytePlanes_write fifo_port_we 1 1 } } }
	cmp133_i_i { ap_stable {  { cmp133_i_i in_data 0 1 } } }
	icmp_ln930_i { ap_stable {  { icmp_ln930_i in_data 0 1 } } }
	cmp94_6_i_i { ap_stable {  { cmp94_6_i_i in_data 0 1 } } }
	cmp94_5_i_i { ap_stable {  { cmp94_5_i_i in_data 0 1 } } }
	cmp94_4_i_i { ap_stable {  { cmp94_4_i_i in_data 0 1 } } }
	icmp3 { ap_stable {  { icmp3 in_data 0 1 } } }
	cmp94_2_i_i { ap_stable {  { cmp94_2_i_i in_data 0 1 } } }
	icmp { ap_stable {  { icmp in_data 0 1 } } }
	sub91_i_i { ap_none {  { sub91_i_i in_data 0 11 } } }
	cmp94_i_i { ap_stable {  { cmp94_i_i in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_data_in 0 48 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 8 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 8 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 8 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 8 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 8 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 8 }  { p_out5_ap_vld out_vld 1 1 } } }
}
