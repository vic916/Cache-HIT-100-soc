// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 19 22:27:52 2025
// Host        : LAPTOP-ER9DDLRF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "dpram_512x32.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20512)
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
