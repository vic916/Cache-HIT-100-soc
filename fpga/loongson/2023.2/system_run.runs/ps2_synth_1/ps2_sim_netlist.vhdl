-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Aug 19 23:34:32 2025
-- Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/XF/Desktop/chiplabdemo/chiplab/fpga/loongson/2023.2/system_run.runs/ps2_synth_1/ps2_sim_netlist.vhdl
-- Design      : ps2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity altera_up_ps2_command_out is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    error_communication_timed_out_reg_0 : out STD_LOGIC;
    PS2_CLK_t : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    byteenable_0_sp_1 : out STD_LOGIC;
    PS2_DAT_t : out STD_LOGIC;
    waitrequest_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    writedata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    last_ps2_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_s_ps2_transceiver_reg[2]\ : in STD_LOGIC;
    \FSM_onehot_s_ps2_transceiver_reg[2]_0\ : in STD_LOGIC;
    \FSM_onehot_s_ps2_transceiver_reg[1]\ : in STD_LOGIC;
    byteenable : in STD_LOGIC_VECTOR ( 0 to 0 );
    penable : in STD_LOGIC;
    psel : in STD_LOGIC;
    write : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end altera_up_ps2_command_out;

architecture STRUCTURE of altera_up_ps2_command_out is
  signal \FSM_onehot_s_ps2_transceiver[2]_i_2_n_0\ : STD_LOGIC;
  signal PS2_DAT_t_INST_0_i_1_n_0 : STD_LOGIC;
  signal PS2_DAT_t_INST_0_i_2_n_0 : STD_LOGIC;
  signal PS2_DAT_t_INST_0_i_3_n_0 : STD_LOGIC;
  signal PS2_DAT_t_INST_0_i_4_n_0 : STD_LOGIC;
  signal PS2_DAT_t_INST_0_i_5_n_0 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal byteenable_0_sn_1 : STD_LOGIC;
  signal command_initiate_counter0 : STD_LOGIC;
  signal \command_initiate_counter[1]_i_10_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_4_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_5_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_6_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_7_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_8_n_0\ : STD_LOGIC;
  signal \command_initiate_counter[1]_i_9_n_0\ : STD_LOGIC;
  signal command_initiate_counter_reg : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal \command_initiate_counter_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \command_initiate_counter_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \command_initiate_counter_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_4\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_5\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_6\ : STD_LOGIC;
  signal \command_initiate_counter_reg[1]_i_3_n_7\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \command_initiate_counter_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \command_initiate_counter_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \command_initiate_counter_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal command_was_sent : STD_LOGIC;
  signal command_was_sent_i_1_n_0 : STD_LOGIC;
  signal cur_bit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cur_bit1__0\ : STD_LOGIC;
  signal \cur_bit[3]_i_1_n_0\ : STD_LOGIC;
  signal cur_bit_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of cur_bit_0 : signal is std.standard.true;
  signal error_communication_timed_out_i_1_n_0 : STD_LOGIC;
  signal \^error_communication_timed_out_reg_0\ : STD_LOGIC;
  signal ns_ps2_transmitter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps2_command : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ps2_command[8]_i_1_n_0\ : STD_LOGIC;
  signal \ps2_command[8]_i_2_n_0\ : STD_LOGIC;
  signal \ps2_command[8]_i_3_n_0\ : STD_LOGIC;
  signal s_ps2_transmitter : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of s_ps2_transmitter : signal is std.standard.true;
  signal \s_ps2_transmitter[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_10_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_11_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_12_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_13_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_14_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_15_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_16_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_ps2_transmitter[2]_i_9_n_0\ : STD_LOGIC;
  signal transfer_counter : STD_LOGIC_VECTOR ( 24 downto 1 );
  attribute MARK_DEBUG of transfer_counter : signal is std.standard.true;
  signal transfer_counter0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal transfer_counter1 : STD_LOGIC;
  signal \transfer_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_counter_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_counter_reg[13]_i_2_n_1\ : STD_LOGIC;
  signal \transfer_counter_reg[13]_i_2_n_2\ : STD_LOGIC;
  signal \transfer_counter_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \transfer_counter_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_counter_reg[17]_i_2_n_1\ : STD_LOGIC;
  signal \transfer_counter_reg[17]_i_2_n_2\ : STD_LOGIC;
  signal \transfer_counter_reg[17]_i_2_n_3\ : STD_LOGIC;
  signal \transfer_counter_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_counter_reg[21]_i_2_n_1\ : STD_LOGIC;
  signal \transfer_counter_reg[21]_i_2_n_2\ : STD_LOGIC;
  signal \transfer_counter_reg[21]_i_2_n_3\ : STD_LOGIC;
  signal \transfer_counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \transfer_counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \transfer_counter_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_counter_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \transfer_counter_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \transfer_counter_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \transfer_counter_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_counter_reg[9]_i_2_n_1\ : STD_LOGIC;
  signal \transfer_counter_reg[9]_i_2_n_2\ : STD_LOGIC;
  signal \transfer_counter_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal waiting_counter : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal \waiting_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \waiting_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal waiting_counter_1 : STD_LOGIC_VECTOR ( 24 downto 1 );
  attribute MARK_DEBUG of waiting_counter_1 : signal is std.standard.true;
  signal \waiting_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \waiting_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \waiting_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \waiting_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \waiting_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \waiting_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \waiting_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \waiting_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \waiting_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \waiting_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \waiting_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \waiting_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \waiting_counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \waiting_counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \waiting_counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \waiting_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \waiting_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \waiting_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \waiting_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \waiting_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \waiting_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \waiting_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \waiting_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_command_initiate_counter_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_transfer_counter_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_transfer_counter_reg[24]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waiting_counter_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_transceiver[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_transceiver[2]_i_2\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \command_initiate_counter_reg[13]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \command_initiate_counter_reg[17]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \command_initiate_counter_reg[1]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \command_initiate_counter_reg[21]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \command_initiate_counter_reg[5]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \command_initiate_counter_reg[9]_i_1\ : label is 11;
  attribute KEEP : string;
  attribute KEEP of \cur_bit_reg[0]\ : label is "yes";
  attribute KEEP of \cur_bit_reg[1]\ : label is "yes";
  attribute KEEP of \cur_bit_reg[2]\ : label is "yes";
  attribute KEEP of \cur_bit_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \s_ps2_transmitter[0]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_ps2_transmitter[0]_i_4\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \s_ps2_transmitter_reg[0]\ : label is "PS2_STATE_0_IDLE:000,PS2_STATE_1_INITIATE_COMMUNICATION:001,PS2_STATE_2_WAIT_FOR_CLOCK:010,PS2_STATE_3_TRANSMIT_DATA:011,PS2_STATE_4_TRANSMIT_STOP_BIT:100,PS2_STATE_5_RECEIVE_ACK_BIT:101,PS2_STATE_6_COMMAND_WAS_SENT:110,PS2_STATE_7_TRANSMISSION_ERROR:111";
  attribute KEEP of \s_ps2_transmitter_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \s_ps2_transmitter_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \s_ps2_transmitter_reg[1]\ : label is "PS2_STATE_0_IDLE:000,PS2_STATE_1_INITIATE_COMMUNICATION:001,PS2_STATE_2_WAIT_FOR_CLOCK:010,PS2_STATE_3_TRANSMIT_DATA:011,PS2_STATE_4_TRANSMIT_STOP_BIT:100,PS2_STATE_5_RECEIVE_ACK_BIT:101,PS2_STATE_6_COMMAND_WAS_SENT:110,PS2_STATE_7_TRANSMISSION_ERROR:111";
  attribute KEEP of \s_ps2_transmitter_reg[1]\ : label is "yes";
  attribute mark_debug_string of \s_ps2_transmitter_reg[1]\ : label is "true";
  attribute FSM_ENCODED_STATES of \s_ps2_transmitter_reg[2]\ : label is "PS2_STATE_0_IDLE:000,PS2_STATE_1_INITIATE_COMMUNICATION:001,PS2_STATE_2_WAIT_FOR_CLOCK:010,PS2_STATE_3_TRANSMIT_DATA:011,PS2_STATE_4_TRANSMIT_STOP_BIT:100,PS2_STATE_5_RECEIVE_ACK_BIT:101,PS2_STATE_6_COMMAND_WAS_SENT:110,PS2_STATE_7_TRANSMISSION_ERROR:111";
  attribute KEEP of \s_ps2_transmitter_reg[2]\ : label is "yes";
  attribute mark_debug_string of \s_ps2_transmitter_reg[2]\ : label is "true";
  attribute KEEP of \transfer_counter_reg[10]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[11]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[12]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[13]\ : label is "yes";
  attribute ADDER_THRESHOLD of \transfer_counter_reg[13]_i_2\ : label is 35;
  attribute KEEP of \transfer_counter_reg[14]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[15]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[16]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[17]\ : label is "yes";
  attribute ADDER_THRESHOLD of \transfer_counter_reg[17]_i_2\ : label is 35;
  attribute KEEP of \transfer_counter_reg[18]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[19]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[1]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[20]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[21]\ : label is "yes";
  attribute ADDER_THRESHOLD of \transfer_counter_reg[21]_i_2\ : label is 35;
  attribute KEEP of \transfer_counter_reg[22]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[23]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \transfer_counter_reg[24]_i_2\ : label is 35;
  attribute KEEP of \transfer_counter_reg[2]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[3]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[4]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[5]\ : label is "yes";
  attribute ADDER_THRESHOLD of \transfer_counter_reg[5]_i_2\ : label is 35;
  attribute KEEP of \transfer_counter_reg[6]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[7]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[8]\ : label is "yes";
  attribute KEEP of \transfer_counter_reg[9]\ : label is "yes";
  attribute ADDER_THRESHOLD of \transfer_counter_reg[9]_i_2\ : label is 35;
  attribute KEEP of \waiting_counter_reg[10]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[11]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[12]\ : label is "yes";
  attribute ADDER_THRESHOLD of \waiting_counter_reg[12]_i_1\ : label is 35;
  attribute KEEP of \waiting_counter_reg[13]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[14]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[15]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[16]\ : label is "yes";
  attribute ADDER_THRESHOLD of \waiting_counter_reg[16]_i_1\ : label is 35;
  attribute KEEP of \waiting_counter_reg[17]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[18]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[19]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[1]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[20]\ : label is "yes";
  attribute ADDER_THRESHOLD of \waiting_counter_reg[20]_i_1\ : label is 35;
  attribute KEEP of \waiting_counter_reg[21]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[22]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[23]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \waiting_counter_reg[24]_i_2\ : label is 35;
  attribute KEEP of \waiting_counter_reg[2]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[3]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[4]\ : label is "yes";
  attribute ADDER_THRESHOLD of \waiting_counter_reg[4]_i_1\ : label is 35;
  attribute KEEP of \waiting_counter_reg[5]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[6]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[7]\ : label is "yes";
  attribute KEEP of \waiting_counter_reg[8]\ : label is "yes";
  attribute ADDER_THRESHOLD of \waiting_counter_reg[8]_i_1\ : label is 35;
  attribute KEEP of \waiting_counter_reg[9]\ : label is "yes";
begin
  SR(0) <= \^sr\(0);
  byteenable_0_sp_1 <= byteenable_0_sn_1;
  error_communication_timed_out_reg_0 <= \^error_communication_timed_out_reg_0\;
\FSM_onehot_s_ps2_transceiver[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444F4444"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_transceiver_reg[1]\,
      I1 => Q(0),
      I2 => command_was_sent,
      I3 => \^error_communication_timed_out_reg_0\,
      I4 => Q(1),
      O => D(0)
    );
\FSM_onehot_s_ps2_transceiver[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888FFFF8888F888"
    )
        port map (
      I0 => Q(1),
      I1 => \FSM_onehot_s_ps2_transceiver[2]_i_2_n_0\,
      I2 => Q(2),
      I3 => \FSM_onehot_s_ps2_transceiver_reg[2]\,
      I4 => byteenable_0_sn_1,
      I5 => \FSM_onehot_s_ps2_transceiver_reg[2]_0\,
      O => D(1)
    );
\FSM_onehot_s_ps2_transceiver[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => command_was_sent,
      I1 => \^error_communication_timed_out_reg_0\,
      O => \FSM_onehot_s_ps2_transceiver[2]_i_2_n_0\
    );
PS2_CLK_t_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      O => PS2_CLK_t
    );
PS2_DAT_t_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAFABAFABAFABAF"
    )
        port map (
      I0 => PS2_DAT_t_INST_0_i_1_n_0,
      I1 => command_initiate_counter_reg(15),
      I2 => s_ps2_transmitter(1),
      I3 => s_ps2_transmitter(0),
      I4 => ps2_command(8),
      I5 => cur_bit_0(3),
      O => PS2_DAT_t
    );
