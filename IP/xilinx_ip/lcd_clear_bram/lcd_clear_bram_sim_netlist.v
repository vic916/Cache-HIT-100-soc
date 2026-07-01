// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 22:26:29 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top lcd_clear_bram -prefix
//               lcd_clear_bram_ lcd_clear_bram_sim_netlist.v
// Design      : lcd_clear_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lcd_clear_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module lcd_clear_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3548 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "lcd_clear_bram.mem" *) 
  (* C_INIT_FILE_NAME = "lcd_clear_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  lcd_clear_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18032)
`pragma protect data_block
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
kvGFrwscyf4RMIdcLXIa1EzmOmA=
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
