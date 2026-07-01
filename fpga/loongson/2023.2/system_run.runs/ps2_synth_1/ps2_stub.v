// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:34:32 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/XF/Desktop/chiplabdemo/chiplab/fpga/loongson/2023.2/system_run.runs/ps2_synth_1/ps2_stub.v
// Design      : ps2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "testPS2qsys_ps2_0,Vivado 2023.2" *)
module ps2(clk, reset_n, paddr, penable, psel, byteenable, 
  write, writedata, perr, PS2_CLK_i, PS2_CLK_o, PS2_CLK_t, PS2_DAT_i, PS2_DAT_o, PS2_DAT_t, irq, 
  readdata, waitrequest_n)
/* synthesis syn_black_box black_box_pad_pin="reset_n,paddr[3:0],penable,psel,byteenable[3:0],write,writedata[31:0],perr,PS2_CLK_i,PS2_CLK_o,PS2_CLK_t,PS2_DAT_i,PS2_DAT_o,PS2_DAT_t,irq,readdata[31:0],waitrequest_n" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset_n;
  input [3:0]paddr;
  input penable;
  input psel;
  input [3:0]byteenable;
  input write;
  input [31:0]writedata;
  output perr;
  input PS2_CLK_i;
  output PS2_CLK_o;
  output PS2_CLK_t;
  input PS2_DAT_i;
  output PS2_DAT_o;
  output PS2_DAT_t;
  output irq;
  output [31:0]readdata;
  output waitrequest_n;
endmodule