PS2_DAT_t_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF080"
    )
        port map (
      I0 => cur_bit_0(1),
      I1 => PS2_DAT_t_INST_0_i_2_n_0,
      I2 => PS2_DAT_t_INST_0_i_3_n_0,
      I3 => PS2_DAT_t_INST_0_i_4_n_0,
      I4 => s_ps2_transmitter(2),
      I5 => PS2_DAT_t_INST_0_i_5_n_0,
      O => PS2_DAT_t_INST_0_i_1_n_0
    );
PS2_DAT_t_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ps2_command(7),
      I1 => ps2_command(3),
      I2 => cur_bit_0(0),
      I3 => ps2_command(6),
      I4 => cur_bit_0(2),
      I5 => ps2_command(2),
      O => PS2_DAT_t_INST_0_i_2_n_0
    );
PS2_DAT_t_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_ps2_transmitter(1),
      I1 => s_ps2_transmitter(0),
      I2 => cur_bit_0(3),
      O => PS2_DAT_t_INST_0_i_3_n_0
    );
PS2_DAT_t_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => cur_bit_0(1),
      I1 => cur_bit_0(2),
      I2 => ps2_command(4),
      I3 => cur_bit_0(0),
      I4 => ps2_command(5),
      O => PS2_DAT_t_INST_0_i_4_n_0
    );
PS2_DAT_t_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C808"
    )
        port map (
      I0 => ps2_command(0),
      I1 => PS2_DAT_t_INST_0_i_3_n_0,
      I2 => cur_bit_0(0),
      I3 => ps2_command(1),
      I4 => cur_bit_0(2),
      I5 => cur_bit_0(1),
      O => PS2_DAT_t_INST_0_i_5_n_0
    );
\command_initiate_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => s_ps2_transmitter(1),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(0),
      I3 => reset_n,
      O => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter[1]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => command_initiate_counter_reg(1),
      O => \command_initiate_counter[1]_i_10_n_0\
    );
\command_initiate_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \command_initiate_counter[1]_i_4_n_0\,
      I1 => \command_initiate_counter[1]_i_5_n_0\,
      I2 => \command_initiate_counter[1]_i_6_n_0\,
      I3 => \command_initiate_counter[1]_i_7_n_0\,
      I4 => \command_initiate_counter[1]_i_8_n_0\,
      I5 => \command_initiate_counter[1]_i_9_n_0\,
      O => command_initiate_counter0
    );
\command_initiate_counter[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => command_initiate_counter_reg(18),
      I1 => command_initiate_counter_reg(17),
      I2 => command_initiate_counter_reg(20),
      I3 => command_initiate_counter_reg(19),
      O => \command_initiate_counter[1]_i_4_n_0\
    );
\command_initiate_counter[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => command_initiate_counter_reg(22),
      I1 => command_initiate_counter_reg(21),
      I2 => command_initiate_counter_reg(24),
      I3 => command_initiate_counter_reg(23),
      O => \command_initiate_counter[1]_i_5_n_0\
    );
\command_initiate_counter[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => command_initiate_counter_reg(10),
      I1 => command_initiate_counter_reg(9),
      I2 => command_initiate_counter_reg(11),
      I3 => command_initiate_counter_reg(12),
      O => \command_initiate_counter[1]_i_6_n_0\
    );
\command_initiate_counter[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => command_initiate_counter_reg(14),
      I1 => command_initiate_counter_reg(13),
      I2 => command_initiate_counter_reg(16),
      I3 => command_initiate_counter_reg(15),
      O => \command_initiate_counter[1]_i_7_n_0\
    );
\command_initiate_counter[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => command_initiate_counter_reg(6),
      I1 => command_initiate_counter_reg(5),
      I2 => command_initiate_counter_reg(7),
      I3 => command_initiate_counter_reg(8),
      O => \command_initiate_counter[1]_i_8_n_0\
    );
\command_initiate_counter[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => command_initiate_counter_reg(2),
      I1 => command_initiate_counter_reg(1),
      I2 => command_initiate_counter_reg(3),
      I3 => command_initiate_counter_reg(4),
      O => \command_initiate_counter[1]_i_9_n_0\
    );
\command_initiate_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[9]_i_1_n_6\,
      Q => command_initiate_counter_reg(10),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[9]_i_1_n_5\,
      Q => command_initiate_counter_reg(11),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[9]_i_1_n_4\,
      Q => command_initiate_counter_reg(12),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[13]_i_1_n_7\,
      Q => command_initiate_counter_reg(13),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_initiate_counter_reg[9]_i_1_n_0\,
      CO(3) => \command_initiate_counter_reg[13]_i_1_n_0\,
      CO(2) => \command_initiate_counter_reg[13]_i_1_n_1\,
      CO(1) => \command_initiate_counter_reg[13]_i_1_n_2\,
      CO(0) => \command_initiate_counter_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \command_initiate_counter_reg[13]_i_1_n_4\,
      O(2) => \command_initiate_counter_reg[13]_i_1_n_5\,
      O(1) => \command_initiate_counter_reg[13]_i_1_n_6\,
      O(0) => \command_initiate_counter_reg[13]_i_1_n_7\,
      S(3 downto 0) => command_initiate_counter_reg(16 downto 13)
    );
\command_initiate_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[13]_i_1_n_6\,
      Q => command_initiate_counter_reg(14),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[13]_i_1_n_5\,
      Q => command_initiate_counter_reg(15),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[13]_i_1_n_4\,
      Q => command_initiate_counter_reg(16),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[17]_i_1_n_7\,
      Q => command_initiate_counter_reg(17),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_initiate_counter_reg[13]_i_1_n_0\,
      CO(3) => \command_initiate_counter_reg[17]_i_1_n_0\,
      CO(2) => \command_initiate_counter_reg[17]_i_1_n_1\,
      CO(1) => \command_initiate_counter_reg[17]_i_1_n_2\,
      CO(0) => \command_initiate_counter_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \command_initiate_counter_reg[17]_i_1_n_4\,
      O(2) => \command_initiate_counter_reg[17]_i_1_n_5\,
      O(1) => \command_initiate_counter_reg[17]_i_1_n_6\,
      O(0) => \command_initiate_counter_reg[17]_i_1_n_7\,
      S(3 downto 0) => command_initiate_counter_reg(20 downto 17)
    );
\command_initiate_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[17]_i_1_n_6\,
      Q => command_initiate_counter_reg(18),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[17]_i_1_n_5\,
      Q => command_initiate_counter_reg(19),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[1]_i_3_n_7\,
      Q => command_initiate_counter_reg(1),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \command_initiate_counter_reg[1]_i_3_n_0\,
      CO(2) => \command_initiate_counter_reg[1]_i_3_n_1\,
      CO(1) => \command_initiate_counter_reg[1]_i_3_n_2\,
      CO(0) => \command_initiate_counter_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \command_initiate_counter_reg[1]_i_3_n_4\,
      O(2) => \command_initiate_counter_reg[1]_i_3_n_5\,
      O(1) => \command_initiate_counter_reg[1]_i_3_n_6\,
      O(0) => \command_initiate_counter_reg[1]_i_3_n_7\,
      S(3 downto 1) => command_initiate_counter_reg(4 downto 2),
      S(0) => \command_initiate_counter[1]_i_10_n_0\
    );
\command_initiate_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[17]_i_1_n_4\,
      Q => command_initiate_counter_reg(20),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[21]_i_1_n_7\,
      Q => command_initiate_counter_reg(21),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_initiate_counter_reg[17]_i_1_n_0\,
      CO(3) => \NLW_command_initiate_counter_reg[21]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \command_initiate_counter_reg[21]_i_1_n_1\,
      CO(1) => \command_initiate_counter_reg[21]_i_1_n_2\,
      CO(0) => \command_initiate_counter_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \command_initiate_counter_reg[21]_i_1_n_4\,
      O(2) => \command_initiate_counter_reg[21]_i_1_n_5\,
      O(1) => \command_initiate_counter_reg[21]_i_1_n_6\,
      O(0) => \command_initiate_counter_reg[21]_i_1_n_7\,
      S(3 downto 0) => command_initiate_counter_reg(24 downto 21)
    );
\command_initiate_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[21]_i_1_n_6\,
      Q => command_initiate_counter_reg(22),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[21]_i_1_n_5\,
      Q => command_initiate_counter_reg(23),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[21]_i_1_n_4\,
      Q => command_initiate_counter_reg(24),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[1]_i_3_n_6\,
      Q => command_initiate_counter_reg(2),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[1]_i_3_n_5\,
      Q => command_initiate_counter_reg(3),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[1]_i_3_n_4\,
      Q => command_initiate_counter_reg(4),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[5]_i_1_n_7\,
      Q => command_initiate_counter_reg(5),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_initiate_counter_reg[1]_i_3_n_0\,
      CO(3) => \command_initiate_counter_reg[5]_i_1_n_0\,
      CO(2) => \command_initiate_counter_reg[5]_i_1_n_1\,
      CO(1) => \command_initiate_counter_reg[5]_i_1_n_2\,
      CO(0) => \command_initiate_counter_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \command_initiate_counter_reg[5]_i_1_n_4\,
      O(2) => \command_initiate_counter_reg[5]_i_1_n_5\,
      O(1) => \command_initiate_counter_reg[5]_i_1_n_6\,
      O(0) => \command_initiate_counter_reg[5]_i_1_n_7\,
      S(3 downto 0) => command_initiate_counter_reg(8 downto 5)
    );
