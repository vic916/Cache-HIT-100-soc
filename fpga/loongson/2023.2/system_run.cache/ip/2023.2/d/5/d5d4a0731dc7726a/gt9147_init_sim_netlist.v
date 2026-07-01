// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:37:58 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gt9147_init_sim_netlist.v
// Design      : gt9147_init
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gt9147_init,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "gt9147_init.mem" *) 
  (* C_INIT_FILE_NAME = "gt9147_init.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20192)
`pragma protect data_block
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
HPLOah0EzZEJNh+m+6w=
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
