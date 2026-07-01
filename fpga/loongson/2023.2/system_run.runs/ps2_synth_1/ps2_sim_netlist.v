// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:34:32 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/XF/Desktop/chiplabdemo/chiplab/fpga/loongson/2023.2/system_run.runs/ps2_synth_1/ps2_sim_netlist.v
// Design      : ps2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_up_ps2_command_out
   (SR,
    error_communication_timed_out_reg_0,
    PS2_CLK_t,
    D,
    byteenable_0_sp_1,
    PS2_DAT_t,
    waitrequest_n,
    clk,
    writedata,
    last_ps2_clk,
    out,
    reset_n,
    Q,
    \FSM_onehot_s_ps2_transceiver_reg[2] ,
    \FSM_onehot_s_ps2_transceiver_reg[2]_0 ,
    \FSM_onehot_s_ps2_transceiver_reg[1] ,
    byteenable,
    penable,
    psel,
    write,
    paddr);
  output [0:0]SR;
  output error_communication_timed_out_reg_0;
  output PS2_CLK_t;
  output [1:0]D;
  output byteenable_0_sp_1;
  output PS2_DAT_t;
  output waitrequest_n;
  input clk;
  input [7:0]writedata;
  input last_ps2_clk;
  input out;
  input reset_n;
  input [2:0]Q;
  input \FSM_onehot_s_ps2_transceiver_reg[2] ;
  input \FSM_onehot_s_ps2_transceiver_reg[2]_0 ;
  input \FSM_onehot_s_ps2_transceiver_reg[1] ;
  input [0:0]byteenable;
  input penable;
  input psel;
  input write;
  input [0:0]paddr;

  wire [1:0]D;
  wire \FSM_onehot_s_ps2_transceiver[2]_i_2_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver_reg[1] ;
  wire \FSM_onehot_s_ps2_transceiver_reg[2] ;
  wire \FSM_onehot_s_ps2_transceiver_reg[2]_0 ;
  wire PS2_CLK_t;
  wire PS2_DAT_t;
  wire PS2_DAT_t_INST_0_i_1_n_0;
  wire PS2_DAT_t_INST_0_i_2_n_0;
  wire PS2_DAT_t_INST_0_i_3_n_0;
  wire PS2_DAT_t_INST_0_i_4_n_0;
  wire PS2_DAT_t_INST_0_i_5_n_0;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]byteenable;
  wire byteenable_0_sn_1;
  wire clk;
  wire command_initiate_counter0;
  wire \command_initiate_counter[1]_i_10_n_0 ;
  wire \command_initiate_counter[1]_i_1_n_0 ;
  wire \command_initiate_counter[1]_i_4_n_0 ;
  wire \command_initiate_counter[1]_i_5_n_0 ;
  wire \command_initiate_counter[1]_i_6_n_0 ;
  wire \command_initiate_counter[1]_i_7_n_0 ;
  wire \command_initiate_counter[1]_i_8_n_0 ;
  wire \command_initiate_counter[1]_i_9_n_0 ;
  wire [24:1]command_initiate_counter_reg;
  wire \command_initiate_counter_reg[13]_i_1_n_0 ;
  wire \command_initiate_counter_reg[13]_i_1_n_1 ;
  wire \command_initiate_counter_reg[13]_i_1_n_2 ;
  wire \command_initiate_counter_reg[13]_i_1_n_3 ;
  wire \command_initiate_counter_reg[13]_i_1_n_4 ;
  wire \command_initiate_counter_reg[13]_i_1_n_5 ;
  wire \command_initiate_counter_reg[13]_i_1_n_6 ;
  wire \command_initiate_counter_reg[13]_i_1_n_7 ;
  wire \command_initiate_counter_reg[17]_i_1_n_0 ;
  wire \command_initiate_counter_reg[17]_i_1_n_1 ;
  wire \command_initiate_counter_reg[17]_i_1_n_2 ;
  wire \command_initiate_counter_reg[17]_i_1_n_3 ;
  wire \command_initiate_counter_reg[17]_i_1_n_4 ;
  wire \command_initiate_counter_reg[17]_i_1_n_5 ;
  wire \command_initiate_counter_reg[17]_i_1_n_6 ;
  wire \command_initiate_counter_reg[17]_i_1_n_7 ;
  wire \command_initiate_counter_reg[1]_i_3_n_0 ;
  wire \command_initiate_counter_reg[1]_i_3_n_1 ;
  wire \command_initiate_counter_reg[1]_i_3_n_2 ;
  wire \command_initiate_counter_reg[1]_i_3_n_3 ;
  wire \command_initiate_counter_reg[1]_i_3_n_4 ;
  wire \command_initiate_counter_reg[1]_i_3_n_5 ;
  wire \command_initiate_counter_reg[1]_i_3_n_6 ;
  wire \command_initiate_counter_reg[1]_i_3_n_7 ;
  wire \command_initiate_counter_reg[21]_i_1_n_1 ;
  wire \command_initiate_counter_reg[21]_i_1_n_2 ;
  wire \command_initiate_counter_reg[21]_i_1_n_3 ;
  wire \command_initiate_counter_reg[21]_i_1_n_4 ;
  wire \command_initiate_counter_reg[21]_i_1_n_5 ;
  wire \command_initiate_counter_reg[21]_i_1_n_6 ;
  wire \command_initiate_counter_reg[21]_i_1_n_7 ;
  wire \command_initiate_counter_reg[5]_i_1_n_0 ;
  wire \command_initiate_counter_reg[5]_i_1_n_1 ;
  wire \command_initiate_counter_reg[5]_i_1_n_2 ;
  wire \command_initiate_counter_reg[5]_i_1_n_3 ;
  wire \command_initiate_counter_reg[5]_i_1_n_4 ;
  wire \command_initiate_counter_reg[5]_i_1_n_5 ;
  wire \command_initiate_counter_reg[5]_i_1_n_6 ;
  wire \command_initiate_counter_reg[5]_i_1_n_7 ;
  wire \command_initiate_counter_reg[9]_i_1_n_0 ;
  wire \command_initiate_counter_reg[9]_i_1_n_1 ;
  wire \command_initiate_counter_reg[9]_i_1_n_2 ;
  wire \command_initiate_counter_reg[9]_i_1_n_3 ;
  wire \command_initiate_counter_reg[9]_i_1_n_4 ;
  wire \command_initiate_counter_reg[9]_i_1_n_5 ;
  wire \command_initiate_counter_reg[9]_i_1_n_6 ;
  wire \command_initiate_counter_reg[9]_i_1_n_7 ;
  wire command_was_sent;
  wire command_was_sent_i_1_n_0;
  wire [3:0]cur_bit;
  wire cur_bit1__0;
  wire \cur_bit[3]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [3:0]cur_bit_0;
  wire error_communication_timed_out_i_1_n_0;
  wire error_communication_timed_out_reg_0;
  wire last_ps2_clk;
  wire [2:0]ns_ps2_transmitter;
  wire out;
  wire [0:0]paddr;
  wire penable;
  wire [8:0]ps2_command;
  wire \ps2_command[8]_i_1_n_0 ;
  wire \ps2_command[8]_i_2_n_0 ;
  wire \ps2_command[8]_i_3_n_0 ;
  wire psel;
  wire reset_n;
  (* MARK_DEBUG *) wire [2:0]s_ps2_transmitter;
  wire \s_ps2_transmitter[0]_i_2_n_0 ;
  wire \s_ps2_transmitter[0]_i_3_n_0 ;
  wire \s_ps2_transmitter[0]_i_4_n_0 ;
  wire \s_ps2_transmitter[0]_i_5_n_0 ;
  wire \s_ps2_transmitter[0]_i_6_n_0 ;
  wire \s_ps2_transmitter[1]_i_2_n_0 ;
  wire \s_ps2_transmitter[1]_i_3_n_0 ;
  wire \s_ps2_transmitter[1]_i_4_n_0 ;
  wire \s_ps2_transmitter[1]_i_5_n_0 ;
  wire \s_ps2_transmitter[2]_i_10_n_0 ;
  wire \s_ps2_transmitter[2]_i_11_n_0 ;
  wire \s_ps2_transmitter[2]_i_12_n_0 ;
  wire \s_ps2_transmitter[2]_i_13_n_0 ;
  wire \s_ps2_transmitter[2]_i_14_n_0 ;
  wire \s_ps2_transmitter[2]_i_15_n_0 ;
  wire \s_ps2_transmitter[2]_i_16_n_0 ;
  wire \s_ps2_transmitter[2]_i_3_n_0 ;
  wire \s_ps2_transmitter[2]_i_4_n_0 ;
  wire \s_ps2_transmitter[2]_i_5_n_0 ;
  wire \s_ps2_transmitter[2]_i_6_n_0 ;
  wire \s_ps2_transmitter[2]_i_7_n_0 ;
  wire \s_ps2_transmitter[2]_i_8_n_0 ;
  wire \s_ps2_transmitter[2]_i_9_n_0 ;
  (* MARK_DEBUG *) wire [24:1]transfer_counter;
  wire [23:1]transfer_counter0;
  wire transfer_counter1;
  wire \transfer_counter[10]_i_1_n_0 ;
  wire \transfer_counter[11]_i_1_n_0 ;
  wire \transfer_counter[12]_i_1_n_0 ;
  wire \transfer_counter[13]_i_1_n_0 ;
  wire \transfer_counter[14]_i_1_n_0 ;
  wire \transfer_counter[15]_i_1_n_0 ;
  wire \transfer_counter[16]_i_1_n_0 ;
  wire \transfer_counter[17]_i_1_n_0 ;
  wire \transfer_counter[18]_i_1_n_0 ;
  wire \transfer_counter[19]_i_1_n_0 ;
  wire \transfer_counter[1]_i_1_n_0 ;
  wire \transfer_counter[20]_i_1_n_0 ;
  wire \transfer_counter[21]_i_1_n_0 ;
  wire \transfer_counter[22]_i_1_n_0 ;
  wire \transfer_counter[23]_i_1_n_0 ;
  wire \transfer_counter[24]_i_1_n_0 ;
  wire \transfer_counter[2]_i_1_n_0 ;
  wire \transfer_counter[3]_i_1_n_0 ;
  wire \transfer_counter[4]_i_1_n_0 ;
  wire \transfer_counter[5]_i_1_n_0 ;
  wire \transfer_counter[6]_i_1_n_0 ;
  wire \transfer_counter[7]_i_1_n_0 ;
  wire \transfer_counter[8]_i_1_n_0 ;
  wire \transfer_counter[9]_i_1_n_0 ;
  wire \transfer_counter_reg[13]_i_2_n_0 ;
  wire \transfer_counter_reg[13]_i_2_n_1 ;
  wire \transfer_counter_reg[13]_i_2_n_2 ;
  wire \transfer_counter_reg[13]_i_2_n_3 ;
  wire \transfer_counter_reg[17]_i_2_n_0 ;
  wire \transfer_counter_reg[17]_i_2_n_1 ;
  wire \transfer_counter_reg[17]_i_2_n_2 ;
  wire \transfer_counter_reg[17]_i_2_n_3 ;
  wire \transfer_counter_reg[21]_i_2_n_0 ;
  wire \transfer_counter_reg[21]_i_2_n_1 ;
  wire \transfer_counter_reg[21]_i_2_n_2 ;
  wire \transfer_counter_reg[21]_i_2_n_3 ;
  wire \transfer_counter_reg[24]_i_2_n_2 ;
  wire \transfer_counter_reg[24]_i_2_n_3 ;
  wire \transfer_counter_reg[5]_i_2_n_0 ;
  wire \transfer_counter_reg[5]_i_2_n_1 ;
  wire \transfer_counter_reg[5]_i_2_n_2 ;
  wire \transfer_counter_reg[5]_i_2_n_3 ;
  wire \transfer_counter_reg[9]_i_2_n_0 ;
  wire \transfer_counter_reg[9]_i_2_n_1 ;
  wire \transfer_counter_reg[9]_i_2_n_2 ;
  wire \transfer_counter_reg[9]_i_2_n_3 ;
  wire [24:1]waiting_counter;
  wire \waiting_counter[24]_i_1_n_0 ;
  wire \waiting_counter[4]_i_2_n_0 ;
  (* MARK_DEBUG *) wire [24:1]waiting_counter_1;
  wire \waiting_counter_reg[12]_i_1_n_0 ;
  wire \waiting_counter_reg[12]_i_1_n_1 ;
  wire \waiting_counter_reg[12]_i_1_n_2 ;
  wire \waiting_counter_reg[12]_i_1_n_3 ;
  wire \waiting_counter_reg[16]_i_1_n_0 ;
  wire \waiting_counter_reg[16]_i_1_n_1 ;
  wire \waiting_counter_reg[16]_i_1_n_2 ;
  wire \waiting_counter_reg[16]_i_1_n_3 ;
  wire \waiting_counter_reg[20]_i_1_n_0 ;
  wire \waiting_counter_reg[20]_i_1_n_1 ;
  wire \waiting_counter_reg[20]_i_1_n_2 ;
  wire \waiting_counter_reg[20]_i_1_n_3 ;
  wire \waiting_counter_reg[24]_i_2_n_1 ;
  wire \waiting_counter_reg[24]_i_2_n_2 ;
  wire \waiting_counter_reg[24]_i_2_n_3 ;
  wire \waiting_counter_reg[4]_i_1_n_0 ;
  wire \waiting_counter_reg[4]_i_1_n_1 ;
  wire \waiting_counter_reg[4]_i_1_n_2 ;
  wire \waiting_counter_reg[4]_i_1_n_3 ;
  wire \waiting_counter_reg[8]_i_1_n_0 ;
  wire \waiting_counter_reg[8]_i_1_n_1 ;
  wire \waiting_counter_reg[8]_i_1_n_2 ;
  wire \waiting_counter_reg[8]_i_1_n_3 ;
  wire waitrequest_n;
  wire write;
  wire [7:0]writedata;
  wire [3:3]\NLW_command_initiate_counter_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_transfer_counter_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_transfer_counter_reg[24]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_waiting_counter_reg[24]_i_2_CO_UNCONNECTED ;

  assign byteenable_0_sp_1 = byteenable_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h444F4444)) 
    \FSM_onehot_s_ps2_transceiver[1]_i_1 
       (.I0(\FSM_onehot_s_ps2_transceiver_reg[1] ),
        .I1(Q[0]),
        .I2(command_was_sent),
        .I3(error_communication_timed_out_reg_0),
        .I4(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8888FFFF8888F888)) 
    \FSM_onehot_s_ps2_transceiver[2]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_s_ps2_transceiver[2]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\FSM_onehot_s_ps2_transceiver_reg[2] ),
        .I4(byteenable_0_sn_1),
        .I5(\FSM_onehot_s_ps2_transceiver_reg[2]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_s_ps2_transceiver[2]_i_2 
       (.I0(command_was_sent),
        .I1(error_communication_timed_out_reg_0),
        .O(\FSM_onehot_s_ps2_transceiver[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    PS2_CLK_t_INST_0
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .O(PS2_CLK_t));
  LUT6 #(
    .INIT(64'hFBAFABAFABAFABAF)) 
    PS2_DAT_t_INST_0
       (.I0(PS2_DAT_t_INST_0_i_1_n_0),
        .I1(command_initiate_counter_reg[15]),
        .I2(s_ps2_transmitter[1]),
        .I3(s_ps2_transmitter[0]),
        .I4(ps2_command[8]),
        .I5(cur_bit_0[3]),
        .O(PS2_DAT_t));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF080)) 
    PS2_DAT_t_INST_0_i_1
       (.I0(cur_bit_0[1]),
        .I1(PS2_DAT_t_INST_0_i_2_n_0),
        .I2(PS2_DAT_t_INST_0_i_3_n_0),
        .I3(PS2_DAT_t_INST_0_i_4_n_0),
        .I4(s_ps2_transmitter[2]),
        .I5(PS2_DAT_t_INST_0_i_5_n_0),
        .O(PS2_DAT_t_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PS2_DAT_t_INST_0_i_2
       (.I0(ps2_command[7]),
        .I1(ps2_command[3]),
        .I2(cur_bit_0[0]),
        .I3(ps2_command[6]),
        .I4(cur_bit_0[2]),
        .I5(ps2_command[2]),
        .O(PS2_DAT_t_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    PS2_DAT_t_INST_0_i_3
       (.I0(s_ps2_transmitter[1]),
        .I1(s_ps2_transmitter[0]),
        .I2(cur_bit_0[3]),
        .O(PS2_DAT_t_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h44400040)) 
    PS2_DAT_t_INST_0_i_4
       (.I0(cur_bit_0[1]),
        .I1(cur_bit_0[2]),
        .I2(ps2_command[4]),
        .I3(cur_bit_0[0]),
        .I4(ps2_command[5]),
        .O(PS2_DAT_t_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000000C808)) 
    PS2_DAT_t_INST_0_i_5
       (.I0(ps2_command[0]),
        .I1(PS2_DAT_t_INST_0_i_3_n_0),
        .I2(cur_bit_0[0]),
        .I3(ps2_command[1]),
        .I4(cur_bit_0[2]),
        .I5(cur_bit_0[1]),
        .O(PS2_DAT_t_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \command_initiate_counter[1]_i_1 
       (.I0(s_ps2_transmitter[1]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[0]),
        .I3(reset_n),
        .O(\command_initiate_counter[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \command_initiate_counter[1]_i_10 
       (.I0(command_initiate_counter_reg[1]),
        .O(\command_initiate_counter[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \command_initiate_counter[1]_i_2 
       (.I0(\command_initiate_counter[1]_i_4_n_0 ),
        .I1(\command_initiate_counter[1]_i_5_n_0 ),
        .I2(\command_initiate_counter[1]_i_6_n_0 ),
        .I3(\command_initiate_counter[1]_i_7_n_0 ),
        .I4(\command_initiate_counter[1]_i_8_n_0 ),
        .I5(\command_initiate_counter[1]_i_9_n_0 ),
        .O(command_initiate_counter0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \command_initiate_counter[1]_i_4 
       (.I0(command_initiate_counter_reg[18]),
        .I1(command_initiate_counter_reg[17]),
        .I2(command_initiate_counter_reg[20]),
        .I3(command_initiate_counter_reg[19]),
        .O(\command_initiate_counter[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \command_initiate_counter[1]_i_5 
       (.I0(command_initiate_counter_reg[22]),
        .I1(command_initiate_counter_reg[21]),
        .I2(command_initiate_counter_reg[24]),
        .I3(command_initiate_counter_reg[23]),
        .O(\command_initiate_counter[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \command_initiate_counter[1]_i_6 
       (.I0(command_initiate_counter_reg[10]),
        .I1(command_initiate_counter_reg[9]),
        .I2(command_initiate_counter_reg[11]),
        .I3(command_initiate_counter_reg[12]),
        .O(\command_initiate_counter[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \command_initiate_counter[1]_i_7 
       (.I0(command_initiate_counter_reg[14]),
        .I1(command_initiate_counter_reg[13]),
        .I2(command_initiate_counter_reg[16]),
        .I3(command_initiate_counter_reg[15]),
        .O(\command_initiate_counter[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \command_initiate_counter[1]_i_8 
       (.I0(command_initiate_counter_reg[6]),
        .I1(command_initiate_counter_reg[5]),
        .I2(command_initiate_counter_reg[7]),
        .I3(command_initiate_counter_reg[8]),
        .O(\command_initiate_counter[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \command_initiate_counter[1]_i_9 
       (.I0(command_initiate_counter_reg[2]),
        .I1(command_initiate_counter_reg[1]),
        .I2(command_initiate_counter_reg[3]),
        .I3(command_initiate_counter_reg[4]),
        .O(\command_initiate_counter[1]_i_9_n_0 ));
  FDRE \command_initiate_counter_reg[10] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[9]_i_1_n_6 ),
        .Q(command_initiate_counter_reg[10]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[11] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[9]_i_1_n_5 ),
        .Q(command_initiate_counter_reg[11]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[12] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[9]_i_1_n_4 ),
        .Q(command_initiate_counter_reg[12]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[13] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[13]_i_1_n_7 ),
        .Q(command_initiate_counter_reg[13]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \command_initiate_counter_reg[13]_i_1 
       (.CI(\command_initiate_counter_reg[9]_i_1_n_0 ),
        .CO({\command_initiate_counter_reg[13]_i_1_n_0 ,\command_initiate_counter_reg[13]_i_1_n_1 ,\command_initiate_counter_reg[13]_i_1_n_2 ,\command_initiate_counter_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\command_initiate_counter_reg[13]_i_1_n_4 ,\command_initiate_counter_reg[13]_i_1_n_5 ,\command_initiate_counter_reg[13]_i_1_n_6 ,\command_initiate_counter_reg[13]_i_1_n_7 }),
        .S(command_initiate_counter_reg[16:13]));
  FDRE \command_initiate_counter_reg[14] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[13]_i_1_n_6 ),
        .Q(command_initiate_counter_reg[14]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[15] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[13]_i_1_n_5 ),
        .Q(command_initiate_counter_reg[15]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[16] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[13]_i_1_n_4 ),
        .Q(command_initiate_counter_reg[16]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[17] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[17]_i_1_n_7 ),
        .Q(command_initiate_counter_reg[17]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \command_initiate_counter_reg[17]_i_1 
       (.CI(\command_initiate_counter_reg[13]_i_1_n_0 ),
        .CO({\command_initiate_counter_reg[17]_i_1_n_0 ,\command_initiate_counter_reg[17]_i_1_n_1 ,\command_initiate_counter_reg[17]_i_1_n_2 ,\command_initiate_counter_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\command_initiate_counter_reg[17]_i_1_n_4 ,\command_initiate_counter_reg[17]_i_1_n_5 ,\command_initiate_counter_reg[17]_i_1_n_6 ,\command_initiate_counter_reg[17]_i_1_n_7 }),
        .S(command_initiate_counter_reg[20:17]));
  FDRE \command_initiate_counter_reg[18] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[17]_i_1_n_6 ),
        .Q(command_initiate_counter_reg[18]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[19] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[17]_i_1_n_5 ),
        .Q(command_initiate_counter_reg[19]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[1] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[1]_i_3_n_7 ),
        .Q(command_initiate_counter_reg[1]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \command_initiate_counter_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\command_initiate_counter_reg[1]_i_3_n_0 ,\command_initiate_counter_reg[1]_i_3_n_1 ,\command_initiate_counter_reg[1]_i_3_n_2 ,\command_initiate_counter_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\command_initiate_counter_reg[1]_i_3_n_4 ,\command_initiate_counter_reg[1]_i_3_n_5 ,\command_initiate_counter_reg[1]_i_3_n_6 ,\command_initiate_counter_reg[1]_i_3_n_7 }),
        .S({command_initiate_counter_reg[4:2],\command_initiate_counter[1]_i_10_n_0 }));
  FDRE \command_initiate_counter_reg[20] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[17]_i_1_n_4 ),
        .Q(command_initiate_counter_reg[20]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[21] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[21]_i_1_n_7 ),
        .Q(command_initiate_counter_reg[21]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \command_initiate_counter_reg[21]_i_1 
       (.CI(\command_initiate_counter_reg[17]_i_1_n_0 ),
        .CO({\NLW_command_initiate_counter_reg[21]_i_1_CO_UNCONNECTED [3],\command_initiate_counter_reg[21]_i_1_n_1 ,\command_initiate_counter_reg[21]_i_1_n_2 ,\command_initiate_counter_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\command_initiate_counter_reg[21]_i_1_n_4 ,\command_initiate_counter_reg[21]_i_1_n_5 ,\command_initiate_counter_reg[21]_i_1_n_6 ,\command_initiate_counter_reg[21]_i_1_n_7 }),
        .S(command_initiate_counter_reg[24:21]));
  FDRE \command_initiate_counter_reg[22] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[21]_i_1_n_6 ),
        .Q(command_initiate_counter_reg[22]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[23] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[21]_i_1_n_5 ),
        .Q(command_initiate_counter_reg[23]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[24] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[21]_i_1_n_4 ),
        .Q(command_initiate_counter_reg[24]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[2] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[1]_i_3_n_6 ),
        .Q(command_initiate_counter_reg[2]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[3] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[1]_i_3_n_5 ),
        .Q(command_initiate_counter_reg[3]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[4] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[1]_i_3_n_4 ),
        .Q(command_initiate_counter_reg[4]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[5] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[5]_i_1_n_7 ),
        .Q(command_initiate_counter_reg[5]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \command_initiate_counter_reg[5]_i_1 
       (.CI(\command_initiate_counter_reg[1]_i_3_n_0 ),
        .CO({\command_initiate_counter_reg[5]_i_1_n_0 ,\command_initiate_counter_reg[5]_i_1_n_1 ,\command_initiate_counter_reg[5]_i_1_n_2 ,\command_initiate_counter_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\command_initiate_counter_reg[5]_i_1_n_4 ,\command_initiate_counter_reg[5]_i_1_n_5 ,\command_initiate_counter_reg[5]_i_1_n_6 ,\command_initiate_counter_reg[5]_i_1_n_7 }),
        .S(command_initiate_counter_reg[8:5]));
  FDRE \command_initiate_counter_reg[6] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[5]_i_1_n_6 ),
        .Q(command_initiate_counter_reg[6]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[7] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[5]_i_1_n_5 ),
        .Q(command_initiate_counter_reg[7]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[8] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[5]_i_1_n_4 ),
        .Q(command_initiate_counter_reg[8]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  FDRE \command_initiate_counter_reg[9] 
       (.C(clk),
        .CE(command_initiate_counter0),
        .D(\command_initiate_counter_reg[9]_i_1_n_7 ),
        .Q(command_initiate_counter_reg[9]),
        .R(\command_initiate_counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \command_initiate_counter_reg[9]_i_1 
       (.CI(\command_initiate_counter_reg[5]_i_1_n_0 ),
        .CO({\command_initiate_counter_reg[9]_i_1_n_0 ,\command_initiate_counter_reg[9]_i_1_n_1 ,\command_initiate_counter_reg[9]_i_1_n_2 ,\command_initiate_counter_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\command_initiate_counter_reg[9]_i_1_n_4 ,\command_initiate_counter_reg[9]_i_1_n_5 ,\command_initiate_counter_reg[9]_i_1_n_6 ,\command_initiate_counter_reg[9]_i_1_n_7 }),
        .S(command_initiate_counter_reg[12:9]));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    command_was_sent_i_1
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[1]),
        .I2(s_ps2_transmitter[2]),
        .I3(byteenable_0_sn_1),
        .I4(command_was_sent),
        .O(command_was_sent_i_1_n_0));
  FDRE command_was_sent_reg
       (.C(clk),
        .CE(1'b1),
        .D(command_was_sent_i_1_n_0),
        .Q(command_was_sent),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \control_register[8]_i_1 
       (.I0(reset_n),
        .O(SR));
  LUT3 #(
    .INIT(8'h9A)) 
    \cur_bit[0]_i_1 
       (.I0(cur_bit_0[0]),
        .I1(out),
        .I2(last_ps2_clk),
        .O(cur_bit[0]));
  LUT3 #(
    .INIT(8'hD2)) 
    \cur_bit[1]_i_1 
       (.I0(cur_bit_0[0]),
        .I1(\s_ps2_transmitter[1]_i_4_n_0 ),
        .I2(cur_bit_0[1]),
        .O(cur_bit[1]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \cur_bit[2]_i_1 
       (.I0(cur_bit1__0),
        .I1(cur_bit_0[0]),
        .I2(cur_bit_0[1]),
        .I3(cur_bit_0[2]),
        .O(cur_bit[2]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cur_bit[3]_i_1 
       (.I0(s_ps2_transmitter[1]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[0]),
        .I3(reset_n),
        .O(\cur_bit[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cur_bit[3]_i_2 
       (.I0(cur_bit1__0),
        .I1(cur_bit_0[2]),
        .I2(cur_bit_0[1]),
        .I3(cur_bit_0[0]),
        .I4(cur_bit_0[3]),
        .O(cur_bit[3]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \cur_bit[3]_i_3 
       (.I0(last_ps2_clk),
        .I1(out),
        .I2(s_ps2_transmitter[1]),
        .I3(s_ps2_transmitter[2]),
        .I4(s_ps2_transmitter[0]),
        .O(cur_bit1__0));
  (* KEEP = "yes" *) 
  FDRE \cur_bit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cur_bit[0]),
        .Q(cur_bit_0[0]),
        .R(\cur_bit[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \cur_bit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cur_bit[1]),
        .Q(cur_bit_0[1]),
        .R(\cur_bit[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \cur_bit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cur_bit[2]),
        .Q(cur_bit_0[2]),
        .R(\cur_bit[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \cur_bit_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cur_bit[3]),
        .Q(cur_bit_0[3]),
        .R(\cur_bit[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    error_communication_timed_out_i_1
       (.I0(s_ps2_transmitter[2]),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[1]),
        .I3(byteenable_0_sn_1),
        .I4(error_communication_timed_out_reg_0),
        .O(error_communication_timed_out_i_1_n_0));
  FDRE error_communication_timed_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(error_communication_timed_out_i_1_n_0),
        .Q(error_communication_timed_out_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h01)) 
    \ps2_command[8]_i_1 
       (.I0(s_ps2_transmitter[2]),
        .I1(s_ps2_transmitter[1]),
        .I2(s_ps2_transmitter[0]),
        .O(\ps2_command[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \ps2_command[8]_i_2 
       (.I0(writedata[5]),
        .I1(writedata[4]),
        .I2(writedata[7]),
        .I3(writedata[6]),
        .I4(\ps2_command[8]_i_3_n_0 ),
        .O(\ps2_command[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ps2_command[8]_i_3 
       (.I0(writedata[2]),
        .I1(writedata[3]),
        .I2(writedata[0]),
        .I3(writedata[1]),
        .O(\ps2_command[8]_i_3_n_0 ));
  FDRE \ps2_command_reg[0] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[0]),
        .Q(ps2_command[0]),
        .R(SR));
  FDRE \ps2_command_reg[1] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[1]),
        .Q(ps2_command[1]),
        .R(SR));
  FDRE \ps2_command_reg[2] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[2]),
        .Q(ps2_command[2]),
        .R(SR));
  FDRE \ps2_command_reg[3] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[3]),
        .Q(ps2_command[3]),
        .R(SR));
  FDRE \ps2_command_reg[4] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[4]),
        .Q(ps2_command[4]),
        .R(SR));
  FDRE \ps2_command_reg[5] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[5]),
        .Q(ps2_command[5]),
        .R(SR));
  FDRE \ps2_command_reg[6] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[6]),
        .Q(ps2_command[6]),
        .R(SR));
  FDRE \ps2_command_reg[7] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(writedata[7]),
        .Q(ps2_command[7]),
        .R(SR));
  FDRE \ps2_command_reg[8] 
       (.C(clk),
        .CE(\ps2_command[8]_i_1_n_0 ),
        .D(\ps2_command[8]_i_2_n_0 ),
        .Q(ps2_command[8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFEE)) 
    \s_ps2_transmitter[0]_i_1 
       (.I0(\s_ps2_transmitter[0]_i_2_n_0 ),
        .I1(\s_ps2_transmitter[0]_i_3_n_0 ),
        .I2(transfer_counter1),
        .I3(\s_ps2_transmitter[0]_i_4_n_0 ),
        .I4(s_ps2_transmitter[0]),
        .I5(\s_ps2_transmitter[0]_i_5_n_0 ),
        .O(ns_ps2_transmitter[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10100010)) 
    \s_ps2_transmitter[0]_i_2 
       (.I0(\s_ps2_transmitter[2]_i_10_n_0 ),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(last_ps2_clk),
        .I4(out),
        .I5(\s_ps2_transmitter[0]_i_6_n_0 ),
        .O(\s_ps2_transmitter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h08000888)) 
    \s_ps2_transmitter[0]_i_3 
       (.I0(command_initiate_counter0),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[1]),
        .I3(last_ps2_clk),
        .I4(s_ps2_transmitter[2]),
        .O(\s_ps2_transmitter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_ps2_transmitter[0]_i_4 
       (.I0(s_ps2_transmitter[2]),
        .I1(s_ps2_transmitter[1]),
        .O(\s_ps2_transmitter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4C414C0140414C01)) 
    \s_ps2_transmitter[0]_i_5 
       (.I0(byteenable_0_sn_1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(last_ps2_clk),
        .I5(out),
        .O(\s_ps2_transmitter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000A00CF0C0000)) 
    \s_ps2_transmitter[0]_i_6 
       (.I0(\s_ps2_transmitter[1]_i_5_n_0 ),
        .I1(s_ps2_transmitter[0]),
        .I2(out),
        .I3(last_ps2_clk),
        .I4(s_ps2_transmitter[2]),
        .I5(s_ps2_transmitter[1]),
        .O(\s_ps2_transmitter[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEEFEEEEEE)) 
    \s_ps2_transmitter[1]_i_1 
       (.I0(\s_ps2_transmitter[1]_i_2_n_0 ),
        .I1(\s_ps2_transmitter[1]_i_3_n_0 ),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(\s_ps2_transmitter[1]_i_4_n_0 ),
        .I5(\s_ps2_transmitter[1]_i_5_n_0 ),
        .O(ns_ps2_transmitter[1]));
  LUT6 #(
    .INIT(64'h0000220F00000000)) 
    \s_ps2_transmitter[1]_i_2 
       (.I0(out),
        .I1(last_ps2_clk),
        .I2(command_initiate_counter0),
        .I3(s_ps2_transmitter[2]),
        .I4(s_ps2_transmitter[1]),
        .I5(s_ps2_transmitter[0]),
        .O(\s_ps2_transmitter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF545400000000)) 
    \s_ps2_transmitter[1]_i_3 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(\s_ps2_transmitter[1]_i_4_n_0 ),
        .I3(byteenable_0_sn_1),
        .I4(s_ps2_transmitter[1]),
        .I5(s_ps2_transmitter[2]),
        .O(\s_ps2_transmitter[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \s_ps2_transmitter[1]_i_4 
       (.I0(out),
        .I1(last_ps2_clk),
        .O(\s_ps2_transmitter[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \s_ps2_transmitter[1]_i_5 
       (.I0(cur_bit_0[3]),
        .I1(s_ps2_transmitter[0]),
        .I2(cur_bit_0[0]),
        .I3(cur_bit_0[1]),
        .I4(cur_bit_0[2]),
        .O(\s_ps2_transmitter[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3038F0F8)) 
    \s_ps2_transmitter[2]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[1]),
        .I2(s_ps2_transmitter[2]),
        .I3(transfer_counter1),
        .I4(byteenable_0_sn_1),
        .I5(\s_ps2_transmitter[2]_i_3_n_0 ),
        .O(ns_ps2_transmitter[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_ps2_transmitter[2]_i_10 
       (.I0(\s_ps2_transmitter[2]_i_11_n_0 ),
        .I1(\s_ps2_transmitter[2]_i_12_n_0 ),
        .I2(\s_ps2_transmitter[2]_i_13_n_0 ),
        .I3(\s_ps2_transmitter[2]_i_14_n_0 ),
        .I4(\s_ps2_transmitter[2]_i_15_n_0 ),
        .I5(\s_ps2_transmitter[2]_i_16_n_0 ),
        .O(\s_ps2_transmitter[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \s_ps2_transmitter[2]_i_11 
       (.I0(waiting_counter_1[18]),
        .I1(waiting_counter_1[17]),
        .I2(waiting_counter_1[19]),
        .I3(waiting_counter_1[20]),
        .O(\s_ps2_transmitter[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_ps2_transmitter[2]_i_12 
       (.I0(waiting_counter_1[21]),
        .I1(waiting_counter_1[22]),
        .I2(waiting_counter_1[24]),
        .I3(waiting_counter_1[23]),
        .O(\s_ps2_transmitter[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \s_ps2_transmitter[2]_i_13 
       (.I0(waiting_counter_1[10]),
        .I1(waiting_counter_1[9]),
        .I2(waiting_counter_1[12]),
        .I3(waiting_counter_1[11]),
        .O(\s_ps2_transmitter[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_ps2_transmitter[2]_i_14 
       (.I0(waiting_counter_1[14]),
        .I1(waiting_counter_1[13]),
        .I2(waiting_counter_1[16]),
        .I3(waiting_counter_1[15]),
        .O(\s_ps2_transmitter[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \s_ps2_transmitter[2]_i_15 
       (.I0(waiting_counter_1[6]),
        .I1(waiting_counter_1[5]),
        .I2(waiting_counter_1[7]),
        .I3(waiting_counter_1[8]),
        .O(\s_ps2_transmitter[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_ps2_transmitter[2]_i_16 
       (.I0(waiting_counter_1[2]),
        .I1(waiting_counter_1[1]),
        .I2(waiting_counter_1[4]),
        .I3(waiting_counter_1[3]),
        .O(\s_ps2_transmitter[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_ps2_transmitter[2]_i_2 
       (.I0(\s_ps2_transmitter[2]_i_4_n_0 ),
        .I1(\s_ps2_transmitter[2]_i_5_n_0 ),
        .I2(\s_ps2_transmitter[2]_i_6_n_0 ),
        .I3(\s_ps2_transmitter[2]_i_7_n_0 ),
        .I4(\s_ps2_transmitter[2]_i_8_n_0 ),
        .I5(\s_ps2_transmitter[2]_i_9_n_0 ),
        .O(transfer_counter1));
  LUT6 #(
    .INIT(64'h0000050000003500)) 
    \s_ps2_transmitter[2]_i_3 
       (.I0(\s_ps2_transmitter[1]_i_5_n_0 ),
        .I1(\s_ps2_transmitter[2]_i_10_n_0 ),
        .I2(\s_ps2_transmitter[1]_i_4_n_0 ),
        .I3(s_ps2_transmitter[1]),
        .I4(s_ps2_transmitter[2]),
        .I5(s_ps2_transmitter[0]),
        .O(\s_ps2_transmitter[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \s_ps2_transmitter[2]_i_4 
       (.I0(transfer_counter[18]),
        .I1(transfer_counter[17]),
        .I2(transfer_counter[20]),
        .I3(transfer_counter[19]),
        .O(\s_ps2_transmitter[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_ps2_transmitter[2]_i_5 
       (.I0(transfer_counter[22]),
        .I1(transfer_counter[21]),
        .I2(transfer_counter[24]),
        .I3(transfer_counter[23]),
        .O(\s_ps2_transmitter[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_ps2_transmitter[2]_i_6 
       (.I0(transfer_counter[9]),
        .I1(transfer_counter[10]),
        .I2(transfer_counter[12]),
        .I3(transfer_counter[11]),
        .O(\s_ps2_transmitter[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_ps2_transmitter[2]_i_7 
       (.I0(transfer_counter[14]),
        .I1(transfer_counter[13]),
        .I2(transfer_counter[16]),
        .I3(transfer_counter[15]),
        .O(\s_ps2_transmitter[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \s_ps2_transmitter[2]_i_8 
       (.I0(transfer_counter[6]),
        .I1(transfer_counter[5]),
        .I2(transfer_counter[7]),
        .I3(transfer_counter[8]),
        .O(\s_ps2_transmitter[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_ps2_transmitter[2]_i_9 
       (.I0(transfer_counter[2]),
        .I1(transfer_counter[1]),
        .I2(transfer_counter[4]),
        .I3(transfer_counter[3]),
        .O(\s_ps2_transmitter[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "PS2_STATE_0_IDLE:000,PS2_STATE_1_INITIATE_COMMUNICATION:001,PS2_STATE_2_WAIT_FOR_CLOCK:010,PS2_STATE_3_TRANSMIT_DATA:011,PS2_STATE_4_TRANSMIT_STOP_BIT:100,PS2_STATE_5_RECEIVE_ACK_BIT:101,PS2_STATE_6_COMMAND_WAS_SENT:110,PS2_STATE_7_TRANSMISSION_ERROR:111" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \s_ps2_transmitter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ns_ps2_transmitter[0]),
        .Q(s_ps2_transmitter[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "PS2_STATE_0_IDLE:000,PS2_STATE_1_INITIATE_COMMUNICATION:001,PS2_STATE_2_WAIT_FOR_CLOCK:010,PS2_STATE_3_TRANSMIT_DATA:011,PS2_STATE_4_TRANSMIT_STOP_BIT:100,PS2_STATE_5_RECEIVE_ACK_BIT:101,PS2_STATE_6_COMMAND_WAS_SENT:110,PS2_STATE_7_TRANSMISSION_ERROR:111" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \s_ps2_transmitter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ns_ps2_transmitter[1]),
        .Q(s_ps2_transmitter[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "PS2_STATE_0_IDLE:000,PS2_STATE_1_INITIATE_COMMUNICATION:001,PS2_STATE_2_WAIT_FOR_CLOCK:010,PS2_STATE_3_TRANSMIT_DATA:011,PS2_STATE_4_TRANSMIT_STOP_BIT:100,PS2_STATE_5_RECEIVE_ACK_BIT:101,PS2_STATE_6_COMMAND_WAS_SENT:110,PS2_STATE_7_TRANSMISSION_ERROR:111" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \s_ps2_transmitter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ns_ps2_transmitter[2]),
        .Q(s_ps2_transmitter[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[10]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[9]),
        .O(\transfer_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2C2C002C)) 
    \transfer_counter[11]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter1),
        .I4(transfer_counter0[10]),
        .O(\transfer_counter[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2C2C002C)) 
    \transfer_counter[12]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter1),
        .I4(transfer_counter0[11]),
        .O(\transfer_counter[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[13]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[12]),
        .O(\transfer_counter[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[14]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[13]),
        .O(\transfer_counter[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[15]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[14]),
        .O(\transfer_counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[16]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[15]),
        .O(\transfer_counter[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2C2C002C)) 
    \transfer_counter[17]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter1),
        .I4(transfer_counter0[16]),
        .O(\transfer_counter[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2C2C002C)) 
    \transfer_counter[18]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter1),
        .I4(transfer_counter0[17]),
        .O(\transfer_counter[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[19]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[18]),
        .O(\transfer_counter[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h002C2C00)) 
    \transfer_counter[1]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter[1]),
        .I4(transfer_counter1),
        .O(\transfer_counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[20]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[19]),
        .O(\transfer_counter[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[21]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[20]),
        .O(\transfer_counter[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[22]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[21]),
        .O(\transfer_counter[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[23]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[22]),
        .O(\transfer_counter[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[24]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[23]),
        .O(\transfer_counter[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[2]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[1]),
        .O(\transfer_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[3]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[2]),
        .O(\transfer_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[4]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[3]),
        .O(\transfer_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[5]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[4]),
        .O(\transfer_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[6]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[5]),
        .O(\transfer_counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2C2C002C)) 
    \transfer_counter[7]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter1),
        .I4(transfer_counter0[6]),
        .O(\transfer_counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A00000)) 
    \transfer_counter[8]_i_1 
       (.I0(transfer_counter1),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[2]),
        .I3(s_ps2_transmitter[1]),
        .I4(transfer_counter0[7]),
        .O(\transfer_counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2C2C002C)) 
    \transfer_counter[9]_i_1 
       (.I0(s_ps2_transmitter[0]),
        .I1(s_ps2_transmitter[2]),
        .I2(s_ps2_transmitter[1]),
        .I3(transfer_counter1),
        .I4(transfer_counter0[8]),
        .O(\transfer_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[10]_i_1_n_0 ),
        .Q(transfer_counter[10]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[11]_i_1_n_0 ),
        .Q(transfer_counter[11]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[12]_i_1_n_0 ),
        .Q(transfer_counter[12]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[13]_i_1_n_0 ),
        .Q(transfer_counter[13]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transfer_counter_reg[13]_i_2 
       (.CI(\transfer_counter_reg[9]_i_2_n_0 ),
        .CO({\transfer_counter_reg[13]_i_2_n_0 ,\transfer_counter_reg[13]_i_2_n_1 ,\transfer_counter_reg[13]_i_2_n_2 ,\transfer_counter_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(transfer_counter0[12:9]),
        .S(transfer_counter[13:10]));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[14]_i_1_n_0 ),
        .Q(transfer_counter[14]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[15]_i_1_n_0 ),
        .Q(transfer_counter[15]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[16]_i_1_n_0 ),
        .Q(transfer_counter[16]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[17]_i_1_n_0 ),
        .Q(transfer_counter[17]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transfer_counter_reg[17]_i_2 
       (.CI(\transfer_counter_reg[13]_i_2_n_0 ),
        .CO({\transfer_counter_reg[17]_i_2_n_0 ,\transfer_counter_reg[17]_i_2_n_1 ,\transfer_counter_reg[17]_i_2_n_2 ,\transfer_counter_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(transfer_counter0[16:13]),
        .S(transfer_counter[17:14]));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[18]_i_1_n_0 ),
        .Q(transfer_counter[18]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[19]_i_1_n_0 ),
        .Q(transfer_counter[19]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[1]_i_1_n_0 ),
        .Q(transfer_counter[1]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[20]_i_1_n_0 ),
        .Q(transfer_counter[20]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[21]_i_1_n_0 ),
        .Q(transfer_counter[21]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transfer_counter_reg[21]_i_2 
       (.CI(\transfer_counter_reg[17]_i_2_n_0 ),
        .CO({\transfer_counter_reg[21]_i_2_n_0 ,\transfer_counter_reg[21]_i_2_n_1 ,\transfer_counter_reg[21]_i_2_n_2 ,\transfer_counter_reg[21]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(transfer_counter0[20:17]),
        .S(transfer_counter[21:18]));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[22]_i_1_n_0 ),
        .Q(transfer_counter[22]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[23]_i_1_n_0 ),
        .Q(transfer_counter[23]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[24]_i_1_n_0 ),
        .Q(transfer_counter[24]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transfer_counter_reg[24]_i_2 
       (.CI(\transfer_counter_reg[21]_i_2_n_0 ),
        .CO({\NLW_transfer_counter_reg[24]_i_2_CO_UNCONNECTED [3:2],\transfer_counter_reg[24]_i_2_n_2 ,\transfer_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_transfer_counter_reg[24]_i_2_O_UNCONNECTED [3],transfer_counter0[23:21]}),
        .S({1'b0,transfer_counter[24:22]}));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[2]_i_1_n_0 ),
        .Q(transfer_counter[2]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[3]_i_1_n_0 ),
        .Q(transfer_counter[3]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[4]_i_1_n_0 ),
        .Q(transfer_counter[4]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[5]_i_1_n_0 ),
        .Q(transfer_counter[5]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transfer_counter_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\transfer_counter_reg[5]_i_2_n_0 ,\transfer_counter_reg[5]_i_2_n_1 ,\transfer_counter_reg[5]_i_2_n_2 ,\transfer_counter_reg[5]_i_2_n_3 }),
        .CYINIT(transfer_counter[1]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(transfer_counter0[4:1]),
        .S(transfer_counter[5:2]));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[6]_i_1_n_0 ),
        .Q(transfer_counter[6]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[7]_i_1_n_0 ),
        .Q(transfer_counter[7]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[8]_i_1_n_0 ),
        .Q(transfer_counter[8]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \transfer_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\transfer_counter[9]_i_1_n_0 ),
        .Q(transfer_counter[9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transfer_counter_reg[9]_i_2 
       (.CI(\transfer_counter_reg[5]_i_2_n_0 ),
        .CO({\transfer_counter_reg[9]_i_2_n_0 ,\transfer_counter_reg[9]_i_2_n_1 ,\transfer_counter_reg[9]_i_2_n_2 ,\transfer_counter_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(transfer_counter0[8:5]),
        .S(transfer_counter[9:6]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \waiting_counter[24]_i_1 
       (.I0(s_ps2_transmitter[2]),
        .I1(s_ps2_transmitter[0]),
        .I2(s_ps2_transmitter[1]),
        .I3(reset_n),
        .O(\waiting_counter[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA6AAAA)) 
    \waiting_counter[4]_i_2 
       (.I0(waiting_counter_1[1]),
        .I1(s_ps2_transmitter[1]),
        .I2(s_ps2_transmitter[0]),
        .I3(s_ps2_transmitter[2]),
        .I4(\s_ps2_transmitter[2]_i_10_n_0 ),
        .O(\waiting_counter[4]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[10]),
        .Q(waiting_counter_1[10]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[11]),
        .Q(waiting_counter_1[11]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[12]),
        .Q(waiting_counter_1[12]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \waiting_counter_reg[12]_i_1 
       (.CI(\waiting_counter_reg[8]_i_1_n_0 ),
        .CO({\waiting_counter_reg[12]_i_1_n_0 ,\waiting_counter_reg[12]_i_1_n_1 ,\waiting_counter_reg[12]_i_1_n_2 ,\waiting_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(waiting_counter[12:9]),
        .S(waiting_counter_1[12:9]));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[13]),
        .Q(waiting_counter_1[13]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[14]),
        .Q(waiting_counter_1[14]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[15]),
        .Q(waiting_counter_1[15]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[16]),
        .Q(waiting_counter_1[16]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \waiting_counter_reg[16]_i_1 
       (.CI(\waiting_counter_reg[12]_i_1_n_0 ),
        .CO({\waiting_counter_reg[16]_i_1_n_0 ,\waiting_counter_reg[16]_i_1_n_1 ,\waiting_counter_reg[16]_i_1_n_2 ,\waiting_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(waiting_counter[16:13]),
        .S(waiting_counter_1[16:13]));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[17]),
        .Q(waiting_counter_1[17]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[18]),
        .Q(waiting_counter_1[18]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[19]),
        .Q(waiting_counter_1[19]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[1]),
        .Q(waiting_counter_1[1]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[20]),
        .Q(waiting_counter_1[20]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \waiting_counter_reg[20]_i_1 
       (.CI(\waiting_counter_reg[16]_i_1_n_0 ),
        .CO({\waiting_counter_reg[20]_i_1_n_0 ,\waiting_counter_reg[20]_i_1_n_1 ,\waiting_counter_reg[20]_i_1_n_2 ,\waiting_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(waiting_counter[20:17]),
        .S(waiting_counter_1[20:17]));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[21]),
        .Q(waiting_counter_1[21]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[22]),
        .Q(waiting_counter_1[22]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[23]),
        .Q(waiting_counter_1[23]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[24]),
        .Q(waiting_counter_1[24]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \waiting_counter_reg[24]_i_2 
       (.CI(\waiting_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_waiting_counter_reg[24]_i_2_CO_UNCONNECTED [3],\waiting_counter_reg[24]_i_2_n_1 ,\waiting_counter_reg[24]_i_2_n_2 ,\waiting_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(waiting_counter[24:21]),
        .S(waiting_counter_1[24:21]));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[2]),
        .Q(waiting_counter_1[2]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[3]),
        .Q(waiting_counter_1[3]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[4]),
        .Q(waiting_counter_1[4]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \waiting_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\waiting_counter_reg[4]_i_1_n_0 ,\waiting_counter_reg[4]_i_1_n_1 ,\waiting_counter_reg[4]_i_1_n_2 ,\waiting_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,waiting_counter_1[1]}),
        .O(waiting_counter[4:1]),
        .S({waiting_counter_1[4:2],\waiting_counter[4]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[5]),
        .Q(waiting_counter_1[5]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[6]),
        .Q(waiting_counter_1[6]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[7]),
        .Q(waiting_counter_1[7]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[8]),
        .Q(waiting_counter_1[8]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \waiting_counter_reg[8]_i_1 
       (.CI(\waiting_counter_reg[4]_i_1_n_0 ),
        .CO({\waiting_counter_reg[8]_i_1_n_0 ,\waiting_counter_reg[8]_i_1_n_1 ,\waiting_counter_reg[8]_i_1_n_2 ,\waiting_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(waiting_counter[8:5]),
        .S(waiting_counter_1[8:5]));
  (* KEEP = "yes" *) 
  FDRE \waiting_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(waiting_counter[9]),
        .Q(waiting_counter_1[9]),
        .R(\waiting_counter[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    waitrequest_n_INST_0
       (.I0(error_communication_timed_out_reg_0),
        .I1(command_was_sent),
        .I2(byteenable_0_sn_1),
        .O(waitrequest_n));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    waitrequest_n_INST_0_i_1
       (.I0(byteenable),
        .I1(penable),
        .I2(psel),
        .I3(write),
        .I4(paddr),
        .O(byteenable_0_sn_1));
endmodule

(* PS2_STATE_0_IDLE = "3'b000" *) (* PS2_STATE_1_WAIT_FOR_DATA = "3'b001" *) (* PS2_STATE_2_DATA_IN = "3'b010" *) 
(* PS2_STATE_3_PARITY_IN = "3'b011" *) (* PS2_STATE_4_STOP_IN = "3'b100" *) 
module altera_up_ps2_data_in
   (clk,
    reset,
    wait_for_incoming_data,
    start_receiving_data,
    ps2_clk_posedge,
    ps2_clk_negedge,
    ps2_data,
    received_data,
    received_data_en);
  input clk;
  input reset;
  input wait_for_incoming_data;
  input start_receiving_data;
  input ps2_clk_posedge;
  input ps2_clk_negedge;
  input ps2_data;
  output [7:0]received_data;
  output received_data_en;

  wire \FSM_onehot_s_ps2_receiver[0]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[0]_i_2_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[1]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[2]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[2]_i_2_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[3]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[3]_i_2_n_0 ;
  wire \FSM_onehot_s_ps2_receiver[4]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_receiver_reg_n_0_[0] ;
  wire \FSM_onehot_s_ps2_receiver_reg_n_0_[1] ;
  wire \FSM_onehot_s_ps2_receiver_reg_n_0_[2] ;
  wire \FSM_onehot_s_ps2_receiver_reg_n_0_[3] ;
  wire \FSM_onehot_s_ps2_receiver_reg_n_0_[4] ;
  wire clk;
  wire data_count0;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_1_n_0 ;
  wire [3:0]data_count_reg;
  wire \data_shift_reg_reg_n_0_[0] ;
  wire ns_ps2_receiver13_out;
  wire [6:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire ps2_clk_posedge;
  wire ps2_data;
  wire [7:0]received_data;
  wire received_data_en;
  wire received_data_en0;
  wire reset;
  wire start_receiving_data;
  wire wait_for_incoming_data;

  LUT5 #(
    .INIT(32'hFFFF0B00)) 
    \FSM_onehot_s_ps2_receiver[0]_i_1 
       (.I0(ps2_data),
        .I1(ps2_clk_posedge),
        .I2(wait_for_incoming_data),
        .I3(\FSM_onehot_s_ps2_receiver_reg_n_0_[1] ),
        .I4(\FSM_onehot_s_ps2_receiver[0]_i_2_n_0 ),
        .O(\FSM_onehot_s_ps2_receiver[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FF8F88888888)) 
    \FSM_onehot_s_ps2_receiver[0]_i_2 
       (.I0(ps2_clk_posedge),
        .I1(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .I2(wait_for_incoming_data),
        .I3(received_data_en),
        .I4(start_receiving_data),
        .I5(\FSM_onehot_s_ps2_receiver_reg_n_0_[0] ),
        .O(\FSM_onehot_s_ps2_receiver[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF040F0F040404040)) 
    \FSM_onehot_s_ps2_receiver[1]_i_1 
       (.I0(received_data_en),
        .I1(\FSM_onehot_s_ps2_receiver_reg_n_0_[0] ),
        .I2(wait_for_incoming_data),
        .I3(ps2_data),
        .I4(ps2_clk_posedge),
        .I5(\FSM_onehot_s_ps2_receiver_reg_n_0_[1] ),
        .O(\FSM_onehot_s_ps2_receiver[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF20FFFFFF20)) 
    \FSM_onehot_s_ps2_receiver[2]_i_1 
       (.I0(ps2_clk_posedge),
        .I1(ps2_data),
        .I2(\FSM_onehot_s_ps2_receiver_reg_n_0_[1] ),
        .I3(\FSM_onehot_s_ps2_receiver[2]_i_2_n_0 ),
        .I4(\FSM_onehot_s_ps2_receiver_reg_n_0_[2] ),
        .I5(ns_ps2_receiver13_out),
        .O(\FSM_onehot_s_ps2_receiver[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_s_ps2_receiver[2]_i_2 
       (.I0(\FSM_onehot_s_ps2_receiver_reg_n_0_[0] ),
        .I1(wait_for_incoming_data),
        .I2(received_data_en),
        .I3(start_receiving_data),
        .O(\FSM_onehot_s_ps2_receiver[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_onehot_s_ps2_receiver[2]_i_3 
       (.I0(data_count_reg[1]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[3]),
        .I3(data_count_reg[2]),
        .I4(ps2_clk_posedge),
        .O(ns_ps2_receiver13_out));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \FSM_onehot_s_ps2_receiver[3]_i_1 
       (.I0(\FSM_onehot_s_ps2_receiver[3]_i_2_n_0 ),
        .I1(data_count_reg[3]),
        .I2(data_count_reg[2]),
        .I3(\FSM_onehot_s_ps2_receiver_reg_n_0_[2] ),
        .I4(ps2_clk_posedge),
        .I5(\FSM_onehot_s_ps2_receiver_reg_n_0_[3] ),
        .O(\FSM_onehot_s_ps2_receiver[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_s_ps2_receiver[3]_i_2 
       (.I0(data_count_reg[1]),
        .I1(data_count_reg[0]),
        .O(\FSM_onehot_s_ps2_receiver[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_s_ps2_receiver[4]_i_1 
       (.I0(\FSM_onehot_s_ps2_receiver_reg_n_0_[3] ),
        .I1(ps2_clk_posedge),
        .I2(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .O(\FSM_onehot_s_ps2_receiver[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_s_ps2_receiver_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_receiver[0]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_receiver_reg_n_0_[0] ),
        .S(reset));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_receiver_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_receiver[1]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_receiver_reg_n_0_[1] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_receiver_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_receiver[2]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_receiver_reg_n_0_[2] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_receiver_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_receiver[3]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_receiver_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_receiver_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_receiver[4]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_count[0]_i_1 
       (.I0(data_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_count[1]_i_1 
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data_count[2]_i_1 
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[2]),
        .O(\data_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data_count[3]_i_1 
       (.I0(reset),
        .I1(\FSM_onehot_s_ps2_receiver_reg_n_0_[2] ),
        .O(\data_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \data_count[3]_i_2 
       (.I0(data_count_reg[1]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[2]),
        .I3(data_count_reg[3]),
        .O(p_0_in__0[3]));
  FDRE \data_count_reg[0] 
       (.C(clk),
        .CE(ps2_clk_posedge),
        .D(p_0_in__0[0]),
        .Q(data_count_reg[0]),
        .R(\data_count[3]_i_1_n_0 ));
  FDRE \data_count_reg[1] 
       (.C(clk),
        .CE(ps2_clk_posedge),
        .D(p_0_in__0[1]),
        .Q(data_count_reg[1]),
        .R(\data_count[3]_i_1_n_0 ));
  FDRE \data_count_reg[2] 
       (.C(clk),
        .CE(ps2_clk_posedge),
        .D(\data_count[2]_i_1_n_0 ),
        .Q(data_count_reg[2]),
        .R(\data_count[3]_i_1_n_0 ));
  FDRE \data_count_reg[3] 
       (.C(clk),
        .CE(ps2_clk_posedge),
        .D(p_0_in__0[3]),
        .Q(data_count_reg[3]),
        .R(\data_count[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_shift_reg[7]_i_1 
       (.I0(\FSM_onehot_s_ps2_receiver_reg_n_0_[2] ),
        .I1(ps2_clk_posedge),
        .O(data_count0));
  FDRE \data_shift_reg_reg[0] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[0]),
        .Q(\data_shift_reg_reg_n_0_[0] ),
        .R(reset));
  FDRE \data_shift_reg_reg[1] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(reset));
  FDRE \data_shift_reg_reg[2] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(reset));
  FDRE \data_shift_reg_reg[3] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(reset));
  FDRE \data_shift_reg_reg[4] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[4]),
        .Q(p_0_in[3]),
        .R(reset));
  FDRE \data_shift_reg_reg[5] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[5]),
        .Q(p_0_in[4]),
        .R(reset));
  FDRE \data_shift_reg_reg[6] 
       (.C(clk),
        .CE(data_count0),
        .D(p_0_in[6]),
        .Q(p_0_in[5]),
        .R(reset));
  FDRE \data_shift_reg_reg[7] 
       (.C(clk),
        .CE(data_count0),
        .D(ps2_data),
        .Q(p_0_in[6]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    received_data_en_i_1
       (.I0(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .I1(ps2_clk_posedge),
        .O(received_data_en0));
  FDRE received_data_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(received_data_en0),
        .Q(received_data_en),
        .R(reset));
  FDRE \received_data_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(\data_shift_reg_reg_n_0_[0] ),
        .Q(received_data[0]),
        .R(reset));
  FDRE \received_data_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[0]),
        .Q(received_data[1]),
        .R(reset));
  FDRE \received_data_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[1]),
        .Q(received_data[2]),
        .R(reset));
  FDRE \received_data_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[2]),
        .Q(received_data[3]),
        .R(reset));
  FDRE \received_data_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[3]),
        .Q(received_data[4]),
        .R(reset));
  FDRE \received_data_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[4]),
        .Q(received_data[5]),
        .R(reset));
  FDRE \received_data_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[5]),
        .Q(received_data[6]),
        .R(reset));
  FDRE \received_data_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_s_ps2_receiver_reg_n_0_[4] ),
        .D(p_0_in[6]),
        .Q(received_data[7]),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_ps2_recv,fifo_generator_v13_2_9,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
module fifo_ps2_recv
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output [8:0]data_count;

  wire \<const0> ;
  wire clk;
  wire [8:0]data_count;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "1" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "255" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "254" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  ps2_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(data_count),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "ps2,testPS2qsys_ps2_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "testPS2qsys_ps2_0,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ps2
   (clk,
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
    waitrequest_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PADDR" *) input [3:0]paddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PENABLE" *) input penable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSEL" *) input psel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSTRB" *) input [3:0]byteenable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWRITE" *) input write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWDATA" *) input [31:0]writedata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSLVERR" *) output perr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_clk TRI_I" *) input PS2_CLK_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_clk TRI_O" *) output PS2_CLK_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_clk TRI_T" *) output PS2_CLK_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_dat TRI_I" *) input PS2_DAT_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_dat TRI_O" *) output PS2_DAT_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PS2_dat TRI_T" *) output PS2_DAT_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PRDATA" *) output [31:0]readdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PREADY" *) output waitrequest_n;

  wire \<const0> ;
  wire PS2_CLK_i;
  wire PS2_CLK_t;
  wire PS2_DAT_i;
  wire PS2_DAT_t;
  wire [3:0]byteenable;
  wire clk;
  wire irq;
  wire [3:0]paddr;
  wire penable;
  wire psel;
  wire [24:0]\^readdata ;
  wire reset_n;
  wire waitrequest_n;
  wire write;
  wire [31:0]writedata;

  assign PS2_CLK_o = \<const0> ;
  assign PS2_DAT_o = \<const0> ;
  assign perr = \<const0> ;
  assign readdata[31] = \<const0> ;
  assign readdata[30] = \<const0> ;
  assign readdata[29] = \<const0> ;
  assign readdata[28] = \<const0> ;
  assign readdata[27] = \<const0> ;
  assign readdata[26] = \<const0> ;
  assign readdata[25] = \<const0> ;
  assign readdata[24:15] = \^readdata [24:15];
  assign readdata[14] = \<const0> ;
  assign readdata[13] = \<const0> ;
  assign readdata[12] = \<const0> ;
  assign readdata[11] = \<const0> ;
  assign readdata[10] = \^readdata [10];
  assign readdata[9] = \<const0> ;
  assign readdata[8:0] = \^readdata [8:0];
  GND GND
       (.G(\<const0> ));
  testPS2qsys_ps2_0 inst
       (.PS2_CLK_i(PS2_CLK_i),
        .PS2_CLK_t(PS2_CLK_t),
        .PS2_DAT_i(PS2_DAT_i),
        .PS2_DAT_t(PS2_DAT_t),
        .byteenable(byteenable[1:0]),
        .clk(clk),
        .irq(irq),
        .paddr(paddr[2]),
        .penable(penable),
        .psel(psel),
        .readdata({\^readdata [24:15],\^readdata [10],\^readdata [8:0]}),
        .reset_n(reset_n),
        .waitrequest_n(waitrequest_n),
        .write(write),
        .writedata(writedata[7:0]));
endmodule

(* ORIG_REF_NAME = "altera_up_ps2" *) 
module ps2_altera_up_ps2
   (received_data,
    SR,
    error_sending_command,
    wr_en,
    PS2_CLK_t,
    PS2_DAT_t,
    waitrequest_n,
    clk,
    PS2_CLK_i,
    PS2_DAT_i,
    writedata,
    reset_n,
    full,
    byteenable,
    penable,
    psel,
    write,
    paddr);
  output [7:0]received_data;
  output [0:0]SR;
  output error_sending_command;
  output wr_en;
  output PS2_CLK_t;
  output PS2_DAT_t;
  output waitrequest_n;
  input clk;
  input PS2_CLK_i;
  input PS2_DAT_i;
  input [7:0]writedata;
  input reset_n;
  input full;
  input [0:0]byteenable;
  input penable;
  input psel;
  input write;
  input [0:0]paddr;

  wire \FSM_onehot_s_ps2_transceiver[0]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver[0]_i_2_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver[2]_i_3_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver[3]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver[4]_i_1_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver[4]_i_2_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver[4]_i_3_n_0 ;
  wire \FSM_onehot_s_ps2_transceiver_reg_n_0_[0] ;
  wire \FSM_onehot_s_ps2_transceiver_reg_n_0_[1] ;
  wire \FSM_onehot_s_ps2_transceiver_reg_n_0_[2] ;
  wire \FSM_onehot_s_ps2_transceiver_reg_n_0_[3] ;
  wire \FSM_onehot_s_ps2_transceiver_reg_n_0_[4] ;
  wire PS2_CLK_i;
  wire PS2_CLK_t;
  wire PS2_Command_Out_n_3;
  wire PS2_Command_Out_n_4;
  wire PS2_Command_Out_n_5;
  wire PS2_DAT_i;
  wire PS2_DAT_t;
  wire [0:0]SR;
  wire [0:0]byteenable;
  wire clk;
  wire data_from_the_PS2_port_en;
  wire error_sending_command;
  wire full;
  wire idle_counter0;
  wire \idle_counter[2]_i_1_n_0 ;
  wire \idle_counter[3]_i_1_n_0 ;
  wire \idle_counter[4]_i_1_n_0 ;
  wire \idle_counter[5]_i_1_n_0 ;
  wire \idle_counter[6]_i_1_n_0 ;
  wire \idle_counter[6]_i_3_n_0 ;
  wire \idle_counter[6]_i_4_n_0 ;
  wire \idle_counter[7]_i_1_n_0 ;
  wire [7:0]idle_counter_reg;
  wire last_ps2_clk;
  wire [1:0]p_0_in;
  wire [0:0]paddr;
  wire penable;
  wire ps2_clk_posedge;
  (* MARK_DEBUG *) wire ps2_clk_reg;
  (* MARK_DEBUG *) wire ps2_data_reg;
  wire psel;
  wire [7:0]received_data;
  wire reset_n;
  wire waitrequest_n;
  wire wr_en;
  wire write;
  wire [7:0]writedata;

  LUT6 #(
    .INIT(64'hFFFFFAF8FAF0FAF0)) 
    \FSM_onehot_s_ps2_transceiver[0]_i_1 
       (.I0(data_from_the_PS2_port_en),
        .I1(\FSM_onehot_s_ps2_transceiver_reg_n_0_[3] ),
        .I2(\FSM_onehot_s_ps2_transceiver[0]_i_2_n_0 ),
        .I3(\FSM_onehot_s_ps2_transceiver_reg_n_0_[4] ),
        .I4(\FSM_onehot_s_ps2_transceiver_reg_n_0_[2] ),
        .I5(PS2_Command_Out_n_5),
        .O(\FSM_onehot_s_ps2_transceiver[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA20000)) 
    \FSM_onehot_s_ps2_transceiver[0]_i_2 
       (.I0(\FSM_onehot_s_ps2_transceiver_reg_n_0_[0] ),
        .I1(ps2_clk_reg),
        .I2(last_ps2_clk),
        .I3(ps2_data_reg),
        .I4(\FSM_onehot_s_ps2_transceiver[4]_i_2_n_0 ),
        .O(\FSM_onehot_s_ps2_transceiver[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_s_ps2_transceiver[2]_i_3 
       (.I0(data_from_the_PS2_port_en),
        .I1(\FSM_onehot_s_ps2_transceiver_reg_n_0_[3] ),
        .O(\FSM_onehot_s_ps2_transceiver[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h44444F44)) 
    \FSM_onehot_s_ps2_transceiver[3]_i_1 
       (.I0(data_from_the_PS2_port_en),
        .I1(\FSM_onehot_s_ps2_transceiver_reg_n_0_[3] ),
        .I2(PS2_Command_Out_n_5),
        .I3(\FSM_onehot_s_ps2_transceiver_reg_n_0_[2] ),
        .I4(\FSM_onehot_s_ps2_transceiver[4]_i_3_n_0 ),
        .O(\FSM_onehot_s_ps2_transceiver[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4444F444)) 
    \FSM_onehot_s_ps2_transceiver[4]_i_1 
       (.I0(data_from_the_PS2_port_en),
        .I1(\FSM_onehot_s_ps2_transceiver_reg_n_0_[4] ),
        .I2(\FSM_onehot_s_ps2_transceiver[4]_i_2_n_0 ),
        .I3(\FSM_onehot_s_ps2_transceiver_reg_n_0_[0] ),
        .I4(\FSM_onehot_s_ps2_transceiver[4]_i_3_n_0 ),
        .O(\FSM_onehot_s_ps2_transceiver[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_s_ps2_transceiver[4]_i_2 
       (.I0(idle_counter_reg[7]),
        .I1(\idle_counter[6]_i_4_n_0 ),
        .I2(idle_counter_reg[6]),
        .I3(PS2_Command_Out_n_5),
        .O(\FSM_onehot_s_ps2_transceiver[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_s_ps2_transceiver[4]_i_3 
       (.I0(ps2_clk_reg),
        .I1(last_ps2_clk),
        .I2(ps2_data_reg),
        .O(\FSM_onehot_s_ps2_transceiver[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_s_ps2_transceiver_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_transceiver[0]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_transceiver_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_transceiver_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(PS2_Command_Out_n_4),
        .Q(\FSM_onehot_s_ps2_transceiver_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_transceiver_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(PS2_Command_Out_n_3),
        .Q(\FSM_onehot_s_ps2_transceiver_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_transceiver_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_transceiver[3]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_transceiver_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_ps2_transceiver_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s_ps2_transceiver[4]_i_1_n_0 ),
        .Q(\FSM_onehot_s_ps2_transceiver_reg_n_0_[4] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    Incoming_Data_FIFO_i_1
       (.I0(data_from_the_PS2_port_en),
        .I1(full),
        .O(wr_en));
  altera_up_ps2_command_out PS2_Command_Out
       (.D({PS2_Command_Out_n_3,PS2_Command_Out_n_4}),
        .\FSM_onehot_s_ps2_transceiver_reg[1] (\FSM_onehot_s_ps2_transceiver[4]_i_2_n_0 ),
        .\FSM_onehot_s_ps2_transceiver_reg[2] (\FSM_onehot_s_ps2_transceiver[4]_i_3_n_0 ),
        .\FSM_onehot_s_ps2_transceiver_reg[2]_0 (\FSM_onehot_s_ps2_transceiver[2]_i_3_n_0 ),
        .PS2_CLK_t(PS2_CLK_t),
        .PS2_DAT_t(PS2_DAT_t),
        .Q({\FSM_onehot_s_ps2_transceiver_reg_n_0_[2] ,\FSM_onehot_s_ps2_transceiver_reg_n_0_[1] ,\FSM_onehot_s_ps2_transceiver_reg_n_0_[0] }),
        .SR(SR),
        .byteenable(byteenable),
        .byteenable_0_sp_1(PS2_Command_Out_n_5),
        .clk(clk),
        .error_communication_timed_out_reg_0(error_sending_command),
        .last_ps2_clk(last_ps2_clk),
        .out(ps2_clk_reg),
        .paddr(paddr),
        .penable(penable),
        .psel(psel),
        .reset_n(reset_n),
        .waitrequest_n(waitrequest_n),
        .write(write),
        .writedata(writedata));
  (* KEEP_HIERARCHY = "soft" *) 
  (* PS2_STATE_0_IDLE = "3'b000" *) 
  (* PS2_STATE_1_WAIT_FOR_DATA = "3'b001" *) 
  (* PS2_STATE_2_DATA_IN = "3'b010" *) 
  (* PS2_STATE_3_PARITY_IN = "3'b011" *) 
  (* PS2_STATE_4_STOP_IN = "3'b100" *) 
  altera_up_ps2_data_in PS2_Data_In
       (.clk(clk),
        .ps2_clk_negedge(1'b0),
        .ps2_clk_posedge(ps2_clk_posedge),
        .ps2_data(ps2_data_reg),
        .received_data(received_data),
        .received_data_en(data_from_the_PS2_port_en),
        .reset(SR),
        .start_receiving_data(\FSM_onehot_s_ps2_transceiver_reg_n_0_[4] ),
        .wait_for_incoming_data(\FSM_onehot_s_ps2_transceiver_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    PS2_Data_In_i_1
       (.I0(ps2_clk_reg),
        .I1(last_ps2_clk),
        .O(ps2_clk_posedge));
  LUT1 #(
    .INIT(2'h1)) 
    \idle_counter[0]_i_1 
       (.I0(idle_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idle_counter[1]_i_1 
       (.I0(idle_counter_reg[0]),
        .I1(idle_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idle_counter[2]_i_1 
       (.I0(idle_counter_reg[1]),
        .I1(idle_counter_reg[0]),
        .I2(idle_counter_reg[2]),
        .O(\idle_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idle_counter[3]_i_1 
       (.I0(idle_counter_reg[2]),
        .I1(idle_counter_reg[0]),
        .I2(idle_counter_reg[1]),
        .I3(idle_counter_reg[3]),
        .O(\idle_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \idle_counter[4]_i_1 
       (.I0(idle_counter_reg[3]),
        .I1(idle_counter_reg[1]),
        .I2(idle_counter_reg[0]),
        .I3(idle_counter_reg[2]),
        .I4(idle_counter_reg[4]),
        .O(\idle_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \idle_counter[5]_i_1 
       (.I0(idle_counter_reg[4]),
        .I1(idle_counter_reg[2]),
        .I2(idle_counter_reg[0]),
        .I3(idle_counter_reg[1]),
        .I4(idle_counter_reg[3]),
        .I5(idle_counter_reg[5]),
        .O(\idle_counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \idle_counter[6]_i_1 
       (.I0(\FSM_onehot_s_ps2_transceiver_reg_n_0_[0] ),
        .I1(reset_n),
        .O(\idle_counter[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \idle_counter[6]_i_2 
       (.I0(idle_counter_reg[7]),
        .I1(\idle_counter[6]_i_4_n_0 ),
        .I2(idle_counter_reg[6]),
        .O(idle_counter0));
  LUT2 #(
    .INIT(4'h9)) 
    \idle_counter[6]_i_3 
       (.I0(\idle_counter[6]_i_4_n_0 ),
        .I1(idle_counter_reg[6]),
        .O(\idle_counter[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \idle_counter[6]_i_4 
       (.I0(idle_counter_reg[4]),
        .I1(idle_counter_reg[2]),
        .I2(idle_counter_reg[0]),
        .I3(idle_counter_reg[1]),
        .I4(idle_counter_reg[3]),
        .I5(idle_counter_reg[5]),
        .O(\idle_counter[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \idle_counter[7]_i_1 
       (.I0(idle_counter_reg[7]),
        .I1(\idle_counter[6]_i_4_n_0 ),
        .I2(idle_counter_reg[6]),
        .O(\idle_counter[7]_i_1_n_0 ));
  FDRE \idle_counter_reg[0] 
       (.C(clk),
        .CE(idle_counter0),
        .D(p_0_in[0]),
        .Q(idle_counter_reg[0]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[1] 
       (.C(clk),
        .CE(idle_counter0),
        .D(p_0_in[1]),
        .Q(idle_counter_reg[1]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[2] 
       (.C(clk),
        .CE(idle_counter0),
        .D(\idle_counter[2]_i_1_n_0 ),
        .Q(idle_counter_reg[2]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[3] 
       (.C(clk),
        .CE(idle_counter0),
        .D(\idle_counter[3]_i_1_n_0 ),
        .Q(idle_counter_reg[3]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[4] 
       (.C(clk),
        .CE(idle_counter0),
        .D(\idle_counter[4]_i_1_n_0 ),
        .Q(idle_counter_reg[4]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[5] 
       (.C(clk),
        .CE(idle_counter0),
        .D(\idle_counter[5]_i_1_n_0 ),
        .Q(idle_counter_reg[5]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[6] 
       (.C(clk),
        .CE(idle_counter0),
        .D(\idle_counter[6]_i_3_n_0 ),
        .Q(idle_counter_reg[6]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDRE \idle_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\idle_counter[7]_i_1_n_0 ),
        .Q(idle_counter_reg[7]),
        .R(\idle_counter[6]_i_1_n_0 ));
  FDSE last_ps2_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_clk_reg),
        .Q(last_ps2_clk),
        .S(SR));
  (* KEEP = "yes" *) 
  FDSE ps2_clk_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(PS2_CLK_i),
        .Q(ps2_clk_reg),
        .S(SR));
  (* KEEP = "yes" *) 
  FDSE ps2_data_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(PS2_DAT_i),
        .Q(ps2_data_reg),
        .S(SR));
endmodule

module testPS2qsys_ps2_0
   (irq,
    readdata,
    PS2_CLK_t,
    PS2_DAT_t,
    waitrequest_n,
    writedata,
    reset_n,
    paddr,
    clk,
    PS2_CLK_i,
    PS2_DAT_i,
    byteenable,
    psel,
    write,
    penable);
  output irq;
  output [19:0]readdata;
  output PS2_CLK_t;
  output PS2_DAT_t;
  output waitrequest_n;
  input [7:0]writedata;
  input reset_n;
  input [0:0]paddr;
  input clk;
  input PS2_CLK_i;
  input PS2_DAT_i;
  input [1:0]byteenable;
  input psel;
  input write;
  input penable;

  wire PS2_CLK_i;
  wire PS2_CLK_t;
  wire PS2_DAT_i;
  wire PS2_DAT_t;
  wire PS2_Serial_Port_n_10;
  wire [1:0]byteenable;
  wire clk;
  wire \control_register[0]_i_1_n_0 ;
  wire \control_register[0]_i_2_n_0 ;
  wire \control_register[10]_i_1_n_0 ;
  wire \control_register[10]_i_2_n_0 ;
  wire \control_register_reg_n_0_[0] ;
  wire \control_register_reg_n_0_[10] ;
  wire [8:0]data_available;
  wire data_fifo_is_empty;
  wire data_fifo_is_full;
  wire [7:0]data_from_the_PS2_port;
  wire [7:0]data_in_fifo;
  wire error_sending_command;
  wire irq;
  wire [8:8]p_2_out;
  wire [0:0]paddr;
  wire penable;
  wire psel;
  wire rd_en0;
  wire [19:0]readdata;
  wire \readdata[0]_i_1_n_0 ;
  wire \readdata[10]_i_1_n_0 ;
  wire \readdata[15]_i_1_n_0 ;
  wire \readdata[16]_i_1_n_0 ;
  wire \readdata[17]_i_1_n_0 ;
  wire \readdata[18]_i_1_n_0 ;
  wire \readdata[19]_i_1_n_0 ;
  wire \readdata[1]_i_1_n_0 ;
  wire \readdata[20]_i_1_n_0 ;
  wire \readdata[21]_i_1_n_0 ;
  wire \readdata[22]_i_1_n_0 ;
  wire \readdata[23]_i_1_n_0 ;
  wire \readdata[24]_i_1_n_0 ;
  wire \readdata[2]_i_1_n_0 ;
  wire \readdata[3]_i_1_n_0 ;
  wire \readdata[4]_i_1_n_0 ;
  wire \readdata[5]_i_1_n_0 ;
  wire \readdata[6]_i_1_n_0 ;
  wire \readdata[7]_i_1_n_0 ;
  wire \readdata[8]_i_1_n_0 ;
  wire reset;
  wire reset_n;
  wire waitrequest_n;
  wire write;
  wire [7:0]writedata;
  wire NLW_Incoming_Data_FIFO_almost_empty_UNCONNECTED;
  wire NLW_Incoming_Data_FIFO_almost_full_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "fifo_ps2_recv,fifo_generator_v13_2_9,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
  fifo_ps2_recv Incoming_Data_FIFO
       (.almost_empty(NLW_Incoming_Data_FIFO_almost_empty_UNCONNECTED),
        .almost_full(NLW_Incoming_Data_FIFO_almost_full_UNCONNECTED),
        .clk(clk),
        .data_count(data_available),
        .din(data_from_the_PS2_port),
        .dout(data_in_fifo),
        .empty(data_fifo_is_empty),
        .full(data_fifo_is_full),
        .rd_en(rd_en0),
        .srst(reset),
        .wr_en(PS2_Serial_Port_n_10));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    Incoming_Data_FIFO_i_2
       (.I0(write),
        .I1(data_fifo_is_empty),
        .I2(paddr),
        .I3(penable),
        .I4(psel),
        .O(rd_en0));
  ps2_altera_up_ps2 PS2_Serial_Port
       (.PS2_CLK_i(PS2_CLK_i),
        .PS2_CLK_t(PS2_CLK_t),
        .PS2_DAT_i(PS2_DAT_i),
        .PS2_DAT_t(PS2_DAT_t),
        .SR(reset),
        .byteenable(byteenable[0]),
        .clk(clk),
        .error_sending_command(error_sending_command),
        .full(data_fifo_is_full),
        .paddr(paddr),
        .penable(penable),
        .psel(psel),
        .received_data(data_from_the_PS2_port),
        .reset_n(reset_n),
        .waitrequest_n(waitrequest_n),
        .wr_en(PS2_Serial_Port_n_10),
        .write(write),
        .writedata(writedata));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \control_register[0]_i_1 
       (.I0(writedata[0]),
        .I1(paddr),
        .I2(\control_register[0]_i_2_n_0 ),
        .I3(\control_register_reg_n_0_[0] ),
        .O(\control_register[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \control_register[0]_i_2 
       (.I0(write),
        .I1(psel),
        .I2(penable),
        .I3(byteenable[0]),
        .O(\control_register[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    \control_register[10]_i_1 
       (.I0(\control_register[10]_i_2_n_0 ),
        .I1(byteenable[1]),
        .I2(paddr),
        .I3(error_sending_command),
        .I4(\control_register_reg_n_0_[10] ),
        .O(\control_register[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \control_register[10]_i_2 
       (.I0(penable),
        .I1(psel),
        .I2(write),
        .O(\control_register[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_register[8]_i_2 
       (.I0(\control_register_reg_n_0_[0] ),
        .I1(data_fifo_is_empty),
        .O(p_2_out));
  FDRE \control_register_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\control_register[0]_i_1_n_0 ),
        .Q(\control_register_reg_n_0_[0] ),
        .R(reset));
  FDRE \control_register_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\control_register[10]_i_1_n_0 ),
        .Q(\control_register_reg_n_0_[10] ),
        .R(reset));
  FDRE \control_register_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_out),
        .Q(irq),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \readdata[0]_i_1 
       (.I0(\control_register_reg_n_0_[0] ),
        .I1(paddr),
        .I2(data_in_fifo[0]),
        .O(\readdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC0A000A0)) 
    \readdata[10]_i_1 
       (.I0(readdata[9]),
        .I1(\control_register_reg_n_0_[10] ),
        .I2(reset_n),
        .I3(psel),
        .I4(paddr),
        .O(\readdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \readdata[15]_i_1 
       (.I0(paddr),
        .I1(data_fifo_is_empty),
        .O(\readdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[16]_i_1 
       (.I0(data_available[0]),
        .I1(paddr),
        .O(\readdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[17]_i_1 
       (.I0(data_available[1]),
        .I1(paddr),
        .O(\readdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[18]_i_1 
       (.I0(data_available[2]),
        .I1(paddr),
        .O(\readdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[19]_i_1 
       (.I0(data_available[3]),
        .I1(paddr),
        .O(\readdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[1]_i_1 
       (.I0(data_in_fifo[1]),
        .I1(paddr),
        .O(\readdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[20]_i_1 
       (.I0(data_available[4]),
        .I1(paddr),
        .O(\readdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[21]_i_1 
       (.I0(data_available[5]),
        .I1(paddr),
        .O(\readdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[22]_i_1 
       (.I0(data_available[6]),
        .I1(paddr),
        .O(\readdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[23]_i_1 
       (.I0(data_available[7]),
        .I1(paddr),
        .O(\readdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[24]_i_1 
       (.I0(data_available[8]),
        .I1(paddr),
        .O(\readdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[2]_i_1 
       (.I0(data_in_fifo[2]),
        .I1(paddr),
        .O(\readdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[3]_i_1 
       (.I0(data_in_fifo[3]),
        .I1(paddr),
        .O(\readdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[4]_i_1 
       (.I0(data_in_fifo[4]),
        .I1(paddr),
        .O(\readdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[5]_i_1 
       (.I0(data_in_fifo[5]),
        .I1(paddr),
        .O(\readdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[6]_i_1 
       (.I0(data_in_fifo[6]),
        .I1(paddr),
        .O(\readdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata[7]_i_1 
       (.I0(data_in_fifo[7]),
        .I1(paddr),
        .O(\readdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC0A000A0)) 
    \readdata[8]_i_1 
       (.I0(readdata[8]),
        .I1(irq),
        .I2(reset_n),
        .I3(psel),
        .I4(paddr),
        .O(\readdata[8]_i_1_n_0 ));
  FDRE \readdata_reg[0] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[0]_i_1_n_0 ),
        .Q(readdata[0]),
        .R(reset));
  FDRE \readdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\readdata[10]_i_1_n_0 ),
        .Q(readdata[9]),
        .R(1'b0));
  FDRE \readdata_reg[15] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[15]_i_1_n_0 ),
        .Q(readdata[10]),
        .R(reset));
  FDRE \readdata_reg[16] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[16]_i_1_n_0 ),
        .Q(readdata[11]),
        .R(reset));
  FDRE \readdata_reg[17] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[17]_i_1_n_0 ),
        .Q(readdata[12]),
        .R(reset));
  FDRE \readdata_reg[18] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[18]_i_1_n_0 ),
        .Q(readdata[13]),
        .R(reset));
  FDRE \readdata_reg[19] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[19]_i_1_n_0 ),
        .Q(readdata[14]),
        .R(reset));
  FDRE \readdata_reg[1] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[1]_i_1_n_0 ),
        .Q(readdata[1]),
        .R(reset));
  FDRE \readdata_reg[20] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[20]_i_1_n_0 ),
        .Q(readdata[15]),
        .R(reset));
  FDRE \readdata_reg[21] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[21]_i_1_n_0 ),
        .Q(readdata[16]),
        .R(reset));
  FDRE \readdata_reg[22] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[22]_i_1_n_0 ),
        .Q(readdata[17]),
        .R(reset));
  FDRE \readdata_reg[23] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[23]_i_1_n_0 ),
        .Q(readdata[18]),
        .R(reset));
  FDRE \readdata_reg[24] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[24]_i_1_n_0 ),
        .Q(readdata[19]),
        .R(reset));
  FDRE \readdata_reg[2] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[2]_i_1_n_0 ),
        .Q(readdata[2]),
        .R(reset));
  FDRE \readdata_reg[3] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[3]_i_1_n_0 ),
        .Q(readdata[3]),
        .R(reset));
  FDRE \readdata_reg[4] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[4]_i_1_n_0 ),
        .Q(readdata[4]),
        .R(reset));
  FDRE \readdata_reg[5] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[5]_i_1_n_0 ),
        .Q(readdata[5]),
        .R(reset));
  FDRE \readdata_reg[6] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[6]_i_1_n_0 ),
        .Q(readdata[6]),
        .R(reset));
  FDRE \readdata_reg[7] 
       (.C(clk),
        .CE(psel),
        .D(\readdata[7]_i_1_n_0 ),
        .Q(readdata[7]),
        .R(reset));
  FDRE \readdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\readdata[8]_i_1_n_0 ),
        .Q(readdata[8]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 101392)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