\command_initiate_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[5]_i_1_n_6\,
      Q => command_initiate_counter_reg(6),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[5]_i_1_n_5\,
      Q => command_initiate_counter_reg(7),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[5]_i_1_n_4\,
      Q => command_initiate_counter_reg(8),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => command_initiate_counter0,
      D => \command_initiate_counter_reg[9]_i_1_n_7\,
      Q => command_initiate_counter_reg(9),
      R => \command_initiate_counter[1]_i_1_n_0\
    );
\command_initiate_counter_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_initiate_counter_reg[5]_i_1_n_0\,
      CO(3) => \command_initiate_counter_reg[9]_i_1_n_0\,
      CO(2) => \command_initiate_counter_reg[9]_i_1_n_1\,
      CO(1) => \command_initiate_counter_reg[9]_i_1_n_2\,
      CO(0) => \command_initiate_counter_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \command_initiate_counter_reg[9]_i_1_n_4\,
      O(2) => \command_initiate_counter_reg[9]_i_1_n_5\,
      O(1) => \command_initiate_counter_reg[9]_i_1_n_6\,
      O(0) => \command_initiate_counter_reg[9]_i_1_n_7\,
      S(3 downto 0) => command_initiate_counter_reg(12 downto 9)
    );
command_was_sent_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(1),
      I2 => s_ps2_transmitter(2),
      I3 => byteenable_0_sn_1,
      I4 => command_was_sent,
      O => command_was_sent_i_1_n_0
    );
command_was_sent_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => command_was_sent_i_1_n_0,
      Q => command_was_sent,
      R => \^sr\(0)
    );
\control_register[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^sr\(0)
    );
\cur_bit[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => cur_bit_0(0),
      I1 => \out\,
      I2 => last_ps2_clk,
      O => cur_bit(0)
    );
\cur_bit[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => cur_bit_0(0),
      I1 => \s_ps2_transmitter[1]_i_4_n_0\,
      I2 => cur_bit_0(1),
      O => cur_bit(1)
    );
\cur_bit[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cur_bit1__0\,
      I1 => cur_bit_0(0),
      I2 => cur_bit_0(1),
      I3 => cur_bit_0(2),
      O => cur_bit(2)
    );
\cur_bit[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => s_ps2_transmitter(1),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(0),
      I3 => reset_n,
      O => \cur_bit[3]_i_1_n_0\
    );
\cur_bit[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cur_bit1__0\,
      I1 => cur_bit_0(2),
      I2 => cur_bit_0(1),
      I3 => cur_bit_0(0),
      I4 => cur_bit_0(3),
      O => cur_bit(3)
    );
\cur_bit[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => last_ps2_clk,
      I1 => \out\,
      I2 => s_ps2_transmitter(1),
      I3 => s_ps2_transmitter(2),
      I4 => s_ps2_transmitter(0),
      O => \cur_bit1__0\
    );
\cur_bit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cur_bit(0),
      Q => cur_bit_0(0),
      R => \cur_bit[3]_i_1_n_0\
    );
\cur_bit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cur_bit(1),
      Q => cur_bit_0(1),
      R => \cur_bit[3]_i_1_n_0\
    );
\cur_bit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cur_bit(2),
      Q => cur_bit_0(2),
      R => \cur_bit[3]_i_1_n_0\
    );
\cur_bit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cur_bit(3),
      Q => cur_bit_0(3),
      R => \cur_bit[3]_i_1_n_0\
    );
error_communication_timed_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => s_ps2_transmitter(2),
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(1),
      I3 => byteenable_0_sn_1,
      I4 => \^error_communication_timed_out_reg_0\,
      O => error_communication_timed_out_i_1_n_0
    );
error_communication_timed_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => error_communication_timed_out_i_1_n_0,
      Q => \^error_communication_timed_out_reg_0\,
      R => \^sr\(0)
    );
\ps2_command[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_ps2_transmitter(2),
      I1 => s_ps2_transmitter(1),
      I2 => s_ps2_transmitter(0),
      O => \ps2_command[8]_i_1_n_0\
    );
\ps2_command[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => writedata(5),
      I1 => writedata(4),
      I2 => writedata(7),
      I3 => writedata(6),
      I4 => \ps2_command[8]_i_3_n_0\,
      O => \ps2_command[8]_i_2_n_0\
    );
\ps2_command[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => writedata(2),
      I1 => writedata(3),
      I2 => writedata(0),
      I3 => writedata(1),
      O => \ps2_command[8]_i_3_n_0\
    );
\ps2_command_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(0),
      Q => ps2_command(0),
      R => \^sr\(0)
    );
\ps2_command_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(1),
      Q => ps2_command(1),
      R => \^sr\(0)
    );
\ps2_command_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(2),
      Q => ps2_command(2),
      R => \^sr\(0)
    );
\ps2_command_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(3),
      Q => ps2_command(3),
      R => \^sr\(0)
    );
\ps2_command_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(4),
      Q => ps2_command(4),
      R => \^sr\(0)
    );
\ps2_command_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(5),
      Q => ps2_command(5),
      R => \^sr\(0)
    );
\ps2_command_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(6),
      Q => ps2_command(6),
      R => \^sr\(0)
    );
\ps2_command_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => writedata(7),
      Q => ps2_command(7),
      R => \^sr\(0)
    );
\ps2_command_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ps2_command[8]_i_1_n_0\,
      D => \ps2_command[8]_i_2_n_0\,
      Q => ps2_command(8),
      R => \^sr\(0)
    );
\s_ps2_transmitter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEFEE"
    )
        port map (
      I0 => \s_ps2_transmitter[0]_i_2_n_0\,
      I1 => \s_ps2_transmitter[0]_i_3_n_0\,
      I2 => transfer_counter1,
      I3 => \s_ps2_transmitter[0]_i_4_n_0\,
      I4 => s_ps2_transmitter(0),
      I5 => \s_ps2_transmitter[0]_i_5_n_0\,
      O => ns_ps2_transmitter(0)
    );
\s_ps2_transmitter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10100010"
    )
        port map (
      I0 => \s_ps2_transmitter[2]_i_10_n_0\,
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => last_ps2_clk,
      I4 => \out\,
      I5 => \s_ps2_transmitter[0]_i_6_n_0\,
      O => \s_ps2_transmitter[0]_i_2_n_0\
    );
\s_ps2_transmitter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000888"
    )
        port map (
      I0 => command_initiate_counter0,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(1),
      I3 => last_ps2_clk,
      I4 => s_ps2_transmitter(2),
      O => \s_ps2_transmitter[0]_i_3_n_0\
    );
\s_ps2_transmitter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_ps2_transmitter(2),
      I1 => s_ps2_transmitter(1),
      O => \s_ps2_transmitter[0]_i_4_n_0\
    );
\s_ps2_transmitter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C414C0140414C01"
    )
        port map (
      I0 => byteenable_0_sn_1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => last_ps2_clk,
      I5 => \out\,
      O => \s_ps2_transmitter[0]_i_5_n_0\
    );
\s_ps2_transmitter[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A00CF0C0000"
    )
        port map (
      I0 => \s_ps2_transmitter[1]_i_5_n_0\,
      I1 => s_ps2_transmitter(0),
      I2 => \out\,
      I3 => last_ps2_clk,
      I4 => s_ps2_transmitter(2),
      I5 => s_ps2_transmitter(1),
      O => \s_ps2_transmitter[0]_i_6_n_0\
    );
\s_ps2_transmitter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFEEEFEEEEEE"
    )
        port map (
      I0 => \s_ps2_transmitter[1]_i_2_n_0\,
      I1 => \s_ps2_transmitter[1]_i_3_n_0\,
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => \s_ps2_transmitter[1]_i_4_n_0\,
      I5 => \s_ps2_transmitter[1]_i_5_n_0\,
      O => ns_ps2_transmitter(1)
    );
\s_ps2_transmitter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220F00000000"
    )
        port map (
      I0 => \out\,
      I1 => last_ps2_clk,
      I2 => command_initiate_counter0,
      I3 => s_ps2_transmitter(2),
      I4 => s_ps2_transmitter(1),
      I5 => s_ps2_transmitter(0),
      O => \s_ps2_transmitter[1]_i_2_n_0\
    );
\s_ps2_transmitter[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF545400000000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => \s_ps2_transmitter[1]_i_4_n_0\,
      I3 => byteenable_0_sn_1,
      I4 => s_ps2_transmitter(1),
      I5 => s_ps2_transmitter(2),
      O => \s_ps2_transmitter[1]_i_3_n_0\
    );
\s_ps2_transmitter[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out\,
      I1 => last_ps2_clk,
      O => \s_ps2_transmitter[1]_i_4_n_0\
    );
\s_ps2_transmitter[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => cur_bit_0(3),
      I1 => s_ps2_transmitter(0),
      I2 => cur_bit_0(0),
      I3 => cur_bit_0(1),
      I4 => cur_bit_0(2),
      O => \s_ps2_transmitter[1]_i_5_n_0\
    );
\s_ps2_transmitter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF3038F0F8"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(1),
      I2 => s_ps2_transmitter(2),
      I3 => transfer_counter1,
      I4 => byteenable_0_sn_1,
      I5 => \s_ps2_transmitter[2]_i_3_n_0\,
      O => ns_ps2_transmitter(2)
    );
\s_ps2_transmitter[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_ps2_transmitter[2]_i_11_n_0\,
      I1 => \s_ps2_transmitter[2]_i_12_n_0\,
      I2 => \s_ps2_transmitter[2]_i_13_n_0\,
      I3 => \s_ps2_transmitter[2]_i_14_n_0\,
      I4 => \s_ps2_transmitter[2]_i_15_n_0\,
      I5 => \s_ps2_transmitter[2]_i_16_n_0\,
      O => \s_ps2_transmitter[2]_i_10_n_0\
    );
\s_ps2_transmitter[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => waiting_counter_1(18),
      I1 => waiting_counter_1(17),
      I2 => waiting_counter_1(19),
      I3 => waiting_counter_1(20),
      O => \s_ps2_transmitter[2]_i_11_n_0\
    );
\s_ps2_transmitter[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => waiting_counter_1(21),
      I1 => waiting_counter_1(22),
      I2 => waiting_counter_1(24),
      I3 => waiting_counter_1(23),
      O => \s_ps2_transmitter[2]_i_12_n_0\
    );
\s_ps2_transmitter[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => waiting_counter_1(10),
      I1 => waiting_counter_1(9),
      I2 => waiting_counter_1(12),
      I3 => waiting_counter_1(11),
      O => \s_ps2_transmitter[2]_i_13_n_0\
    );
