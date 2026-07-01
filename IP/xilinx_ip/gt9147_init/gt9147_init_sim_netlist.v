// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 23:37:59 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/XF/Desktop/chiplabdemo/chiplab/IP/xilinx_ip/gt9147_init/gt9147_init_sim_netlist.v
// Design      : gt9147_init
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gt9147_init,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module gt9147_init
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
  gt9147_init_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20160)
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
