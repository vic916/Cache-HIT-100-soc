// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:PS2_CTL:1.0
// IP Revision: 8

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps2 (
  clk,
  reset_n,
  paddr,
  penable,
  psel,
  byteenable,
  write,
  writedata,
  perr,
  PS2_CLK_i,
  PS2_CLK_o,
  PS2_CLK_t,
  PS2_DAT_i,
  PS2_DAT_o,
  PS2_DAT_t,
  irq,
  readdata,
  waitrequest_n
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PADDR" *)
input wire [3 : 0] paddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PENABLE" *)
input wire penable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSEL" *)
input wire psel;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSTRB" *)
input wire [3 : 0] byteenable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWRITE" *)
input wire write;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWDATA" *)
input wire [31 : 0] writedata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSLVERR" *)
output wire perr;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_clk TRI_I" *)
input wire PS2_CLK_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_clk TRI_O" *)
output wire PS2_CLK_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_clk TRI_T" *)
output wire PS2_CLK_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_dat TRI_I" *)
input wire PS2_DAT_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_dat TRI_O" *)
output wire PS2_DAT_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_dat TRI_T" *)
output wire PS2_DAT_t;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *)
output wire irq;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PRDATA" *)
output wire [31 : 0] readdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PREADY" *)
output wire waitrequest_n;

  testPS2qsys_ps2_0 #(
    .CLK_FREQ(100000000)
  ) inst (
    .clk(clk),
    .reset_n(reset_n),
    .paddr(paddr),
    .penable(penable),
    .psel(psel),
    .byteenable(byteenable),
    .write(write),
    .writedata(writedata),
    .perr(perr),
    .PS2_CLK_i(PS2_CLK_i),
    .PS2_CLK_o(PS2_CLK_o),
    .PS2_CLK_t(PS2_CLK_t),
    .PS2_DAT_i(PS2_DAT_i),
    .PS2_DAT_o(PS2_DAT_o),
    .PS2_DAT_t(PS2_DAT_t),
    .irq(irq),
    .readdata(readdata),
    .waitrequest_n(waitrequest_n)
  );
endmodule