\s_ps2_transmitter[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => waiting_counter_1(14),
      I1 => waiting_counter_1(13),
      I2 => waiting_counter_1(16),
      I3 => waiting_counter_1(15),
      O => \s_ps2_transmitter[2]_i_14_n_0\
    );
\s_ps2_transmitter[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => waiting_counter_1(6),
      I1 => waiting_counter_1(5),
      I2 => waiting_counter_1(7),
      I3 => waiting_counter_1(8),
      O => \s_ps2_transmitter[2]_i_15_n_0\
    );
\s_ps2_transmitter[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => waiting_counter_1(2),
      I1 => waiting_counter_1(1),
      I2 => waiting_counter_1(4),
      I3 => waiting_counter_1(3),
      O => \s_ps2_transmitter[2]_i_16_n_0\
    );
\s_ps2_transmitter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_ps2_transmitter[2]_i_4_n_0\,
      I1 => \s_ps2_transmitter[2]_i_5_n_0\,
      I2 => \s_ps2_transmitter[2]_i_6_n_0\,
      I3 => \s_ps2_transmitter[2]_i_7_n_0\,
      I4 => \s_ps2_transmitter[2]_i_8_n_0\,
      I5 => \s_ps2_transmitter[2]_i_9_n_0\,
      O => transfer_counter1
    );
\s_ps2_transmitter[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000050000003500"
    )
        port map (
      I0 => \s_ps2_transmitter[1]_i_5_n_0\,
      I1 => \s_ps2_transmitter[2]_i_10_n_0\,
      I2 => \s_ps2_transmitter[1]_i_4_n_0\,
      I3 => s_ps2_transmitter(1),
      I4 => s_ps2_transmitter(2),
      I5 => s_ps2_transmitter(0),
      O => \s_ps2_transmitter[2]_i_3_n_0\
    );
\s_ps2_transmitter[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => transfer_counter(18),
      I1 => transfer_counter(17),
      I2 => transfer_counter(20),
      I3 => transfer_counter(19),
      O => \s_ps2_transmitter[2]_i_4_n_0\
    );
\s_ps2_transmitter[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_counter(22),
      I1 => transfer_counter(21),
      I2 => transfer_counter(24),
      I3 => transfer_counter(23),
      O => \s_ps2_transmitter[2]_i_5_n_0\
    );
\s_ps2_transmitter[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => transfer_counter(9),
      I1 => transfer_counter(10),
      I2 => transfer_counter(12),
      I3 => transfer_counter(11),
      O => \s_ps2_transmitter[2]_i_6_n_0\
    );
\s_ps2_transmitter[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_counter(14),
      I1 => transfer_counter(13),
      I2 => transfer_counter(16),
      I3 => transfer_counter(15),
      O => \s_ps2_transmitter[2]_i_7_n_0\
    );
\s_ps2_transmitter[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => transfer_counter(6),
      I1 => transfer_counter(5),
      I2 => transfer_counter(7),
      I3 => transfer_counter(8),
      O => \s_ps2_transmitter[2]_i_8_n_0\
    );
\s_ps2_transmitter[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_counter(2),
      I1 => transfer_counter(1),
      I2 => transfer_counter(4),
      I3 => transfer_counter(3),
      O => \s_ps2_transmitter[2]_i_9_n_0\
    );
\s_ps2_transmitter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ns_ps2_transmitter(0),
      Q => s_ps2_transmitter(0),
      R => \^sr\(0)
    );
\s_ps2_transmitter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ns_ps2_transmitter(1),
      Q => s_ps2_transmitter(1),
      R => \^sr\(0)
    );
\s_ps2_transmitter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ns_ps2_transmitter(2),
      Q => s_ps2_transmitter(2),
      R => \^sr\(0)
    );
\transfer_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(9),
      O => \transfer_counter[10]_i_1_n_0\
    );
\transfer_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C2C002C"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter1,
      I4 => transfer_counter0(10),
      O => \transfer_counter[11]_i_1_n_0\
    );
\transfer_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C2C002C"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter1,
      I4 => transfer_counter0(11),
      O => \transfer_counter[12]_i_1_n_0\
    );
\transfer_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(12),
      O => \transfer_counter[13]_i_1_n_0\
    );
\transfer_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(13),
      O => \transfer_counter[14]_i_1_n_0\
    );
\transfer_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(14),
      O => \transfer_counter[15]_i_1_n_0\
    );
\transfer_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(15),
      O => \transfer_counter[16]_i_1_n_0\
    );
\transfer_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C2C002C"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter1,
      I4 => transfer_counter0(16),
      O => \transfer_counter[17]_i_1_n_0\
    );
\transfer_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C2C002C"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter1,
      I4 => transfer_counter0(17),
      O => \transfer_counter[18]_i_1_n_0\
    );
\transfer_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(18),
      O => \transfer_counter[19]_i_1_n_0\
    );
\transfer_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002C2C00"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter(1),
      I4 => transfer_counter1,
      O => \transfer_counter[1]_i_1_n_0\
    );
\transfer_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(19),
      O => \transfer_counter[20]_i_1_n_0\
    );
\transfer_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(20),
      O => \transfer_counter[21]_i_1_n_0\
    );
\transfer_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(21),
      O => \transfer_counter[22]_i_1_n_0\
    );
\transfer_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(22),
      O => \transfer_counter[23]_i_1_n_0\
    );
\transfer_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(23),
      O => \transfer_counter[24]_i_1_n_0\
    );
\transfer_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(1),
      O => \transfer_counter[2]_i_1_n_0\
    );
\transfer_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(2),
      O => \transfer_counter[3]_i_1_n_0\
    );
\transfer_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(3),
      O => \transfer_counter[4]_i_1_n_0\
    );
\transfer_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(4),
      O => \transfer_counter[5]_i_1_n_0\
    );
\transfer_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(5),
      O => \transfer_counter[6]_i_1_n_0\
    );
\transfer_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C2C002C"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter1,
      I4 => transfer_counter0(6),
      O => \transfer_counter[7]_i_1_n_0\
    );
\transfer_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00000"
    )
        port map (
      I0 => transfer_counter1,
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(2),
      I3 => s_ps2_transmitter(1),
      I4 => transfer_counter0(7),
      O => \transfer_counter[8]_i_1_n_0\
    );
\transfer_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C2C002C"
    )
        port map (
      I0 => s_ps2_transmitter(0),
      I1 => s_ps2_transmitter(2),
      I2 => s_ps2_transmitter(1),
      I3 => transfer_counter1,
      I4 => transfer_counter0(8),
      O => \transfer_counter[9]_i_1_n_0\
    );
\transfer_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[10]_i_1_n_0\,
      Q => transfer_counter(10),
      R => \^sr\(0)
    );
\transfer_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[11]_i_1_n_0\,
      Q => transfer_counter(11),
      R => \^sr\(0)
    );
\transfer_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[12]_i_1_n_0\,
      Q => transfer_counter(12),
      R => \^sr\(0)
    );
\transfer_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[13]_i_1_n_0\,
      Q => transfer_counter(13),
      R => \^sr\(0)
    );
\transfer_counter_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \transfer_counter_reg[9]_i_2_n_0\,
      CO(3) => \transfer_counter_reg[13]_i_2_n_0\,
      CO(2) => \transfer_counter_reg[13]_i_2_n_1\,
      CO(1) => \transfer_counter_reg[13]_i_2_n_2\,
      CO(0) => \transfer_counter_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => transfer_counter0(12 downto 9),
      S(3 downto 0) => transfer_counter(13 downto 10)
    );
\transfer_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[14]_i_1_n_0\,
      Q => transfer_counter(14),
      R => \^sr\(0)
    );
\transfer_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[15]_i_1_n_0\,
      Q => transfer_counter(15),
      R => \^sr\(0)
    );
\transfer_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[16]_i_1_n_0\,
      Q => transfer_counter(16),
      R => \^sr\(0)
    );
\transfer_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[17]_i_1_n_0\,
      Q => transfer_counter(17),
      R => \^sr\(0)
    );
\transfer_counter_reg[17]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \transfer_counter_reg[13]_i_2_n_0\,
      CO(3) => \transfer_counter_reg[17]_i_2_n_0\,
      CO(2) => \transfer_counter_reg[17]_i_2_n_1\,
      CO(1) => \transfer_counter_reg[17]_i_2_n_2\,
      CO(0) => \transfer_counter_reg[17]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => transfer_counter0(16 downto 13),
      S(3 downto 0) => transfer_counter(17 downto 14)
    );
\transfer_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[18]_i_1_n_0\,
      Q => transfer_counter(18),
      R => \^sr\(0)
    );
\transfer_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[19]_i_1_n_0\,
      Q => transfer_counter(19),
      R => \^sr\(0)
    );
\transfer_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[1]_i_1_n_0\,
      Q => transfer_counter(1),
      R => \^sr\(0)
    );
\transfer_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[20]_i_1_n_0\,
      Q => transfer_counter(20),
      R => \^sr\(0)
    );
\transfer_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[21]_i_1_n_0\,
      Q => transfer_counter(21),
      R => \^sr\(0)
    );
\transfer_counter_reg[21]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \transfer_counter_reg[17]_i_2_n_0\,
      CO(3) => \transfer_counter_reg[21]_i_2_n_0\,
      CO(2) => \transfer_counter_reg[21]_i_2_n_1\,
      CO(1) => \transfer_counter_reg[21]_i_2_n_2\,
      CO(0) => \transfer_counter_reg[21]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => transfer_counter0(20 downto 17),
      S(3 downto 0) => transfer_counter(21 downto 18)
    );
\transfer_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[22]_i_1_n_0\,
      Q => transfer_counter(22),
      R => \^sr\(0)
    );
\transfer_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[23]_i_1_n_0\,
      Q => transfer_counter(23),
      R => \^sr\(0)
    );
\transfer_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[24]_i_1_n_0\,
      Q => transfer_counter(24),
      R => \^sr\(0)
    );
\transfer_counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \transfer_counter_reg[21]_i_2_n_0\,
      CO(3 downto 2) => \NLW_transfer_counter_reg[24]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \transfer_counter_reg[24]_i_2_n_2\,
      CO(0) => \transfer_counter_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_transfer_counter_reg[24]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => transfer_counter0(23 downto 21),
      S(3) => '0',
      S(2 downto 0) => transfer_counter(24 downto 22)
    );
\transfer_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[2]_i_1_n_0\,
      Q => transfer_counter(2),
      R => \^sr\(0)
    );
\transfer_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[3]_i_1_n_0\,
      Q => transfer_counter(3),
      R => \^sr\(0)
    );
\transfer_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[4]_i_1_n_0\,
      Q => transfer_counter(4),
      R => \^sr\(0)
    );
\transfer_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[5]_i_1_n_0\,
      Q => transfer_counter(5),
      R => \^sr\(0)
    );
