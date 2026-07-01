-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Aug 19 23:34:32 2025
-- Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/XF/Desktop/chiplabdemo/chiplab/fpga/loongson/2023.2/system_run.runs/ps2_synth_1/ps2_stub.vhdl
-- Design      : ps2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps2 is
  Port ( 
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

end ps2;

architecture stub of ps2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,paddr[3:0],penable,psel,byteenable[3:0],write,writedata[31:0],perr,PS2_CLK_i,PS2_CLK_o,PS2_CLK_t,PS2_DAT_i,PS2_DAT_o,PS2_DAT_t,irq,readdata[31:0],waitrequest_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "testPS2qsys_ps2_0,Vivado 2023.2";
begin
end;
