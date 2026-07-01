// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:37:56 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ refresh1_bram_sim_netlist.v
// Design      : refresh1_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "refresh1_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19680)
`pragma protect data_block
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
3SnAUWwnHQgRA3fQVXeI
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