\transfer_counter_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \transfer_counter_reg[5]_i_2_n_0\,
      CO(2) => \transfer_counter_reg[5]_i_2_n_1\,
      CO(1) => \transfer_counter_reg[5]_i_2_n_2\,
      CO(0) => \transfer_counter_reg[5]_i_2_n_3\,
      CYINIT => transfer_counter(1),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => transfer_counter0(4 downto 1),
      S(3 downto 0) => transfer_counter(5 downto 2)
    );
\transfer_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[6]_i_1_n_0\,
      Q => transfer_counter(6),
      R => \^sr\(0)
    );
\transfer_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[7]_i_1_n_0\,
      Q => transfer_counter(7),
      R => \^sr\(0)
    );
\transfer_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[8]_i_1_n_0\,
      Q => transfer_counter(8),
      R => \^sr\(0)
    );
\transfer_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \transfer_counter[9]_i_1_n_0\,
      Q => transfer_counter(9),
      R => \^sr\(0)
    );
\transfer_counter_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \transfer_counter_reg[5]_i_2_n_0\,
      CO(3) => \transfer_counter_reg[9]_i_2_n_0\,
      CO(2) => \transfer_counter_reg[9]_i_2_n_1\,
      CO(1) => \transfer_counter_reg[9]_i_2_n_2\,
      CO(0) => \transfer_counter_reg[9]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => transfer_counter0(8 downto 5),
      S(3 downto 0) => transfer_counter(9 downto 6)
    );
\waiting_counter[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => s_ps2_transmitter(2),
      I1 => s_ps2_transmitter(0),
      I2 => s_ps2_transmitter(1),
      I3 => reset_n,
      O => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA6AAAA"
    )
        port map (
      I0 => waiting_counter_1(1),
      I1 => s_ps2_transmitter(1),
      I2 => s_ps2_transmitter(0),
      I3 => s_ps2_transmitter(2),
      I4 => \s_ps2_transmitter[2]_i_10_n_0\,
      O => \waiting_counter[4]_i_2_n_0\
    );
\waiting_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(10),
      Q => waiting_counter_1(10),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(11),
      Q => waiting_counter_1(11),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(12),
      Q => waiting_counter_1(12),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waiting_counter_reg[8]_i_1_n_0\,
      CO(3) => \waiting_counter_reg[12]_i_1_n_0\,
      CO(2) => \waiting_counter_reg[12]_i_1_n_1\,
      CO(1) => \waiting_counter_reg[12]_i_1_n_2\,
      CO(0) => \waiting_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => waiting_counter(12 downto 9),
      S(3 downto 0) => waiting_counter_1(12 downto 9)
    );
\waiting_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(13),
      Q => waiting_counter_1(13),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(14),
      Q => waiting_counter_1(14),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(15),
      Q => waiting_counter_1(15),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(16),
      Q => waiting_counter_1(16),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waiting_counter_reg[12]_i_1_n_0\,
      CO(3) => \waiting_counter_reg[16]_i_1_n_0\,
      CO(2) => \waiting_counter_reg[16]_i_1_n_1\,
      CO(1) => \waiting_counter_reg[16]_i_1_n_2\,
      CO(0) => \waiting_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => waiting_counter(16 downto 13),
      S(3 downto 0) => waiting_counter_1(16 downto 13)
    );
\waiting_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(17),
      Q => waiting_counter_1(17),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(18),
      Q => waiting_counter_1(18),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(19),
      Q => waiting_counter_1(19),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(1),
      Q => waiting_counter_1(1),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(20),
      Q => waiting_counter_1(20),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waiting_counter_reg[16]_i_1_n_0\,
      CO(3) => \waiting_counter_reg[20]_i_1_n_0\,
      CO(2) => \waiting_counter_reg[20]_i_1_n_1\,
      CO(1) => \waiting_counter_reg[20]_i_1_n_2\,
      CO(0) => \waiting_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => waiting_counter(20 downto 17),
      S(3 downto 0) => waiting_counter_1(20 downto 17)
    );
\waiting_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(21),
      Q => waiting_counter_1(21),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(22),
      Q => waiting_counter_1(22),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(23),
      Q => waiting_counter_1(23),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(24),
      Q => waiting_counter_1(24),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \waiting_counter_reg[20]_i_1_n_0\,
      CO(3) => \NLW_waiting_counter_reg[24]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \waiting_counter_reg[24]_i_2_n_1\,
      CO(1) => \waiting_counter_reg[24]_i_2_n_2\,
      CO(0) => \waiting_counter_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => waiting_counter(24 downto 21),
      S(3 downto 0) => waiting_counter_1(24 downto 21)
    );
\waiting_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(2),
      Q => waiting_counter_1(2),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(3),
      Q => waiting_counter_1(3),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(4),
      Q => waiting_counter_1(4),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \waiting_counter_reg[4]_i_1_n_0\,
      CO(2) => \waiting_counter_reg[4]_i_1_n_1\,
      CO(1) => \waiting_counter_reg[4]_i_1_n_2\,
      CO(0) => \waiting_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => waiting_counter_1(1),
      O(3 downto 0) => waiting_counter(4 downto 1),
      S(3 downto 1) => waiting_counter_1(4 downto 2),
      S(0) => \waiting_counter[4]_i_2_n_0\
    );
\waiting_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(5),
      Q => waiting_counter_1(5),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(6),
      Q => waiting_counter_1(6),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(7),
      Q => waiting_counter_1(7),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(8),
      Q => waiting_counter_1(8),
      R => \waiting_counter[24]_i_1_n_0\
    );
\waiting_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waiting_counter_reg[4]_i_1_n_0\,
      CO(3) => \waiting_counter_reg[8]_i_1_n_0\,
      CO(2) => \waiting_counter_reg[8]_i_1_n_1\,
      CO(1) => \waiting_counter_reg[8]_i_1_n_2\,
      CO(0) => \waiting_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => waiting_counter(8 downto 5),
      S(3 downto 0) => waiting_counter_1(8 downto 5)
    );
\waiting_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_counter(9),
      Q => waiting_counter_1(9),
      R => \waiting_counter[24]_i_1_n_0\
    );
waitrequest_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^error_communication_timed_out_reg_0\,
      I1 => command_was_sent,
      I2 => byteenable_0_sn_1,
      O => waitrequest_n
    );
waitrequest_n_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => byteenable(0),
      I1 => penable,
      I2 => psel,
      I3 => write,
      I4 => paddr(0),
      O => byteenable_0_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity altera_up_ps2_data_in is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    wait_for_incoming_data : in STD_LOGIC;
    start_receiving_data : in STD_LOGIC;
    ps2_clk_posedge : in STD_LOGIC;
    ps2_clk_negedge : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    received_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    received_data_en : out STD_LOGIC
  );
  attribute PS2_STATE_0_IDLE : string;
  attribute PS2_STATE_0_IDLE of altera_up_ps2_data_in : entity is "3'b000";
  attribute PS2_STATE_1_WAIT_FOR_DATA : string;
  attribute PS2_STATE_1_WAIT_FOR_DATA of altera_up_ps2_data_in : entity is "3'b001";
  attribute PS2_STATE_2_DATA_IN : string;
  attribute PS2_STATE_2_DATA_IN of altera_up_ps2_data_in : entity is "3'b010";
  attribute PS2_STATE_3_PARITY_IN : string;
  attribute PS2_STATE_3_PARITY_IN of altera_up_ps2_data_in : entity is "3'b011";
  attribute PS2_STATE_4_STOP_IN : string;
  attribute PS2_STATE_4_STOP_IN of altera_up_ps2_data_in : entity is "3'b100";
end altera_up_ps2_data_in;

architecture STRUCTURE of altera_up_ps2_data_in is
  signal \FSM_onehot_s_ps2_receiver[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\ : STD_LOGIC;
  signal data_count0 : STD_LOGIC;
  signal \data_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[3]_i_1_n_0\ : STD_LOGIC;
  signal data_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \data_shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal ns_ps2_receiver13_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^received_data_en\ : STD_LOGIC;
  signal received_data_en0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_receiver[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_receiver[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_receiver[4]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_receiver_reg[0]\ : label is "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_receiver_reg[1]\ : label is "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_receiver_reg[2]\ : label is "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_receiver_reg[3]\ : label is "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_receiver_reg[4]\ : label is "PS2_STATE_1_WAIT_FOR_DATA:00010,PS2_STATE_2_DATA_IN:00100,PS2_STATE_3_PARITY_IN:01000,PS2_STATE_4_STOP_IN:10000,PS2_STATE_0_IDLE:00001";
  attribute SOFT_HLUTNM of \data_count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_count[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_count[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of received_data_en_i_1 : label is "soft_lutpair8";
begin
  received_data_en <= \^received_data_en\;
\FSM_onehot_s_ps2_receiver[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B00"
    )
        port map (
      I0 => ps2_data,
      I1 => ps2_clk_posedge,
      I2 => wait_for_incoming_data,
      I3 => \FSM_onehot_s_ps2_receiver_reg_n_0_[1]\,
      I4 => \FSM_onehot_s_ps2_receiver[0]_i_2_n_0\,
      O => \FSM_onehot_s_ps2_receiver[0]_i_1_n_0\
    );
\FSM_onehot_s_ps2_receiver[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF88FF8F88888888"
    )
        port map (
      I0 => ps2_clk_posedge,
      I1 => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      I2 => wait_for_incoming_data,
      I3 => \^received_data_en\,
      I4 => start_receiving_data,
      I5 => \FSM_onehot_s_ps2_receiver_reg_n_0_[0]\,
      O => \FSM_onehot_s_ps2_receiver[0]_i_2_n_0\
    );
\FSM_onehot_s_ps2_receiver[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040F0F040404040"
    )
        port map (
      I0 => \^received_data_en\,
      I1 => \FSM_onehot_s_ps2_receiver_reg_n_0_[0]\,
      I2 => wait_for_incoming_data,
      I3 => ps2_data,
      I4 => ps2_clk_posedge,
      I5 => \FSM_onehot_s_ps2_receiver_reg_n_0_[1]\,
      O => \FSM_onehot_s_ps2_receiver[1]_i_1_n_0\
    );
\FSM_onehot_s_ps2_receiver[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20FF20FFFFFF20"
    )
        port map (
      I0 => ps2_clk_posedge,
      I1 => ps2_data,
      I2 => \FSM_onehot_s_ps2_receiver_reg_n_0_[1]\,
      I3 => \FSM_onehot_s_ps2_receiver[2]_i_2_n_0\,
      I4 => \FSM_onehot_s_ps2_receiver_reg_n_0_[2]\,
      I5 => ns_ps2_receiver13_out,
      O => \FSM_onehot_s_ps2_receiver[2]_i_1_n_0\
    );
\FSM_onehot_s_ps2_receiver[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_receiver_reg_n_0_[0]\,
      I1 => wait_for_incoming_data,
      I2 => \^received_data_en\,
      I3 => start_receiving_data,
      O => \FSM_onehot_s_ps2_receiver[2]_i_2_n_0\
    );
\FSM_onehot_s_ps2_receiver[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => data_count_reg(1),
      I1 => data_count_reg(0),
      I2 => data_count_reg(3),
      I3 => data_count_reg(2),
      I4 => ps2_clk_posedge,
      O => ns_ps2_receiver13_out
    );
\FSM_onehot_s_ps2_receiver[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_receiver[3]_i_2_n_0\,
      I1 => data_count_reg(3),
      I2 => data_count_reg(2),
      I3 => \FSM_onehot_s_ps2_receiver_reg_n_0_[2]\,
      I4 => ps2_clk_posedge,
      I5 => \FSM_onehot_s_ps2_receiver_reg_n_0_[3]\,
      O => \FSM_onehot_s_ps2_receiver[3]_i_1_n_0\
    );
\FSM_onehot_s_ps2_receiver[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_count_reg(1),
      I1 => data_count_reg(0),
      O => \FSM_onehot_s_ps2_receiver[3]_i_2_n_0\
    );
\FSM_onehot_s_ps2_receiver[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_receiver_reg_n_0_[3]\,
      I1 => ps2_clk_posedge,
      I2 => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      O => \FSM_onehot_s_ps2_receiver[4]_i_1_n_0\
    );
\FSM_onehot_s_ps2_receiver_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_receiver[0]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_receiver_reg_n_0_[0]\,
      S => reset
    );
\FSM_onehot_s_ps2_receiver_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_receiver[1]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_receiver_reg_n_0_[1]\,
      R => reset
    );
\FSM_onehot_s_ps2_receiver_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_receiver[2]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_receiver_reg_n_0_[2]\,
      R => reset
    );
\FSM_onehot_s_ps2_receiver_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_receiver[3]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_receiver_reg_n_0_[3]\,
      R => reset
    );
\FSM_onehot_s_ps2_receiver_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_receiver[4]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      R => reset
    );
