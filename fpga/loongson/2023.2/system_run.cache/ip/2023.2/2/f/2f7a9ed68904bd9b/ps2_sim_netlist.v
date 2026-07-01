// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:34:31 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ps2_sim_netlist.v
// Design      : ps2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_altera_up_ps2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_altera_up_ps2_command_out PS2_Command_Out
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_altera_up_ps2_data_in PS2_Data_In
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_altera_up_ps2_command_out
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_altera_up_ps2_data_in
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ps2_recv
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_testPS2qsys_ps2_0 inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_testPS2qsys_ps2_0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ps2_recv Incoming_Data_FIFO
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_altera_up_ps2 PS2_Serial_Port
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 102016)
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
