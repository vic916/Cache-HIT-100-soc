// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:37:58 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_library_sim_netlist.v
// Design      : char_library
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_library,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [23:0]douta;
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
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.979199 mW" *) 
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
  (* C_INIT_FILE = "char_library.mem" *) 
  (* C_INIT_FILE_NAME = "char_library.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61808)
`pragma protect data_block
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
ZoMHDQAFRj0rFOGAjIDT2nODNzs=
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
