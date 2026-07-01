set moduleName MultiPixStream2Bytes
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {MultiPixStream2Bytes}
set C_modelType { void 0 }
set C_modelArgList {
	{ img int 48 regular {fifo 0 volatile }  }
	{ bytePlanes int 128 regular {fifo 1 volatile }  }
	{ height_val8 int 12 regular {ap_stable 0} }
	{ width_val5 int 4 regular {ap_stable 0} }
	{ WidthInBytes_val2_c11 int 15 regular {fifo 0}  }
	{ video_format_val10 int 6 regular {ap_stable 0} }
	{ WidthInBytes_val2_c int 15 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val8", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "width_val5", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_val2_c11", "interface" : "fifo", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "video_format_val10", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_val2_c", "interface" : "fifo", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 48 signal 0 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ img_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_read sc_out sc_logic 1 signal 0 } 
	{ bytePlanes_din sc_out sc_lv 128 signal 1 } 
	{ bytePlanes_num_data_valid sc_in sc_lv 10 signal 1 } 
	{ bytePlanes_fifo_cap sc_in sc_lv 10 signal 1 } 
	{ bytePlanes_full_n sc_in sc_logic 1 signal 1 } 
	{ bytePlanes_write sc_out sc_logic 1 signal 1 } 
	{ height_val8 sc_in sc_lv 12 signal 2 } 
	{ width_val5 sc_in sc_lv 4 signal 3 } 
	{ WidthInBytes_val2_c11_dout sc_in sc_lv 15 signal 4 } 
	{ WidthInBytes_val2_c11_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ WidthInBytes_val2_c11_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ WidthInBytes_val2_c11_empty_n sc_in sc_logic 1 signal 4 } 
	{ WidthInBytes_val2_c11_read sc_out sc_logic 1 signal 4 } 
	{ video_format_val10 sc_in sc_lv 6 signal 5 } 
	{ WidthInBytes_val2_c_din sc_out sc_lv 15 signal 6 } 
	{ WidthInBytes_val2_c_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ WidthInBytes_val2_c_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ WidthInBytes_val2_c_full_n sc_in sc_logic 1 signal 6 } 
	{ WidthInBytes_val2_c_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "bytePlanes_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bytePlanes", "role": "din" }} , 
 	{ "name": "bytePlanes_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes", "role": "full_n" }} , 
 	{ "name": "bytePlanes_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes", "role": "write" }} , 
 	{ "name": "height_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height_val8", "role": "default" }} , 
 	{ "name": "width_val5", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "width_val5", "role": "default" }} , 
 	{ "name": "WidthInBytes_val2_c11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c11", "role": "dout" }} , 
 	{ "name": "WidthInBytes_val2_c11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c11", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_val2_c11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c11", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_val2_c11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c11", "role": "empty_n" }} , 
 	{ "name": "WidthInBytes_val2_c11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c11", "role": "read" }} , 
 	{ "name": "video_format_val10", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "video_format_val10", "role": "default" }} , 
 	{ "name": "WidthInBytes_val2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "din" }} , 
 	{ "name": "WidthInBytes_val2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_val2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_val2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "full_n" }} , 
 	{ "name": "WidthInBytes_val2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "MultiPixStream2Bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "35385124",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1_fu_240", "Port" : "img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "bytePlanes", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "480", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1_fu_240", "Port" : "bytePlanes", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "height_val8", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthInBytes_val2_c11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_val2_c11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "video_format_val10", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthInBytes_val2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_val2_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_RGB8_YUV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1_fu_240", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12ns_14ns_25_1_1_U84", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes {
		img {Type I LastRead 8 FirstWrite -1}
		bytePlanes {Type O LastRead -1 FirstWrite 5}
		height_val8 {Type I LastRead 1 FirstWrite -1}
		width_val5 {Type I LastRead 1 FirstWrite -1}
		WidthInBytes_val2_c11 {Type I LastRead 0 FirstWrite -1}
		video_format_val10 {Type I LastRead 1 FirstWrite -1}
		WidthInBytes_val2_c {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "2", "Max" : "35385124"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "35385124"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img { ap_fifo {  { img_dout fifo_data_in 0 48 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	bytePlanes { ap_fifo {  { bytePlanes_din fifo_data_in 1 128 }  { bytePlanes_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_fifo_cap fifo_update 0 10 }  { bytePlanes_full_n fifo_status 0 1 }  { bytePlanes_write fifo_port_we 1 1 } } }
	height_val8 { ap_stable {  { height_val8 in_data 0 12 } } }
	width_val5 { ap_stable {  { width_val5 in_data 0 4 } } }
	WidthInBytes_val2_c11 { ap_fifo {  { WidthInBytes_val2_c11_dout fifo_data_in 0 15 }  { WidthInBytes_val2_c11_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_val2_c11_fifo_cap fifo_update 0 3 }  { WidthInBytes_val2_c11_empty_n fifo_status 0 1 }  { WidthInBytes_val2_c11_read fifo_port_we 1 1 } } }
	video_format_val10 { ap_stable {  { video_format_val10 in_data 0 6 } } }
	WidthInBytes_val2_c { ap_fifo {  { WidthInBytes_val2_c_din fifo_data_in 1 15 }  { WidthInBytes_val2_c_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_val2_c_fifo_cap fifo_update 0 3 }  { WidthInBytes_val2_c_full_n fifo_status 0 1 }  { WidthInBytes_val2_c_write fifo_port_we 1 1 } } }
}