\data_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_count_reg(0),
      O => \p_0_in__0\(0)
    );
\data_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => data_count_reg(1),
      O => \p_0_in__0\(1)
    );
\data_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => data_count_reg(1),
      I2 => data_count_reg(2),
      O => \data_count[2]_i_1_n_0\
    );
\data_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset,
      I1 => \FSM_onehot_s_ps2_receiver_reg_n_0_[2]\,
      O => \data_count[3]_i_1_n_0\
    );
\data_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => data_count_reg(1),
      I1 => data_count_reg(0),
      I2 => data_count_reg(2),
      I3 => data_count_reg(3),
      O => \p_0_in__0\(3)
    );
\data_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_clk_posedge,
      D => \p_0_in__0\(0),
      Q => data_count_reg(0),
      R => \data_count[3]_i_1_n_0\
    );
\data_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_clk_posedge,
      D => \p_0_in__0\(1),
      Q => data_count_reg(1),
      R => \data_count[3]_i_1_n_0\
    );
\data_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_clk_posedge,
      D => \data_count[2]_i_1_n_0\,
      Q => data_count_reg(2),
      R => \data_count[3]_i_1_n_0\
    );
\data_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_clk_posedge,
      D => \p_0_in__0\(3),
      Q => data_count_reg(3),
      R => \data_count[3]_i_1_n_0\
    );
\data_shift_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_receiver_reg_n_0_[2]\,
      I1 => ps2_clk_posedge,
      O => data_count0
    );
\data_shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(0),
      Q => \data_shift_reg_reg_n_0_[0]\,
      R => reset
    );
\data_shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(1),
      Q => p_0_in(0),
      R => reset
    );
\data_shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(2),
      Q => p_0_in(1),
      R => reset
    );
\data_shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(3),
      Q => p_0_in(2),
      R => reset
    );
\data_shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(4),
      Q => p_0_in(3),
      R => reset
    );
\data_shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(5),
      Q => p_0_in(4),
      R => reset
    );
\data_shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => p_0_in(6),
      Q => p_0_in(5),
      R => reset
    );
\data_shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_count0,
      D => ps2_data,
      Q => p_0_in(6),
      R => reset
    );
received_data_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      I1 => ps2_clk_posedge,
      O => received_data_en0
    );
received_data_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => received_data_en0,
      Q => \^received_data_en\,
      R => reset
    );
\received_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => \data_shift_reg_reg_n_0_[0]\,
      Q => received_data(0),
      R => reset
    );
\received_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(0),
      Q => received_data(1),
      R => reset
    );
\received_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(1),
      Q => received_data(2),
      R => reset
    );
\received_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(2),
      Q => received_data(3),
      R => reset
    );
\received_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(3),
      Q => received_data(4),
      R => reset
    );
\received_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(4),
      Q => received_data(5),
      R => reset
    );
\received_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(5),
      Q => received_data(6),
      R => reset
    );
\received_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_onehot_s_ps2_receiver_reg_n_0_[4]\,
      D => p_0_in(6),
      Q => received_data(7),
      R => reset
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61152)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps2_altera_up_ps2 is
  port (
    received_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    error_sending_command : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    PS2_CLK_t : out STD_LOGIC;
    PS2_DAT_t : out STD_LOGIC;
    waitrequest_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    PS2_CLK_i : in STD_LOGIC;
    PS2_DAT_i : in STD_LOGIC;
    writedata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_n : in STD_LOGIC;
    full : in STD_LOGIC;
    byteenable : in STD_LOGIC_VECTOR ( 0 to 0 );
    penable : in STD_LOGIC;
    psel : in STD_LOGIC;
    write : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps2_altera_up_ps2 : entity is "altera_up_ps2";
end ps2_altera_up_ps2;

architecture STRUCTURE of ps2_altera_up_ps2 is
  signal \FSM_onehot_s_ps2_transceiver[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_s_ps2_transceiver_reg_n_0_[4]\ : STD_LOGIC;
  signal PS2_Command_Out_n_3 : STD_LOGIC;
  signal PS2_Command_Out_n_4 : STD_LOGIC;
  signal PS2_Command_Out_n_5 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_from_the_PS2_port_en : STD_LOGIC;
  signal idle_counter0 : STD_LOGIC;
  signal \idle_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \idle_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \idle_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \idle_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \idle_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \idle_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \idle_counter[6]_i_4_n_0\ : STD_LOGIC;
  signal \idle_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal idle_counter_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal last_ps2_clk : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps2_clk_posedge : STD_LOGIC;
  signal ps2_clk_reg : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ps2_clk_reg : signal is std.standard.true;
  signal ps2_data_reg : STD_LOGIC;
  attribute MARK_DEBUG of ps2_data_reg : signal is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_transceiver[2]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_transceiver[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_s_ps2_transceiver[4]_i_2\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_transceiver_reg[0]\ : label is "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_transceiver_reg[1]\ : label is "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_transceiver_reg[2]\ : label is "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_transceiver_reg[3]\ : label is "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_ps2_transceiver_reg[4]\ : label is "PS2_STATE_1_DATA_IN:10000,PS2_STATE_2_COMMAND_OUT:00010,PS2_STATE_4_END_DELAYED:01000,PS2_STATE_0_IDLE:00001,PS2_STATE_3_END_TRANSFER:00100";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of PS2_Data_In : label is "soft";
  attribute PS2_STATE_0_IDLE : string;
  attribute PS2_STATE_0_IDLE of PS2_Data_In : label is "3'b000";
  attribute PS2_STATE_1_WAIT_FOR_DATA : string;
  attribute PS2_STATE_1_WAIT_FOR_DATA of PS2_Data_In : label is "3'b001";
  attribute PS2_STATE_2_DATA_IN : string;
  attribute PS2_STATE_2_DATA_IN of PS2_Data_In : label is "3'b010";
  attribute PS2_STATE_3_PARITY_IN : string;
  attribute PS2_STATE_3_PARITY_IN of PS2_Data_In : label is "3'b011";
  attribute PS2_STATE_4_STOP_IN : string;
  attribute PS2_STATE_4_STOP_IN of PS2_Data_In : label is "3'b100";
  attribute SOFT_HLUTNM of \idle_counter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \idle_counter[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \idle_counter[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \idle_counter[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \idle_counter[7]_i_1\ : label is "soft_lutpair15";
  attribute KEEP : string;
  attribute KEEP of ps2_clk_reg_reg : label is "yes";
  attribute KEEP of ps2_data_reg_reg : label is "yes";
begin
  SR(0) <= \^sr\(0);
\FSM_onehot_s_ps2_transceiver[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAF8FAF0FAF0"
    )
        port map (
      I0 => data_from_the_PS2_port_en,
      I1 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[3]\,
      I2 => \FSM_onehot_s_ps2_transceiver[0]_i_2_n_0\,
      I3 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[4]\,
      I4 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[2]\,
      I5 => PS2_Command_Out_n_5,
      O => \FSM_onehot_s_ps2_transceiver[0]_i_1_n_0\
    );
\FSM_onehot_s_ps2_transceiver[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA20000"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[0]\,
      I1 => ps2_clk_reg,
      I2 => last_ps2_clk,
      I3 => ps2_data_reg,
      I4 => \FSM_onehot_s_ps2_transceiver[4]_i_2_n_0\,
      O => \FSM_onehot_s_ps2_transceiver[0]_i_2_n_0\
    );
\FSM_onehot_s_ps2_transceiver[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_from_the_PS2_port_en,
      I1 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[3]\,
      O => \FSM_onehot_s_ps2_transceiver[2]_i_3_n_0\
    );
\FSM_onehot_s_ps2_transceiver[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444F44"
    )
        port map (
      I0 => data_from_the_PS2_port_en,
      I1 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[3]\,
      I2 => PS2_Command_Out_n_5,
      I3 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[2]\,
      I4 => \FSM_onehot_s_ps2_transceiver[4]_i_3_n_0\,
      O => \FSM_onehot_s_ps2_transceiver[3]_i_1_n_0\
    );
\FSM_onehot_s_ps2_transceiver[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => data_from_the_PS2_port_en,
      I1 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[4]\,
      I2 => \FSM_onehot_s_ps2_transceiver[4]_i_2_n_0\,
      I3 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[0]\,
      I4 => \FSM_onehot_s_ps2_transceiver[4]_i_3_n_0\,
      O => \FSM_onehot_s_ps2_transceiver[4]_i_1_n_0\
    );
\FSM_onehot_s_ps2_transceiver[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => idle_counter_reg(7),
      I1 => \idle_counter[6]_i_4_n_0\,
      I2 => idle_counter_reg(6),
      I3 => PS2_Command_Out_n_5,
      O => \FSM_onehot_s_ps2_transceiver[4]_i_2_n_0\
    );
\FSM_onehot_s_ps2_transceiver[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => ps2_clk_reg,
      I1 => last_ps2_clk,
      I2 => ps2_data_reg,
      O => \FSM_onehot_s_ps2_transceiver[4]_i_3_n_0\
    );
\FSM_onehot_s_ps2_transceiver_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_transceiver[0]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_transceiver_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_s_ps2_transceiver_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PS2_Command_Out_n_4,
      Q => \FSM_onehot_s_ps2_transceiver_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_s_ps2_transceiver_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PS2_Command_Out_n_3,
      Q => \FSM_onehot_s_ps2_transceiver_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_s_ps2_transceiver_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_transceiver[3]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_transceiver_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\FSM_onehot_s_ps2_transceiver_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s_ps2_transceiver[4]_i_1_n_0\,
      Q => \FSM_onehot_s_ps2_transceiver_reg_n_0_[4]\,
      R => \^sr\(0)
    );
Incoming_Data_FIFO_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_from_the_PS2_port_en,
      I1 => full,
      O => wr_en
    );
PS2_Command_Out: entity work.altera_up_ps2_command_out
     port map (
      D(1) => PS2_Command_Out_n_3,
      D(0) => PS2_Command_Out_n_4,
      \FSM_onehot_s_ps2_transceiver_reg[1]\ => \FSM_onehot_s_ps2_transceiver[4]_i_2_n_0\,
      \FSM_onehot_s_ps2_transceiver_reg[2]\ => \FSM_onehot_s_ps2_transceiver[4]_i_3_n_0\,
      \FSM_onehot_s_ps2_transceiver_reg[2]_0\ => \FSM_onehot_s_ps2_transceiver[2]_i_3_n_0\,
      PS2_CLK_t => PS2_CLK_t,
      PS2_DAT_t => PS2_DAT_t,
      Q(2) => \FSM_onehot_s_ps2_transceiver_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_s_ps2_transceiver_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_s_ps2_transceiver_reg_n_0_[0]\,
      SR(0) => \^sr\(0),
      byteenable(0) => byteenable(0),
      byteenable_0_sp_1 => PS2_Command_Out_n_5,
      clk => clk,
      error_communication_timed_out_reg_0 => error_sending_command,
      last_ps2_clk => last_ps2_clk,
      \out\ => ps2_clk_reg,
      paddr(0) => paddr(0),
      penable => penable,
      psel => psel,
      reset_n => reset_n,
      waitrequest_n => waitrequest_n,
      write => write,
      writedata(7 downto 0) => writedata(7 downto 0)
    );
PS2_Data_In: entity work.altera_up_ps2_data_in
     port map (
      clk => clk,
      ps2_clk_negedge => '0',
      ps2_clk_posedge => ps2_clk_posedge,
      ps2_data => ps2_data_reg,
      received_data(7 downto 0) => received_data(7 downto 0),
      received_data_en => data_from_the_PS2_port_en,
      reset => \^sr\(0),
      start_receiving_data => \FSM_onehot_s_ps2_transceiver_reg_n_0_[4]\,
      wait_for_incoming_data => \FSM_onehot_s_ps2_transceiver_reg_n_0_[2]\
    );
PS2_Data_In_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ps2_clk_reg,
      I1 => last_ps2_clk,
      O => ps2_clk_posedge
    );
\idle_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idle_counter_reg(0),
      O => p_0_in(0)
    );
\idle_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => idle_counter_reg(0),
      I1 => idle_counter_reg(1),
      O => p_0_in(1)
    );
\idle_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => idle_counter_reg(1),
      I1 => idle_counter_reg(0),
      I2 => idle_counter_reg(2),
      O => \idle_counter[2]_i_1_n_0\
    );
