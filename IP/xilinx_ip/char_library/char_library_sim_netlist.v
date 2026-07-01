// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:37:58 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/XF/Desktop/chiplabdemo/chiplab/IP/xilinx_ip/char_library/char_library_sim_netlist.v
// Design      : char_library
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_library,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module char_library
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
  char_library_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61536)
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
