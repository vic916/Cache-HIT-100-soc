// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:37:57 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/XF/Desktop/chiplabdemo/chiplab/IP/xilinx_ip/refresh1_bram/refresh1_bram_sim_netlist.v
// Design      : refresh1_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "refresh1_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module refresh1_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
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
  (* C_INIT_FILE = "refresh1_bram.mem" *) 
  (* C_INIT_FILE_NAME = "refresh1_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  refresh1_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19664)
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