\idle_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => idle_counter_reg(2),
      I1 => idle_counter_reg(0),
      I2 => idle_counter_reg(1),
      I3 => idle_counter_reg(3),
      O => \idle_counter[3]_i_1_n_0\
    );
\idle_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => idle_counter_reg(3),
      I1 => idle_counter_reg(1),
      I2 => idle_counter_reg(0),
      I3 => idle_counter_reg(2),
      I4 => idle_counter_reg(4),
      O => \idle_counter[4]_i_1_n_0\
    );
\idle_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => idle_counter_reg(4),
      I1 => idle_counter_reg(2),
      I2 => idle_counter_reg(0),
      I3 => idle_counter_reg(1),
      I4 => idle_counter_reg(3),
      I5 => idle_counter_reg(5),
      O => \idle_counter[5]_i_1_n_0\
    );
\idle_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_s_ps2_transceiver_reg_n_0_[0]\,
      I1 => reset_n,
      O => \idle_counter[6]_i_1_n_0\
    );
\idle_counter[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => idle_counter_reg(7),
      I1 => \idle_counter[6]_i_4_n_0\,
      I2 => idle_counter_reg(6),
      O => idle_counter0
    );
\idle_counter[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \idle_counter[6]_i_4_n_0\,
      I1 => idle_counter_reg(6),
      O => \idle_counter[6]_i_3_n_0\
    );
\idle_counter[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => idle_counter_reg(4),
      I1 => idle_counter_reg(2),
      I2 => idle_counter_reg(0),
      I3 => idle_counter_reg(1),
      I4 => idle_counter_reg(3),
      I5 => idle_counter_reg(5),
      O => \idle_counter[6]_i_4_n_0\
    );
\idle_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => idle_counter_reg(7),
      I1 => \idle_counter[6]_i_4_n_0\,
      I2 => idle_counter_reg(6),
      O => \idle_counter[7]_i_1_n_0\
    );
\idle_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => p_0_in(0),
      Q => idle_counter_reg(0),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => p_0_in(1),
      Q => idle_counter_reg(1),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => \idle_counter[2]_i_1_n_0\,
      Q => idle_counter_reg(2),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => \idle_counter[3]_i_1_n_0\,
      Q => idle_counter_reg(3),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => \idle_counter[4]_i_1_n_0\,
      Q => idle_counter_reg(4),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => \idle_counter[5]_i_1_n_0\,
      Q => idle_counter_reg(5),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => idle_counter0,
      D => \idle_counter[6]_i_3_n_0\,
      Q => idle_counter_reg(6),
      R => \idle_counter[6]_i_1_n_0\
    );
\idle_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \idle_counter[7]_i_1_n_0\,
      Q => idle_counter_reg(7),
      R => \idle_counter[6]_i_1_n_0\
    );
last_ps2_clk_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => ps2_clk_reg,
      Q => last_ps2_clk,
      S => \^sr\(0)
    );
ps2_clk_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => PS2_CLK_i,
      Q => ps2_clk_reg,
      S => \^sr\(0)
    );
ps2_data_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => PS2_DAT_i,
      Q => ps2_data_reg,
      S => \^sr\(0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 74496)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_ps2_recv is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_ps2_recv : entity is "fifo_ps2_recv,fifo_generator_v13_2_9,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fifo_ps2_recv : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fifo_ps2_recv : entity is "fifo_generator_v13_2_9,Vivado 2023.2";
end fifo_ps2_recv;

architecture STRUCTURE of fifo_ps2_recv is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 1;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 255;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 254;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 256;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 8;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 256;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 8;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of almost_empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY";
  attribute X_INTERFACE_INFO of almost_full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 core_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute X_INTERFACE_INFO of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute X_INTERFACE_INFO of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute X_INTERFACE_INFO of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute X_INTERFACE_INFO of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute X_INTERFACE_INFO of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ps2_fifo_generator_v13_2_9
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(8 downto 0) => data_count(8 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(7 downto 0) => B"00000000",
      prog_empty_thresh_assert(7 downto 0) => B"00000000",
      prog_empty_thresh_negate(7 downto 0) => B"00000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(7 downto 0) => B"00000000",
      prog_full_thresh_assert(7 downto 0) => B"00000000",
      prog_full_thresh_negate(7 downto 0) => B"00000000",
      rd_clk => '0',
      rd_data_count(8 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(8 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => srst,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(8 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(8 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testPS2qsys_ps2_0 is
  port (
    irq : out STD_LOGIC;
    readdata : out STD_LOGIC_VECTOR ( 19 downto 0 );
    PS2_CLK_t : out STD_LOGIC;
    PS2_DAT_t : out STD_LOGIC;
    waitrequest_n : out STD_LOGIC;
    writedata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_n : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    PS2_CLK_i : in STD_LOGIC;
    PS2_DAT_i : in STD_LOGIC;
    byteenable : in STD_LOGIC_VECTOR ( 1 downto 0 );
    psel : in STD_LOGIC;
    write : in STD_LOGIC;
    penable : in STD_LOGIC
  );
end testPS2qsys_ps2_0;

architecture STRUCTURE of testPS2qsys_ps2_0 is
  signal PS2_Serial_Port_n_10 : STD_LOGIC;
  signal \control_register[0]_i_1_n_0\ : STD_LOGIC;
  signal \control_register[0]_i_2_n_0\ : STD_LOGIC;
  signal \control_register[10]_i_1_n_0\ : STD_LOGIC;
  signal \control_register[10]_i_2_n_0\ : STD_LOGIC;
  signal \control_register_reg_n_0_[0]\ : STD_LOGIC;
  signal \control_register_reg_n_0_[10]\ : STD_LOGIC;
  signal data_available : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data_fifo_is_empty : STD_LOGIC;
  signal data_fifo_is_full : STD_LOGIC;
  signal data_from_the_PS2_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_in_fifo : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal error_sending_command : STD_LOGIC;
  signal \^irq\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_en0 : STD_LOGIC;
  signal \^readdata\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \readdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \readdata[8]_i_1_n_0\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal NLW_Incoming_Data_FIFO_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Incoming_Data_FIFO_almost_full_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Incoming_Data_FIFO : label is "fifo_ps2_recv,fifo_generator_v13_2_9,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Incoming_Data_FIFO : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Incoming_Data_FIFO : label is "fifo_generator_v13_2_9,Vivado 2023.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Incoming_Data_FIFO_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \control_register[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \control_register[10]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \control_register[8]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \readdata[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \readdata[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \readdata[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \readdata[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \readdata[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \readdata[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \readdata[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \readdata[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \readdata[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \readdata[22]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \readdata[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \readdata[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \readdata[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \readdata[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \readdata[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \readdata[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \readdata[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \readdata[7]_i_1\ : label is "soft_lutpair22";
begin
  irq <= \^irq\;
  readdata(19 downto 0) <= \^readdata\(19 downto 0);
Incoming_Data_FIFO: entity work.fifo_ps2_recv
     port map (
      almost_empty => NLW_Incoming_Data_FIFO_almost_empty_UNCONNECTED,
      almost_full => NLW_Incoming_Data_FIFO_almost_full_UNCONNECTED,
      clk => clk,
      data_count(8 downto 0) => data_available(8 downto 0),
      din(7 downto 0) => data_from_the_PS2_port(7 downto 0),
      dout(7 downto 0) => data_in_fifo(7 downto 0),
      empty => data_fifo_is_empty,
      full => data_fifo_is_full,
      rd_en => rd_en0,
      srst => reset,
      wr_en => PS2_Serial_Port_n_10
    );
Incoming_Data_FIFO_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => write,
      I1 => data_fifo_is_empty,
      I2 => paddr(0),
      I3 => penable,
      I4 => psel,
      O => rd_en0
    );
PS2_Serial_Port: entity work.ps2_altera_up_ps2
     port map (
      PS2_CLK_i => PS2_CLK_i,
      PS2_CLK_t => PS2_CLK_t,
      PS2_DAT_i => PS2_DAT_i,
      PS2_DAT_t => PS2_DAT_t,
      SR(0) => reset,
      byteenable(0) => byteenable(0),
      clk => clk,
      error_sending_command => error_sending_command,
      full => data_fifo_is_full,
      paddr(0) => paddr(0),
      penable => penable,
      psel => psel,
      received_data(7 downto 0) => data_from_the_PS2_port(7 downto 0),
      reset_n => reset_n,
      waitrequest_n => waitrequest_n,
      wr_en => PS2_Serial_Port_n_10,
      write => write,
      writedata(7 downto 0) => writedata(7 downto 0)
    );
\control_register[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => writedata(0),
      I1 => paddr(0),
      I2 => \control_register[0]_i_2_n_0\,
      I3 => \control_register_reg_n_0_[0]\,
      O => \control_register[0]_i_1_n_0\
    );
\control_register[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => write,
      I1 => psel,
      I2 => penable,
      I3 => byteenable(0),
      O => \control_register[0]_i_2_n_0\
    );
\control_register[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => \control_register[10]_i_2_n_0\,
      I1 => byteenable(1),
      I2 => paddr(0),
      I3 => error_sending_command,
      I4 => \control_register_reg_n_0_[10]\,
      O => \control_register[10]_i_1_n_0\
    );
\control_register[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => penable,
      I1 => psel,
      I2 => write,
      O => \control_register[10]_i_2_n_0\
    );
\control_register[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \control_register_reg_n_0_[0]\,
      I1 => data_fifo_is_empty,
      O => p_2_out(8)
    );
\control_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \control_register[0]_i_1_n_0\,
      Q => \control_register_reg_n_0_[0]\,
      R => reset
    );
\control_register_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \control_register[10]_i_1_n_0\,
      Q => \control_register_reg_n_0_[10]\,
      R => reset
    );
\control_register_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_2_out(8),
      Q => \^irq\,
      R => reset
    );
\readdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \control_register_reg_n_0_[0]\,
      I1 => paddr(0),
      I2 => data_in_fifo(0),
      O => \readdata[0]_i_1_n_0\
    );
\readdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A000A0"
    )
        port map (
      I0 => \^readdata\(9),
      I1 => \control_register_reg_n_0_[10]\,
      I2 => reset_n,
      I3 => psel,
      I4 => paddr(0),
      O => \readdata[10]_i_1_n_0\
    );
\readdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => paddr(0),
      I1 => data_fifo_is_empty,
      O => \readdata[15]_i_1_n_0\
    );
\readdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(0),
      I1 => paddr(0),
      O => \readdata[16]_i_1_n_0\
    );
\readdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(1),
      I1 => paddr(0),
      O => \readdata[17]_i_1_n_0\
    );
\readdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(2),
      I1 => paddr(0),
      O => \readdata[18]_i_1_n_0\
    );
\readdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(3),
      I1 => paddr(0),
      O => \readdata[19]_i_1_n_0\
    );
\readdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(1),
      I1 => paddr(0),
      O => \readdata[1]_i_1_n_0\
    );
\readdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(4),
      I1 => paddr(0),
      O => \readdata[20]_i_1_n_0\
    );
\readdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(5),
      I1 => paddr(0),
      O => \readdata[21]_i_1_n_0\
    );
\readdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(6),
      I1 => paddr(0),
      O => \readdata[22]_i_1_n_0\
    );
\readdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(7),
      I1 => paddr(0),
      O => \readdata[23]_i_1_n_0\
    );
\readdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_available(8),
      I1 => paddr(0),
      O => \readdata[24]_i_1_n_0\
    );
\readdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(2),
      I1 => paddr(0),
      O => \readdata[2]_i_1_n_0\
    );
\readdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(3),
      I1 => paddr(0),
      O => \readdata[3]_i_1_n_0\
    );
\readdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(4),
      I1 => paddr(0),
      O => \readdata[4]_i_1_n_0\
    );
\readdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(5),
      I1 => paddr(0),
      O => \readdata[5]_i_1_n_0\
    );
\readdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(6),
      I1 => paddr(0),
      O => \readdata[6]_i_1_n_0\
    );
\readdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_fifo(7),
      I1 => paddr(0),
      O => \readdata[7]_i_1_n_0\
    );
\readdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A000A0"
    )
        port map (
      I0 => \^readdata\(8),
      I1 => \^irq\,
      I2 => reset_n,
      I3 => psel,
      I4 => paddr(0),
      O => \readdata[8]_i_1_n_0\
    );
\readdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[0]_i_1_n_0\,
      Q => \^readdata\(0),
      R => reset
    );
\readdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \readdata[10]_i_1_n_0\,
      Q => \^readdata\(9),
      R => '0'
    );
\readdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[15]_i_1_n_0\,
      Q => \^readdata\(10),
      R => reset
    );
\readdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[16]_i_1_n_0\,
      Q => \^readdata\(11),
      R => reset
    );
\readdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[17]_i_1_n_0\,
      Q => \^readdata\(12),
      R => reset
    );
\readdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[18]_i_1_n_0\,
      Q => \^readdata\(13),
      R => reset
    );
\readdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[19]_i_1_n_0\,
      Q => \^readdata\(14),
      R => reset
    );
\readdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[1]_i_1_n_0\,
      Q => \^readdata\(1),
      R => reset
    );
\readdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[20]_i_1_n_0\,
      Q => \^readdata\(15),
      R => reset
    );
\readdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[21]_i_1_n_0\,
      Q => \^readdata\(16),
      R => reset
    );
\readdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[22]_i_1_n_0\,
      Q => \^readdata\(17),
      R => reset
    );
\readdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[23]_i_1_n_0\,
      Q => \^readdata\(18),
      R => reset
    );
\readdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[24]_i_1_n_0\,
      Q => \^readdata\(19),
      R => reset
    );
\readdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[2]_i_1_n_0\,
      Q => \^readdata\(2),
      R => reset
    );
\readdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[3]_i_1_n_0\,
      Q => \^readdata\(3),
      R => reset
    );
\readdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[4]_i_1_n_0\,
      Q => \^readdata\(4),
      R => reset
    );
\readdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[5]_i_1_n_0\,
      Q => \^readdata\(5),
      R => reset
    );
\readdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[6]_i_1_n_0\,
      Q => \^readdata\(6),
      R => reset
    );
\readdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => psel,
      D => \readdata[7]_i_1_n_0\,
      Q => \^readdata\(7),
      R => reset
    );
\readdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \readdata[8]_i_1_n_0\,
      Q => \^readdata\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps2 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    penable : in STD_LOGIC;
    psel : in STD_LOGIC;
    byteenable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    write : in STD_LOGIC;
    writedata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    perr : out STD_LOGIC;
    PS2_CLK_i : in STD_LOGIC;
    PS2_CLK_o : out STD_LOGIC;
    PS2_CLK_t : out STD_LOGIC;
    PS2_DAT_i : in STD_LOGIC;
    PS2_DAT_o : out STD_LOGIC;
    PS2_DAT_t : out STD_LOGIC;
    irq : out STD_LOGIC;
    readdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    waitrequest_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps2 : entity is "ps2,testPS2qsys_ps2_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps2 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps2 : entity is "testPS2qsys_ps2_0,Vivado 2023.2";
end ps2;

architecture STRUCTURE of ps2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^readdata\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of PS2_CLK_i : signal is "xilinx.com:interface:gpio:1.0 PS2_clk TRI_I";
  attribute X_INTERFACE_INFO of PS2_CLK_o : signal is "xilinx.com:interface:gpio:1.0 PS2_clk TRI_O";
  attribute X_INTERFACE_INFO of PS2_CLK_t : signal is "xilinx.com:interface:gpio:1.0 PS2_clk TRI_T";
  attribute X_INTERFACE_INFO of PS2_DAT_i : signal is "xilinx.com:interface:gpio:1.0 PS2_dat TRI_I";
  attribute X_INTERFACE_INFO of PS2_DAT_o : signal is "xilinx.com:interface:gpio:1.0 PS2_dat TRI_O";
  attribute X_INTERFACE_INFO of PS2_DAT_t : signal is "xilinx.com:interface:gpio:1.0 PS2_dat TRI_T";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of penable : signal is "xilinx.com:interface:apb:1.0 APB PENABLE";
  attribute X_INTERFACE_INFO of perr : signal is "xilinx.com:interface:apb:1.0 APB PSLVERR";
  attribute X_INTERFACE_INFO of psel : signal is "xilinx.com:interface:apb:1.0 APB PSEL";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of waitrequest_n : signal is "xilinx.com:interface:apb:1.0 APB PREADY";
  attribute X_INTERFACE_INFO of write : signal is "xilinx.com:interface:apb:1.0 APB PWRITE";
  attribute X_INTERFACE_INFO of byteenable : signal is "xilinx.com:interface:apb:1.0 APB PSTRB";
  attribute X_INTERFACE_INFO of paddr : signal is "xilinx.com:interface:apb:1.0 APB PADDR";
  attribute X_INTERFACE_INFO of readdata : signal is "xilinx.com:interface:apb:1.0 APB PRDATA";
  attribute X_INTERFACE_INFO of writedata : signal is "xilinx.com:interface:apb:1.0 APB PWDATA";
begin
  PS2_CLK_o <= \<const0>\;
  PS2_DAT_o <= \<const0>\;
  perr <= \<const0>\;
  readdata(31) <= \<const0>\;
  readdata(30) <= \<const0>\;
  readdata(29) <= \<const0>\;
  readdata(28) <= \<const0>\;
  readdata(27) <= \<const0>\;
  readdata(26) <= \<const0>\;
  readdata(25) <= \<const0>\;
  readdata(24 downto 15) <= \^readdata\(24 downto 15);
  readdata(14) <= \<const0>\;
  readdata(13) <= \<const0>\;
  readdata(12) <= \<const0>\;
  readdata(11) <= \<const0>\;
  readdata(10) <= \^readdata\(10);
  readdata(9) <= \<const0>\;
  readdata(8 downto 0) <= \^readdata\(8 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.testPS2qsys_ps2_0
     port map (
      PS2_CLK_i => PS2_CLK_i,
      PS2_CLK_t => PS2_CLK_t,
      PS2_DAT_i => PS2_DAT_i,
      PS2_DAT_t => PS2_DAT_t,
      byteenable(1 downto 0) => byteenable(1 downto 0),
      clk => clk,
      irq => irq,
      paddr(0) => paddr(2),
      penable => penable,
      psel => psel,
      readdata(19 downto 10) => \^readdata\(24 downto 15),
      readdata(9) => \^readdata\(10),
      readdata(8 downto 0) => \^readdata\(8 downto 0),
      reset_n => reset_n,
      waitrequest_n => waitrequest_n,
      write => write,
      writedata(7 downto 0) => writedata(7 downto 0)
    );
end STRUCTURE;
