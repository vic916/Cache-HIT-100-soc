// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 22:26:29 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lcd_clear_bram_sim_netlist.v
// Design      : lcd_clear_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lcd_clear_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18336)
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
