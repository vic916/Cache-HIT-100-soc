module soc_top (
    input         resetn, 
    input         clk,

    //------gpio----------------
    output [15:0] led,
    output [1 :0] led_rg0,
    output [1 :0] led_rg1,
    output [7 :0] num_csn,
    output [6 :0] num_a_g,
    input  [7 :0] switch, 
    output [3 :0] btn_key_col,
    input  [3 :0] btn_key_row,
    input  [1 :0] btn_step,

    //------DDR3 interface------
    inout  [15:0] ddr3_dq,
    output [12:0] ddr3_addr,
    output [2 :0] ddr3_ba,
    output        ddr3_ras_n,
    output        ddr3_cas_n,
    output        ddr3_we_n,
    output        ddr3_odt,
    output        ddr3_reset_n,
    output        ddr3_cke,
    output [1:0]  ddr3_dm,
    inout  [1:0]  ddr3_dqs_p,
    inout  [1:0]  ddr3_dqs_n,
    output        ddr3_ck_p,
    output        ddr3_ck_n,

    //------mac controller-------
    //TX
    input         mtxclk_0,     
    output        mtxen_0,      
    output [3:0]  mtxd_0,       
    output        mtxerr_0,
    //RX
    input         mrxclk_0,      
    input         mrxdv_0,     
    input  [3:0]  mrxd_0,        
    input         mrxerr_0,
    input         mcoll_0,
    input         mcrs_0,
    // MIIM
    output        mdc_0,
    inout         mdio_0,
    
    output        phy_rstn,
 
    //------EJTAG-------
    input         EJTAG_TRST,
    input         EJTAG_TCK,
    input         EJTAG_TDI,
    input         EJTAG_TMS,
    output        EJTAG_TDO,

    //------uart-------
    inout         UART_RX,
    inout         UART_TX,

    //------debug-uart------
    input         UART_RX2,
    output        UART_TX2,

    //------nand-------
    output        NAND_CLE ,
    output        NAND_ALE ,
    input         NAND_RDY ,
    inout [7:0]   NAND_DATA,
    output        NAND_RD  ,
    output        NAND_CE  ,  //low active
    output        NAND_WR  ,  
       
    //------spi flash-------
    output        SPI_CLK,
    output        SPI_CS,
    inout         SPI_MISO,
    inout         SPI_MOSI,

    // ----- LCD -----
    output        lcd_rst,
    output        lcd_cs,
    output        lcd_rs,
    output        lcd_wr,
    output        lcd_rd,
    inout  [15:0] lcd_data_io,
    output        lcd_bl_ctr,
    inout         ct_int,
    inout         ct_sda,
    output        ct_scl,
    output        ct_rstn,


    // ----- PS2 -----
    inout wire PS2_clk_tri_io,
    inout wire PS2_dat_tri_io,

    // ----- VGA -----
    inout wire [3:0] VGA_r,
    inout wire [3:0] VGA_g,
    inout wire [3:0] VGA_b,
    output wire VGA_hsync,
    output wire VGA_vsync
);


// --------------------------
// 声明 iFuSoC 模块原端口信号（按端口顺序）
// --------------------------

// Inputs
logic         io_clk;
logic         io_resetn;
logic  [15:0] io_gpio_led;
logic  [1:0]  io_gpio_led_rg0;
logic  [1:0]  io_gpio_led_rg1;
logic  [7:0]  io_gpio_num_csn;
logic  [6:0]  io_gpio_num_a_g;
logic  [7:0]  io_gpio_switch;
logic  [3:0]  io_gpio_btn_key_col;
logic  [3:0]  io_gpio_btn_key_row;
logic  [1:0]  io_gpio_btn_step;

// DDR3
logic  [15:0] io_ddr3_dq;
logic  [1:0]  io_ddr3_dqs_p;
logic  [1:0]  io_ddr3_dqs_n;
logic  [12:0] io_ddr3_addr;
logic  [2:0]  io_ddr3_ba;
logic         io_ddr3_ras_n;
logic         io_ddr3_cas_n;
logic         io_ddr3_we_n;
logic         io_ddr3_reset_n;
logic         io_ddr3_ck_p;
logic         io_ddr3_ck_n;
logic         io_ddr3_cke;
logic  [1:0]  io_ddr3_dm;
logic         io_ddr3_odt;

// MAC (Ethernet)
logic         io_mac_mtxclk_0;
logic  [3:0]  io_mac_mtxd_0;
logic         io_mac_mtxen_0;
logic         io_mac_mtxerr_0;
logic         io_mac_mrxclk_0;
logic  [3:0]  io_mac_mrxd_0;
logic         io_mac_mrxdv_0;
logic         io_mac_mrxerr_0;
logic         io_mac_mcoll_0;
logic         io_mac_mcrs_0;

logic         io_mac_mdc_0;



// PHY Reset
logic         io_phy_rstn;

// eJTAG
logic         io_ejtag_TRST;
logic         io_ejtag_TCK;
logic         io_ejtag_TDI;
logic         io_ejtag_TMS;
logic         io_ejtag_TDO;



// NAND Flash
logic         io_nand_cle;
logic         io_nand_ale;
logic  [3:0]  io_nand_rdy;
logic         io_nand_rd;

logic         io_nand_wr;


// SPI
logic         io_spi_sck_o;
logic         io_spi_sdo_i;

logic         io_spi_sdi_i;


// LCD pass-through (if needed)
logic  [15:0] io_lcd_data_in;
logic  [15:0] io_lcd_data_out;
logic  [15:0] io_lcd_data_z;


// TFT/VGA
logic         io_tft_hsync;
logic         io_tft_vsync;
logic         io_tft_de;
logic         io_tft_dps;
logic         io_tft_vga_clk;





logic io_mac_md_i_0;
logic io_mac_md_o_0;
logic io_mac_md_oe_0;
IOBUF mac_iobuf (
    .IO(mdio_0),
    .I(io_mac_md_o_0),
    .O(io_mac_md_i_0),
    .T(io_mac_md_oe_0)
);

logic io_uart_txd_i;
logic io_uart_txd_o;
logic io_uart_txd_oe;
logic io_uart_rxd_i;
logic io_uart_rxd_o;
logic io_uart_rxd_oe;
logic io_uart_rts_o;
logic io_uart_dtr_o;
logic io_uart_cts_i;
logic io_uart_dsr_i;
logic io_uart_dcd_i;
logic io_uart_ri_i;
assign UART_RX = io_uart_rxd_oe ? 1'bz : io_uart_rxd_o;
assign UART_TX = io_uart_txd_oe ? 1'bz : io_uart_txd_o;
assign UART_RTS = io_uart_rts_o;
assign UART_DTR = io_uart_dtr_o;
assign io_uart_txd_i = UART_TX;
assign io_uart_rxd_i = UART_RX;
assign io_uart_cts_i = '0;
assign io_uart_dcd_i = '0;
assign io_uart_dsr_i = '0;
assign io_uart_ri_i = '0;

logic [7:0] io_nand_dat_i;
logic [7:0] io_nand_dat_o;
logic io_nand_dat_oe;
generate;
    for (genvar i = 0; i < 8; i++) begin: NANDBLK
        IOBUF nand_iobuf(
            .IO(NAND_DATA[i]),
            .I(io_nand_dat_o[i]),
            .T(io_nand_dat_oe),
            .O(io_nand_dat_i[i])
            
        );
    end
endgenerate
logic [3:0] io_nand_ce;
assign NAND_CE = io_nand_ce[0];

logic [3:0] io_spi_csn_o;
logic [3:0] io_spi_csn_en;
logic io_spi_sdo_o;
logic io_spi_sdo_en;
logic io_spi_sdi_o;
logic io_spi_sdi_en;
assign SPI_CS = ~io_spi_csn_en[0] & io_spi_csn_o[0];
assign SPI_MOSI = io_spi_sdo_en ? 1'bz : io_spi_sdo_o;
assign SPI_MISO = io_spi_sdi_en ? 1'bz : io_spi_sdi_o;



logic io_ps2_CLK_i;
logic io_ps2_CLK_o;
logic io_ps2_CLK_t;
logic io_ps2_DAT_i;
logic io_ps2_DAT_o;
logic io_ps2_DAT_t;
IOBUF ps2_clk_iobuf(
    .I(io_ps2_CLK_o),
    .IO(PS2_clk_tri_io),
    .O(io_ps2_CLK_i),
    .T(io_ps2_CLK_t)
);
IOBUF ps2_dat_iobuf(
    .I(io_ps2_DAT_o),
    .IO(PS2_dat_tri_io),
    .O(io_ps2_DAT_i),
    .T(io_ps2_DAT_t)
);

logic [5:0] io_tft_vga_r;
logic [5:0] io_tft_vga_g;
logic [5:0] io_tft_vga_b;
generate
    for (genvar i = 0; i < 4; i++) begin: VGABLK
        assign VGA_r[i] = io_tft_vga_r[i+2] ? 1'b1 : 1'bZ;
        assign VGA_g[i] = io_tft_vga_g[i+2] ? 1'b1 : 1'bZ;
        assign VGA_b[i] = io_tft_vga_b[i+2] ? 1'b1 : 1'bZ;
    end
endgenerate



// --------------------------
// 连接信号：assign io_xxx = 实际信号
// --------------------------

// Clock and Reset
assign io_clk                = clk;
assign io_resetn             = resetn;

// GPIO LEDs
assign io_gpio_led           = led;
assign io_gpio_led_rg0       = led_rg0;
assign io_gpio_led_rg1       = led_rg1;
assign io_gpio_num_csn       = num_csn;
assign io_gpio_num_a_g       = num_a_g;
assign io_gpio_switch        = switch;
assign io_gpio_btn_key_col   = btn_key_col;
assign io_gpio_btn_key_row   = btn_key_row;
assign io_gpio_btn_step      = btn_step;

// DDR3 Interface
assign ddr3_dq               = io_ddr3_dq;
assign ddr3_dqs_p            = io_ddr3_dqs_p;
assign ddr3_dqs_n            = io_ddr3_dqs_n;
assign io_ddr3_addr          = ddr3_addr;
assign io_ddr3_ba            = ddr3_ba;
assign io_ddr3_ras_n         = ddr3_ras_n;
assign io_ddr3_cas_n         = ddr3_cas_n;
assign io_ddr3_we_n          = ddr3_we_n;
assign io_ddr3_reset_n       = ddr3_reset_n;
assign io_ddr3_ck_p          = ddr3_ck_p;
assign io_ddr3_ck_n          = ddr3_ck_n;
assign io_ddr3_cke           = ddr3_cke;
assign io_ddr3_dm            = ddr3_dm;
assign io_ddr3_odt           = ddr3_odt;

// Ethernet MAC
assign mtxclk_0              = io_mac_mtxclk_0;
assign io_mac_mtxd_0         = mtxd_0;
assign io_mac_mtxen_0        = mtxen_0;
assign io_mac_mtxerr_0       = mtxerr_0;
assign io_mac_mrxclk_0       = mrxclk_0;
assign io_mac_mrxdv_0        = mrxdv_0;
assign io_mac_mrxd_0         = mrxd_0;
assign io_mac_mrxerr_0       = mrxerr_0;
assign io_mac_mcoll_0        = mcoll_0;
assign io_mac_mcrs_0         = mcrs_0;
assign io_mac_mdc_0          = mdc_0;
assign phy_rstn              = io_phy_rstn;

// eJTAG
assign io_ejtag_TRST         = EJTAG_TRST;
assign io_ejtag_TCK          = EJTAG_TCK;
assign io_ejtag_TDI          = EJTAG_TDI;
assign io_ejtag_TMS          = EJTAG_TMS;
assign EJTAG_TDO             = io_ejtag_TDO;



// NAND Flash
assign NAND_CLE           =io_nand_cle ;
assign NAND_ALE           =io_nand_ale ;

assign io_nand_rdy = {3'b0, NAND_RDY};
//assign io_nand_rdy[2:0]      = 3'b0;
assign NAND_RD            =io_nand_rd ;
//assign io_nand_ce            = 4'b0;           // 假设只用一个 CE，其他悬空或接高
assign             NAND_WR= io_nand_wr;

// SPI
//assign io_spi_csn_o          = 4'b1111;        // 默认高，可连接
//assign io_spi_csn_en         = 4'b1111;
assign SPI_CLK               = io_spi_sck_o;
assign io_spi_sdo_i          = SPI_MOSI;       // 输入来自外部
assign io_spi_sdi_i          = SPI_MISO;



// TFT/VGA
assign VGA_hsync             = io_tft_hsync;
assign VGA_vsync             = io_tft_vsync;
// io_tft_de, io_tft_dps, io_tft_vga_clk 未连接，可忽略或连接




  wire        _main_reset_mb_reset;	
  wire        _main_reset_interconnect_aresetn;	
  wire        _main_reset_peripheral_aresetn;	
  wire        _stream_ctl_m_axis_video_TVALID;	
  wire [23:0] _stream_ctl_m_axis_video_TDATA;	
  wire [2:0]  _stream_ctl_m_axis_video_TKEEP;	
  wire [2:0]  _stream_ctl_m_axis_video_TSTRB;	
  wire        _stream_ctl_m_axis_video_TUSER;	
  wire        _stream_ctl_m_axis_video_TLAST;	
  wire        _stream_ctl_m_axis_video_TID;	
  wire        _stream_ctl_m_axis_video_TDEST;	
  wire        _stream_ctl_s_axis_video_TREADY;	
  wire [31:0] _tft_m_axi_awaddr;	
  wire [2:0]  _tft_m_axi_awprot;	
  wire        _tft_m_axi_awvalid;	
  wire [2:0]  _tft_m_axi_awsize;	
  wire [1:0]  _tft_m_axi_awburst;	
  wire [3:0]  _tft_m_axi_awcache;	
  wire [7:0]  _tft_m_axi_awlen;	
  wire [31:0] _tft_m_axi_wdata;	
  wire [3:0]  _tft_m_axi_wstrb;	
  wire        _tft_m_axi_wvalid;	
  wire        _tft_m_axi_wlast;	
  wire        _tft_m_axi_bready;	
  wire [31:0] _tft_m_axi_araddr;	
  wire [2:0]  _tft_m_axi_arprot;	
  wire        _tft_m_axi_arvalid;	
  wire [2:0]  _tft_m_axi_arsize;	
  wire [1:0]  _tft_m_axi_arburst;	
  wire [3:0]  _tft_m_axi_arcache;	
  wire [7:0]  _tft_m_axi_arlen;	
  wire        _tft_m_axi_rready;	
  wire        _tft_s_axi_awready;	
  wire        _tft_s_axi_wready;	
  wire [1:0]  _tft_s_axi_bresp;	
  wire        _tft_s_axi_bvalid;	
  wire        _tft_s_axi_arready;	
  wire [31:0] _tft_s_axi_rdata;	
  wire [1:0]  _tft_s_axi_rresp;	
  wire        _tft_s_axi_rvalid;	
  wire        _fb_read_s_axi_CTRL_AWREADY;	
  wire        _fb_read_s_axi_CTRL_WREADY;	
  wire [1:0]  _fb_read_s_axi_CTRL_BRESP;	
  wire        _fb_read_s_axi_CTRL_BVALID;	
  wire        _fb_read_s_axi_CTRL_ARREADY;	
  wire [31:0] _fb_read_s_axi_CTRL_RDATA;	
  wire [1:0]  _fb_read_s_axi_CTRL_RRESP;	
  wire        _fb_read_s_axi_CTRL_RVALID;	
  wire [31:0] _fb_read_m_axi_mm_video_AWADDR;	
  wire [2:0]  _fb_read_m_axi_mm_video_AWPROT;	
  wire        _fb_read_m_axi_mm_video_AWVALID;	
  wire [2:0]  _fb_read_m_axi_mm_video_AWSIZE;	
  wire [1:0]  _fb_read_m_axi_mm_video_AWBURST;	
  wire [3:0]  _fb_read_m_axi_mm_video_AWCACHE;	
  wire [7:0]  _fb_read_m_axi_mm_video_AWLEN;	
  wire [1:0]  _fb_read_m_axi_mm_video_AWLOCK;	
  wire [3:0]  _fb_read_m_axi_mm_video_AWQOS;	
  wire [63:0] _fb_read_m_axi_mm_video_WDATA;	
  wire [7:0]  _fb_read_m_axi_mm_video_WSTRB;	
  wire        _fb_read_m_axi_mm_video_WVALID;	
  wire        _fb_read_m_axi_mm_video_WLAST;	
  wire        _fb_read_m_axi_mm_video_BREADY;	
  wire [31:0] _fb_read_m_axi_mm_video_ARADDR;	
  wire [2:0]  _fb_read_m_axi_mm_video_ARPROT;	
  wire        _fb_read_m_axi_mm_video_ARVALID;	
  wire [2:0]  _fb_read_m_axi_mm_video_ARSIZE;	
  wire [1:0]  _fb_read_m_axi_mm_video_ARBURST;	
  wire [3:0]  _fb_read_m_axi_mm_video_ARCACHE;	
  wire [1:0]  _fb_read_m_axi_mm_video_ARLOCK;	
  wire [7:0]  _fb_read_m_axi_mm_video_ARLEN;	
  wire [3:0]  _fb_read_m_axi_mm_video_ARQOS;	
  wire        _fb_read_m_axi_mm_video_RREADY;	
  wire        _fb_read_m_axis_video_TVALID;	
  wire [23:0] _fb_read_m_axis_video_TDATA;	
  wire [2:0]  _fb_read_m_axis_video_TKEEP;	
  wire [2:0]  _fb_read_m_axis_video_TSTRB;	
  wire        _fb_read_m_axis_video_TUSER;	
  wire        _fb_read_m_axis_video_TLAST;	
  wire        _fb_read_m_axis_video_TID;	
  wire        _fb_read_m_axis_video_TDEST;	
  wire        _fb_write_s_axi_CTRL_AWREADY;	
  wire        _fb_write_s_axi_CTRL_WREADY;	
  wire [1:0]  _fb_write_s_axi_CTRL_BRESP;	
  wire        _fb_write_s_axi_CTRL_BVALID;	
  wire        _fb_write_s_axi_CTRL_ARREADY;	
  wire [31:0] _fb_write_s_axi_CTRL_RDATA;	
  wire [1:0]  _fb_write_s_axi_CTRL_RRESP;	
  wire        _fb_write_s_axi_CTRL_RVALID;	
  wire [31:0] _fb_write_m_axi_mm_video_AWADDR;	
  wire [2:0]  _fb_write_m_axi_mm_video_AWPROT;	
  wire        _fb_write_m_axi_mm_video_AWVALID;	
  wire [2:0]  _fb_write_m_axi_mm_video_AWSIZE;	
  wire [1:0]  _fb_write_m_axi_mm_video_AWBURST;	
  wire [3:0]  _fb_write_m_axi_mm_video_AWCACHE;	
  wire [7:0]  _fb_write_m_axi_mm_video_AWLEN;	
  wire [1:0]  _fb_write_m_axi_mm_video_AWLOCK;	
  wire [3:0]  _fb_write_m_axi_mm_video_AWQOS;	
  wire [63:0] _fb_write_m_axi_mm_video_WDATA;	
  wire [7:0]  _fb_write_m_axi_mm_video_WSTRB;	
  wire        _fb_write_m_axi_mm_video_WVALID;	
  wire        _fb_write_m_axi_mm_video_WLAST;	
  wire        _fb_write_m_axi_mm_video_BREADY;	
  wire [31:0] _fb_write_m_axi_mm_video_ARADDR;	
  wire [2:0]  _fb_write_m_axi_mm_video_ARPROT;	
  wire        _fb_write_m_axi_mm_video_ARVALID;	
  wire [2:0]  _fb_write_m_axi_mm_video_ARSIZE;	
  wire [1:0]  _fb_write_m_axi_mm_video_ARBURST;	
  wire [3:0]  _fb_write_m_axi_mm_video_ARCACHE;	
  wire [1:0]  _fb_write_m_axi_mm_video_ARLOCK;	
  wire [7:0]  _fb_write_m_axi_mm_video_ARLEN;	
  wire [3:0]  _fb_write_m_axi_mm_video_ARQOS;	
  wire        _fb_write_m_axi_mm_video_RREADY;	
  wire        _fb_write_s_axis_video_TREADY;	
  wire        _tft_protocol_converter_s_axi_awready;	
  wire        _tft_protocol_converter_s_axi_wready;	
  wire [1:0]  _tft_protocol_converter_s_axi_bresp;	
  wire        _tft_protocol_converter_s_axi_bvalid;	
  wire [3:0]  _tft_protocol_converter_s_axi_bid;	
  wire        _tft_protocol_converter_s_axi_arready;	
  wire [31:0] _tft_protocol_converter_s_axi_rdata;	
  wire [1:0]  _tft_protocol_converter_s_axi_rresp;	
  wire        _tft_protocol_converter_s_axi_rvalid;	
  wire        _tft_protocol_converter_s_axi_rlast;	
  wire [3:0]  _tft_protocol_converter_s_axi_rid;	
  wire [31:0] _tft_protocol_converter_m_axi_awaddr;	
  wire        _tft_protocol_converter_m_axi_awvalid;	
  wire [31:0] _tft_protocol_converter_m_axi_wdata;	
  wire [3:0]  _tft_protocol_converter_m_axi_wstrb;	
  wire        _tft_protocol_converter_m_axi_wvalid;	
  wire        _tft_protocol_converter_m_axi_bready;	
  wire [31:0] _tft_protocol_converter_m_axi_araddr;	
  wire        _tft_protocol_converter_m_axi_arvalid;	
  wire        _tft_protocol_converter_m_axi_rready;	
  wire        _fb_write_converter_s_axi_awready;	
  wire        _fb_write_converter_s_axi_wready;	
  wire [1:0]  _fb_write_converter_s_axi_bresp;	
  wire        _fb_write_converter_s_axi_bvalid;	
  wire [3:0]  _fb_write_converter_s_axi_bid;	
  wire        _fb_write_converter_s_axi_arready;	
  wire [31:0] _fb_write_converter_s_axi_rdata;	
  wire [1:0]  _fb_write_converter_s_axi_rresp;	
  wire        _fb_write_converter_s_axi_rvalid;	
  wire        _fb_write_converter_s_axi_rlast;	
  wire [3:0]  _fb_write_converter_s_axi_rid;	
  wire [31:0] _fb_write_converter_m_axi_awaddr;	
  wire        _fb_write_converter_m_axi_awvalid;	
  wire [31:0] _fb_write_converter_m_axi_wdata;	
  wire [3:0]  _fb_write_converter_m_axi_wstrb;	
  wire        _fb_write_converter_m_axi_wvalid;	
  wire        _fb_write_converter_m_axi_bready;	
  wire [31:0] _fb_write_converter_m_axi_araddr;	
  wire        _fb_write_converter_m_axi_arvalid;	
  wire        _fb_write_converter_m_axi_rready;	
  wire        _fb_read_converter_s_axi_awready;	
  wire        _fb_read_converter_s_axi_wready;	
  wire [1:0]  _fb_read_converter_s_axi_bresp;	
  wire        _fb_read_converter_s_axi_bvalid;	
  wire [3:0]  _fb_read_converter_s_axi_bid;	
  wire        _fb_read_converter_s_axi_arready;	
  wire [31:0] _fb_read_converter_s_axi_rdata;	
  wire [1:0]  _fb_read_converter_s_axi_rresp;	
  wire        _fb_read_converter_s_axi_rvalid;	
  wire        _fb_read_converter_s_axi_rlast;	
  wire [3:0]  _fb_read_converter_s_axi_rid;	
  wire [31:0] _fb_read_converter_m_axi_awaddr;	
  wire        _fb_read_converter_m_axi_awvalid;	
  wire [31:0] _fb_read_converter_m_axi_wdata;	
  wire [3:0]  _fb_read_converter_m_axi_wstrb;	
  wire        _fb_read_converter_m_axi_wvalid;	
  wire        _fb_read_converter_m_axi_bready;	
  wire [31:0] _fb_read_converter_m_axi_araddr;	
  wire        _fb_read_converter_m_axi_arvalid;	
  wire        _fb_read_converter_m_axi_rready;	
  wire        _axi_clk_converter_tft_s_axi_awready;	
  wire        _axi_clk_converter_tft_s_axi_wready;	
  wire [1:0]  _axi_clk_converter_tft_s_axi_bresp;	
  wire        _axi_clk_converter_tft_s_axi_bvalid;	
  wire [3:0]  _axi_clk_converter_tft_s_axi_bid;	
  wire        _axi_clk_converter_tft_s_axi_arready;	
  wire [31:0] _axi_clk_converter_tft_s_axi_rdata;	
  wire [1:0]  _axi_clk_converter_tft_s_axi_rresp;	
  wire        _axi_clk_converter_tft_s_axi_rvalid;	
  wire        _axi_clk_converter_tft_s_axi_rlast;	
  wire [3:0]  _axi_clk_converter_tft_s_axi_rid;	
  wire [31:0] _axi_clk_converter_tft_m_axi_awaddr;	
  wire [2:0]  _axi_clk_converter_tft_m_axi_awprot;	
  wire        _axi_clk_converter_tft_m_axi_awvalid;	
  wire [2:0]  _axi_clk_converter_tft_m_axi_awsize;	
  wire [1:0]  _axi_clk_converter_tft_m_axi_awburst;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_awcache;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_awlen;	
  wire [1:0]  _axi_clk_converter_tft_m_axi_awlock;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_awqos;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_awid;	
  wire [31:0] _axi_clk_converter_tft_m_axi_wdata;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_wstrb;	
  wire        _axi_clk_converter_tft_m_axi_wvalid;	
  wire        _axi_clk_converter_tft_m_axi_wlast;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_wid;	
  wire        _axi_clk_converter_tft_m_axi_bready;	
  wire [31:0] _axi_clk_converter_tft_m_axi_araddr;	
  wire [2:0]  _axi_clk_converter_tft_m_axi_arprot;	
  wire        _axi_clk_converter_tft_m_axi_arvalid;	
  wire [2:0]  _axi_clk_converter_tft_m_axi_arsize;	
  wire [1:0]  _axi_clk_converter_tft_m_axi_arburst;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_arcache;	
  wire [1:0]  _axi_clk_converter_tft_m_axi_arlock;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_arlen;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_arqos;	
  wire [3:0]  _axi_clk_converter_tft_m_axi_arid;	
  wire        _axi_clk_converter_tft_m_axi_rready;	
  wire        _axi_clk_converter_fd_rd_s_axi_awready;	
  wire        _axi_clk_converter_fd_rd_s_axi_wready;	
  wire [1:0]  _axi_clk_converter_fd_rd_s_axi_bresp;	
  wire        _axi_clk_converter_fd_rd_s_axi_bvalid;	
  wire [3:0]  _axi_clk_converter_fd_rd_s_axi_bid;	
  wire        _axi_clk_converter_fd_rd_s_axi_arready;	
  wire [31:0] _axi_clk_converter_fd_rd_s_axi_rdata;	
  wire [1:0]  _axi_clk_converter_fd_rd_s_axi_rresp;	
  wire        _axi_clk_converter_fd_rd_s_axi_rvalid;	
  wire        _axi_clk_converter_fd_rd_s_axi_rlast;	
  wire [3:0]  _axi_clk_converter_fd_rd_s_axi_rid;	
  wire [31:0] _axi_clk_converter_fd_rd_m_axi_awaddr;	
  wire [2:0]  _axi_clk_converter_fd_rd_m_axi_awprot;	
  wire        _axi_clk_converter_fd_rd_m_axi_awvalid;	
  wire [2:0]  _axi_clk_converter_fd_rd_m_axi_awsize;	
  wire [1:0]  _axi_clk_converter_fd_rd_m_axi_awburst;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_awcache;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_awlen;	
  wire [1:0]  _axi_clk_converter_fd_rd_m_axi_awlock;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_awqos;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_awid;	
  wire [31:0] _axi_clk_converter_fd_rd_m_axi_wdata;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_wstrb;	
  wire        _axi_clk_converter_fd_rd_m_axi_wvalid;	
  wire        _axi_clk_converter_fd_rd_m_axi_wlast;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_wid;	
  wire        _axi_clk_converter_fd_rd_m_axi_bready;	
  wire [31:0] _axi_clk_converter_fd_rd_m_axi_araddr;	
  wire [2:0]  _axi_clk_converter_fd_rd_m_axi_arprot;	
  wire        _axi_clk_converter_fd_rd_m_axi_arvalid;	
  wire [2:0]  _axi_clk_converter_fd_rd_m_axi_arsize;	
  wire [1:0]  _axi_clk_converter_fd_rd_m_axi_arburst;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_arcache;	
  wire [1:0]  _axi_clk_converter_fd_rd_m_axi_arlock;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_arlen;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_arqos;	
  wire [3:0]  _axi_clk_converter_fd_rd_m_axi_arid;	
  wire        _axi_clk_converter_fd_rd_m_axi_rready;	
  wire        _axi_clk_converter_fb_wr_s_axi_awready;	
  wire        _axi_clk_converter_fb_wr_s_axi_wready;	
  wire [1:0]  _axi_clk_converter_fb_wr_s_axi_bresp;	
  wire        _axi_clk_converter_fb_wr_s_axi_bvalid;	
  wire [3:0]  _axi_clk_converter_fb_wr_s_axi_bid;	
  wire        _axi_clk_converter_fb_wr_s_axi_arready;	
  wire [31:0] _axi_clk_converter_fb_wr_s_axi_rdata;	
  wire [1:0]  _axi_clk_converter_fb_wr_s_axi_rresp;	
  wire        _axi_clk_converter_fb_wr_s_axi_rvalid;	
  wire        _axi_clk_converter_fb_wr_s_axi_rlast;	
  wire [3:0]  _axi_clk_converter_fb_wr_s_axi_rid;	
  wire [31:0] _axi_clk_converter_fb_wr_m_axi_awaddr;	
  wire [2:0]  _axi_clk_converter_fb_wr_m_axi_awprot;	
  wire        _axi_clk_converter_fb_wr_m_axi_awvalid;	
  wire [2:0]  _axi_clk_converter_fb_wr_m_axi_awsize;	
  wire [1:0]  _axi_clk_converter_fb_wr_m_axi_awburst;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_awcache;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_awlen;	
  wire [1:0]  _axi_clk_converter_fb_wr_m_axi_awlock;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_awqos;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_awid;	
  wire [31:0] _axi_clk_converter_fb_wr_m_axi_wdata;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_wstrb;	
  wire        _axi_clk_converter_fb_wr_m_axi_wvalid;	
  wire        _axi_clk_converter_fb_wr_m_axi_wlast;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_wid;	
  wire        _axi_clk_converter_fb_wr_m_axi_bready;	
  wire [31:0] _axi_clk_converter_fb_wr_m_axi_araddr;	
  wire [2:0]  _axi_clk_converter_fb_wr_m_axi_arprot;	
  wire        _axi_clk_converter_fb_wr_m_axi_arvalid;	
  wire [2:0]  _axi_clk_converter_fb_wr_m_axi_arsize;	
  wire [1:0]  _axi_clk_converter_fb_wr_m_axi_arburst;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_arcache;	
  wire [1:0]  _axi_clk_converter_fb_wr_m_axi_arlock;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_arlen;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_arqos;	
  wire [3:0]  _axi_clk_converter_fb_wr_m_axi_arid;	
  wire        _axi_clk_converter_fb_wr_m_axi_rready;	
  wire        _ps2_perr;	
  wire        _ps2_irq;	
  wire [31:0] _ps2_readdata;	
  wire        _ps2_waitrequest_n;	
  wire        _lcd_controller_APB_pready;	
  wire [31:0] _lcd_controller_APB_prdata;	
  wire        _lcd_controller_APB_pslverr;	
  wire        _apb_bridge_s_axi_awready;	
  wire        _apb_bridge_s_axi_wready;	
  wire [1:0]  _apb_bridge_s_axi_bresp;	
  wire        _apb_bridge_s_axi_bvalid;	
  wire        _apb_bridge_s_axi_arready;	
  wire [31:0] _apb_bridge_s_axi_rdata;	
  wire [1:0]  _apb_bridge_s_axi_rresp;	
  wire        _apb_bridge_s_axi_rvalid;	
  wire [31:0] _apb_bridge_m_apb_paddr;	
  wire [1:0]  _apb_bridge_m_apb_psel;	
  wire        _apb_bridge_m_apb_penable;	
  wire        _apb_bridge_m_apb_pwrite;	
  wire [31:0] _apb_bridge_m_apb_pwdata;	
  wire [3:0]  _apb_bridge_m_apb_pstrb;	
  wire        _apb_axi4lite_to_axi3_s_axi_awready;	
  wire        _apb_axi4lite_to_axi3_s_axi_wready;	
  wire [1:0]  _apb_axi4lite_to_axi3_s_axi_bresp;	
  wire        _apb_axi4lite_to_axi3_s_axi_bvalid;	
  wire [3:0]  _apb_axi4lite_to_axi3_s_axi_bid;	
  wire        _apb_axi4lite_to_axi3_s_axi_arready;	
  wire [31:0] _apb_axi4lite_to_axi3_s_axi_rdata;	
  wire [1:0]  _apb_axi4lite_to_axi3_s_axi_rresp;	
  wire        _apb_axi4lite_to_axi3_s_axi_rvalid;	
  wire        _apb_axi4lite_to_axi3_s_axi_rlast;	
  wire [3:0]  _apb_axi4lite_to_axi3_s_axi_rid;	
  wire [31:0] _apb_axi4lite_to_axi3_m_axi_awaddr;	
  wire [2:0]  _apb_axi4lite_to_axi3_m_axi_awprot;	
  wire        _apb_axi4lite_to_axi3_m_axi_awvalid;	
  wire [31:0] _apb_axi4lite_to_axi3_m_axi_wdata;	
  wire [3:0]  _apb_axi4lite_to_axi3_m_axi_wstrb;	
  wire        _apb_axi4lite_to_axi3_m_axi_wvalid;	
  wire        _apb_axi4lite_to_axi3_m_axi_bready;	
  wire [31:0] _apb_axi4lite_to_axi3_m_axi_araddr;	
  wire [2:0]  _apb_axi4lite_to_axi3_m_axi_arprot;	
  wire        _apb_axi4lite_to_axi3_m_axi_arvalid;	
  wire        _apb_axi4lite_to_axi3_m_axi_rready;	
  wire        _axi_clk_converter_apb_s_axi_awready;	
  wire        _axi_clk_converter_apb_s_axi_wready;	
  wire [1:0]  _axi_clk_converter_apb_s_axi_bresp;	
  wire        _axi_clk_converter_apb_s_axi_bvalid;	
  wire [3:0]  _axi_clk_converter_apb_s_axi_bid;	
  wire        _axi_clk_converter_apb_s_axi_arready;	
  wire [31:0] _axi_clk_converter_apb_s_axi_rdata;	
  wire [1:0]  _axi_clk_converter_apb_s_axi_rresp;	
  wire        _axi_clk_converter_apb_s_axi_rvalid;	
  wire        _axi_clk_converter_apb_s_axi_rlast;	
  wire [3:0]  _axi_clk_converter_apb_s_axi_rid;	
  wire [31:0] _axi_clk_converter_apb_m_axi_awaddr;	
  wire [2:0]  _axi_clk_converter_apb_m_axi_awprot;	
  wire        _axi_clk_converter_apb_m_axi_awvalid;	
  wire [2:0]  _axi_clk_converter_apb_m_axi_awsize;	
  wire [1:0]  _axi_clk_converter_apb_m_axi_awburst;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_awcache;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_awlen;	
  wire [1:0]  _axi_clk_converter_apb_m_axi_awlock;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_awqos;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_awid;	
  wire [31:0] _axi_clk_converter_apb_m_axi_wdata;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_wstrb;	
  wire        _axi_clk_converter_apb_m_axi_wvalid;	
  wire        _axi_clk_converter_apb_m_axi_wlast;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_wid;	
  wire        _axi_clk_converter_apb_m_axi_bready;	
  wire [31:0] _axi_clk_converter_apb_m_axi_araddr;	
  wire [2:0]  _axi_clk_converter_apb_m_axi_arprot;	
  wire        _axi_clk_converter_apb_m_axi_arvalid;	
  wire [2:0]  _axi_clk_converter_apb_m_axi_arsize;	
  wire [1:0]  _axi_clk_converter_apb_m_axi_arburst;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_arcache;	
  wire [1:0]  _axi_clk_converter_apb_m_axi_arlock;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_arlen;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_arqos;	
  wire [3:0]  _axi_clk_converter_apb_m_axi_arid;	
  wire        _axi_clk_converter_apb_m_axi_rready;	
  wire        _main_xbar_s_axi_awready;	
  wire        _main_xbar_s_axi_wready;	
  wire [1:0]  _main_xbar_s_axi_bresp;	
  wire        _main_xbar_s_axi_bvalid;	
  wire [3:0]  _main_xbar_s_axi_bid;	
  wire        _main_xbar_s_axi_arready;	
  wire [31:0] _main_xbar_s_axi_rdata;	
  wire [1:0]  _main_xbar_s_axi_rresp;	
  wire        _main_xbar_s_axi_rvalid;	
  wire        _main_xbar_s_axi_rlast;	
  wire [3:0]  _main_xbar_s_axi_rid;	
  wire [63:0] _main_xbar_m_axi_awaddr;	
  wire [5:0]  _main_xbar_m_axi_awprot;	
  wire [1:0]  _main_xbar_m_axi_awvalid;	
  wire [5:0]  _main_xbar_m_axi_awsize;	
  wire [3:0]  _main_xbar_m_axi_awburst;	
  wire [7:0]  _main_xbar_m_axi_awcache;	
  wire [7:0]  _main_xbar_m_axi_awlen;	
  wire [3:0]  _main_xbar_m_axi_awlock;	
  wire [7:0]  _main_xbar_m_axi_awid;	
  wire [63:0] _main_xbar_m_axi_wdata;	
  wire [7:0]  _main_xbar_m_axi_wstrb;	
  wire [1:0]  _main_xbar_m_axi_wvalid;	
  wire [1:0]  _main_xbar_m_axi_wlast;	
  wire [7:0]  _main_xbar_m_axi_wid;	
  wire [1:0]  _main_xbar_m_axi_bready;	
  wire [63:0] _main_xbar_m_axi_araddr;	
  wire [5:0]  _main_xbar_m_axi_arprot;	
  wire [1:0]  _main_xbar_m_axi_arvalid;	
  wire [5:0]  _main_xbar_m_axi_arsize;	
  wire [3:0]  _main_xbar_m_axi_arburst;	
  wire [7:0]  _main_xbar_m_axi_arcache;	
  wire [3:0]  _main_xbar_m_axi_arlock;	
  wire [7:0]  _main_xbar_m_axi_arlen;	
  wire [7:0]  _main_xbar_m_axi_arid;	
  wire [1:0]  _main_xbar_m_axi_rready;	
  wire        _apb_dev_axi_s_awready;	
  wire        _apb_dev_axi_s_wready;	
  wire [1:0]  _apb_dev_axi_s_bresp;	
  wire        _apb_dev_axi_s_bvalid;	
  wire [3:0]  _apb_dev_axi_s_bid;	
  wire        _apb_dev_axi_s_arready;	
  wire [31:0] _apb_dev_axi_s_rdata;	
  wire [1:0]  _apb_dev_axi_s_rresp;	
  wire        _apb_dev_axi_s_rvalid;	
  wire        _apb_dev_axi_s_rlast;	
  wire [3:0]  _apb_dev_axi_s_rid;	
  wire [31:0] _apb_dev_apb_rdata_dma;	
  wire        _apb_dev_dma_grant;	
  wire        _apb_dev_dma_req_o;	
  wire        _apb_dev_uart0_int;	
  wire        _apb_dev_nand_int;	
  wire [31:0] _dma_master0_awaddr;	
  wire [2:0]  _dma_master0_awprot;	
  wire        _dma_master0_awvalid;	
  wire [2:0]  _dma_master0_awsize;	
  wire [1:0]  _dma_master0_awburst;	
  wire [3:0]  _dma_master0_awcache;	
  wire [7:0]  _dma_master0_awlen;	
  wire [1:0]  _dma_master0_awlock;	
  wire [3:0]  _dma_master0_awid;	
  wire [63:0] _dma_master0_wdata;	
  wire [7:0]  _dma_master0_wstrb;	
  wire        _dma_master0_wvalid;	
  wire        _dma_master0_wlast;	
  wire        _dma_master0_bready;	
  wire [31:0] _dma_master0_araddr;	
  wire [2:0]  _dma_master0_arprot;	
  wire        _dma_master0_arvalid;	
  wire [2:0]  _dma_master0_arsize;	
  wire [1:0]  _dma_master0_arburst;	
  wire [3:0]  _dma_master0_arcache;	
  wire [1:0]  _dma_master0_arlock;	
  wire [7:0]  _dma_master0_arlen;	
  wire [3:0]  _dma_master0_arid;	
  wire        _dma_master0_rready;	
  wire        _dma_master0_dma_int;	
  wire        _dma_master0_dma_ack_out;	
  wire        _dma_master0_finish_read_order;	
  wire        _dma_master0_write_dma_end;	
  wire        _dma_master0_apb_psel;	
  wire        _dma_master0_apb_valid_req;	
  wire        _dma_master0_apb_penable;	
  wire        _dma_master0_apb_rw;	
  wire [31:0] _dma_master0_apb_addr;	
  wire [31:0] _dma_master0_apb_wdata;	
  wire        _mig_axi_init_calib_complete;	
  wire        _mig_axi_ui_clk;	
  wire        _mig_axi_s_axi_awready;	
  wire        _mig_axi_s_axi_wready;	
  wire [1:0]  _mig_axi_s_axi_bresp;	
  wire        _mig_axi_s_axi_bvalid;	
  wire [7:0]  _mig_axi_s_axi_bid;	
  wire        _mig_axi_s_axi_arready;	
  wire [31:0] _mig_axi_s_axi_rdata;	
  wire [1:0]  _mig_axi_s_axi_rresp;	
  wire        _mig_axi_s_axi_rvalid;	
  wire        _mig_axi_s_axi_rlast;	
  wire [7:0]  _mig_axi_s_axi_rid;	
  wire        _mig_axi_interconnect_S00_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S00_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S00_AXI_BRESP;	
  wire        _mig_axi_interconnect_S00_AXI_BVALID;	
  wire [3:0]  _mig_axi_interconnect_S00_AXI_BID;	
  wire        _mig_axi_interconnect_S00_AXI_ARREADY;	
  wire [31:0] _mig_axi_interconnect_S00_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S00_AXI_RRESP;	
  wire        _mig_axi_interconnect_S00_AXI_RVALID;	
  wire        _mig_axi_interconnect_S00_AXI_RLAST;	
  wire [3:0]  _mig_axi_interconnect_S00_AXI_RID;	
  wire        _mig_axi_interconnect_S01_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S01_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S01_AXI_BRESP;	
  wire        _mig_axi_interconnect_S01_AXI_BVALID;	
  wire [3:0]  _mig_axi_interconnect_S01_AXI_BID;	
  wire        _mig_axi_interconnect_S01_AXI_ARREADY;	
  wire [31:0] _mig_axi_interconnect_S01_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S01_AXI_RRESP;	
  wire        _mig_axi_interconnect_S01_AXI_RVALID;	
  wire        _mig_axi_interconnect_S01_AXI_RLAST;	
  wire [3:0]  _mig_axi_interconnect_S01_AXI_RID;	
  wire        _mig_axi_interconnect_S02_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S02_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S02_AXI_BRESP;	
  wire        _mig_axi_interconnect_S02_AXI_BVALID;	
  wire [3:0]  _mig_axi_interconnect_S02_AXI_BID;	
  wire        _mig_axi_interconnect_S02_AXI_ARREADY;	
  wire [63:0] _mig_axi_interconnect_S02_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S02_AXI_RRESP;	
  wire        _mig_axi_interconnect_S02_AXI_RVALID;	
  wire        _mig_axi_interconnect_S02_AXI_RLAST;	
  wire [3:0]  _mig_axi_interconnect_S02_AXI_RID;	
  wire        _mig_axi_interconnect_S03_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S03_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S03_AXI_BRESP;	
  wire        _mig_axi_interconnect_S03_AXI_BVALID;	
  wire [3:0]  _mig_axi_interconnect_S03_AXI_BID;	
  wire        _mig_axi_interconnect_S03_AXI_ARREADY;	
  wire [31:0] _mig_axi_interconnect_S03_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S03_AXI_RRESP;	
  wire        _mig_axi_interconnect_S03_AXI_RVALID;	
  wire        _mig_axi_interconnect_S03_AXI_RLAST;	
  wire [3:0]  _mig_axi_interconnect_S03_AXI_RID;	
  wire        _mig_axi_interconnect_S04_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S04_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S04_AXI_BRESP;	
  wire        _mig_axi_interconnect_S04_AXI_BVALID;	
  wire        _mig_axi_interconnect_S04_AXI_ARREADY;	
  wire [31:0] _mig_axi_interconnect_S04_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S04_AXI_RRESP;	
  wire        _mig_axi_interconnect_S04_AXI_RVALID;	
  wire        _mig_axi_interconnect_S04_AXI_RLAST;	
  wire        _mig_axi_interconnect_S05_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S05_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S05_AXI_BRESP;	
  wire        _mig_axi_interconnect_S05_AXI_BVALID;	
  wire        _mig_axi_interconnect_S05_AXI_ARREADY;	
  wire [63:0] _mig_axi_interconnect_S05_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S05_AXI_RRESP;	
  wire        _mig_axi_interconnect_S05_AXI_RVALID;	
  wire        _mig_axi_interconnect_S05_AXI_RLAST;	
  wire        _mig_axi_interconnect_S06_AXI_AWREADY;	
  wire        _mig_axi_interconnect_S06_AXI_WREADY;	
  wire [1:0]  _mig_axi_interconnect_S06_AXI_BRESP;	
  wire        _mig_axi_interconnect_S06_AXI_BVALID;	
  wire        _mig_axi_interconnect_S06_AXI_ARREADY;	
  wire [63:0] _mig_axi_interconnect_S06_AXI_RDATA;	
  wire [1:0]  _mig_axi_interconnect_S06_AXI_RRESP;	
  wire        _mig_axi_interconnect_S06_AXI_RVALID;	
  wire        _mig_axi_interconnect_S06_AXI_RLAST;	
  wire        _mig_axi_interconnect_M00_AXI_ARESET_OUT_N;	
  wire [31:0] _mig_axi_interconnect_M00_AXI_AWADDR;	
  wire [2:0]  _mig_axi_interconnect_M00_AXI_AWPROT;	
  wire        _mig_axi_interconnect_M00_AXI_AWVALID;	
  wire [2:0]  _mig_axi_interconnect_M00_AXI_AWSIZE;	
  wire [1:0]  _mig_axi_interconnect_M00_AXI_AWBURST;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_AWCACHE;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_AWLEN;	
  wire [1:0]  _mig_axi_interconnect_M00_AXI_AWLOCK;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_AWQOS;	
  wire [7:0]  _mig_axi_interconnect_M00_AXI_AWID;	
  wire [31:0] _mig_axi_interconnect_M00_AXI_WDATA;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_WSTRB;	
  wire        _mig_axi_interconnect_M00_AXI_WVALID;	
  wire        _mig_axi_interconnect_M00_AXI_WLAST;	
  wire        _mig_axi_interconnect_M00_AXI_BREADY;	
  wire [31:0] _mig_axi_interconnect_M00_AXI_ARADDR;	
  wire [2:0]  _mig_axi_interconnect_M00_AXI_ARPROT;	
  wire        _mig_axi_interconnect_M00_AXI_ARVALID;	
  wire [2:0]  _mig_axi_interconnect_M00_AXI_ARSIZE;	
  wire [1:0]  _mig_axi_interconnect_M00_AXI_ARBURST;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_ARCACHE;	
  wire [1:0]  _mig_axi_interconnect_M00_AXI_ARLOCK;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_ARLEN;	
  wire [3:0]  _mig_axi_interconnect_M00_AXI_ARQOS;	
  wire [7:0]  _mig_axi_interconnect_M00_AXI_ARID;	
  wire        _mig_axi_interconnect_M00_AXI_RREADY;	
  wire        _clk_pll_1_clk_out1;	
  wire        _clk_pll_33_clk_out1;	
  wire        _clk_pll_33_clk_out2;	
  wire        _clk_pll_33_clk_100;	
  wire        _clk_pll_33_clk_25;	
  wire        _clk_pll_33_locked;	
  wire [31:0] _ethernet_m_awaddr;	
  wire [2:0]  _ethernet_m_awprot;	
  wire        _ethernet_m_awvalid;	
  wire [2:0]  _ethernet_m_awsize;	
  wire [1:0]  _ethernet_m_awburst;	
  wire [3:0]  _ethernet_m_awcache;	
  wire [3:0]  _ethernet_m_awlen;	
  wire [1:0]  _ethernet_m_awlock;	
  wire [3:0]  _ethernet_m_awid;	
  wire [31:0] _ethernet_m_wdata;	
  wire [3:0]  _ethernet_m_wstrb;	
  wire        _ethernet_m_wvalid;	
  wire        _ethernet_m_wlast;	
  wire        _ethernet_m_bready;	
  wire [31:0] _ethernet_m_araddr;	
  wire [2:0]  _ethernet_m_arprot;	
  wire        _ethernet_m_arvalid;	
  wire [2:0]  _ethernet_m_arsize;	
  wire [1:0]  _ethernet_m_arburst;	
  wire [3:0]  _ethernet_m_arcache;	
  wire [1:0]  _ethernet_m_arlock;	
  wire [3:0]  _ethernet_m_arlen;	
  wire [3:0]  _ethernet_m_arid;	
  wire        _ethernet_m_rready;	
  wire        _ethernet_s_awready;	
  wire        _ethernet_s_wready;	
  wire [1:0]  _ethernet_s_bresp;	
  wire        _ethernet_s_bvalid;	
  wire [3:0]  _ethernet_s_bid;	
  wire        _ethernet_s_arready;	
  wire [31:0] _ethernet_s_rdata;	
  wire [1:0]  _ethernet_s_rresp;	
  wire        _ethernet_s_rvalid;	
  wire        _ethernet_s_rlast;	
  wire [3:0]  _ethernet_s_rid;	
  wire        _ethernet_interrupt_0;	
  wire        _confreg_s_awready;	
  wire        _confreg_s_wready;	
  wire [1:0]  _confreg_s_bresp;	
  wire        _confreg_s_bvalid;	
  wire [3:0]  _confreg_s_bid;	
  wire        _confreg_s_arready;	
  wire [31:0] _confreg_s_rdata;	
  wire [1:0]  _confreg_s_rresp;	
  wire        _confreg_s_rvalid;	
  wire        _confreg_s_rlast;	
  wire [3:0]  _confreg_s_rid;	
  wire [31:0] _confreg_order_addr_reg;	
  wire [31:0] _confreg_vga_reg;	
  wire        _spi_s_awready;	
  wire        _spi_s_wready;	
  wire [1:0]  _spi_s_bresp;	
  wire        _spi_s_bvalid;	
  wire [3:0]  _spi_s_bid;	
  wire        _spi_s_arready;	
  wire [31:0] _spi_s_rdata;	
  wire [1:0]  _spi_s_rresp;	
  wire        _spi_s_rvalid;	
  wire        _spi_s_rlast;	
  wire [3:0]  _spi_s_rid;	
  wire        _spi_inta_o;	
  wire        _axi_slave_mux_axi_s_awready;	
  wire        _axi_slave_mux_axi_s_wready;	
  wire [1:0]  _axi_slave_mux_axi_s_bresp;	
  wire        _axi_slave_mux_axi_s_bvalid;	
  wire [3:0]  _axi_slave_mux_axi_s_bid;	
  wire        _axi_slave_mux_axi_s_arready;	
  wire [31:0] _axi_slave_mux_axi_s_rdata;	
  wire [1:0]  _axi_slave_mux_axi_s_rresp;	
  wire        _axi_slave_mux_axi_s_rvalid;	
  wire        _axi_slave_mux_axi_s_rlast;	
  wire [3:0]  _axi_slave_mux_axi_s_rid;	
  wire [31:0] _axi_slave_mux_s0_awaddr;	
  wire [2:0]  _axi_slave_mux_s0_awprot;	
  wire        _axi_slave_mux_s0_awvalid;	
  wire [2:0]  _axi_slave_mux_s0_awsize;	
  wire [1:0]  _axi_slave_mux_s0_awburst;	
  wire [3:0]  _axi_slave_mux_s0_awcache;	
  wire [3:0]  _axi_slave_mux_s0_awlen;	
  wire [1:0]  _axi_slave_mux_s0_awlock;	
  wire [3:0]  _axi_slave_mux_s0_awid;	
  wire [31:0] _axi_slave_mux_s0_wdata;	
  wire [3:0]  _axi_slave_mux_s0_wstrb;	
  wire        _axi_slave_mux_s0_wvalid;	
  wire        _axi_slave_mux_s0_wlast;	
  wire [3:0]  _axi_slave_mux_s0_wid;	
  wire        _axi_slave_mux_s0_bready;	
  wire [31:0] _axi_slave_mux_s0_araddr;	
  wire [2:0]  _axi_slave_mux_s0_arprot;	
  wire        _axi_slave_mux_s0_arvalid;	
  wire [2:0]  _axi_slave_mux_s0_arsize;	
  wire [1:0]  _axi_slave_mux_s0_arburst;	
  wire [3:0]  _axi_slave_mux_s0_arcache;	
  wire [1:0]  _axi_slave_mux_s0_arlock;	
  wire [3:0]  _axi_slave_mux_s0_arlen;	
  wire [3:0]  _axi_slave_mux_s0_arid;	
  wire        _axi_slave_mux_s0_rready;	
  wire [31:0] _axi_slave_mux_s1_awaddr;	
  wire [2:0]  _axi_slave_mux_s1_awprot;	
  wire        _axi_slave_mux_s1_awvalid;	
  wire [2:0]  _axi_slave_mux_s1_awsize;	
  wire [1:0]  _axi_slave_mux_s1_awburst;	
  wire [3:0]  _axi_slave_mux_s1_awcache;	
  wire [3:0]  _axi_slave_mux_s1_awlen;	
  wire [1:0]  _axi_slave_mux_s1_awlock;	
  wire [3:0]  _axi_slave_mux_s1_awid;	
  wire [31:0] _axi_slave_mux_s1_wdata;	
  wire [3:0]  _axi_slave_mux_s1_wstrb;	
  wire        _axi_slave_mux_s1_wvalid;	
  wire        _axi_slave_mux_s1_wlast;	
  wire [3:0]  _axi_slave_mux_s1_wid;	
  wire        _axi_slave_mux_s1_bready;	
  wire [31:0] _axi_slave_mux_s1_araddr;	
  wire [2:0]  _axi_slave_mux_s1_arprot;	
  wire        _axi_slave_mux_s1_arvalid;	
  wire [2:0]  _axi_slave_mux_s1_arsize;	
  wire [1:0]  _axi_slave_mux_s1_arburst;	
  wire [3:0]  _axi_slave_mux_s1_arcache;	
  wire [1:0]  _axi_slave_mux_s1_arlock;	
  wire [3:0]  _axi_slave_mux_s1_arlen;	
  wire [3:0]  _axi_slave_mux_s1_arid;	
  wire        _axi_slave_mux_s1_rready;	
  wire [31:0] _axi_slave_mux_s2_awaddr;	
  wire [2:0]  _axi_slave_mux_s2_awprot;	
  wire        _axi_slave_mux_s2_awvalid;	
  wire [2:0]  _axi_slave_mux_s2_awsize;	
  wire [1:0]  _axi_slave_mux_s2_awburst;	
  wire [3:0]  _axi_slave_mux_s2_awcache;	
  wire [3:0]  _axi_slave_mux_s2_awlen;	
  wire [1:0]  _axi_slave_mux_s2_awlock;	
  wire [3:0]  _axi_slave_mux_s2_awid;	
  wire [31:0] _axi_slave_mux_s2_wdata;	
  wire [3:0]  _axi_slave_mux_s2_wstrb;	
  wire        _axi_slave_mux_s2_wvalid;	
  wire        _axi_slave_mux_s2_wlast;	
  wire [3:0]  _axi_slave_mux_s2_wid;	
  wire        _axi_slave_mux_s2_bready;	
  wire [31:0] _axi_slave_mux_s2_araddr;	
  wire [2:0]  _axi_slave_mux_s2_arprot;	
  wire        _axi_slave_mux_s2_arvalid;	
  wire [2:0]  _axi_slave_mux_s2_arsize;	
  wire [1:0]  _axi_slave_mux_s2_arburst;	
  wire [3:0]  _axi_slave_mux_s2_arcache;	
  wire [1:0]  _axi_slave_mux_s2_arlock;	
  wire [3:0]  _axi_slave_mux_s2_arlen;	
  wire [3:0]  _axi_slave_mux_s2_arid;	
  wire        _axi_slave_mux_s2_rready;	
  wire [31:0] _axi_slave_mux_s3_awaddr;	
  wire [2:0]  _axi_slave_mux_s3_awprot;	
  wire        _axi_slave_mux_s3_awvalid;	
  wire [2:0]  _axi_slave_mux_s3_awsize;	
  wire [1:0]  _axi_slave_mux_s3_awburst;	
  wire [3:0]  _axi_slave_mux_s3_awcache;	
  wire [3:0]  _axi_slave_mux_s3_awlen;	
  wire [1:0]  _axi_slave_mux_s3_awlock;	
  wire [3:0]  _axi_slave_mux_s3_awid;	
  wire [31:0] _axi_slave_mux_s3_wdata;	
  wire [3:0]  _axi_slave_mux_s3_wstrb;	
  wire        _axi_slave_mux_s3_wvalid;	
  wire        _axi_slave_mux_s3_wlast;	
  wire [3:0]  _axi_slave_mux_s3_wid;	
  wire        _axi_slave_mux_s3_bready;	
  wire [31:0] _axi_slave_mux_s3_araddr;	
  wire [2:0]  _axi_slave_mux_s3_arprot;	
  wire        _axi_slave_mux_s3_arvalid;	
  wire [2:0]  _axi_slave_mux_s3_arsize;	
  wire [1:0]  _axi_slave_mux_s3_arburst;	
  wire [3:0]  _axi_slave_mux_s3_arcache;	
  wire [1:0]  _axi_slave_mux_s3_arlock;	
  wire [3:0]  _axi_slave_mux_s3_arlen;	
  wire [3:0]  _axi_slave_mux_s3_arid;	
  wire        _axi_slave_mux_s3_rready;	
  wire [31:0] _axi_slave_mux_s4_awaddr;	
  wire [2:0]  _axi_slave_mux_s4_awprot;	
  wire        _axi_slave_mux_s4_awvalid;	
  wire [2:0]  _axi_slave_mux_s4_awsize;	
  wire [1:0]  _axi_slave_mux_s4_awburst;	
  wire [3:0]  _axi_slave_mux_s4_awcache;	
  wire [3:0]  _axi_slave_mux_s4_awlen;	
  wire [1:0]  _axi_slave_mux_s4_awlock;	
  wire [3:0]  _axi_slave_mux_s4_awid;	
  wire [31:0] _axi_slave_mux_s4_wdata;	
  wire [3:0]  _axi_slave_mux_s4_wstrb;	
  wire        _axi_slave_mux_s4_wvalid;	
  wire        _axi_slave_mux_s4_wlast;	
  wire [3:0]  _axi_slave_mux_s4_wid;	
  wire        _axi_slave_mux_s4_bready;	
  wire [31:0] _axi_slave_mux_s4_araddr;	
  wire [2:0]  _axi_slave_mux_s4_arprot;	
  wire        _axi_slave_mux_s4_arvalid;	
  wire [2:0]  _axi_slave_mux_s4_arsize;	
  wire [1:0]  _axi_slave_mux_s4_arburst;	
  wire [3:0]  _axi_slave_mux_s4_arcache;	
  wire [1:0]  _axi_slave_mux_s4_arlock;	
  wire [3:0]  _axi_slave_mux_s4_arlen;	
  wire [3:0]  _axi_slave_mux_s4_arid;	
  wire        _axi_slave_mux_s4_rready;	
  wire        _axi_slave_mux2_axi_s_awready;	
  wire        _axi_slave_mux2_axi_s_wready;	
  wire [1:0]  _axi_slave_mux2_axi_s_bresp;	
  wire        _axi_slave_mux2_axi_s_bvalid;	
  wire [3:0]  _axi_slave_mux2_axi_s_bid;	
  wire        _axi_slave_mux2_axi_s_arready;	
  wire [31:0] _axi_slave_mux2_axi_s_rdata;	
  wire [1:0]  _axi_slave_mux2_axi_s_rresp;	
  wire        _axi_slave_mux2_axi_s_rvalid;	
  wire        _axi_slave_mux2_axi_s_rlast;	
  wire [3:0]  _axi_slave_mux2_axi_s_rid;	
  wire [31:0] _axi_slave_mux2_s0_awaddr;	
  wire [2:0]  _axi_slave_mux2_s0_awprot;	
  wire        _axi_slave_mux2_s0_awvalid;	
  wire [2:0]  _axi_slave_mux2_s0_awsize;	
  wire [1:0]  _axi_slave_mux2_s0_awburst;	
  wire [3:0]  _axi_slave_mux2_s0_awcache;	
  wire [3:0]  _axi_slave_mux2_s0_awlen;	
  wire [1:0]  _axi_slave_mux2_s0_awlock;	
  wire [3:0]  _axi_slave_mux2_s0_awid;	
  wire [31:0] _axi_slave_mux2_s0_wdata;	
  wire [3:0]  _axi_slave_mux2_s0_wstrb;	
  wire        _axi_slave_mux2_s0_wvalid;	
  wire        _axi_slave_mux2_s0_wlast;	
  wire        _axi_slave_mux2_s0_bready;	
  wire [31:0] _axi_slave_mux2_s0_araddr;	
  wire [2:0]  _axi_slave_mux2_s0_arprot;	
  wire        _axi_slave_mux2_s0_arvalid;	
  wire [2:0]  _axi_slave_mux2_s0_arsize;	
  wire [1:0]  _axi_slave_mux2_s0_arburst;	
  wire [3:0]  _axi_slave_mux2_s0_arcache;	
  wire [1:0]  _axi_slave_mux2_s0_arlock;	
  wire [3:0]  _axi_slave_mux2_s0_arlen;	
  wire [3:0]  _axi_slave_mux2_s0_arid;	
  wire        _axi_slave_mux2_s0_rready;	
  wire [31:0] _axi_slave_mux2_s1_awaddr;	
  wire [2:0]  _axi_slave_mux2_s1_awprot;	
  wire        _axi_slave_mux2_s1_awvalid;	
  wire [2:0]  _axi_slave_mux2_s1_awsize;	
  wire [1:0]  _axi_slave_mux2_s1_awburst;	
  wire [3:0]  _axi_slave_mux2_s1_awcache;	
  wire [3:0]  _axi_slave_mux2_s1_awlen;	
  wire [1:0]  _axi_slave_mux2_s1_awlock;	
  wire [3:0]  _axi_slave_mux2_s1_awid;	
  wire [31:0] _axi_slave_mux2_s1_wdata;	
  wire [3:0]  _axi_slave_mux2_s1_wstrb;	
  wire        _axi_slave_mux2_s1_wvalid;	
  wire        _axi_slave_mux2_s1_wlast;	
  wire [3:0]  _axi_slave_mux2_s1_wid;	
  wire        _axi_slave_mux2_s1_bready;	
  wire [31:0] _axi_slave_mux2_s1_araddr;	
  wire [2:0]  _axi_slave_mux2_s1_arprot;	
  wire        _axi_slave_mux2_s1_arvalid;	
  wire [2:0]  _axi_slave_mux2_s1_arsize;	
  wire [1:0]  _axi_slave_mux2_s1_arburst;	
  wire [3:0]  _axi_slave_mux2_s1_arcache;	
  wire [1:0]  _axi_slave_mux2_s1_arlock;	
  wire [3:0]  _axi_slave_mux2_s1_arlen;	
  wire [3:0]  _axi_slave_mux2_s1_arid;	
  wire        _axi_slave_mux2_s1_rready;	
  wire [31:0] _axi_slave_mux2_s2_awaddr;	
  wire [2:0]  _axi_slave_mux2_s2_awprot;	
  wire        _axi_slave_mux2_s2_awvalid;	
  wire [2:0]  _axi_slave_mux2_s2_awsize;	
  wire [1:0]  _axi_slave_mux2_s2_awburst;	
  wire [3:0]  _axi_slave_mux2_s2_awcache;	
  wire [3:0]  _axi_slave_mux2_s2_awlen;	
  wire [1:0]  _axi_slave_mux2_s2_awlock;	
  wire [3:0]  _axi_slave_mux2_s2_awid;	
  wire [31:0] _axi_slave_mux2_s2_wdata;	
  wire [3:0]  _axi_slave_mux2_s2_wstrb;	
  wire        _axi_slave_mux2_s2_wvalid;	
  wire        _axi_slave_mux2_s2_wlast;	
  wire [3:0]  _axi_slave_mux2_s2_wid;	
  wire        _axi_slave_mux2_s2_bready;	
  wire [31:0] _axi_slave_mux2_s2_araddr;	
  wire [2:0]  _axi_slave_mux2_s2_arprot;	
  wire        _axi_slave_mux2_s2_arvalid;	
  wire [2:0]  _axi_slave_mux2_s2_arsize;	
  wire [1:0]  _axi_slave_mux2_s2_arburst;	
  wire [3:0]  _axi_slave_mux2_s2_arcache;	
  wire [1:0]  _axi_slave_mux2_s2_arlock;	
  wire [3:0]  _axi_slave_mux2_s2_arlen;	
  wire [3:0]  _axi_slave_mux2_s2_arid;	
  wire        _axi_slave_mux2_s2_rready;	
  wire [31:0] _axi_slave_mux2_s3_awaddr;	
  wire [2:0]  _axi_slave_mux2_s3_awprot;	
  wire        _axi_slave_mux2_s3_awvalid;	
  wire [2:0]  _axi_slave_mux2_s3_awsize;	
  wire [1:0]  _axi_slave_mux2_s3_awburst;	
  wire [3:0]  _axi_slave_mux2_s3_awcache;	
  wire [3:0]  _axi_slave_mux2_s3_awlen;	
  wire [1:0]  _axi_slave_mux2_s3_awlock;	
  wire [3:0]  _axi_slave_mux2_s3_awid;	
  wire [31:0] _axi_slave_mux2_s3_wdata;	
  wire [3:0]  _axi_slave_mux2_s3_wstrb;	
  wire        _axi_slave_mux2_s3_wvalid;	
  wire        _axi_slave_mux2_s3_wlast;	
  wire [3:0]  _axi_slave_mux2_s3_wid;	
  wire        _axi_slave_mux2_s3_bready;	
  wire [31:0] _axi_slave_mux2_s3_araddr;	
  wire [2:0]  _axi_slave_mux2_s3_arprot;	
  wire        _axi_slave_mux2_s3_arvalid;	
  wire [2:0]  _axi_slave_mux2_s3_arsize;	
  wire [1:0]  _axi_slave_mux2_s3_arburst;	
  wire [3:0]  _axi_slave_mux2_s3_arcache;	
  wire [1:0]  _axi_slave_mux2_s3_arlock;	
  wire [3:0]  _axi_slave_mux2_s3_arlen;	
  wire [3:0]  _axi_slave_mux2_s3_arid;	
  wire        _axi_slave_mux2_s3_rready;	
  wire [31:0] _axi_slave_mux2_s4_awaddr;	
  wire [2:0]  _axi_slave_mux2_s4_awprot;	
  wire        _axi_slave_mux2_s4_awvalid;	
  wire [2:0]  _axi_slave_mux2_s4_awsize;	
  wire [1:0]  _axi_slave_mux2_s4_awburst;	
  wire [3:0]  _axi_slave_mux2_s4_awcache;	
  wire [3:0]  _axi_slave_mux2_s4_awlen;	
  wire [1:0]  _axi_slave_mux2_s4_awlock;	
  wire [3:0]  _axi_slave_mux2_s4_awid;	
  wire [31:0] _axi_slave_mux2_s4_wdata;	
  wire [3:0]  _axi_slave_mux2_s4_wstrb;	
  wire        _axi_slave_mux2_s4_wvalid;	
  wire        _axi_slave_mux2_s4_wlast;	
  wire [3:0]  _axi_slave_mux2_s4_wid;	
  wire        _axi_slave_mux2_s4_bready;	
  wire [31:0] _axi_slave_mux2_s4_araddr;	
  wire [2:0]  _axi_slave_mux2_s4_arprot;	
  wire        _axi_slave_mux2_s4_arvalid;	
  wire [2:0]  _axi_slave_mux2_s4_arsize;	
  wire [1:0]  _axi_slave_mux2_s4_arburst;	
  wire [3:0]  _axi_slave_mux2_s4_arcache;	
  wire [1:0]  _axi_slave_mux2_s4_arlock;	
  wire [3:0]  _axi_slave_mux2_s4_arlen;	
  wire [3:0]  _axi_slave_mux2_s4_arid;	
  wire        _axi_slave_mux2_s4_rready;	
  wire        _axi_clock_converter_s_axi_awready;	
  wire        _axi_clock_converter_s_axi_wready;	
  wire [1:0]  _axi_clock_converter_s_axi_bresp;	
  wire        _axi_clock_converter_s_axi_bvalid;	
  wire [3:0]  _axi_clock_converter_s_axi_bid;	
  wire        _axi_clock_converter_s_axi_arready;	
  wire [31:0] _axi_clock_converter_s_axi_rdata;	
  wire [1:0]  _axi_clock_converter_s_axi_rresp;	
  wire        _axi_clock_converter_s_axi_rvalid;	
  wire        _axi_clock_converter_s_axi_rlast;	
  wire [3:0]  _axi_clock_converter_s_axi_rid;	
  wire [31:0] _axi_clock_converter_m_axi_awaddr;	
  wire [2:0]  _axi_clock_converter_m_axi_awprot;	
  wire        _axi_clock_converter_m_axi_awvalid;	
  wire [2:0]  _axi_clock_converter_m_axi_awsize;	
  wire [1:0]  _axi_clock_converter_m_axi_awburst;	
  wire [3:0]  _axi_clock_converter_m_axi_awcache;	
  wire [3:0]  _axi_clock_converter_m_axi_awlen;	
  wire [1:0]  _axi_clock_converter_m_axi_awlock;	
  wire [3:0]  _axi_clock_converter_m_axi_awqos;	
  wire [3:0]  _axi_clock_converter_m_axi_awid;	
  wire [31:0] _axi_clock_converter_m_axi_wdata;	
  wire [3:0]  _axi_clock_converter_m_axi_wstrb;	
  wire        _axi_clock_converter_m_axi_wvalid;	
  wire        _axi_clock_converter_m_axi_wlast;	
  wire [3:0]  _axi_clock_converter_m_axi_wid;	
  wire        _axi_clock_converter_m_axi_bready;	
  wire [31:0] _axi_clock_converter_m_axi_araddr;	
  wire [2:0]  _axi_clock_converter_m_axi_arprot;	
  wire        _axi_clock_converter_m_axi_arvalid;	
  wire [2:0]  _axi_clock_converter_m_axi_arsize;	
  wire [1:0]  _axi_clock_converter_m_axi_arburst;	
  wire [3:0]  _axi_clock_converter_m_axi_arcache;	
  wire [1:0]  _axi_clock_converter_m_axi_arlock;	
  wire [3:0]  _axi_clock_converter_m_axi_arlen;	
  wire [3:0]  _axi_clock_converter_m_axi_arqos;	
  wire [3:0]  _axi_clock_converter_m_axi_arid;	
  wire        _axi_clock_converter_m_axi_rready;	
  (* mark_debug="true", keep="true" *)wire [31:0] _core_awaddr;	
  (* mark_debug="true", keep="true" *)wire [2:0]  _core_awprot;	
  (* mark_debug="true", keep="true" *)wire        _core_awvalid;	
  (* mark_debug="true", keep="true" *)wire [2:0]  _core_awsize;	
  (* mark_debug="true", keep="true" *)wire [1:0]  _core_awburst;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_awcache;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_awlen;	
  (* mark_debug="true", keep="true" *)wire [1:0]  _core_awlock;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_awid;	
  (* mark_debug="true", keep="true" *)wire [31:0] _core_wdata;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_wstrb;	
  (* mark_debug="true", keep="true" *)wire        _core_wvalid;	
  (* mark_debug="true", keep="true" *)wire        _core_wlast;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_wid;	
  (* mark_debug="true", keep="true" *)wire        _core_bready;	
  (* mark_debug="true", keep="true" *)wire [31:0] _core_araddr;	
  (* mark_debug="true", keep="true" *)wire [2:0]  _core_arprot;	
  (* mark_debug="true", keep="true" *)wire        _core_arvalid;	
  (* mark_debug="true", keep="true" *)wire [2:0]  _core_arsize;	
  (* mark_debug="true", keep="true" *)wire [1:0]  _core_arburst;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_arcache;	
  (* mark_debug="true", keep="true" *)wire [1:0]  _core_arlock;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_arlen;	
  (* mark_debug="true", keep="true" *)wire [3:0]  _core_arid;	
  (* mark_debug="true", keep="true" *)wire        _core_rready;	
  wire        _xpm_cdc_single_int_dest_out;	



// s0 端口信号 (连接到 MIG)
(* mark_debug="true", keep="true" *)wire [31:0] _axi_slave_mux2_s0_awaddr_tmp;
(* mark_debug="true", keep="true" *)wire [2:0]  _axi_slave_mux2_s0_awprot_tmp;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_awvalid_tmp;
(* mark_debug="true", keep="true" *)wire [2:0]  _axi_slave_mux2_s0_awsize_tmp;
(* mark_debug="true", keep="true" *)wire [1:0]  _axi_slave_mux2_s0_awburst_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_s0_awcache_tmp;
(* mark_debug="true", keep="true" *)wire [7:0]  _axi_slave_mux2_s0_awlen_tmp;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_awlock_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_s0_awid_tmp;     // ID位宽设为4位
(* mark_debug="true", keep="true" *)wire [31:0] _axi_slave_mux2_s0_wdata_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_s0_wstrb_tmp;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_wvalid_tmp;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_wlast_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_s0_wid_tmp;      // ID位宽设为4位
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_bready_tmp;
(* mark_debug="true", keep="true" *)wire [31:0] _axi_slave_mux2_s0_araddr_tmp;
(* mark_debug="true", keep="true" *)wire [2:0]  _axi_slave_mux2_s0_arprot_tmp;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_arvalid_tmp;
(* mark_debug="true", keep="true" *)wire [2:0]  _axi_slave_mux2_s0_arsize_tmp;
(* mark_debug="true", keep="true" *)wire [1:0]  _axi_slave_mux2_s0_arburst_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_s0_arcache_tmp;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_arlock_tmp;
(* mark_debug="true", keep="true" *)wire [7:0]  _axi_slave_mux2_s0_arlen_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_s0_arid_tmp;     // ID位宽设为4位
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_s0_rready_tmp;

// s0 响应信号 (来自 MIG)
(* mark_debug="true", keep="true" *)wire        _mig_axi_interconnect_S03_AXI_AWREADY_tmp;
(* mark_debug="true", keep="true" *)wire        _mig_axi_interconnect_S03_AXI_WREADY_tmp;
(* mark_debug="true", keep="true" *)wire [1:0]  _mig_axi_interconnect_S03_AXI_BRESP_tmp;
(* mark_debug="true", keep="true" *)wire        _mig_axi_interconnect_S03_AXI_BVALID_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _mig_axi_interconnect_S03_AXI_BID_tmp;       // ID位宽设为4位
(* mark_debug="true", keep="true" *)wire        _mig_axi_interconnect_S03_AXI_ARREADY_tmp;
(* mark_debug="true", keep="true" *)wire [31:0] _mig_axi_interconnect_S03_AXI_RDATA_tmp;
(* mark_debug="true", keep="true" *)wire [1:0]  _mig_axi_interconnect_S03_AXI_RRESP_tmp;
(* mark_debug="true", keep="true" *)wire        _mig_axi_interconnect_S03_AXI_RVALID_tmp;
(* mark_debug="true", keep="true" *)wire        _mig_axi_interconnect_S03_AXI_RLAST_tmp;
(* mark_debug="true", keep="true" *)wire [3:0]  _mig_axi_interconnect_S03_AXI_RID_tmp;       // ID位宽设为4位

// s1 端口信号 (连接到 LCD)
wire [31:0] _axi_slave_mux2_lcd_awaddr;
wire [2:0]  _axi_slave_mux2_lcd_awprot;
wire        _axi_slave_mux2_lcd_awvalid;
wire [2:0]  _axi_slave_mux2_lcd_awsize;
wire [1:0]  _axi_slave_mux2_lcd_awburst;
wire [3:0]  _axi_slave_mux2_lcd_awcache;
wire [7:0]  _axi_slave_mux2_lcd_awlen;
wire        _axi_slave_mux2_lcd_awlock;
wire [3:0]  _axi_slave_mux2_lcd_awid;        // ID位宽设为4位
wire [31:0] _axi_slave_mux2_lcd_wdata;
wire [3:0]  _axi_slave_mux2_lcd_wstrb;
wire        _axi_slave_mux2_lcd_wvalid;
wire        _axi_slave_mux2_lcd_wlast;
wire [3:0]  _axi_slave_mux2_lcd_wid;         // ID位宽设为4位
wire        _axi_slave_mux2_lcd_bready;
(* mark_debug="true", keep="true" *)wire [31:0] _axi_slave_mux2_lcd_araddr;
(* mark_debug="true", keep="true" *)wire [2:0]  _axi_slave_mux2_lcd_arprot;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_lcd_arvalid;
(* mark_debug="true", keep="true" *)wire [2:0]  _axi_slave_mux2_lcd_arsize;
(* mark_debug="true", keep="true" *)wire [1:0]  _axi_slave_mux2_lcd_arburst;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_lcd_arcache;
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_lcd_arlock;
(* mark_debug="true", keep="true" *)wire [7:0]  _axi_slave_mux2_lcd_arlen;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_slave_mux2_lcd_arid;        // ID位宽设为4位
(* mark_debug="true", keep="true" *)wire        _axi_slave_mux2_lcd_rready;

// s1 响应信号 (来自 LCD)
(* mark_debug="true", keep="true" *)wire        _axi_clk_converter_lcd_s_axi_awready;
(* mark_debug="true", keep="true" *)wire        _axi_clk_converter_lcd_s_axi_wready;
(* mark_debug="true", keep="true" *)wire [1:0]  _axi_clk_converter_lcd_s_axi_bresp;
(* mark_debug="true", keep="true" *)wire        _axi_clk_converter_lcd_s_axi_bvalid;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_clk_converter_lcd_s_axi_bid; // ID位宽设为4位
(* mark_debug="true", keep="true" *)wire        _axi_clk_converter_lcd_s_axi_arready;
(* mark_debug="true", keep="true" *)wire [31:0] _axi_clk_converter_lcd_s_axi_rdata;
(* mark_debug="true", keep="true" *)wire [1:0]  _axi_clk_converter_lcd_s_axi_rresp;
(* mark_debug="true", keep="true" *)wire        _axi_clk_converter_lcd_s_axi_rvalid;
(* mark_debug="true", keep="true" *)wire        _axi_clk_converter_lcd_s_axi_rlast;
(* mark_debug="true", keep="true" *)wire [3:0]  _axi_clk_converter_lcd_s_axi_rid; // ID位宽设为4位


  xpm_cdc_single #(
    .DEST_SYNC_FF(2),
    .INIT_SYNC_FF(0),
    .SIM_ASSERT_CHK(0),
    .SRC_INPUT_REG(1)
  ) xpm_cdc_single_int (	
    .dest_out (_xpm_cdc_single_int_dest_out),
    .dest_clk (_clk_pll_33_clk_out1),	
    .src_clk  (_clk_pll_33_clk_100),	
    .src_in   (_ps2_irq)	
  );
  core_top core (	
    .aclk    (_clk_pll_33_clk_out1),	
    .aresetn (~_main_reset_mb_reset),	
    .intrpt
      ({2'h0,
        _xpm_cdc_single_int_dest_out,
        _dma_master0_dma_int,
        _apb_dev_nand_int,
        _spi_inta_o,
        _apb_dev_uart0_int,
        _ethernet_interrupt_0}),	
    .awaddr  (_core_awaddr),
    .awprot  (_core_awprot),
    .awvalid (_core_awvalid),
    .awready (_axi_clock_converter_s_axi_awready),	
    .awsize  (_core_awsize),
    .awburst (_core_awburst),
    .awcache (_core_awcache),
    .awlen   (_core_awlen),
    .awlock  (_core_awlock),
    .awid    (_core_awid),
    .wdata   (_core_wdata),
    .wstrb   (_core_wstrb),
    .wvalid  (_core_wvalid),
    .wready  (_axi_clock_converter_s_axi_wready),	
    .wlast   (_core_wlast),
    .wid     (_core_wid),
    .bresp   (_axi_clock_converter_s_axi_bresp),	
    .bvalid  (_axi_clock_converter_s_axi_bvalid),	
    .bready  (_core_bready),
    .bid     (_axi_clock_converter_s_axi_bid),	
    .araddr  (_core_araddr),
    .arprot  (_core_arprot),
    .arvalid (_core_arvalid),
    .arready (_axi_clock_converter_s_axi_arready),	
    .arsize  (_core_arsize),
    .arburst (_core_arburst),
    .arcache (_core_arcache),
    .arlock  (_core_arlock),
    .arlen   (_core_arlen),
    .arid    (_core_arid),
    .rdata   (_axi_clock_converter_s_axi_rdata),	
    .rresp   (_axi_clock_converter_s_axi_rresp),	
    .rvalid  (_axi_clock_converter_s_axi_rvalid),	
    .rready  (_core_rready),
    .rlast   (_axi_clock_converter_s_axi_rlast),	
    .rid     (_axi_clock_converter_s_axi_rid)	
  );
  axi_clock_converter_0 axi_clock_converter (	
    .s_axi_aclk    (_clk_pll_33_clk_out1),	
    .s_axi_aresetn (~_main_reset_mb_reset),	
    .s_axi_awaddr  (_core_awaddr),	
    .s_axi_awprot  (_core_awprot),	
    .s_axi_awvalid (_core_awvalid),	
    .s_axi_awready (_axi_clock_converter_s_axi_awready),
    .s_axi_awsize  (_core_awsize),	
    .s_axi_awburst (_core_awburst),	
    .s_axi_awcache (_core_awcache),	
    .s_axi_awlen   (_core_awlen),	
    .s_axi_awlock  (_core_awlock),	
    .s_axi_awqos   (4'h0),	
    .s_axi_awid    (_core_awid),	
    .s_axi_wdata   (_core_wdata),	
    .s_axi_wstrb   (_core_wstrb),	
    .s_axi_wvalid  (_core_wvalid),	
    .s_axi_wready  (_axi_clock_converter_s_axi_wready),
    .s_axi_wlast   (_core_wlast),	
    .s_axi_wid     (_core_wid),	
    .s_axi_bresp   (_axi_clock_converter_s_axi_bresp),
    .s_axi_bvalid  (_axi_clock_converter_s_axi_bvalid),
    .s_axi_bready  (_core_bready),	
    .s_axi_bid     (_axi_clock_converter_s_axi_bid),
    .s_axi_araddr  (_core_araddr),	
    .s_axi_arprot  (_core_arprot),	
    .s_axi_arvalid (_core_arvalid),	
    .s_axi_arready (_axi_clock_converter_s_axi_arready),
    .s_axi_arsize  (_core_arsize),	
    .s_axi_arburst (_core_arburst),	
    .s_axi_arcache (_core_arcache),	
    .s_axi_arlock  (_core_arlock),	
    .s_axi_arlen   (_core_arlen),	
    .s_axi_arqos   (4'h0),	
    .s_axi_arid    (_core_arid),	
    .s_axi_rdata   (_axi_clock_converter_s_axi_rdata),
    .s_axi_rresp   (_axi_clock_converter_s_axi_rresp),
    .s_axi_rvalid  (_axi_clock_converter_s_axi_rvalid),
    .s_axi_rready  (_core_rready),	
    .s_axi_rlast   (_axi_clock_converter_s_axi_rlast),
    .s_axi_rid     (_axi_clock_converter_s_axi_rid),
    .m_axi_aclk    (_clk_pll_33_clk_out2),	
    .m_axi_aresetn (_main_reset_peripheral_aresetn),	
    .m_axi_awaddr  (_axi_clock_converter_m_axi_awaddr),
    .m_axi_awprot  (_axi_clock_converter_m_axi_awprot),
    .m_axi_awvalid (_axi_clock_converter_m_axi_awvalid),
    .m_axi_awready (_main_xbar_s_axi_awready),	
    .m_axi_awsize  (_axi_clock_converter_m_axi_awsize),
    .m_axi_awburst (_axi_clock_converter_m_axi_awburst),
    .m_axi_awcache (_axi_clock_converter_m_axi_awcache),
    .m_axi_awlen   (_axi_clock_converter_m_axi_awlen),
    .m_axi_awlock  (_axi_clock_converter_m_axi_awlock),
    .m_axi_awqos   (_axi_clock_converter_m_axi_awqos),
    .m_axi_awid    (_axi_clock_converter_m_axi_awid),
    .m_axi_wdata   (_axi_clock_converter_m_axi_wdata),
    .m_axi_wstrb   (_axi_clock_converter_m_axi_wstrb),
    .m_axi_wvalid  (_axi_clock_converter_m_axi_wvalid),
    .m_axi_wready  (_main_xbar_s_axi_wready),	
    .m_axi_wlast   (_axi_clock_converter_m_axi_wlast),
    .m_axi_wid     (_axi_clock_converter_m_axi_wid),
    .m_axi_bresp   (_main_xbar_s_axi_bresp),	
    .m_axi_bvalid  (_main_xbar_s_axi_bvalid),	
    .m_axi_bready  (_axi_clock_converter_m_axi_bready),
    .m_axi_bid     (_main_xbar_s_axi_bid),	
    .m_axi_araddr  (_axi_clock_converter_m_axi_araddr),
    .m_axi_arprot  (_axi_clock_converter_m_axi_arprot),
    .m_axi_arvalid (_axi_clock_converter_m_axi_arvalid),
    .m_axi_arready (_main_xbar_s_axi_arready),	
    .m_axi_arsize  (_axi_clock_converter_m_axi_arsize),
    .m_axi_arburst (_axi_clock_converter_m_axi_arburst),
    .m_axi_arcache (_axi_clock_converter_m_axi_arcache),
    .m_axi_arlock  (_axi_clock_converter_m_axi_arlock),
    .m_axi_arlen   (_axi_clock_converter_m_axi_arlen),
    .m_axi_arqos   (_axi_clock_converter_m_axi_arqos),
    .m_axi_arid    (_axi_clock_converter_m_axi_arid),
    .m_axi_rdata   (_main_xbar_s_axi_rdata),	
    .m_axi_rresp   (_main_xbar_s_axi_rresp),	
    .m_axi_rvalid  (_main_xbar_s_axi_rvalid),	
    .m_axi_rready  (_axi_clock_converter_m_axi_rready),
    .m_axi_rlast   (_main_xbar_s_axi_rlast),	
    .m_axi_rid     (_main_xbar_s_axi_rid)	
  );
  
  axi_slave_mux2 axi_slave_mux2 (	
    .axi_s_aclk    (_clk_pll_33_clk_out2),	
    .axi_s_aresetn (_main_reset_interconnect_aresetn),	
    .spi_boot      (1'h1),	
    .axi_s_awaddr  (_axi_slave_mux_s0_awaddr),	
    .axi_s_awprot  (_axi_slave_mux_s0_awprot),	
    .axi_s_awvalid (_axi_slave_mux_s0_awvalid),	
    .axi_s_awready (_axi_slave_mux2_axi_s_awready),
    .axi_s_awsize  (_axi_slave_mux_s0_awsize),	
    .axi_s_awburst (_axi_slave_mux_s0_awburst),	
    .axi_s_awcache (_axi_slave_mux_s0_awcache),	
    .axi_s_awlen   (_axi_slave_mux_s0_awlen),	
    .axi_s_awlock  (_axi_slave_mux_s0_awlock),	
    .axi_s_awid    (_axi_slave_mux_s0_awid),	
    .axi_s_wdata   (_axi_slave_mux_s0_wdata),	
    .axi_s_wstrb   (_axi_slave_mux_s0_wstrb),	
    .axi_s_wvalid  (_axi_slave_mux_s0_wvalid),	
    .axi_s_wready  (_axi_slave_mux2_axi_s_wready),
    .axi_s_wlast   (_axi_slave_mux_s0_wlast),	
    .axi_s_wid     (_axi_slave_mux_s0_wid),	
    .axi_s_bresp   (_axi_slave_mux2_axi_s_bresp),
    .axi_s_bvalid  (_axi_slave_mux2_axi_s_bvalid),
    .axi_s_bready  (_axi_slave_mux_s0_bready),	
    .axi_s_bid     (_axi_slave_mux2_axi_s_bid),
    .axi_s_araddr  (_axi_slave_mux_s0_araddr),	
    .axi_s_arprot  (_axi_slave_mux_s0_arprot),	
    .axi_s_arvalid (_axi_slave_mux_s0_arvalid),	
    .axi_s_arready (_axi_slave_mux2_axi_s_arready),
    .axi_s_arsize  (_axi_slave_mux_s0_arsize),	
    .axi_s_arburst (_axi_slave_mux_s0_arburst),	
    .axi_s_arcache (_axi_slave_mux_s0_arcache),	
    .axi_s_arlock  (_axi_slave_mux_s0_arlock),	
    .axi_s_arlen   (_axi_slave_mux_s0_arlen),	
    .axi_s_arid    (_axi_slave_mux_s0_arid),	
    .axi_s_rdata   (_axi_slave_mux2_axi_s_rdata),
    .axi_s_rresp   (_axi_slave_mux2_axi_s_rresp),
    .axi_s_rvalid  (_axi_slave_mux2_axi_s_rvalid),
    .axi_s_rready  (_axi_slave_mux_s0_rready),	
    .axi_s_rlast   (_axi_slave_mux2_axi_s_rlast),
    .axi_s_rid     (_axi_slave_mux2_axi_s_rid),
    .s0_awaddr     (_axi_slave_mux2_s0_awaddr_tmp),
    .s0_awprot     (_axi_slave_mux2_s0_awprot_tmp),
    .s0_awvalid    (_axi_slave_mux2_s0_awvalid_tmp),
    .s0_awready    (_mig_axi_interconnect_S03_AXI_AWREADY_tmp),	
    .s0_awsize     (_axi_slave_mux2_s0_awsize_tmp),
    .s0_awburst    (_axi_slave_mux2_s0_awburst_tmp),
    .s0_awcache    (_axi_slave_mux2_s0_awcache_tmp),
    .s0_awlen      (_axi_slave_mux2_s0_awlen_tmp),
    .s0_awlock     (_axi_slave_mux2_s0_awlock_tmp),
    .s0_awid       (_axi_slave_mux2_s0_awid_tmp),
    .s0_wdata      (_axi_slave_mux2_s0_wdata_tmp),
    .s0_wstrb      (_axi_slave_mux2_s0_wstrb_tmp),
    .s0_wvalid     (_axi_slave_mux2_s0_wvalid_tmp),
    .s0_wready     (_mig_axi_interconnect_S03_AXI_WREADY_tmp),	
    .s0_wlast      (_axi_slave_mux2_s0_wlast_tmp),
    .s0_wid        (_axi_slave_mux2_s0_wid_tmp),
    .s0_bresp      (_mig_axi_interconnect_S03_AXI_BRESP_tmp),	
    .s0_bvalid     (_mig_axi_interconnect_S03_AXI_BVALID_tmp),	
    .s0_bready     (_axi_slave_mux2_s0_bready_tmp),
    .s0_bid        (_mig_axi_interconnect_S03_AXI_BID_tmp),	
    .s0_araddr     (_axi_slave_mux2_s0_araddr_tmp),
    .s0_arprot     (_axi_slave_mux2_s0_arprot_tmp),
    .s0_arvalid    (_axi_slave_mux2_s0_arvalid_tmp),
    .s0_arready    (_mig_axi_interconnect_S03_AXI_ARREADY_tmp),	
    .s0_arsize     (_axi_slave_mux2_s0_arsize_tmp),
    .s0_arburst    (_axi_slave_mux2_s0_arburst_tmp),
    .s0_arcache    (_axi_slave_mux2_s0_arcache_tmp),
    .s0_arlock     (_axi_slave_mux2_s0_arlock_tmp),
    .s0_arlen      (_axi_slave_mux2_s0_arlen_tmp),
    .s0_arid       (_axi_slave_mux2_s0_arid_tmp),
    .s0_rdata      (_mig_axi_interconnect_S03_AXI_RDATA_tmp),	
    .s0_rresp      (_mig_axi_interconnect_S03_AXI_RRESP_tmp),	
    .s0_rvalid     (_mig_axi_interconnect_S03_AXI_RVALID_tmp),	
    .s0_rready     (_axi_slave_mux2_s0_rready_tmp),
    .s0_rlast      (_mig_axi_interconnect_S03_AXI_RLAST_tmp),	
    .s0_rid        (_mig_axi_interconnect_S03_AXI_RID_tmp),	
    .s1_awaddr     (_axi_slave_mux2_s1_awaddr),
    .s1_awprot     (_axi_slave_mux2_s1_awprot),
    .s1_awvalid    (_axi_slave_mux2_s1_awvalid),
    .s1_awready    (_axi_clk_converter_apb_s_axi_awready),	
    .s1_awsize     (_axi_slave_mux2_s1_awsize),
    .s1_awburst    (_axi_slave_mux2_s1_awburst),
    .s1_awcache    (_axi_slave_mux2_s1_awcache),
    .s1_awlen      (_axi_slave_mux2_s1_awlen),
    .s1_awlock     (_axi_slave_mux2_s1_awlock),
    .s1_awid       (_axi_slave_mux2_s1_awid),
    .s1_wdata      (_axi_slave_mux2_s1_wdata),
    .s1_wstrb      (_axi_slave_mux2_s1_wstrb),
    .s1_wvalid     (_axi_slave_mux2_s1_wvalid),
    .s1_wready     (_axi_clk_converter_apb_s_axi_wready),	
    .s1_wlast      (_axi_slave_mux2_s1_wlast),
    .s1_wid        (_axi_slave_mux2_s1_wid),
    .s1_bresp      (_axi_clk_converter_apb_s_axi_bresp),	
    .s1_bvalid     (_axi_clk_converter_apb_s_axi_bvalid),	
    .s1_bready     (_axi_slave_mux2_s1_bready),
    .s1_bid        (_axi_clk_converter_apb_s_axi_bid),	
    .s1_araddr     (_axi_slave_mux2_s1_araddr),
    .s1_arprot     (_axi_slave_mux2_s1_arprot),
    .s1_arvalid    (_axi_slave_mux2_s1_arvalid),
    .s1_arready    (_axi_clk_converter_apb_s_axi_arready),	
    .s1_arsize     (_axi_slave_mux2_s1_arsize),
    .s1_arburst    (_axi_slave_mux2_s1_arburst),
    .s1_arcache    (_axi_slave_mux2_s1_arcache),
    .s1_arlock     (_axi_slave_mux2_s1_arlock),
    .s1_arlen      (_axi_slave_mux2_s1_arlen),
    .s1_arid       (_axi_slave_mux2_s1_arid),
    .s1_rdata      (_axi_clk_converter_apb_s_axi_rdata),	
    .s1_rresp      (_axi_clk_converter_apb_s_axi_rresp),	
    .s1_rvalid     (_axi_clk_converter_apb_s_axi_rvalid),	
    .s1_rready     (_axi_slave_mux2_s1_rready),
    .s1_rlast      (_axi_clk_converter_apb_s_axi_rlast),	
    .s1_rid        (_axi_clk_converter_apb_s_axi_rid),	
    .s2_awaddr     (_axi_slave_mux2_s2_awaddr),
    .s2_awprot     (_axi_slave_mux2_s2_awprot),
    .s2_awvalid    (_axi_slave_mux2_s2_awvalid),
    .s2_awready    (_axi_clk_converter_fb_wr_s_axi_awready),	
    .s2_awsize     (_axi_slave_mux2_s2_awsize),
    .s2_awburst    (_axi_slave_mux2_s2_awburst),
    .s2_awcache    (_axi_slave_mux2_s2_awcache),
    .s2_awlen      (_axi_slave_mux2_s2_awlen),
    .s2_awlock     (_axi_slave_mux2_s2_awlock),
    .s2_awid       (_axi_slave_mux2_s2_awid),
    .s2_wdata      (_axi_slave_mux2_s2_wdata),
    .s2_wstrb      (_axi_slave_mux2_s2_wstrb),
    .s2_wvalid     (_axi_slave_mux2_s2_wvalid),
    .s2_wready     (_axi_clk_converter_fb_wr_s_axi_wready),	
    .s2_wlast      (_axi_slave_mux2_s2_wlast),
    .s2_wid        (_axi_slave_mux2_s2_wid),
    .s2_bresp      (_axi_clk_converter_fb_wr_s_axi_bresp),	
    .s2_bvalid     (_axi_clk_converter_fb_wr_s_axi_bvalid),	
    .s2_bready     (_axi_slave_mux2_s2_bready),
    .s2_bid        (_axi_clk_converter_fb_wr_s_axi_bid),	
    .s2_araddr     (_axi_slave_mux2_s2_araddr),
    .s2_arprot     (_axi_slave_mux2_s2_arprot),
    .s2_arvalid    (_axi_slave_mux2_s2_arvalid),
    .s2_arready    (_axi_clk_converter_fb_wr_s_axi_arready),	
    .s2_arsize     (_axi_slave_mux2_s2_arsize),
    .s2_arburst    (_axi_slave_mux2_s2_arburst),
    .s2_arcache    (_axi_slave_mux2_s2_arcache),
    .s2_arlock     (_axi_slave_mux2_s2_arlock),
    .s2_arlen      (_axi_slave_mux2_s2_arlen),
    .s2_arid       (_axi_slave_mux2_s2_arid),
    .s2_rdata      (_axi_clk_converter_fb_wr_s_axi_rdata),	
    .s2_rresp      (_axi_clk_converter_fb_wr_s_axi_rresp),	
    .s2_rvalid     (_axi_clk_converter_fb_wr_s_axi_rvalid),	
    .s2_rready     (_axi_slave_mux2_s2_rready),
    .s2_rlast      (_axi_clk_converter_fb_wr_s_axi_rlast),	
    .s2_rid        (_axi_clk_converter_fb_wr_s_axi_rid),	
    .s3_awaddr     (_axi_slave_mux2_s3_awaddr),
    .s3_awprot     (_axi_slave_mux2_s3_awprot),
    .s3_awvalid    (_axi_slave_mux2_s3_awvalid),
    .s3_awready    (_axi_clk_converter_fd_rd_s_axi_awready),	
    .s3_awsize     (_axi_slave_mux2_s3_awsize),
    .s3_awburst    (_axi_slave_mux2_s3_awburst),
    .s3_awcache    (_axi_slave_mux2_s3_awcache),
    .s3_awlen      (_axi_slave_mux2_s3_awlen),
    .s3_awlock     (_axi_slave_mux2_s3_awlock),
    .s3_awid       (_axi_slave_mux2_s3_awid),
    .s3_wdata      (_axi_slave_mux2_s3_wdata),
    .s3_wstrb      (_axi_slave_mux2_s3_wstrb),
    .s3_wvalid     (_axi_slave_mux2_s3_wvalid),
    .s3_wready     (_axi_clk_converter_fd_rd_s_axi_wready),	
    .s3_wlast      (_axi_slave_mux2_s3_wlast),
    .s3_wid        (_axi_slave_mux2_s3_wid),
    .s3_bresp      (_axi_clk_converter_fd_rd_s_axi_bresp),	
    .s3_bvalid     (_axi_clk_converter_fd_rd_s_axi_bvalid),	
    .s3_bready     (_axi_slave_mux2_s3_bready),
    .s3_bid        (_axi_clk_converter_fd_rd_s_axi_bid),	
    .s3_araddr     (_axi_slave_mux2_s3_araddr),
    .s3_arprot     (_axi_slave_mux2_s3_arprot),
    .s3_arvalid    (_axi_slave_mux2_s3_arvalid),
    .s3_arready    (_axi_clk_converter_fd_rd_s_axi_arready),	
    .s3_arsize     (_axi_slave_mux2_s3_arsize),
    .s3_arburst    (_axi_slave_mux2_s3_arburst),
    .s3_arcache    (_axi_slave_mux2_s3_arcache),
    .s3_arlock     (_axi_slave_mux2_s3_arlock),
    .s3_arlen      (_axi_slave_mux2_s3_arlen),
    .s3_arid       (_axi_slave_mux2_s3_arid),
    .s3_rdata      (_axi_clk_converter_fd_rd_s_axi_rdata),	
    .s3_rresp      (_axi_clk_converter_fd_rd_s_axi_rresp),	
    .s3_rvalid     (_axi_clk_converter_fd_rd_s_axi_rvalid),	
    .s3_rready     (_axi_slave_mux2_s3_rready),
    .s3_rlast      (_axi_clk_converter_fd_rd_s_axi_rlast),	
    .s3_rid        (_axi_clk_converter_fd_rd_s_axi_rid),	
    .s4_awaddr     (_axi_slave_mux2_s4_awaddr),
    .s4_awprot     (_axi_slave_mux2_s4_awprot),
    .s4_awvalid    (_axi_slave_mux2_s4_awvalid),
    .s4_awready    (_axi_clk_converter_tft_s_axi_awready),	
    .s4_awsize     (_axi_slave_mux2_s4_awsize),
    .s4_awburst    (_axi_slave_mux2_s4_awburst),
    .s4_awcache    (_axi_slave_mux2_s4_awcache),
    .s4_awlen      (_axi_slave_mux2_s4_awlen),
    .s4_awlock     (_axi_slave_mux2_s4_awlock),
    .s4_awid       (_axi_slave_mux2_s4_awid),
    .s4_wdata      (_axi_slave_mux2_s4_wdata),
    .s4_wstrb      (_axi_slave_mux2_s4_wstrb),
    .s4_wvalid     (_axi_slave_mux2_s4_wvalid),
    .s4_wready     (_axi_clk_converter_tft_s_axi_wready),	
    .s4_wlast      (_axi_slave_mux2_s4_wlast),
    .s4_wid        (_axi_slave_mux2_s4_wid),
    .s4_bresp      (_axi_clk_converter_tft_s_axi_bresp),	
    .s4_bvalid     (_axi_clk_converter_tft_s_axi_bvalid),	
    .s4_bready     (_axi_slave_mux2_s4_bready),
    .s4_bid        (_axi_clk_converter_tft_s_axi_bid),	
    .s4_araddr     (_axi_slave_mux2_s4_araddr),
    .s4_arprot     (_axi_slave_mux2_s4_arprot),
    .s4_arvalid    (_axi_slave_mux2_s4_arvalid),
    .s4_arready    (_axi_clk_converter_tft_s_axi_arready),	
    .s4_arsize     (_axi_slave_mux2_s4_arsize),
    .s4_arburst    (_axi_slave_mux2_s4_arburst),
    .s4_arcache    (_axi_slave_mux2_s4_arcache),
    .s4_arlock     (_axi_slave_mux2_s4_arlock),
    .s4_arlen      (_axi_slave_mux2_s4_arlen),
    .s4_arid       (_axi_slave_mux2_s4_arid),
    .s4_rdata      (_axi_clk_converter_tft_s_axi_rdata),	
    .s4_rresp      (_axi_clk_converter_tft_s_axi_rresp),	
    .s4_rvalid     (_axi_clk_converter_tft_s_axi_rvalid),	
    .s4_rready     (_axi_slave_mux2_s4_rready),
    .s4_rlast      (_axi_clk_converter_tft_s_axi_rlast),	
    .s4_rid        (_axi_clk_converter_tft_s_axi_rid)	
);

axi_slave_mux3 axi_slave_mux3 (	
    .axi_s_aclk    (_clk_pll_33_clk_out2),	
    .axi_s_aresetn (_main_reset_interconnect_aresetn),	
    .spi_boot      (1'h1),	
    .axi_s_awaddr  (_axi_slave_mux2_s0_awaddr_tmp),	
    .axi_s_awprot  (_axi_slave_mux2_s0_awprot_tmp),	
    .axi_s_awvalid (_axi_slave_mux2_s0_awvalid_tmp),	
    .axi_s_awready (_mig_axi_interconnect_S03_AXI_AWREADY_tmp),
    .axi_s_awsize  (_axi_slave_mux2_s0_awsize_tmp),	
    .axi_s_awburst (_axi_slave_mux2_s0_awburst_tmp),	
    .axi_s_awcache (_axi_slave_mux2_s0_awcache_tmp),	
    .axi_s_awlen   (_axi_slave_mux2_s0_awlen_tmp),	
    .axi_s_awlock  (_axi_slave_mux2_s0_awlock_tmp),	
    .axi_s_awid    (_axi_slave_mux2_s0_awid_tmp),	
    .axi_s_wdata   (_axi_slave_mux2_s0_wdata_tmp),	
    .axi_s_wstrb   (_axi_slave_mux2_s0_wstrb_tmp),	
    .axi_s_wvalid  (_axi_slave_mux2_s0_wvalid_tmp),	
    .axi_s_wready  (_mig_axi_interconnect_S03_AXI_WREADY_tmp),
    .axi_s_wlast   (_axi_slave_mux2_s0_wlast_tmp),	
    .axi_s_wid     (_axi_slave_mux2_s0_wid_tmp),	
    .axi_s_bresp   (_mig_axi_interconnect_S03_AXI_BRESP_tmp),
    .axi_s_bvalid  (_mig_axi_interconnect_S03_AXI_BVALID_tmp),
    .axi_s_bready  (_axi_slave_mux2_s0_bready_tmp),	
    .axi_s_bid     (_mig_axi_interconnect_S03_AXI_BID_tmp),
    .axi_s_araddr  (_axi_slave_mux2_s0_araddr_tmp),	
    .axi_s_arprot  (_axi_slave_mux2_s0_arprot_tmp),	
    .axi_s_arvalid (_axi_slave_mux2_s0_arvalid_tmp),	
    .axi_s_arready (_mig_axi_interconnect_S03_AXI_ARREADY_tmp),
    .axi_s_arsize  (_axi_slave_mux2_s0_arsize_tmp),	
    .axi_s_arburst (_axi_slave_mux2_s0_arburst_tmp),	
    .axi_s_arcache (_axi_slave_mux2_s0_arcache_tmp),	
    .axi_s_arlock  (_axi_slave_mux2_s0_arlock_tmp),	
    .axi_s_arlen   (_axi_slave_mux2_s0_arlen_tmp),	
    .axi_s_arid    (_axi_slave_mux2_s0_arid_tmp),	
    .axi_s_rdata   (_mig_axi_interconnect_S03_AXI_RDATA_tmp),
    .axi_s_rresp   (_mig_axi_interconnect_S03_AXI_RRESP_tmp),
    .axi_s_rvalid  (_mig_axi_interconnect_S03_AXI_RVALID_tmp),
    .axi_s_rready  (_axi_slave_mux2_s0_rready_tmp),	
    .axi_s_rlast   (_mig_axi_interconnect_S03_AXI_RLAST_tmp),
    .axi_s_rid     (_mig_axi_interconnect_S03_AXI_RID_tmp),
    .s0_awaddr     (_axi_slave_mux2_s0_awaddr),
    .s0_awprot     (_axi_slave_mux2_s0_awprot),
    .s0_awvalid    (_axi_slave_mux2_s0_awvalid),
    .s0_awready    (_mig_axi_interconnect_S03_AXI_AWREADY),	
    .s0_awsize     (_axi_slave_mux2_s0_awsize),
    .s0_awburst    (_axi_slave_mux2_s0_awburst),
    .s0_awcache    (_axi_slave_mux2_s0_awcache),
    .s0_awlen      (_axi_slave_mux2_s0_awlen),
    .s0_awlock     (_axi_slave_mux2_s0_awlock),
    .s0_awid       (_axi_slave_mux2_s0_awid),
    .s0_wdata      (_axi_slave_mux2_s0_wdata),
    .s0_wstrb      (_axi_slave_mux2_s0_wstrb),
    .s0_wvalid     (_axi_slave_mux2_s0_wvalid),
    .s0_wready     (_mig_axi_interconnect_S03_AXI_WREADY),	
    .s0_wlast      (_axi_slave_mux2_s0_wlast),
    .s0_wid        (/* unused */),
    .s0_bresp      (_mig_axi_interconnect_S03_AXI_BRESP),	
    .s0_bvalid     (_mig_axi_interconnect_S03_AXI_BVALID),	
    .s0_bready     (_axi_slave_mux2_s0_bready),
    .s0_bid        (_mig_axi_interconnect_S03_AXI_BID),	
    .s0_araddr     (_axi_slave_mux2_s0_araddr),
    .s0_arprot     (_axi_slave_mux2_s0_arprot),
    .s0_arvalid    (_axi_slave_mux2_s0_arvalid),
    .s0_arready    (_mig_axi_interconnect_S03_AXI_ARREADY),	
    .s0_arsize     (_axi_slave_mux2_s0_arsize),
    .s0_arburst    (_axi_slave_mux2_s0_arburst),
    .s0_arcache    (_axi_slave_mux2_s0_arcache),
    .s0_arlock     (_axi_slave_mux2_s0_arlock),
    .s0_arlen      (_axi_slave_mux2_s0_arlen),
    .s0_arid       (_axi_slave_mux2_s0_arid),
    .s0_rdata      (_mig_axi_interconnect_S03_AXI_RDATA),	
    .s0_rresp      (_mig_axi_interconnect_S03_AXI_RRESP),	
    .s0_rvalid     (_mig_axi_interconnect_S03_AXI_RVALID),	
    .s0_rready     (_axi_slave_mux2_s0_rready),
    .s0_rlast      (_mig_axi_interconnect_S03_AXI_RLAST),	
    .s0_rid        (_mig_axi_interconnect_S03_AXI_RID),	
    .s1_awaddr     (_axi_slave_mux2_lcd_awaddr),
    .s1_awprot     (_axi_slave_mux2_lcd_awprot),
    .s1_awvalid    (_axi_slave_mux2_lcd_awvalid),
    .s1_awready    (_axi_clk_converter_lcd_s_axi_awready),	
    .s1_awsize     (_axi_slave_mux2_lcd_awsize),
    .s1_awburst    (_axi_slave_mux2_lcd_awburst),
    .s1_awcache    (_axi_slave_mux2_lcd_awcache),
    .s1_awlen      (_axi_slave_mux2_lcd_awlen),
    .s1_awlock     (_axi_slave_mux2_lcd_awlock),
    .s1_awid       (_axi_slave_mux2_lcd_awid),
    .s1_wdata      (_axi_slave_mux2_lcd_wdata),
    .s1_wstrb      (_axi_slave_mux2_lcd_wstrb),
    .s1_wvalid     (_axi_slave_mux2_lcd_wvalid),
    .s1_wready     (_axi_clk_converter_lcd_s_axi_wready),	
    .s1_wlast      (_axi_slave_mux2_lcd_wlast),
    .s1_wid        (_axi_slave_mux2_lcd_wid),
    .s1_bresp      (_axi_clk_converter_lcd_s_axi_bresp),	
    .s1_bvalid     (_axi_clk_converter_lcd_s_axi_bvalid),	
    .s1_bready     (_axi_slave_mux2_lcd_bready),
    .s1_bid        (_axi_clk_converter_lcd_s_axi_bid),	
    .s1_araddr     (_axi_slave_mux2_lcd_araddr),
    .s1_arprot     (_axi_slave_mux2_lcd_arprot),
    .s1_arvalid    (_axi_slave_mux2_lcd_arvalid),
    .s1_arready    (_axi_clk_converter_lcd_s_axi_arready),	
    .s1_arsize     (_axi_slave_mux2_lcd_arsize),
    .s1_arburst    (_axi_slave_mux2_lcd_arburst),
    .s1_arcache    (_axi_slave_mux2_lcd_arcache),
    .s1_arlock     (_axi_slave_mux2_lcd_arlock),
    .s1_arlen      (_axi_slave_mux2_lcd_arlen),
    .s1_arid       (_axi_slave_mux2_lcd_arid),
    .s1_rdata      (_axi_clk_converter_lcd_s_axi_rdata),	
    .s1_rresp      (_axi_clk_converter_lcd_s_axi_rresp),	
    .s1_rvalid     (_axi_clk_converter_lcd_s_axi_rvalid),	
    .s1_rready     (_axi_slave_mux2_lcd_rready),
    .s1_rlast      (_axi_clk_converter_lcd_s_axi_rlast),	
    .s1_rid        (_axi_clk_converter_lcd_s_axi_rid)	
);
  axi_slave_mux axi_slave_mux (	
    .axi_s_aclk    (_clk_pll_33_clk_out2),	
    .axi_s_aresetn (_main_reset_interconnect_aresetn),	
    .spi_boot      (1'h1),	
    .axi_s_awaddr  (_main_xbar_m_axi_awaddr[63:32]),	
    .axi_s_awprot  (_main_xbar_m_axi_awprot[5:3]),	
    .axi_s_awvalid (_main_xbar_m_axi_awvalid[1]),	
    .axi_s_awready (_axi_slave_mux_axi_s_awready),
    .axi_s_awsize  (_main_xbar_m_axi_awsize[5:3]),	
    .axi_s_awburst (_main_xbar_m_axi_awburst[3:2]),	
    .axi_s_awcache (_main_xbar_m_axi_awcache[7:4]),	
    .axi_s_awlen   (_main_xbar_m_axi_awlen[7:4]),	
    .axi_s_awlock  (_main_xbar_m_axi_awlock[3:2]),	
    .axi_s_awid    (_main_xbar_m_axi_awid[7:4]),	
    .axi_s_wdata   (_main_xbar_m_axi_wdata[63:32]),	
    .axi_s_wstrb   (_main_xbar_m_axi_wstrb[7:4]),	
    .axi_s_wvalid  (_main_xbar_m_axi_wvalid[1]),	
    .axi_s_wready  (_axi_slave_mux_axi_s_wready),
    .axi_s_wlast   (_main_xbar_m_axi_wlast[1]),	
    .axi_s_wid     (_main_xbar_m_axi_wid[7:4]),	
    .axi_s_bresp   (_axi_slave_mux_axi_s_bresp),
    .axi_s_bvalid  (_axi_slave_mux_axi_s_bvalid),
    .axi_s_bready  (_main_xbar_m_axi_bready[1]),	
    .axi_s_bid     (_axi_slave_mux_axi_s_bid),
    .axi_s_araddr  (_main_xbar_m_axi_araddr[63:32]),	
    .axi_s_arprot  (_main_xbar_m_axi_arprot[5:3]),	
    .axi_s_arvalid (_main_xbar_m_axi_arvalid[1]),	
    .axi_s_arready (_axi_slave_mux_axi_s_arready),
    .axi_s_arsize  (_main_xbar_m_axi_arsize[5:3]),	
    .axi_s_arburst (_main_xbar_m_axi_arburst[3:2]),	
    .axi_s_arcache (_main_xbar_m_axi_arcache[7:4]),	
    .axi_s_arlock  (_main_xbar_m_axi_arlock[3:2]),	
    .axi_s_arlen   (_main_xbar_m_axi_arlen[7:4]),	
    .axi_s_arid    (_main_xbar_m_axi_arid[7:4]),	
    .axi_s_rdata   (_axi_slave_mux_axi_s_rdata),
    .axi_s_rresp   (_axi_slave_mux_axi_s_rresp),
    .axi_s_rvalid  (_axi_slave_mux_axi_s_rvalid),
    .axi_s_rready  (_main_xbar_m_axi_rready[1]),	
    .axi_s_rlast   (_axi_slave_mux_axi_s_rlast),
    .axi_s_rid     (_axi_slave_mux_axi_s_rid),
    .s0_awaddr     (_axi_slave_mux_s0_awaddr),
    .s0_awprot     (_axi_slave_mux_s0_awprot),
    .s0_awvalid    (_axi_slave_mux_s0_awvalid),
    .s0_awready    (_axi_slave_mux2_axi_s_awready),	
    .s0_awsize     (_axi_slave_mux_s0_awsize),
    .s0_awburst    (_axi_slave_mux_s0_awburst),
    .s0_awcache    (_axi_slave_mux_s0_awcache),
    .s0_awlen      (_axi_slave_mux_s0_awlen),
    .s0_awlock     (_axi_slave_mux_s0_awlock),
    .s0_awid       (_axi_slave_mux_s0_awid),
    .s0_wdata      (_axi_slave_mux_s0_wdata),
    .s0_wstrb      (_axi_slave_mux_s0_wstrb),
    .s0_wvalid     (_axi_slave_mux_s0_wvalid),
    .s0_wready     (_axi_slave_mux2_axi_s_wready),	
    .s0_wlast      (_axi_slave_mux_s0_wlast),
    .s0_wid        (_axi_slave_mux_s0_wid),
    .s0_bresp      (_axi_slave_mux2_axi_s_bresp),	
    .s0_bvalid     (_axi_slave_mux2_axi_s_bvalid),	
    .s0_bready     (_axi_slave_mux_s0_bready),
    .s0_bid        (_axi_slave_mux2_axi_s_bid),	
    .s0_araddr     (_axi_slave_mux_s0_araddr),
    .s0_arprot     (_axi_slave_mux_s0_arprot),
    .s0_arvalid    (_axi_slave_mux_s0_arvalid),
    .s0_arready    (_axi_slave_mux2_axi_s_arready),	
    .s0_arsize     (_axi_slave_mux_s0_arsize),
    .s0_arburst    (_axi_slave_mux_s0_arburst),
    .s0_arcache    (_axi_slave_mux_s0_arcache),
    .s0_arlock     (_axi_slave_mux_s0_arlock),
    .s0_arlen      (_axi_slave_mux_s0_arlen),
    .s0_arid       (_axi_slave_mux_s0_arid),
    .s0_rdata      (_axi_slave_mux2_axi_s_rdata),	
    .s0_rresp      (_axi_slave_mux2_axi_s_rresp),	
    .s0_rvalid     (_axi_slave_mux2_axi_s_rvalid),	
    .s0_rready     (_axi_slave_mux_s0_rready),
    .s0_rlast      (_axi_slave_mux2_axi_s_rlast),	
    .s0_rid        (_axi_slave_mux2_axi_s_rid),	
    .s1_awaddr     (_axi_slave_mux_s1_awaddr),
    .s1_awprot     (_axi_slave_mux_s1_awprot),
    .s1_awvalid    (_axi_slave_mux_s1_awvalid),
    .s1_awready    (_spi_s_awready),	
    .s1_awsize     (_axi_slave_mux_s1_awsize),
    .s1_awburst    (_axi_slave_mux_s1_awburst),
    .s1_awcache    (_axi_slave_mux_s1_awcache),
    .s1_awlen      (_axi_slave_mux_s1_awlen),
    .s1_awlock     (_axi_slave_mux_s1_awlock),
    .s1_awid       (_axi_slave_mux_s1_awid),
    .s1_wdata      (_axi_slave_mux_s1_wdata),
    .s1_wstrb      (_axi_slave_mux_s1_wstrb),
    .s1_wvalid     (_axi_slave_mux_s1_wvalid),
    .s1_wready     (_spi_s_wready),	
    .s1_wlast      (_axi_slave_mux_s1_wlast),
    .s1_wid        (_axi_slave_mux_s1_wid),
    .s1_bresp      (_spi_s_bresp),	
    .s1_bvalid     (_spi_s_bvalid),	
    .s1_bready     (_axi_slave_mux_s1_bready),
    .s1_bid        (_spi_s_bid),	
    .s1_araddr     (_axi_slave_mux_s1_araddr),
    .s1_arprot     (_axi_slave_mux_s1_arprot),
    .s1_arvalid    (_axi_slave_mux_s1_arvalid),
    .s1_arready    (_spi_s_arready),	
    .s1_arsize     (_axi_slave_mux_s1_arsize),
    .s1_arburst    (_axi_slave_mux_s1_arburst),
    .s1_arcache    (_axi_slave_mux_s1_arcache),
    .s1_arlock     (_axi_slave_mux_s1_arlock),
    .s1_arlen      (_axi_slave_mux_s1_arlen),
    .s1_arid       (_axi_slave_mux_s1_arid),
    .s1_rdata      (_spi_s_rdata),	
    .s1_rresp      (_spi_s_rresp),	
    .s1_rvalid     (_spi_s_rvalid),	
    .s1_rready     (_axi_slave_mux_s1_rready),
    .s1_rlast      (_spi_s_rlast),	
    .s1_rid        (_spi_s_rid),	
    .s2_awaddr     (_axi_slave_mux_s2_awaddr),
    .s2_awprot     (_axi_slave_mux_s2_awprot),
    .s2_awvalid    (_axi_slave_mux_s2_awvalid),
    .s2_awready    (_apb_dev_axi_s_awready),	
    .s2_awsize     (_axi_slave_mux_s2_awsize),
    .s2_awburst    (_axi_slave_mux_s2_awburst),
    .s2_awcache    (_axi_slave_mux_s2_awcache),
    .s2_awlen      (_axi_slave_mux_s2_awlen),
    .s2_awlock     (_axi_slave_mux_s2_awlock),
    .s2_awid       (_axi_slave_mux_s2_awid),
    .s2_wdata      (_axi_slave_mux_s2_wdata),
    .s2_wstrb      (_axi_slave_mux_s2_wstrb),
    .s2_wvalid     (_axi_slave_mux_s2_wvalid),
    .s2_wready     (_apb_dev_axi_s_wready),	
    .s2_wlast      (_axi_slave_mux_s2_wlast),
    .s2_wid        (_axi_slave_mux_s2_wid),
    .s2_bresp      (_apb_dev_axi_s_bresp),	
    .s2_bvalid     (_apb_dev_axi_s_bvalid),	
    .s2_bready     (_axi_slave_mux_s2_bready),
    .s2_bid        (_apb_dev_axi_s_bid),	
    .s2_araddr     (_axi_slave_mux_s2_araddr),
    .s2_arprot     (_axi_slave_mux_s2_arprot),
    .s2_arvalid    (_axi_slave_mux_s2_arvalid),
    .s2_arready    (_apb_dev_axi_s_arready),	
    .s2_arsize     (_axi_slave_mux_s2_arsize),
    .s2_arburst    (_axi_slave_mux_s2_arburst),
    .s2_arcache    (_axi_slave_mux_s2_arcache),
    .s2_arlock     (_axi_slave_mux_s2_arlock),
    .s2_arlen      (_axi_slave_mux_s2_arlen),
    .s2_arid       (_axi_slave_mux_s2_arid),
    .s2_rdata      (_apb_dev_axi_s_rdata),	
    .s2_rresp      (_apb_dev_axi_s_rresp),	
    .s2_rvalid     (_apb_dev_axi_s_rvalid),	
    .s2_rready     (_axi_slave_mux_s2_rready),
    .s2_rlast      (_apb_dev_axi_s_rlast),	
    .s2_rid        (_apb_dev_axi_s_rid),	
    .s3_awaddr     (_axi_slave_mux_s3_awaddr),
    .s3_awprot     (_axi_slave_mux_s3_awprot),
    .s3_awvalid    (_axi_slave_mux_s3_awvalid),
    .s3_awready    (_confreg_s_awready),	
    .s3_awsize     (_axi_slave_mux_s3_awsize),
    .s3_awburst    (_axi_slave_mux_s3_awburst),
    .s3_awcache    (_axi_slave_mux_s3_awcache),
    .s3_awlen      (_axi_slave_mux_s3_awlen),
    .s3_awlock     (_axi_slave_mux_s3_awlock),
    .s3_awid       (_axi_slave_mux_s3_awid),
    .s3_wdata      (_axi_slave_mux_s3_wdata),
    .s3_wstrb      (_axi_slave_mux_s3_wstrb),
    .s3_wvalid     (_axi_slave_mux_s3_wvalid),
    .s3_wready     (_confreg_s_wready),	
    .s3_wlast      (_axi_slave_mux_s3_wlast),
    .s3_wid        (_axi_slave_mux_s3_wid),
    .s3_bresp      (_confreg_s_bresp),	
    .s3_bvalid     (_confreg_s_bvalid),	
    .s3_bready     (_axi_slave_mux_s3_bready),
    .s3_bid        (_confreg_s_bid),	
    .s3_araddr     (_axi_slave_mux_s3_araddr),
    .s3_arprot     (_axi_slave_mux_s3_arprot),
    .s3_arvalid    (_axi_slave_mux_s3_arvalid),
    .s3_arready    (_confreg_s_arready),	
    .s3_arsize     (_axi_slave_mux_s3_arsize),
    .s3_arburst    (_axi_slave_mux_s3_arburst),
    .s3_arcache    (_axi_slave_mux_s3_arcache),
    .s3_arlock     (_axi_slave_mux_s3_arlock),
    .s3_arlen      (_axi_slave_mux_s3_arlen),
    .s3_arid       (_axi_slave_mux_s3_arid),
    .s3_rdata      (_confreg_s_rdata),	
    .s3_rresp      (_confreg_s_rresp),	
    .s3_rvalid     (_confreg_s_rvalid),	
    .s3_rready     (_axi_slave_mux_s3_rready),
    .s3_rlast      (_confreg_s_rlast),	
    .s3_rid        (_confreg_s_rid),	
    .s4_awaddr     (_axi_slave_mux_s4_awaddr),
    .s4_awprot     (_axi_slave_mux_s4_awprot),
    .s4_awvalid    (_axi_slave_mux_s4_awvalid),
    .s4_awready    (_ethernet_s_awready),	
    .s4_awsize     (_axi_slave_mux_s4_awsize),
    .s4_awburst    (_axi_slave_mux_s4_awburst),
    .s4_awcache    (_axi_slave_mux_s4_awcache),
    .s4_awlen      (_axi_slave_mux_s4_awlen),
    .s4_awlock     (_axi_slave_mux_s4_awlock),
    .s4_awid       (_axi_slave_mux_s4_awid),
    .s4_wdata      (_axi_slave_mux_s4_wdata),
    .s4_wstrb      (_axi_slave_mux_s4_wstrb),
    .s4_wvalid     (_axi_slave_mux_s4_wvalid),
    .s4_wready     (_ethernet_s_wready),	
    .s4_wlast      (_axi_slave_mux_s4_wlast),
    .s4_wid        (_axi_slave_mux_s4_wid),
    .s4_bresp      (_ethernet_s_bresp),	
    .s4_bvalid     (_ethernet_s_bvalid),	
    .s4_bready     (_axi_slave_mux_s4_bready),
    .s4_bid        (_ethernet_s_bid),	
    .s4_araddr     (_axi_slave_mux_s4_araddr),
    .s4_arprot     (_axi_slave_mux_s4_arprot),
    .s4_arvalid    (_axi_slave_mux_s4_arvalid),
    .s4_arready    (_ethernet_s_arready),	
    .s4_arsize     (_axi_slave_mux_s4_arsize),
    .s4_arburst    (_axi_slave_mux_s4_arburst),
    .s4_arcache    (_axi_slave_mux_s4_arcache),
    .s4_arlock     (_axi_slave_mux_s4_arlock),
    .s4_arlen      (_axi_slave_mux_s4_arlen),
    .s4_arid       (_axi_slave_mux_s4_arid),
    .s4_rdata      (_ethernet_s_rdata),	
    .s4_rresp      (_ethernet_s_rresp),	
    .s4_rvalid     (_ethernet_s_rvalid),	
    .s4_rready     (_axi_slave_mux_s4_rready),
    .s4_rlast      (_ethernet_s_rlast),	
    .s4_rid        (_ethernet_s_rid)	
  );
  spi_flash_ctrl spi (	
    .aclk           (_clk_pll_33_clk_out2),	
    .aresetn        (_main_reset_peripheral_aresetn),	
    .spi_addr       (16'h1FE8),	
    .fast_startup   (1'h0),	
    .s_awaddr       (_axi_slave_mux_s1_awaddr),	
    .s_awprot       (_axi_slave_mux_s1_awprot),	
    .s_awvalid      (_axi_slave_mux_s1_awvalid),	
    .s_awready      (_spi_s_awready),
    .s_awsize       (_axi_slave_mux_s1_awsize),	
    .s_awburst      (_axi_slave_mux_s1_awburst),	
    .s_awcache      (_axi_slave_mux_s1_awcache),	
    .s_awlen        (_axi_slave_mux_s1_awlen),	
    .s_awlock       (_axi_slave_mux_s1_awlock),	
    .s_awid         (_axi_slave_mux_s1_awid),	
    .s_wdata        (_axi_slave_mux_s1_wdata),	
    .s_wstrb        (_axi_slave_mux_s1_wstrb),	
    .s_wvalid       (_axi_slave_mux_s1_wvalid),	
    .s_wready       (_spi_s_wready),
    .s_wlast        (_axi_slave_mux_s1_wlast),	
    .s_wid          (_axi_slave_mux_s1_wid),	
    .s_bresp        (_spi_s_bresp),
    .s_bvalid       (_spi_s_bvalid),
    .s_bready       (_axi_slave_mux_s1_bready),	
    .s_bid          (_spi_s_bid),
    .s_araddr       (_axi_slave_mux_s1_araddr),	
    .s_arprot       (_axi_slave_mux_s1_arprot),	
    .s_arvalid      (_axi_slave_mux_s1_arvalid),	
    .s_arready      (_spi_s_arready),
    .s_arsize       (_axi_slave_mux_s1_arsize),	
    .s_arburst      (_axi_slave_mux_s1_arburst),	
    .s_arcache      (_axi_slave_mux_s1_arcache),	
    .s_arlock       (_axi_slave_mux_s1_arlock),	
    .s_arlen        (_axi_slave_mux_s1_arlen),	
    .s_arid         (_axi_slave_mux_s1_arid),	
    .s_rdata        (_spi_s_rdata),
    .s_rresp        (_spi_s_rresp),
    .s_rvalid       (_spi_s_rvalid),
    .s_rready       (_axi_slave_mux_s1_rready),	
    .s_rlast        (_spi_s_rlast),
    .s_rid          (_spi_s_rid),
    .power_down_req (1'h0),	
    .power_down_ack (/* unused */),
    .csn_o          (io_spi_csn_o),
    .csn_en         (io_spi_csn_en),
    .sck_o          (io_spi_sck_o),
    .sdo_i          (io_spi_sdo_i),
    .sdo_o          (io_spi_sdo_o),
    .sdo_en         (io_spi_sdo_en),
    .sdi_i          (io_spi_sdi_i),
    .sdi_o          (io_spi_sdi_o),
    .sdi_en         (io_spi_sdi_en),
    .inta_o         (_spi_inta_o)
  );
  confreg confreg (	
    .aclk              (_clk_pll_33_clk_out2),	
    .aresetn           (_main_reset_peripheral_aresetn),	
    .s_awaddr          (_axi_slave_mux_s3_awaddr),	
    .s_awprot          (_axi_slave_mux_s3_awprot),	
    .s_awvalid         (_axi_slave_mux_s3_awvalid),	
    .s_awready         (_confreg_s_awready),
    .s_awsize          (_axi_slave_mux_s3_awsize),	
    .s_awburst         (_axi_slave_mux_s3_awburst),	
    .s_awcache         (_axi_slave_mux_s3_awcache),	
    .s_awlen           (_axi_slave_mux_s3_awlen),	
    .s_awlock          (_axi_slave_mux_s3_awlock),	
    .s_awid            (_axi_slave_mux_s3_awid),	
    .s_wdata           (_axi_slave_mux_s3_wdata),	
    .s_wstrb           (_axi_slave_mux_s3_wstrb),	
    .s_wvalid          (_axi_slave_mux_s3_wvalid),	
    .s_wready          (_confreg_s_wready),
    .s_wlast           (_axi_slave_mux_s3_wlast),	
    .s_wid             (_axi_slave_mux_s3_wid),	
    .s_bresp           (_confreg_s_bresp),
    .s_bvalid          (_confreg_s_bvalid),
    .s_bready          (_axi_slave_mux_s3_bready),	
    .s_bid             (_confreg_s_bid),
    .s_araddr          (_axi_slave_mux_s3_araddr),	
    .s_arprot          (_axi_slave_mux_s3_arprot),	
    .s_arvalid         (_axi_slave_mux_s3_arvalid),	
    .s_arready         (_confreg_s_arready),
    .s_arsize          (_axi_slave_mux_s3_arsize),	
    .s_arburst         (_axi_slave_mux_s3_arburst),	
    .s_arcache         (_axi_slave_mux_s3_arcache),	
    .s_arlock          (_axi_slave_mux_s3_arlock),	
    .s_arlen           (_axi_slave_mux_s3_arlen),	
    .s_arid            (_axi_slave_mux_s3_arid),	
    .s_rdata           (_confreg_s_rdata),
    .s_rresp           (_confreg_s_rresp),
    .s_rvalid          (_confreg_s_rvalid),
    .s_rready          (_axi_slave_mux_s3_rready),	
    .s_rlast           (_confreg_s_rlast),
    .s_rid             (_confreg_s_rid),
    .order_addr_reg    (_confreg_order_addr_reg),
    .write_dma_end     (_dma_master0_write_dma_end),	
    .finish_read_order (_dma_master0_finish_read_order),	
    .cr00              (/* unused */),
    .cr01              (/* unused */),
    .cr02              (/* unused */),
    .cr03              (/* unused */),
    .cr04              (/* unused */),
    .cr05              (/* unused */),
    .cr06              (/* unused */),
    .cr07              (/* unused */),
    .led               (io_gpio_led),
    .led_rg0           (io_gpio_led_rg0),
    .led_rg1           (io_gpio_led_rg1),
    .num_csn           (io_gpio_num_csn),
    .num_a_g           (io_gpio_num_a_g),
    .switch            (io_gpio_switch),
    .btn_key_col       (io_gpio_btn_key_col),
    .btn_key_row       (io_gpio_btn_key_row),
    .btn_step          (io_gpio_btn_step),
    .vga_reg           (_confreg_vga_reg)
  );
  ethernet_top ethernet (	
    .hclk        (_clk_pll_33_clk_out2),	
    .hrst_       (_main_reset_peripheral_aresetn),	
    .m_awaddr    (_ethernet_m_awaddr),
    .m_awprot    (_ethernet_m_awprot),
    .m_awvalid   (_ethernet_m_awvalid),
    .m_awready   (_mig_axi_interconnect_S01_AXI_AWREADY),	
    .m_awsize    (_ethernet_m_awsize),
    .m_awburst   (_ethernet_m_awburst),
    .m_awcache   (_ethernet_m_awcache),
    .m_awlen     (_ethernet_m_awlen),
    .m_awlock    (_ethernet_m_awlock),
    .m_awid      (_ethernet_m_awid),
    .m_wdata     (_ethernet_m_wdata),
    .m_wstrb     (_ethernet_m_wstrb),
    .m_wvalid    (_ethernet_m_wvalid),
    .m_wready    (_mig_axi_interconnect_S01_AXI_WREADY),	
    .m_wlast     (_ethernet_m_wlast),
    .m_wid       (/* unused */),
    .m_bresp     (_mig_axi_interconnect_S01_AXI_BRESP),	
    .m_bvalid    (_mig_axi_interconnect_S01_AXI_BVALID),	
    .m_bready    (_ethernet_m_bready),
    .m_bid       (_mig_axi_interconnect_S01_AXI_BID),	
    .m_araddr    (_ethernet_m_araddr),
    .m_arprot    (_ethernet_m_arprot),
    .m_arvalid   (_ethernet_m_arvalid),
    .m_arready   (_mig_axi_interconnect_S01_AXI_ARREADY),	
    .m_arsize    (_ethernet_m_arsize),
    .m_arburst   (_ethernet_m_arburst),
    .m_arcache   (_ethernet_m_arcache),
    .m_arlock    (_ethernet_m_arlock),
    .m_arlen     (_ethernet_m_arlen),
    .m_arid      (_ethernet_m_arid),
    .m_rdata     (_mig_axi_interconnect_S01_AXI_RDATA),	
    .m_rresp     (_mig_axi_interconnect_S01_AXI_RRESP),	
    .m_rvalid    (_mig_axi_interconnect_S01_AXI_RVALID),	
    .m_rready    (_ethernet_m_rready),
    .m_rlast     (_mig_axi_interconnect_S01_AXI_RLAST),	
    .m_rid       (_mig_axi_interconnect_S01_AXI_RID),	
    .s_awaddr    (_axi_slave_mux_s4_awaddr),	
    .s_awprot    (_axi_slave_mux_s4_awprot),	
    .s_awvalid   (_axi_slave_mux_s4_awvalid),	
    .s_awready   (_ethernet_s_awready),
    .s_awsize    (_axi_slave_mux_s4_awsize),	
    .s_awburst   (_axi_slave_mux_s4_awburst),	
    .s_awcache   (_axi_slave_mux_s4_awcache),	
    .s_awlen     (_axi_slave_mux_s4_awlen),	
    .s_awlock    (_axi_slave_mux_s4_awlock),	
    .s_awid      (_axi_slave_mux_s4_awid),	
    .s_wdata     (_axi_slave_mux_s4_wdata),	
    .s_wstrb     (_axi_slave_mux_s4_wstrb),	
    .s_wvalid    (_axi_slave_mux_s4_wvalid),	
    .s_wready    (_ethernet_s_wready),
    .s_wlast     (_axi_slave_mux_s4_wlast),	
    .s_wid       (_axi_slave_mux_s4_wid),	
    .s_bresp     (_ethernet_s_bresp),
    .s_bvalid    (_ethernet_s_bvalid),
    .s_bready    (_axi_slave_mux_s4_bready),	
    .s_bid       (_ethernet_s_bid),
    .s_araddr    (_axi_slave_mux_s4_araddr),	
    .s_arprot    (_axi_slave_mux_s4_arprot),	
    .s_arvalid   (_axi_slave_mux_s4_arvalid),	
    .s_arready   (_ethernet_s_arready),
    .s_arsize    (_axi_slave_mux_s4_arsize),	
    .s_arburst   (_axi_slave_mux_s4_arburst),	
    .s_arcache   (_axi_slave_mux_s4_arcache),	
    .s_arlock    (_axi_slave_mux_s4_arlock),	
    .s_arlen     (_axi_slave_mux_s4_arlen),	
    .s_arid      (_axi_slave_mux_s4_arid),	
    .s_rdata     (_ethernet_s_rdata),
    .s_rresp     (_ethernet_s_rresp),
    .s_rvalid    (_ethernet_s_rvalid),
    .s_rready    (_axi_slave_mux_s4_rready),	
    .s_rlast     (_ethernet_s_rlast),
    .s_rid       (_ethernet_s_rid),
    .interrupt_0 (_ethernet_interrupt_0),
    .mtxclk_0    (io_mac_mtxclk_0),
    .mtxd_0      (io_mac_mtxd_0),
    .mtxen_0     (io_mac_mtxen_0),
    .mtxerr_0    (io_mac_mtxerr_0),
    .mrxclk_0    (io_mac_mrxclk_0),
    .mrxd_0      (io_mac_mrxd_0),
    .mrxdv_0     (io_mac_mrxdv_0),
    .mrxerr_0    (io_mac_mrxerr_0),
    .mcoll_0     (io_mac_mcoll_0),
    .mcrs_0      (io_mac_mcrs_0),
    .md_i_0      (io_mac_md_i_0),
    .mdc_0       (io_mac_mdc_0),
    .md_o_0      (io_mac_md_o_0),
    .md_oe_0     (io_mac_md_oe_0)
  );
  clk_pll_33 clk_pll_33 (	
    .clk_out1 (_clk_pll_33_clk_out1),
    .clk_out2 (_clk_pll_33_clk_out2),
    .clk_100  (_clk_pll_33_clk_100),
    .clk_25   (_clk_pll_33_clk_25),
    .clk_in1  (io_clk),
    .resetn   (io_resetn),
    .locked   (_clk_pll_33_locked)
  );
  clk_wiz_0 clk_pll_1 (	
    .clk_out1 (_clk_pll_1_clk_out1),
    .clk_in1  (io_clk)
  );
  axi_interconnect_0 mig_axi_interconnect (	
    .INTERCONNECT_ACLK    (_mig_axi_ui_clk),	
    .INTERCONNECT_ARESETN (_main_reset_interconnect_aresetn),	
    .S00_AXI_ARESET_OUT_N (/* unused */),
    .S00_AXI_ACLK         (_clk_pll_33_clk_out2),	
    .S00_AXI_AWADDR       (_main_xbar_m_axi_awaddr[31:0]),
    .S00_AXI_AWPROT       (_main_xbar_m_axi_awprot[2:0]),
    .S00_AXI_AWVALID      (_main_xbar_m_axi_awvalid[0]),
    .S00_AXI_AWREADY      (_mig_axi_interconnect_S00_AXI_AWREADY),
    .S00_AXI_AWSIZE       (_main_xbar_m_axi_awsize[2:0]),
    .S00_AXI_AWBURST      (_main_xbar_m_axi_awburst[1:0]),
    .S00_AXI_AWCACHE      (_main_xbar_m_axi_awcache[3:0]),
    .S00_AXI_AWLEN        (_main_xbar_m_axi_awlen[3:0]),
    .S00_AXI_AWLOCK       (_main_xbar_m_axi_awlock[1:0]),
    .S00_AXI_AWQOS        (4'h0),	
    .S00_AXI_AWID         (_main_xbar_m_axi_awid[3:0]),
    .S00_AXI_WDATA        (_main_xbar_m_axi_wdata[31:0]),
    .S00_AXI_WSTRB        (_main_xbar_m_axi_wstrb[3:0]),
    .S00_AXI_WVALID       (_main_xbar_m_axi_wvalid[0]),
    .S00_AXI_WREADY       (_mig_axi_interconnect_S00_AXI_WREADY),
    .S00_AXI_WLAST        (_main_xbar_m_axi_wlast[0]),
    .S00_AXI_BRESP        (_mig_axi_interconnect_S00_AXI_BRESP),
    .S00_AXI_BVALID       (_mig_axi_interconnect_S00_AXI_BVALID),
    .S00_AXI_BREADY       (_main_xbar_m_axi_bready[0]),
    .S00_AXI_BID          (_mig_axi_interconnect_S00_AXI_BID),
    .S00_AXI_ARADDR       (_main_xbar_m_axi_araddr[31:0]),
    .S00_AXI_ARPROT       (_main_xbar_m_axi_arprot[2:0]),
    .S00_AXI_ARVALID      (_main_xbar_m_axi_arvalid[0]),
    .S00_AXI_ARREADY      (_mig_axi_interconnect_S00_AXI_ARREADY),
    .S00_AXI_ARSIZE       (_main_xbar_m_axi_arsize[2:0]),
    .S00_AXI_ARBURST      (_main_xbar_m_axi_arburst[1:0]),
    .S00_AXI_ARCACHE      (_main_xbar_m_axi_arcache[3:0]),
    .S00_AXI_ARLOCK       (_main_xbar_m_axi_arlock[1:0]),
    .S00_AXI_ARLEN        (_main_xbar_m_axi_arlen[3:0]),
    .S00_AXI_ARQOS        (4'h0),	
    .S00_AXI_ARID         (_main_xbar_m_axi_arid[3:0]),
    .S00_AXI_RDATA        (_mig_axi_interconnect_S00_AXI_RDATA),
    .S00_AXI_RRESP        (_mig_axi_interconnect_S00_AXI_RRESP),
    .S00_AXI_RVALID       (_mig_axi_interconnect_S00_AXI_RVALID),
    .S00_AXI_RREADY       (_main_xbar_m_axi_rready[0]),
    .S00_AXI_RLAST        (_mig_axi_interconnect_S00_AXI_RLAST),
    .S00_AXI_RID          (_mig_axi_interconnect_S00_AXI_RID),
    .S01_AXI_ARESET_OUT_N (/* unused */),
    .S01_AXI_ACLK         (_clk_pll_33_clk_out2),	
    .S01_AXI_AWADDR       (_ethernet_m_awaddr),	
    .S01_AXI_AWPROT       (_ethernet_m_awprot),	
    .S01_AXI_AWVALID      (_ethernet_m_awvalid),	
    .S01_AXI_AWREADY      (_mig_axi_interconnect_S01_AXI_AWREADY),
    .S01_AXI_AWSIZE       (_ethernet_m_awsize),	
    .S01_AXI_AWBURST      (_ethernet_m_awburst),	
    .S01_AXI_AWCACHE      (_ethernet_m_awcache),	
    .S01_AXI_AWLEN        (_ethernet_m_awlen),	
    .S01_AXI_AWLOCK       (_ethernet_m_awlock),	
    .S01_AXI_AWQOS        (4'h0),	
    .S01_AXI_AWID         (_ethernet_m_awid),	
    .S01_AXI_WDATA        (_ethernet_m_wdata),	
    .S01_AXI_WSTRB        (_ethernet_m_wstrb),	
    .S01_AXI_WVALID       (_ethernet_m_wvalid),	
    .S01_AXI_WREADY       (_mig_axi_interconnect_S01_AXI_WREADY),
    .S01_AXI_WLAST        (_ethernet_m_wlast),	
    .S01_AXI_BRESP        (_mig_axi_interconnect_S01_AXI_BRESP),
    .S01_AXI_BVALID       (_mig_axi_interconnect_S01_AXI_BVALID),
    .S01_AXI_BREADY       (_ethernet_m_bready),	
    .S01_AXI_BID          (_mig_axi_interconnect_S01_AXI_BID),
    .S01_AXI_ARADDR       (_ethernet_m_araddr),	
    .S01_AXI_ARPROT       (_ethernet_m_arprot),	
    .S01_AXI_ARVALID      (_ethernet_m_arvalid),	
    .S01_AXI_ARREADY      (_mig_axi_interconnect_S01_AXI_ARREADY),
    .S01_AXI_ARSIZE       (_ethernet_m_arsize),	
    .S01_AXI_ARBURST      (_ethernet_m_arburst),	
    .S01_AXI_ARCACHE      (_ethernet_m_arcache),	
    .S01_AXI_ARLOCK       (_ethernet_m_arlock),	
    .S01_AXI_ARLEN        (_ethernet_m_arlen),	
    .S01_AXI_ARQOS        (4'h0),	
    .S01_AXI_ARID         (_ethernet_m_arid),	
    .S01_AXI_RDATA        (_mig_axi_interconnect_S01_AXI_RDATA),
    .S01_AXI_RRESP        (_mig_axi_interconnect_S01_AXI_RRESP),
    .S01_AXI_RVALID       (_mig_axi_interconnect_S01_AXI_RVALID),
    .S01_AXI_RREADY       (_ethernet_m_rready),	
    .S01_AXI_RLAST        (_mig_axi_interconnect_S01_AXI_RLAST),
    .S01_AXI_RID          (_mig_axi_interconnect_S01_AXI_RID),
    .S02_AXI_ARESET_OUT_N (/* unused */),
    .S02_AXI_ACLK         (_clk_pll_33_clk_out2),	
    .S02_AXI_AWADDR       (_dma_master0_awaddr),	
    .S02_AXI_AWPROT       (_dma_master0_awprot),	
    .S02_AXI_AWVALID      (_dma_master0_awvalid),	
    .S02_AXI_AWREADY      (_mig_axi_interconnect_S02_AXI_AWREADY),
    .S02_AXI_AWSIZE       (_dma_master0_awsize),	
    .S02_AXI_AWBURST      (_dma_master0_awburst),	
    .S02_AXI_AWCACHE      (_dma_master0_awcache),	
    .S02_AXI_AWLEN        (_dma_master0_awlen),	
    .S02_AXI_AWLOCK       (_dma_master0_awlock),	
    .S02_AXI_AWQOS        (4'h0),	
    .S02_AXI_AWID         (_dma_master0_awid),	
    .S02_AXI_WDATA        (_dma_master0_wdata),	
    .S02_AXI_WSTRB        (_dma_master0_wstrb),	
    .S02_AXI_WVALID       (_dma_master0_wvalid),	
    .S02_AXI_WREADY       (_mig_axi_interconnect_S02_AXI_WREADY),
    .S02_AXI_WLAST        (_dma_master0_wlast),	
    .S02_AXI_BRESP        (_mig_axi_interconnect_S02_AXI_BRESP),
    .S02_AXI_BVALID       (_mig_axi_interconnect_S02_AXI_BVALID),
    .S02_AXI_BREADY       (_dma_master0_bready),	
    .S02_AXI_BID          (_mig_axi_interconnect_S02_AXI_BID),
    .S02_AXI_ARADDR       (_dma_master0_araddr),	
    .S02_AXI_ARPROT       (_dma_master0_arprot),	
    .S02_AXI_ARVALID      (_dma_master0_arvalid),	
    .S02_AXI_ARREADY      (_mig_axi_interconnect_S02_AXI_ARREADY),
    .S02_AXI_ARSIZE       (_dma_master0_arsize),	
    .S02_AXI_ARBURST      (_dma_master0_arburst),	
    .S02_AXI_ARCACHE      (_dma_master0_arcache),	
    .S02_AXI_ARLOCK       (_dma_master0_arlock),	
    .S02_AXI_ARLEN        (_dma_master0_arlen),	
    .S02_AXI_ARQOS        (4'h0),	
    .S02_AXI_ARID         (_dma_master0_arid),	
    .S02_AXI_RDATA        (_mig_axi_interconnect_S02_AXI_RDATA),
    .S02_AXI_RRESP        (_mig_axi_interconnect_S02_AXI_RRESP),
    .S02_AXI_RVALID       (_mig_axi_interconnect_S02_AXI_RVALID),
    .S02_AXI_RREADY       (_dma_master0_rready),	
    .S02_AXI_RLAST        (_mig_axi_interconnect_S02_AXI_RLAST),
    .S02_AXI_RID          (_mig_axi_interconnect_S02_AXI_RID),
    .S03_AXI_ARESET_OUT_N (/* unused */),
    .S03_AXI_ACLK         (_clk_pll_33_clk_out2),	
    .S03_AXI_AWADDR       (_axi_slave_mux2_s0_awaddr),	
    .S03_AXI_AWPROT       (_axi_slave_mux2_s0_awprot),	
    .S03_AXI_AWVALID      (_axi_slave_mux2_s0_awvalid),	
    .S03_AXI_AWREADY      (_mig_axi_interconnect_S03_AXI_AWREADY),
    .S03_AXI_AWSIZE       (_axi_slave_mux2_s0_awsize),	
    .S03_AXI_AWBURST      (_axi_slave_mux2_s0_awburst),	
    .S03_AXI_AWCACHE      (_axi_slave_mux2_s0_awcache),	
    .S03_AXI_AWLEN        (_axi_slave_mux2_s0_awlen),	
    .S03_AXI_AWLOCK       (_axi_slave_mux2_s0_awlock),	
    .S03_AXI_AWQOS        (4'h0),	
    .S03_AXI_AWID         (_axi_slave_mux2_s0_awid),	
    .S03_AXI_WDATA        (_axi_slave_mux2_s0_wdata),	
    .S03_AXI_WSTRB        (_axi_slave_mux2_s0_wstrb),	
    .S03_AXI_WVALID       (_axi_slave_mux2_s0_wvalid),	
    .S03_AXI_WREADY       (_mig_axi_interconnect_S03_AXI_WREADY),
    .S03_AXI_WLAST        (_axi_slave_mux2_s0_wlast),	
    .S03_AXI_BRESP        (_mig_axi_interconnect_S03_AXI_BRESP),
    .S03_AXI_BVALID       (_mig_axi_interconnect_S03_AXI_BVALID),
    .S03_AXI_BREADY       (_axi_slave_mux2_s0_bready),	
    .S03_AXI_BID          (_mig_axi_interconnect_S03_AXI_BID),
    .S03_AXI_ARADDR       (_axi_slave_mux2_s0_araddr),	
    .S03_AXI_ARPROT       (_axi_slave_mux2_s0_arprot),	
    .S03_AXI_ARVALID      (_axi_slave_mux2_s0_arvalid),	
    .S03_AXI_ARREADY      (_mig_axi_interconnect_S03_AXI_ARREADY),
    .S03_AXI_ARSIZE       (_axi_slave_mux2_s0_arsize),	
    .S03_AXI_ARBURST      (_axi_slave_mux2_s0_arburst),	
    .S03_AXI_ARCACHE      (_axi_slave_mux2_s0_arcache),	
    .S03_AXI_ARLOCK       (_axi_slave_mux2_s0_arlock),	
    .S03_AXI_ARLEN        (_axi_slave_mux2_s0_arlen),	
    .S03_AXI_ARQOS        (4'h0),	
    .S03_AXI_ARID         (_axi_slave_mux2_s0_arid),	
    .S03_AXI_RDATA        (_mig_axi_interconnect_S03_AXI_RDATA),
    .S03_AXI_RRESP        (_mig_axi_interconnect_S03_AXI_RRESP),
    .S03_AXI_RVALID       (_mig_axi_interconnect_S03_AXI_RVALID),
    .S03_AXI_RREADY       (_axi_slave_mux2_s0_rready),	
    .S03_AXI_RLAST        (_mig_axi_interconnect_S03_AXI_RLAST),
    .S03_AXI_RID          (_mig_axi_interconnect_S03_AXI_RID),
    .S04_AXI_ARESET_OUT_N (/* unused */),
    .S04_AXI_ACLK         (_clk_pll_33_clk_100),	
    .S04_AXI_AWADDR       (_tft_m_axi_awaddr),	
    .S04_AXI_AWPROT       (_tft_m_axi_awprot),	
    .S04_AXI_AWVALID      (_tft_m_axi_awvalid),	
    .S04_AXI_AWREADY      (_mig_axi_interconnect_S04_AXI_AWREADY),
    .S04_AXI_AWSIZE       (_tft_m_axi_awsize),	
    .S04_AXI_AWBURST      (_tft_m_axi_awburst),	
    .S04_AXI_AWCACHE      (_tft_m_axi_awcache),	
    .S04_AXI_AWLEN        (_tft_m_axi_awlen[3:0]),
    .S04_AXI_AWLOCK       (2'h0),	
    .S04_AXI_AWQOS        (4'h0),	
    .S04_AXI_AWID         (4'h0),	
    .S04_AXI_WDATA        (_tft_m_axi_wdata),	
    .S04_AXI_WSTRB        (_tft_m_axi_wstrb),	
    .S04_AXI_WVALID       (_tft_m_axi_wvalid),	
    .S04_AXI_WREADY       (_mig_axi_interconnect_S04_AXI_WREADY),
    .S04_AXI_WLAST        (_tft_m_axi_wlast),	
    .S04_AXI_BRESP        (_mig_axi_interconnect_S04_AXI_BRESP),
    .S04_AXI_BVALID       (_mig_axi_interconnect_S04_AXI_BVALID),
    .S04_AXI_BREADY       (_tft_m_axi_bready),	
    .S04_AXI_BID          (/* unused */),
    .S04_AXI_ARADDR       (_tft_m_axi_araddr),	
    .S04_AXI_ARPROT       (_tft_m_axi_arprot),	
    .S04_AXI_ARVALID      (_tft_m_axi_arvalid),	
    .S04_AXI_ARREADY      (_mig_axi_interconnect_S04_AXI_ARREADY),
    .S04_AXI_ARSIZE       (_tft_m_axi_arsize),	
    .S04_AXI_ARBURST      (_tft_m_axi_arburst),	
    .S04_AXI_ARCACHE      (_tft_m_axi_arcache),	
    .S04_AXI_ARLOCK       (2'h0),	
    .S04_AXI_ARLEN        (_tft_m_axi_arlen[3:0]),
    .S04_AXI_ARQOS        (4'h0),	
    .S04_AXI_ARID         (4'h0),	
    .S04_AXI_RDATA        (_mig_axi_interconnect_S04_AXI_RDATA),
    .S04_AXI_RRESP        (_mig_axi_interconnect_S04_AXI_RRESP),
    .S04_AXI_RVALID       (_mig_axi_interconnect_S04_AXI_RVALID),
    .S04_AXI_RREADY       (_tft_m_axi_rready),	
    .S04_AXI_RLAST        (_mig_axi_interconnect_S04_AXI_RLAST),
    .S04_AXI_RID          (/* unused */),
    .S05_AXI_ARESET_OUT_N (/* unused */),
    .S05_AXI_ACLK         (_clk_pll_33_clk_100),	
    .S05_AXI_AWADDR       (_fb_write_m_axi_mm_video_AWADDR),	
    .S05_AXI_AWPROT       (_fb_write_m_axi_mm_video_AWPROT),	
    .S05_AXI_AWVALID      (_fb_write_m_axi_mm_video_AWVALID),	
    .S05_AXI_AWREADY      (_mig_axi_interconnect_S05_AXI_AWREADY),
    .S05_AXI_AWSIZE       (_fb_write_m_axi_mm_video_AWSIZE),	
    .S05_AXI_AWBURST      (_fb_write_m_axi_mm_video_AWBURST),	
    .S05_AXI_AWCACHE      (_fb_write_m_axi_mm_video_AWCACHE),	
    .S05_AXI_AWLEN        (_fb_write_m_axi_mm_video_AWLEN),	
    .S05_AXI_AWLOCK       (_fb_write_m_axi_mm_video_AWLOCK),	
    .S05_AXI_AWQOS        (_fb_write_m_axi_mm_video_AWQOS),	
    .S05_AXI_AWID         (4'h0),	
    .S05_AXI_WDATA        (_fb_write_m_axi_mm_video_WDATA),	
    .S05_AXI_WSTRB        (_fb_write_m_axi_mm_video_WSTRB),	
    .S05_AXI_WVALID       (_fb_write_m_axi_mm_video_WVALID),	
    .S05_AXI_WREADY       (_mig_axi_interconnect_S05_AXI_WREADY),
    .S05_AXI_WLAST        (_fb_write_m_axi_mm_video_WLAST),	
    .S05_AXI_BRESP        (_mig_axi_interconnect_S05_AXI_BRESP),
    .S05_AXI_BVALID       (_mig_axi_interconnect_S05_AXI_BVALID),
    .S05_AXI_BREADY       (_fb_write_m_axi_mm_video_BREADY),	
    .S05_AXI_BID          (/* unused */),
    .S05_AXI_ARADDR       (_fb_write_m_axi_mm_video_ARADDR),	
    .S05_AXI_ARPROT       (_fb_write_m_axi_mm_video_ARPROT),	
    .S05_AXI_ARVALID      (_fb_write_m_axi_mm_video_ARVALID),	
    .S05_AXI_ARREADY      (_mig_axi_interconnect_S05_AXI_ARREADY),
    .S05_AXI_ARSIZE       (_fb_write_m_axi_mm_video_ARSIZE),	
    .S05_AXI_ARBURST      (_fb_write_m_axi_mm_video_ARBURST),	
    .S05_AXI_ARCACHE      (_fb_write_m_axi_mm_video_ARCACHE),	
    .S05_AXI_ARLOCK       (_fb_write_m_axi_mm_video_ARLOCK),	
    .S05_AXI_ARLEN        (_fb_write_m_axi_mm_video_ARLEN),	
    .S05_AXI_ARQOS        (_fb_write_m_axi_mm_video_ARQOS),	
    .S05_AXI_ARID         (4'h0),	
    .S05_AXI_RDATA        (_mig_axi_interconnect_S05_AXI_RDATA),
    .S05_AXI_RRESP        (_mig_axi_interconnect_S05_AXI_RRESP),
    .S05_AXI_RVALID       (_mig_axi_interconnect_S05_AXI_RVALID),
    .S05_AXI_RREADY       (_fb_write_m_axi_mm_video_RREADY),	
    .S05_AXI_RLAST        (_mig_axi_interconnect_S05_AXI_RLAST),
    .S05_AXI_RID          (/* unused */),
    .S06_AXI_ARESET_OUT_N (/* unused */),
    .S06_AXI_ACLK         (_clk_pll_33_clk_100),	
    .S06_AXI_AWADDR       (_fb_read_m_axi_mm_video_AWADDR),	
    .S06_AXI_AWPROT       (_fb_read_m_axi_mm_video_AWPROT),	
    .S06_AXI_AWVALID      (_fb_read_m_axi_mm_video_AWVALID),	
    .S06_AXI_AWREADY      (_mig_axi_interconnect_S06_AXI_AWREADY),
    .S06_AXI_AWSIZE       (_fb_read_m_axi_mm_video_AWSIZE),	
    .S06_AXI_AWBURST      (_fb_read_m_axi_mm_video_AWBURST),	
    .S06_AXI_AWCACHE      (_fb_read_m_axi_mm_video_AWCACHE),	
    .S06_AXI_AWLEN        (_fb_read_m_axi_mm_video_AWLEN),	
    .S06_AXI_AWLOCK       (_fb_read_m_axi_mm_video_AWLOCK),	
    .S06_AXI_AWQOS        (_fb_read_m_axi_mm_video_AWQOS),	
    .S06_AXI_AWID         (4'h0),	
    .S06_AXI_WDATA        (_fb_read_m_axi_mm_video_WDATA),	
    .S06_AXI_WSTRB        (_fb_read_m_axi_mm_video_WSTRB),	
    .S06_AXI_WVALID       (_fb_read_m_axi_mm_video_WVALID),	
    .S06_AXI_WREADY       (_mig_axi_interconnect_S06_AXI_WREADY),
    .S06_AXI_WLAST        (_fb_read_m_axi_mm_video_WLAST),	
    .S06_AXI_BRESP        (_mig_axi_interconnect_S06_AXI_BRESP),
    .S06_AXI_BVALID       (_mig_axi_interconnect_S06_AXI_BVALID),
    .S06_AXI_BREADY       (_fb_read_m_axi_mm_video_BREADY),	
    .S06_AXI_BID          (/* unused */),
    .S06_AXI_ARADDR       (_fb_read_m_axi_mm_video_ARADDR),	
    .S06_AXI_ARPROT       (_fb_read_m_axi_mm_video_ARPROT),	
    .S06_AXI_ARVALID      (_fb_read_m_axi_mm_video_ARVALID),	
    .S06_AXI_ARREADY      (_mig_axi_interconnect_S06_AXI_ARREADY),
    .S06_AXI_ARSIZE       (_fb_read_m_axi_mm_video_ARSIZE),	
    .S06_AXI_ARBURST      (_fb_read_m_axi_mm_video_ARBURST),	
    .S06_AXI_ARCACHE      (_fb_read_m_axi_mm_video_ARCACHE),	
    .S06_AXI_ARLOCK       (_fb_read_m_axi_mm_video_ARLOCK),	
    .S06_AXI_ARLEN        (_fb_read_m_axi_mm_video_ARLEN),	
    .S06_AXI_ARQOS        (_fb_read_m_axi_mm_video_ARQOS),	
    .S06_AXI_ARID         (4'h0),	
    .S06_AXI_RDATA        (_mig_axi_interconnect_S06_AXI_RDATA),
    .S06_AXI_RRESP        (_mig_axi_interconnect_S06_AXI_RRESP),
    .S06_AXI_RVALID       (_mig_axi_interconnect_S06_AXI_RVALID),
    .S06_AXI_RREADY       (_fb_read_m_axi_mm_video_RREADY),	
    .S06_AXI_RLAST        (_mig_axi_interconnect_S06_AXI_RLAST),
    .S06_AXI_RID          (/* unused */),
    .M00_AXI_ARESET_OUT_N (_mig_axi_interconnect_M00_AXI_ARESET_OUT_N),
    .M00_AXI_ACLK         (_mig_axi_ui_clk),	
    .M00_AXI_AWADDR       (_mig_axi_interconnect_M00_AXI_AWADDR),
    .M00_AXI_AWPROT       (_mig_axi_interconnect_M00_AXI_AWPROT),
    .M00_AXI_AWVALID      (_mig_axi_interconnect_M00_AXI_AWVALID),
    .M00_AXI_AWREADY      (_mig_axi_s_axi_awready),	
    .M00_AXI_AWSIZE       (_mig_axi_interconnect_M00_AXI_AWSIZE),
    .M00_AXI_AWBURST      (_mig_axi_interconnect_M00_AXI_AWBURST),
    .M00_AXI_AWCACHE      (_mig_axi_interconnect_M00_AXI_AWCACHE),
    .M00_AXI_AWLEN        (_mig_axi_interconnect_M00_AXI_AWLEN),
    .M00_AXI_AWLOCK       (_mig_axi_interconnect_M00_AXI_AWLOCK),
    .M00_AXI_AWQOS        (_mig_axi_interconnect_M00_AXI_AWQOS),
    .M00_AXI_AWID         (_mig_axi_interconnect_M00_AXI_AWID),
    .M00_AXI_WDATA        (_mig_axi_interconnect_M00_AXI_WDATA),
    .M00_AXI_WSTRB        (_mig_axi_interconnect_M00_AXI_WSTRB),
    .M00_AXI_WVALID       (_mig_axi_interconnect_M00_AXI_WVALID),
    .M00_AXI_WREADY       (_mig_axi_s_axi_wready),	
    .M00_AXI_WLAST        (_mig_axi_interconnect_M00_AXI_WLAST),
    .M00_AXI_BRESP        (_mig_axi_s_axi_bresp),	
    .M00_AXI_BVALID       (_mig_axi_s_axi_bvalid),	
    .M00_AXI_BREADY       (_mig_axi_interconnect_M00_AXI_BREADY),
    .M00_AXI_BID          (_mig_axi_s_axi_bid),	
    .M00_AXI_ARADDR       (_mig_axi_interconnect_M00_AXI_ARADDR),
    .M00_AXI_ARPROT       (_mig_axi_interconnect_M00_AXI_ARPROT),
    .M00_AXI_ARVALID      (_mig_axi_interconnect_M00_AXI_ARVALID),
    .M00_AXI_ARREADY      (_mig_axi_s_axi_arready),	
    .M00_AXI_ARSIZE       (_mig_axi_interconnect_M00_AXI_ARSIZE),
    .M00_AXI_ARBURST      (_mig_axi_interconnect_M00_AXI_ARBURST),
    .M00_AXI_ARCACHE      (_mig_axi_interconnect_M00_AXI_ARCACHE),
    .M00_AXI_ARLOCK       (_mig_axi_interconnect_M00_AXI_ARLOCK),
    .M00_AXI_ARLEN        (_mig_axi_interconnect_M00_AXI_ARLEN),
    .M00_AXI_ARQOS        (_mig_axi_interconnect_M00_AXI_ARQOS),
    .M00_AXI_ARID         (_mig_axi_interconnect_M00_AXI_ARID),
    .M00_AXI_RDATA        (_mig_axi_s_axi_rdata),	
    .M00_AXI_RRESP        (_mig_axi_s_axi_rresp),	
    .M00_AXI_RVALID       (_mig_axi_s_axi_rvalid),	
    .M00_AXI_RREADY       (_mig_axi_interconnect_M00_AXI_RREADY),
    .M00_AXI_RLAST        (_mig_axi_s_axi_rlast),	
    .M00_AXI_RID          (_mig_axi_s_axi_rid)	
  );
  mig_axi_32 mig_axi (	
    .ddr3_dq             (io_ddr3_dq),
    .ddr3_dqs_p          (io_ddr3_dqs_p),
    .ddr3_dqs_n          (io_ddr3_dqs_n),
    .ddr3_addr           (io_ddr3_addr),
    .ddr3_ba             (io_ddr3_ba),
    .ddr3_ras_n          (io_ddr3_ras_n),
    .ddr3_cas_n          (io_ddr3_cas_n),
    .ddr3_we_n           (io_ddr3_we_n),
    .ddr3_reset_n        (io_ddr3_reset_n),
    .ddr3_ck_p           (io_ddr3_ck_p),
    .ddr3_ck_n           (io_ddr3_ck_n),
    .ddr3_cke            (io_ddr3_cke),
    .ddr3_dm             (io_ddr3_dm),
    .ddr3_odt            (io_ddr3_odt),
    .init_calib_complete (_mig_axi_init_calib_complete),
    .ui_clk              (_mig_axi_ui_clk),
    .ui_clk_sync_rst     (/* unused */),
    .sys_clk_i           (io_clk),
    .clk_ref_i           (_clk_pll_1_clk_out1),	
    .sys_rst             (_clk_pll_33_locked),	
    .mmcm_locked         (/* unused */),
    .app_sr_active       (/* unused */),
    .app_ref_ack         (/* unused */),
    .app_zq_ack          (/* unused */),
    .app_sr_req          (1'h0),	
    .app_ref_req         (1'h0),	
    .app_zq_req          (1'h0),	
    .aresetn             (_mig_axi_interconnect_M00_AXI_ARESET_OUT_N),	
    .s_axi_awaddr        (_mig_axi_interconnect_M00_AXI_AWADDR),	
    .s_axi_awprot        (_mig_axi_interconnect_M00_AXI_AWPROT),	
    .s_axi_awvalid       (_mig_axi_interconnect_M00_AXI_AWVALID),	
    .s_axi_awready       (_mig_axi_s_axi_awready),
    .s_axi_awsize        (_mig_axi_interconnect_M00_AXI_AWSIZE),	
    .s_axi_awburst       (_mig_axi_interconnect_M00_AXI_AWBURST),	
    .s_axi_awcache       (_mig_axi_interconnect_M00_AXI_AWCACHE),	
    .s_axi_awlen         (_mig_axi_interconnect_M00_AXI_AWLEN),	
    .s_axi_awlock        (_mig_axi_interconnect_M00_AXI_AWLOCK),	
    .s_axi_awqos         (_mig_axi_interconnect_M00_AXI_AWQOS),	
    .s_axi_awid          (_mig_axi_interconnect_M00_AXI_AWID),	
    .s_axi_wdata         (_mig_axi_interconnect_M00_AXI_WDATA),	
    .s_axi_wstrb         (_mig_axi_interconnect_M00_AXI_WSTRB),	
    .s_axi_wvalid        (_mig_axi_interconnect_M00_AXI_WVALID),	
    .s_axi_wready        (_mig_axi_s_axi_wready),
    .s_axi_wlast         (_mig_axi_interconnect_M00_AXI_WLAST),	
    .s_axi_bresp         (_mig_axi_s_axi_bresp),
    .s_axi_bvalid        (_mig_axi_s_axi_bvalid),
    .s_axi_bready        (_mig_axi_interconnect_M00_AXI_BREADY),	
    .s_axi_bid           (_mig_axi_s_axi_bid),
    .s_axi_araddr        (_mig_axi_interconnect_M00_AXI_ARADDR),	
    .s_axi_arprot        (_mig_axi_interconnect_M00_AXI_ARPROT),	
    .s_axi_arvalid       (_mig_axi_interconnect_M00_AXI_ARVALID),	
    .s_axi_arready       (_mig_axi_s_axi_arready),
    .s_axi_arsize        (_mig_axi_interconnect_M00_AXI_ARSIZE),	
    .s_axi_arburst       (_mig_axi_interconnect_M00_AXI_ARBURST),	
    .s_axi_arcache       (_mig_axi_interconnect_M00_AXI_ARCACHE),	
    .s_axi_arlock        (_mig_axi_interconnect_M00_AXI_ARLOCK),	
    .s_axi_arlen         (_mig_axi_interconnect_M00_AXI_ARLEN),	
    .s_axi_arqos         (_mig_axi_interconnect_M00_AXI_ARQOS),	
    .s_axi_arid          (_mig_axi_interconnect_M00_AXI_ARID),	
    .s_axi_rdata         (_mig_axi_s_axi_rdata),
    .s_axi_rresp         (_mig_axi_s_axi_rresp),
    .s_axi_rvalid        (_mig_axi_s_axi_rvalid),
    .s_axi_rready        (_mig_axi_interconnect_M00_AXI_RREADY),	
    .s_axi_rlast         (_mig_axi_s_axi_rlast),
    .s_axi_rid           (_mig_axi_s_axi_rid)
  );
  dma_master dma_master0 (	
    .clk               (_clk_pll_33_clk_out2),	
    .rst_n             (_main_reset_peripheral_aresetn),	
    .awaddr            (_dma_master0_awaddr),
    .awprot            (_dma_master0_awprot),
    .awvalid           (_dma_master0_awvalid),
    .awready           (_mig_axi_interconnect_S02_AXI_AWREADY),
    .awsize            (_dma_master0_awsize),
    .awburst           (_dma_master0_awburst),
    .awcache           (_dma_master0_awcache),
    .awlen             (_dma_master0_awlen),
    .awlock            (_dma_master0_awlock),
    .awid              (_dma_master0_awid),
    .wdata             (_dma_master0_wdata),
    .wstrb             (_dma_master0_wstrb),
    .wvalid            (_dma_master0_wvalid),
    .wready            (_mig_axi_interconnect_S02_AXI_WREADY),
    .wlast             (_dma_master0_wlast),
    .wid               (/* unused */),
    .bresp             (_mig_axi_interconnect_S02_AXI_BRESP),
    .bvalid            (_mig_axi_interconnect_S02_AXI_BVALID),
    .bready            (_dma_master0_bready),
    .bid               (_mig_axi_interconnect_S02_AXI_BID),
    .araddr            (_dma_master0_araddr),
    .arprot            (_dma_master0_arprot),
    .arvalid           (_dma_master0_arvalid),
    .arready           (_mig_axi_interconnect_S02_AXI_ARREADY),
    .arsize            (_dma_master0_arsize),
    .arburst           (_dma_master0_arburst),
    .arcache           (_dma_master0_arcache),
    .arlock            (_dma_master0_arlock),
    .arlen             (_dma_master0_arlen),
    .arid              (_dma_master0_arid),
    .rdata             (_mig_axi_interconnect_S02_AXI_RDATA),
    .rresp             (_mig_axi_interconnect_S02_AXI_RRESP),
    .rvalid            (_mig_axi_interconnect_S02_AXI_RVALID),
    .rready            (_dma_master0_rready),
    .rlast             (_mig_axi_interconnect_S02_AXI_RLAST),
    .rid               (_mig_axi_interconnect_S02_AXI_RID),
    .dma_int           (_dma_master0_dma_int),
    .dma_ack_out       (_dma_master0_dma_ack_out),
    .order_addr_in     (_confreg_order_addr_reg),
    .dma_req_in        (_apb_dev_dma_req_o),
    .finish_read_order (_dma_master0_finish_read_order),
    .write_dma_end     (_dma_master0_write_dma_end),
    .dma_gnt           (_apb_dev_dma_grant),
    .apb_psel          (_dma_master0_apb_psel),
    .apb_valid_req     (_dma_master0_apb_valid_req),
    .apb_penable       (_dma_master0_apb_penable),
    .apb_rw            (_dma_master0_apb_rw),
    .apb_addr          (_dma_master0_apb_addr),
    .apb_rdata         (_apb_dev_apb_rdata_dma),
    .apb_wdata         (_dma_master0_apb_wdata)
  );
  axi2apb_misc apb_dev (
    .clk           (_clk_pll_33_clk_out2),
    .rst_n         (_main_reset_peripheral_aresetn),
    .axi_s_awaddr  (_axi_slave_mux_s2_awaddr),
    .axi_s_awprot  (_axi_slave_mux_s2_awprot),
    .axi_s_awvalid (_axi_slave_mux_s2_awvalid),
    .axi_s_awready (_apb_dev_axi_s_awready),
    .axi_s_awsize  (_axi_slave_mux_s2_awsize),
    .axi_s_awburst (_axi_slave_mux_s2_awburst),
    .axi_s_awcache (_axi_slave_mux_s2_awcache),
    .axi_s_awlen   (_axi_slave_mux_s2_awlen),
    .axi_s_awlock  (_axi_slave_mux_s2_awlock),
    .axi_s_awid    (_axi_slave_mux_s2_awid),
    .axi_s_wdata   (_axi_slave_mux_s2_wdata),
    .axi_s_wstrb   (_axi_slave_mux_s2_wstrb),
    .axi_s_wvalid  (_axi_slave_mux_s2_wvalid),
    .axi_s_wready  (_apb_dev_axi_s_wready),
    .axi_s_wlast   (_axi_slave_mux_s2_wlast),
    .axi_s_wid     (_axi_slave_mux_s2_wid),
    .axi_s_bresp   (_apb_dev_axi_s_bresp),
    .axi_s_bvalid  (_apb_dev_axi_s_bvalid),
    .axi_s_bready  (_axi_slave_mux_s2_bready),
    .axi_s_bid     (_apb_dev_axi_s_bid),
    .axi_s_araddr  (_axi_slave_mux_s2_araddr),
    .axi_s_arprot  (_axi_slave_mux_s2_arprot),
    .axi_s_arvalid (_axi_slave_mux_s2_arvalid),
    .axi_s_arready (_apb_dev_axi_s_arready),
    .axi_s_arsize  (_axi_slave_mux_s2_arsize),
    .axi_s_arburst (_axi_slave_mux_s2_arburst),
    .axi_s_arcache (_axi_slave_mux_s2_arcache),
    .axi_s_arlock  (_axi_slave_mux_s2_arlock),
    .axi_s_arlen   (_axi_slave_mux_s2_arlen),
    .axi_s_arid    (_axi_slave_mux_s2_arid),
    .axi_s_rdata   (_apb_dev_axi_s_rdata),
    .axi_s_rresp   (_apb_dev_axi_s_rresp),
    .axi_s_rvalid  (_apb_dev_axi_s_rvalid),
    .axi_s_rready  (_axi_slave_mux_s2_rready),
    .axi_s_rlast   (_apb_dev_axi_s_rlast),
    .axi_s_rid     (_apb_dev_axi_s_rid),
    .apb_ready_dma (/* unused */),
    .apb_rw_dma    (_dma_master0_apb_rw),
    .apb_psel_dma  (_dma_master0_apb_psel),
    .apb_enab_dma  (_dma_master0_apb_penable),
    .apb_addr_dma  (_dma_master0_apb_addr[19:0]),
    .apb_wdata_dma (_dma_master0_apb_wdata),
    .apb_rdata_dma (_apb_dev_apb_rdata_dma),
    .apb_valid_dma (_dma_master0_apb_valid_req),
    .dma_grant     (_apb_dev_dma_grant),
    .dma_req_o     (_apb_dev_dma_req_o),
    .dma_ack_i     (_dma_master0_dma_ack_out),
    .uart0_txd_i   (io_uart_txd_i),
    .uart0_txd_o   (io_uart_txd_o),
    .uart0_txd_oe  (io_uart_txd_oe),
    .uart0_rxd_i   (io_uart_rxd_i),
    .uart0_rxd_o   (io_uart_rxd_o),
    .uart0_rxd_oe  (io_uart_rxd_oe),
    .uart0_rts_o   (io_uart_rts_o),
    .uart0_dtr_o   (io_uart_dtr_o),
    .uart0_cts_i   (io_uart_cts_i),
    .uart0_dsr_i   (io_uart_dsr_i),
    .uart0_dcd_i   (io_uart_dcd_i),
    .uart0_ri_i    (io_uart_ri_i),
    .uart0_int     (_apb_dev_uart0_int),
    .nand_type     (2'h2),
    .nand_cle      (io_nand_cle),
    .nand_ale      (io_nand_ale),
    .nand_rdy      (io_nand_rdy),
    .nand_rd       (io_nand_rd),
    .nand_ce       (io_nand_ce),
    .nand_wr       (io_nand_wr),
    .nand_dat_i    (io_nand_dat_i),
    .nand_dat_o    (io_nand_dat_o),
    .nand_dat_oe   (io_nand_dat_oe),
    .nand_int      (_apb_dev_nand_int)
  );
  main_xbar main_xbar (
    .aclk          (_clk_pll_33_clk_out2),
    .aresetn       (_main_reset_interconnect_aresetn),
    .s_axi_awaddr  (_axi_clock_converter_m_axi_awaddr),	
    .s_axi_awprot  (_axi_clock_converter_m_axi_awprot),	
    .s_axi_awvalid (_axi_clock_converter_m_axi_awvalid),	
    .s_axi_awready (_main_xbar_s_axi_awready),
    .s_axi_awsize  (_axi_clock_converter_m_axi_awsize),	
    .s_axi_awburst (_axi_clock_converter_m_axi_awburst),	
    .s_axi_awcache (_axi_clock_converter_m_axi_awcache),	
    .s_axi_awlen   (_axi_clock_converter_m_axi_awlen),	
    .s_axi_awlock  (_axi_clock_converter_m_axi_awlock),	
    .s_axi_awqos   (_axi_clock_converter_m_axi_awqos),	
    .s_axi_awid    (_axi_clock_converter_m_axi_awid),	
    .s_axi_wdata   (_axi_clock_converter_m_axi_wdata),	
    .s_axi_wstrb   (_axi_clock_converter_m_axi_wstrb),	
    .s_axi_wvalid  (_axi_clock_converter_m_axi_wvalid),	
    .s_axi_wready  (_main_xbar_s_axi_wready),
    .s_axi_wlast   (_axi_clock_converter_m_axi_wlast),	
    .s_axi_wid     (_axi_clock_converter_m_axi_wid),	
    .s_axi_bresp   (_main_xbar_s_axi_bresp),
    .s_axi_bvalid  (_main_xbar_s_axi_bvalid),
    .s_axi_bready  (_axi_clock_converter_m_axi_bready),	
    .s_axi_bid     (_main_xbar_s_axi_bid),
    .s_axi_araddr  (_axi_clock_converter_m_axi_araddr),	
    .s_axi_arprot  (_axi_clock_converter_m_axi_arprot),	
    .s_axi_arvalid (_axi_clock_converter_m_axi_arvalid),	
    .s_axi_arready (_main_xbar_s_axi_arready),
    .s_axi_arsize  (_axi_clock_converter_m_axi_arsize),	
    .s_axi_arburst (_axi_clock_converter_m_axi_arburst),	
    .s_axi_arcache (_axi_clock_converter_m_axi_arcache),	
    .s_axi_arlock  (_axi_clock_converter_m_axi_arlock),	
    .s_axi_arlen   (_axi_clock_converter_m_axi_arlen),	
    .s_axi_arqos   (_axi_clock_converter_m_axi_arqos),	
    .s_axi_arid    (_axi_clock_converter_m_axi_arid),	
    .s_axi_rdata   (_main_xbar_s_axi_rdata),
    .s_axi_rresp   (_main_xbar_s_axi_rresp),
    .s_axi_rvalid  (_main_xbar_s_axi_rvalid),
    .s_axi_rready  (_axi_clock_converter_m_axi_rready),	
    .s_axi_rlast   (_main_xbar_s_axi_rlast),
    .s_axi_rid     (_main_xbar_s_axi_rid),
    .m_axi_awaddr  (_main_xbar_m_axi_awaddr),
    .m_axi_awprot  (_main_xbar_m_axi_awprot),
    .m_axi_awvalid (_main_xbar_m_axi_awvalid),
    .m_axi_awready
      ({_axi_slave_mux_axi_s_awready, _mig_axi_interconnect_S00_AXI_AWREADY}),
    .m_axi_awsize  (_main_xbar_m_axi_awsize),
    .m_axi_awburst (_main_xbar_m_axi_awburst),
    .m_axi_awcache (_main_xbar_m_axi_awcache),
    .m_axi_awlen   (_main_xbar_m_axi_awlen),
    .m_axi_awlock  (_main_xbar_m_axi_awlock),
    .m_axi_awqos   (/* unused */),
    .m_axi_awid    (_main_xbar_m_axi_awid),
    .m_axi_wdata   (_main_xbar_m_axi_wdata),
    .m_axi_wstrb   (_main_xbar_m_axi_wstrb),
    .m_axi_wvalid  (_main_xbar_m_axi_wvalid),
    .m_axi_wready  ({_axi_slave_mux_axi_s_wready, _mig_axi_interconnect_S00_AXI_WREADY}),
    .m_axi_wlast   (_main_xbar_m_axi_wlast),
    .m_axi_wid     (_main_xbar_m_axi_wid),
    .m_axi_bresp   ({_axi_slave_mux_axi_s_bresp, _mig_axi_interconnect_S00_AXI_BRESP}),
    .m_axi_bvalid  ({_axi_slave_mux_axi_s_bvalid, _mig_axi_interconnect_S00_AXI_BVALID}),
    .m_axi_bready  (_main_xbar_m_axi_bready),
    .m_axi_bid     ({_axi_slave_mux_axi_s_bid, _mig_axi_interconnect_S00_AXI_BID}),
    .m_axi_araddr  (_main_xbar_m_axi_araddr),
    .m_axi_arprot  (_main_xbar_m_axi_arprot),
    .m_axi_arvalid (_main_xbar_m_axi_arvalid),
    .m_axi_arready
      ({_axi_slave_mux_axi_s_arready, _mig_axi_interconnect_S00_AXI_ARREADY}),
    .m_axi_arsize  (_main_xbar_m_axi_arsize),
    .m_axi_arburst (_main_xbar_m_axi_arburst),
    .m_axi_arcache (_main_xbar_m_axi_arcache),
    .m_axi_arlock  (_main_xbar_m_axi_arlock),
    .m_axi_arlen   (_main_xbar_m_axi_arlen),
    .m_axi_arqos   (/* unused */),
    .m_axi_arid    (_main_xbar_m_axi_arid),
    .m_axi_rdata   ({_axi_slave_mux_axi_s_rdata, _mig_axi_interconnect_S00_AXI_RDATA}),
    .m_axi_rresp   ({_axi_slave_mux_axi_s_rresp, _mig_axi_interconnect_S00_AXI_RRESP}),
    .m_axi_rvalid  ({_axi_slave_mux_axi_s_rvalid, _mig_axi_interconnect_S00_AXI_RVALID}),
    .m_axi_rready  (_main_xbar_m_axi_rready),
    .m_axi_rlast   ({_axi_slave_mux_axi_s_rlast, _mig_axi_interconnect_S00_AXI_RLAST}),
    .m_axi_rid     ({_axi_slave_mux_axi_s_rid, _mig_axi_interconnect_S00_AXI_RID})
  );

lcd_top u_lcd_top (
    .clk            (_clk_pll_33_clk_out2),
    .resetn         (_main_reset_peripheral_aresetn),
    .s_awaddr         (_axi_slave_mux2_lcd_awaddr),
    .s_awprot       (_axi_slave_mux2_lcd_awprot),
    .s_awvalid        (_axi_slave_mux2_lcd_awvalid),
    .s_awready       (_axi_clk_converter_lcd_s_axi_awready),
    .s_awsize      (_axi_slave_mux2_lcd_awsize),
    .s_awburst       (_axi_slave_mux2_lcd_awburst),
    .s_awcache      (_axi_slave_mux2_lcd_awcache),
    .s_awlen       (_axi_slave_mux2_lcd_awlen),
    .s_awlock      (_axi_slave_mux2_lcd_awlock),
    .s_awid      (_axi_slave_mux2_lcd_awid),
    .s_wdata       (_axi_slave_mux2_lcd_wdata),
    .s_wstrb          (_axi_slave_mux2_lcd_wstrb),
    .s_wvalid        (_axi_slave_mux2_lcd_wvalid),
    .s_wready        (_axi_clk_converter_lcd_s_axi_wready),
    .s_wlast        (_axi_slave_mux2_lcd_wlast),
    .s_wid       (_axi_slave_mux2_lcd_wid),
    .s_bresp          (_axi_clk_converter_lcd_s_axi_bresp),
    .s_bvalid        (_axi_clk_converter_lcd_s_axi_bvalid),
    .s_bready       (_axi_slave_mux2_lcd_bready),
    .s_bid       (_axi_clk_converter_lcd_s_axi_bid),
    .s_araddr         (_axi_slave_mux2_lcd_araddr),
    .s_arprot       (_axi_slave_mux2_lcd_arprot),
    .s_arvalid        (_axi_slave_mux2_lcd_arvalid),
    .s_arready       (_axi_clk_converter_lcd_s_axi_arready),
    .s_arsize      (_axi_slave_mux2_lcd_arsize),
    .s_arburst       (_axi_slave_mux2_lcd_arburst),
    .s_arcache      (_axi_slave_mux2_lcd_arcache),
    .s_arlock       (_axi_slave_mux2_lcd_arlock),
    .s_arlen      (_axi_slave_mux2_lcd_arlen),
    .s_arid      (_axi_slave_mux2_lcd_arid),
    .s_rdata       (_axi_clk_converter_lcd_s_axi_rdata),
    .s_rresp          (_axi_clk_converter_lcd_s_axi_rresp),
    .s_rvalid        (_axi_clk_converter_lcd_s_axi_rvalid),
    .s_rready        (_axi_slave_mux2_lcd_rready),
    .s_rlast        (_axi_clk_converter_lcd_s_axi_rlast),
    .s_rid          (_axi_clk_converter_lcd_s_axi_rid),

        .lcd_rst        (lcd_rst           ),
        .lcd_cs         (lcd_cs            ),
        .lcd_rs         (lcd_rs            ),
        .lcd_wr         (lcd_wr            ),
        .lcd_rd         (lcd_rd            ),
        .lcd_data_io    (lcd_data_io       ),
        .lcd_bl_ctr     (lcd_bl_ctr        ),
        .lcd_ct_int     (ct_int        ),
        .lcd_ct_sda     (ct_sda        ),
        .lcd_ct_scl     (ct_scl        ),
        .lcd_ct_rstn    (ct_rstn       )
    );


axi_clock_converter_0 axi_clk_converter_apb (
    .s_axi_aclk    (_clk_pll_33_clk_out2),
    .s_axi_aresetn (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_slave_mux2_s1_awaddr),
    .s_axi_awprot  (_axi_slave_mux2_s1_awprot),
    .s_axi_awvalid (_axi_slave_mux2_s1_awvalid),
    .s_axi_awready (_axi_clk_converter_apb_s_axi_awready),
    .s_axi_awsize  (_axi_slave_mux2_s1_awsize),
    .s_axi_awburst (_axi_slave_mux2_s1_awburst),
    .s_axi_awcache (_axi_slave_mux2_s1_awcache),
    .s_axi_awlen   (_axi_slave_mux2_s1_awlen),
    .s_axi_awlock  (_axi_slave_mux2_s1_awlock),
    .s_axi_awqos   (4'h0),
    .s_axi_awid    (_axi_slave_mux2_s1_awid),
    .s_axi_wdata   (_axi_slave_mux2_s1_wdata),
    .s_axi_wstrb   (_axi_slave_mux2_s1_wstrb),
    .s_axi_wvalid  (_axi_slave_mux2_s1_wvalid),
    .s_axi_wready  (_axi_clk_converter_apb_s_axi_wready),
    .s_axi_wlast   (_axi_slave_mux2_s1_wlast),
    .s_axi_wid     (_axi_slave_mux2_s1_wid),
    .s_axi_bresp   (_axi_clk_converter_apb_s_axi_bresp),
    .s_axi_bvalid  (_axi_clk_converter_apb_s_axi_bvalid),
    .s_axi_bready  (_axi_slave_mux2_s1_bready),
    .s_axi_bid     (_axi_clk_converter_apb_s_axi_bid),
    .s_axi_araddr  (_axi_slave_mux2_s1_araddr),
    .s_axi_arprot  (_axi_slave_mux2_s1_arprot),
    .s_axi_arvalid (_axi_slave_mux2_s1_arvalid),
    .s_axi_arready (_axi_clk_converter_apb_s_axi_arready),
    .s_axi_arsize  (_axi_slave_mux2_s1_arsize),
    .s_axi_arburst (_axi_slave_mux2_s1_arburst),
    .s_axi_arcache (_axi_slave_mux2_s1_arcache),
    .s_axi_arlock  (_axi_slave_mux2_s1_arlock),
    .s_axi_arlen   (_axi_slave_mux2_s1_arlen),
    .s_axi_arqos   (4'h0),
    .s_axi_arid    (_axi_slave_mux2_s1_arid),
    .s_axi_rdata   (_axi_clk_converter_apb_s_axi_rdata),
    .s_axi_rresp   (_axi_clk_converter_apb_s_axi_rresp),
    .s_axi_rvalid  (_axi_clk_converter_apb_s_axi_rvalid),
    .s_axi_rready  (_axi_slave_mux2_s1_rready),
    .s_axi_rlast   (_axi_clk_converter_apb_s_axi_rlast),
    .s_axi_rid     (_axi_clk_converter_apb_s_axi_rid),
    .m_axi_aclk    (_clk_pll_33_clk_100),
    .m_axi_aresetn (_main_reset_peripheral_aresetn),
    .m_axi_awaddr  (_axi_clk_converter_apb_m_axi_awaddr),
    .m_axi_awprot  (_axi_clk_converter_apb_m_axi_awprot),
    .m_axi_awvalid (_axi_clk_converter_apb_m_axi_awvalid),
    .m_axi_awready (_apb_axi4lite_to_axi3_s_axi_awready),
    .m_axi_awsize  (_axi_clk_converter_apb_m_axi_awsize),
    .m_axi_awburst (_axi_clk_converter_apb_m_axi_awburst),
    .m_axi_awcache (_axi_clk_converter_apb_m_axi_awcache),
    .m_axi_awlen   (_axi_clk_converter_apb_m_axi_awlen),
    .m_axi_awlock  (_axi_clk_converter_apb_m_axi_awlock),
    .m_axi_awqos   (_axi_clk_converter_apb_m_axi_awqos),
    .m_axi_awid    (_axi_clk_converter_apb_m_axi_awid),
    .m_axi_wdata   (_axi_clk_converter_apb_m_axi_wdata),
    .m_axi_wstrb   (_axi_clk_converter_apb_m_axi_wstrb),
    .m_axi_wvalid  (_axi_clk_converter_apb_m_axi_wvalid),
    .m_axi_wready  (_apb_axi4lite_to_axi3_s_axi_wready),
    .m_axi_wlast   (_axi_clk_converter_apb_m_axi_wlast),
    .m_axi_wid     (_axi_clk_converter_apb_m_axi_wid),
    .m_axi_bresp   (_apb_axi4lite_to_axi3_s_axi_bresp),
    .m_axi_bvalid  (_apb_axi4lite_to_axi3_s_axi_bvalid),
    .m_axi_bready  (_axi_clk_converter_apb_m_axi_bready),
    .m_axi_bid     (_apb_axi4lite_to_axi3_s_axi_bid),
    .m_axi_araddr  (_axi_clk_converter_apb_m_axi_araddr),
    .m_axi_arprot  (_axi_clk_converter_apb_m_axi_arprot),
    .m_axi_arvalid (_axi_clk_converter_apb_m_axi_arvalid),
    .m_axi_arready (_apb_axi4lite_to_axi3_s_axi_arready),
    .m_axi_arsize  (_axi_clk_converter_apb_m_axi_arsize),
    .m_axi_arburst (_axi_clk_converter_apb_m_axi_arburst),
    .m_axi_arcache (_axi_clk_converter_apb_m_axi_arcache),
    .m_axi_arlock  (_axi_clk_converter_apb_m_axi_arlock),
    .m_axi_arlen   (_axi_clk_converter_apb_m_axi_arlen),
    .m_axi_arqos   (_axi_clk_converter_apb_m_axi_arqos),
    .m_axi_arid    (_axi_clk_converter_apb_m_axi_arid),
    .m_axi_rdata   (_apb_axi4lite_to_axi3_s_axi_rdata),
    .m_axi_rresp   (_apb_axi4lite_to_axi3_s_axi_rresp),
    .m_axi_rvalid  (_apb_axi4lite_to_axi3_s_axi_rvalid),
    .m_axi_rready  (_axi_clk_converter_apb_m_axi_rready),
    .m_axi_rlast   (_apb_axi4lite_to_axi3_s_axi_rlast),
    .m_axi_rid     (_apb_axi4lite_to_axi3_s_axi_rid)
  );
  axi_protocol_converter_0 apb_axi4lite_to_axi3 (
    .aclk          (_clk_pll_33_clk_100),
    .aresetn       (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_clk_converter_apb_m_axi_awaddr),
    .s_axi_awprot  (_axi_clk_converter_apb_m_axi_awprot),
    .s_axi_awvalid (_axi_clk_converter_apb_m_axi_awvalid),
    .s_axi_awready (_apb_axi4lite_to_axi3_s_axi_awready),
    .s_axi_awsize  (_axi_clk_converter_apb_m_axi_awsize),
    .s_axi_awburst (_axi_clk_converter_apb_m_axi_awburst),
    .s_axi_awcache (_axi_clk_converter_apb_m_axi_awcache),
    .s_axi_awlen   (_axi_clk_converter_apb_m_axi_awlen),
    .s_axi_awlock  (_axi_clk_converter_apb_m_axi_awlock),
    .s_axi_awqos   (_axi_clk_converter_apb_m_axi_awqos),
    .s_axi_awid    (_axi_clk_converter_apb_m_axi_awid),
    .s_axi_wdata   (_axi_clk_converter_apb_m_axi_wdata),
    .s_axi_wstrb   (_axi_clk_converter_apb_m_axi_wstrb),
    .s_axi_wvalid  (_axi_clk_converter_apb_m_axi_wvalid),
    .s_axi_wready  (_apb_axi4lite_to_axi3_s_axi_wready),
    .s_axi_wlast   (_axi_clk_converter_apb_m_axi_wlast),
    .s_axi_wid     (_axi_clk_converter_apb_m_axi_wid),
    .s_axi_bresp   (_apb_axi4lite_to_axi3_s_axi_bresp),
    .s_axi_bvalid  (_apb_axi4lite_to_axi3_s_axi_bvalid),
    .s_axi_bready  (_axi_clk_converter_apb_m_axi_bready),
    .s_axi_bid     (_apb_axi4lite_to_axi3_s_axi_bid),
    .s_axi_araddr  (_axi_clk_converter_apb_m_axi_araddr),
    .s_axi_arprot  (_axi_clk_converter_apb_m_axi_arprot),
    .s_axi_arvalid (_axi_clk_converter_apb_m_axi_arvalid),
    .s_axi_arready (_apb_axi4lite_to_axi3_s_axi_arready),
    .s_axi_arsize  (_axi_clk_converter_apb_m_axi_arsize),
    .s_axi_arburst (_axi_clk_converter_apb_m_axi_arburst),
    .s_axi_arcache (_axi_clk_converter_apb_m_axi_arcache),
    .s_axi_arlock  (_axi_clk_converter_apb_m_axi_arlock),
    .s_axi_arlen   (_axi_clk_converter_apb_m_axi_arlen),
    .s_axi_arqos   (_axi_clk_converter_apb_m_axi_arqos),
    .s_axi_arid    (_axi_clk_converter_apb_m_axi_arid),
    .s_axi_rdata   (_apb_axi4lite_to_axi3_s_axi_rdata),
    .s_axi_rresp   (_apb_axi4lite_to_axi3_s_axi_rresp),
    .s_axi_rvalid  (_apb_axi4lite_to_axi3_s_axi_rvalid),
    .s_axi_rready  (_axi_clk_converter_apb_m_axi_rready),
    .s_axi_rlast   (_apb_axi4lite_to_axi3_s_axi_rlast),
    .s_axi_rid     (_apb_axi4lite_to_axi3_s_axi_rid),
    .m_axi_awaddr  (_apb_axi4lite_to_axi3_m_axi_awaddr),
    .m_axi_awprot  (_apb_axi4lite_to_axi3_m_axi_awprot),
    .m_axi_awvalid (_apb_axi4lite_to_axi3_m_axi_awvalid),
    .m_axi_awready (_apb_bridge_s_axi_awready),
    .m_axi_wdata   (_apb_axi4lite_to_axi3_m_axi_wdata),
    .m_axi_wstrb   (_apb_axi4lite_to_axi3_m_axi_wstrb),
    .m_axi_wvalid  (_apb_axi4lite_to_axi3_m_axi_wvalid),
    .m_axi_wready  (_apb_bridge_s_axi_wready),
    .m_axi_bresp   (_apb_bridge_s_axi_bresp),
    .m_axi_bvalid  (_apb_bridge_s_axi_bvalid),
    .m_axi_bready  (_apb_axi4lite_to_axi3_m_axi_bready),
    .m_axi_araddr  (_apb_axi4lite_to_axi3_m_axi_araddr),
    .m_axi_arprot  (_apb_axi4lite_to_axi3_m_axi_arprot),
    .m_axi_arvalid (_apb_axi4lite_to_axi3_m_axi_arvalid),
    .m_axi_arready (_apb_bridge_s_axi_arready),
    .m_axi_rdata   (_apb_bridge_s_axi_rdata),
    .m_axi_rresp   (_apb_bridge_s_axi_rresp),
    .m_axi_rvalid  (_apb_bridge_s_axi_rvalid),
    .m_axi_rready  (_apb_axi4lite_to_axi3_m_axi_rready)
  );
  axi_apb_bridge_connect apb_bridge (
    .s_axi_aclk    (_clk_pll_33_clk_100),
    .s_axi_aresetn (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_apb_axi4lite_to_axi3_m_axi_awaddr),
    .s_axi_awprot  (_apb_axi4lite_to_axi3_m_axi_awprot),
    .s_axi_awvalid (_apb_axi4lite_to_axi3_m_axi_awvalid),
    .s_axi_awready (_apb_bridge_s_axi_awready),
    .s_axi_wdata   (_apb_axi4lite_to_axi3_m_axi_wdata),
    .s_axi_wstrb   (_apb_axi4lite_to_axi3_m_axi_wstrb),
    .s_axi_wvalid  (_apb_axi4lite_to_axi3_m_axi_wvalid),
    .s_axi_wready  (_apb_bridge_s_axi_wready),
    .s_axi_bresp   (_apb_bridge_s_axi_bresp),
    .s_axi_bvalid  (_apb_bridge_s_axi_bvalid),
    .s_axi_bready  (_apb_axi4lite_to_axi3_m_axi_bready),
    .s_axi_araddr  (_apb_axi4lite_to_axi3_m_axi_araddr),
    .s_axi_arprot  (_apb_axi4lite_to_axi3_m_axi_arprot),
    .s_axi_arvalid (_apb_axi4lite_to_axi3_m_axi_arvalid),
    .s_axi_arready (_apb_bridge_s_axi_arready),
    .s_axi_rdata   (_apb_bridge_s_axi_rdata),
    .s_axi_rresp   (_apb_bridge_s_axi_rresp),
    .s_axi_rvalid  (_apb_bridge_s_axi_rvalid),
    .s_axi_rready  (_apb_axi4lite_to_axi3_m_axi_rready),
    .m_apb_paddr   (_apb_bridge_m_apb_paddr),
    .m_apb_psel    (_apb_bridge_m_apb_psel),
    .m_apb_penable (_apb_bridge_m_apb_penable),
    .m_apb_pwrite  (_apb_bridge_m_apb_pwrite),
    .m_apb_pwdata  (_apb_bridge_m_apb_pwdata),
    .m_apb_pready  ({_ps2_waitrequest_n, 1'b0}),
    .m_apb_prdata  (32'b0),
    .m_apb_prdata2 (_ps2_readdata),
    .m_apb_pslverr ({_ps2_perr, 1'b0}),
    .m_apb_pprot   ( /*unused*/ ),
    .m_apb_pstrb   (_apb_bridge_m_apb_pstrb)
  );
  /*
  nt35510 lcd_controller (
    .nrst         (_main_reset_peripheral_aresetn),
    .clk          (_clk_pll_33_clk_100),
    .APB_paddr    (_apb_bridge_m_apb_paddr),
    .APB_psel     (_apb_bridge_m_apb_psel[0]),, :283:30
    .APB_penable  (_apb_bridge_m_apb_penable),
    .APB_pwrite   (_apb_bridge_m_apb_pwrite),
    .APB_pwdata   (_apb_bridge_m_apb_pwdata),
    .APB_pready   (_lcd_controller_APB_pready),
    .APB_prdata   (_lcd_controller_APB_prdata),
    .APB_pslverr  (_lcd_controller_APB_pslverr),
    .LCD_nrst     (io_lcd_nrst),
    .LCD_csel     (io_lcd_csel),
    .LCD_rs       (io_lcd_rs),
    .LCD_wr       (io_lcd_wr),
    .LCD_rd       (io_lcd_rd),
    .LCD_data_in  (io_lcd_data_in),
    .LCD_data_out (io_lcd_data_out),
    .LCD_data_z   (io_lcd_data_z)
  );*/
  ps2 ps2 (
    .clk           (_clk_pll_33_clk_100),
    .reset_n       (_main_reset_peripheral_aresetn),
    .paddr         (_apb_bridge_m_apb_paddr[3:0]),
    .penable       (_apb_bridge_m_apb_penable),
    .psel          (_apb_bridge_m_apb_psel[1]),
    .byteenable    (_apb_bridge_m_apb_pstrb),
    .write         (_apb_bridge_m_apb_pwrite),
    .writedata     (_apb_bridge_m_apb_pwdata),
    .perr          (_ps2_perr),
    .PS2_CLK_i     (io_ps2_CLK_i),
    .PS2_CLK_o     (io_ps2_CLK_o),
    .PS2_CLK_t     (io_ps2_CLK_t),
    .PS2_DAT_i     (io_ps2_DAT_i),
    .PS2_DAT_o     (io_ps2_DAT_o),
    .PS2_DAT_t     (io_ps2_DAT_t),
    .irq           (_ps2_irq),
    .readdata      (_ps2_readdata),
    .waitrequest_n (_ps2_waitrequest_n)
  );
  axi_clock_converter_0 axi_clk_converter_fb_wr (
    .s_axi_aclk    (_clk_pll_33_clk_out2),
    .s_axi_aresetn (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_slave_mux2_s2_awaddr),
    .s_axi_awprot  (_axi_slave_mux2_s2_awprot),
    .s_axi_awvalid (_axi_slave_mux2_s2_awvalid),
    .s_axi_awready (_axi_clk_converter_fb_wr_s_axi_awready),
    .s_axi_awsize  (_axi_slave_mux2_s2_awsize),
    .s_axi_awburst (_axi_slave_mux2_s2_awburst),
    .s_axi_awcache (_axi_slave_mux2_s2_awcache),
    .s_axi_awlen   (_axi_slave_mux2_s2_awlen),
    .s_axi_awlock  (_axi_slave_mux2_s2_awlock),
    .s_axi_awqos   (4'h0),
    .s_axi_awid    (_axi_slave_mux2_s2_awid),
    .s_axi_wdata   (_axi_slave_mux2_s2_wdata),
    .s_axi_wstrb   (_axi_slave_mux2_s2_wstrb),
    .s_axi_wvalid  (_axi_slave_mux2_s2_wvalid),
    .s_axi_wready  (_axi_clk_converter_fb_wr_s_axi_wready),
    .s_axi_wlast   (_axi_slave_mux2_s2_wlast),
    .s_axi_wid     (_axi_slave_mux2_s2_wid),
    .s_axi_bresp   (_axi_clk_converter_fb_wr_s_axi_bresp),
    .s_axi_bvalid  (_axi_clk_converter_fb_wr_s_axi_bvalid),
    .s_axi_bready  (_axi_slave_mux2_s2_bready),
    .s_axi_bid     (_axi_clk_converter_fb_wr_s_axi_bid),
    .s_axi_araddr  (_axi_slave_mux2_s2_araddr),
    .s_axi_arprot  (_axi_slave_mux2_s2_arprot),
    .s_axi_arvalid (_axi_slave_mux2_s2_arvalid),
    .s_axi_arready (_axi_clk_converter_fb_wr_s_axi_arready),
    .s_axi_arsize  (_axi_slave_mux2_s2_arsize),
    .s_axi_arburst (_axi_slave_mux2_s2_arburst),
    .s_axi_arcache (_axi_slave_mux2_s2_arcache),
    .s_axi_arlock  (_axi_slave_mux2_s2_arlock),
    .s_axi_arlen   (_axi_slave_mux2_s2_arlen),
    .s_axi_arqos   (4'h0),
    .s_axi_arid    (_axi_slave_mux2_s2_arid),
    .s_axi_rdata   (_axi_clk_converter_fb_wr_s_axi_rdata),
    .s_axi_rresp   (_axi_clk_converter_fb_wr_s_axi_rresp),
    .s_axi_rvalid  (_axi_clk_converter_fb_wr_s_axi_rvalid),
    .s_axi_rready  (_axi_slave_mux2_s2_rready),
    .s_axi_rlast   (_axi_clk_converter_fb_wr_s_axi_rlast),
    .s_axi_rid     (_axi_clk_converter_fb_wr_s_axi_rid),
    .m_axi_aclk    (_clk_pll_33_clk_100),
    .m_axi_aresetn (_main_reset_peripheral_aresetn),
    .m_axi_awaddr  (_axi_clk_converter_fb_wr_m_axi_awaddr),
    .m_axi_awprot  (_axi_clk_converter_fb_wr_m_axi_awprot),
    .m_axi_awvalid (_axi_clk_converter_fb_wr_m_axi_awvalid),
    .m_axi_awready (_fb_write_converter_s_axi_awready),
    .m_axi_awsize  (_axi_clk_converter_fb_wr_m_axi_awsize),
    .m_axi_awburst (_axi_clk_converter_fb_wr_m_axi_awburst),
    .m_axi_awcache (_axi_clk_converter_fb_wr_m_axi_awcache),
    .m_axi_awlen   (_axi_clk_converter_fb_wr_m_axi_awlen),
    .m_axi_awlock  (_axi_clk_converter_fb_wr_m_axi_awlock),
    .m_axi_awqos   (_axi_clk_converter_fb_wr_m_axi_awqos),
    .m_axi_awid    (_axi_clk_converter_fb_wr_m_axi_awid),
    .m_axi_wdata   (_axi_clk_converter_fb_wr_m_axi_wdata),
    .m_axi_wstrb   (_axi_clk_converter_fb_wr_m_axi_wstrb),
    .m_axi_wvalid  (_axi_clk_converter_fb_wr_m_axi_wvalid),
    .m_axi_wready  (_fb_write_converter_s_axi_wready),
    .m_axi_wlast   (_axi_clk_converter_fb_wr_m_axi_wlast),
    .m_axi_wid     (_axi_clk_converter_fb_wr_m_axi_wid),
    .m_axi_bresp   (_fb_write_converter_s_axi_bresp),
    .m_axi_bvalid  (_fb_write_converter_s_axi_bvalid),
    .m_axi_bready  (_axi_clk_converter_fb_wr_m_axi_bready),
    .m_axi_bid     (_fb_write_converter_s_axi_bid),
    .m_axi_araddr  (_axi_clk_converter_fb_wr_m_axi_araddr),
    .m_axi_arprot  (_axi_clk_converter_fb_wr_m_axi_arprot),
    .m_axi_arvalid (_axi_clk_converter_fb_wr_m_axi_arvalid),
    .m_axi_arready (_fb_write_converter_s_axi_arready),
    .m_axi_arsize  (_axi_clk_converter_fb_wr_m_axi_arsize),
    .m_axi_arburst (_axi_clk_converter_fb_wr_m_axi_arburst),
    .m_axi_arcache (_axi_clk_converter_fb_wr_m_axi_arcache),
    .m_axi_arlock  (_axi_clk_converter_fb_wr_m_axi_arlock),
    .m_axi_arlen   (_axi_clk_converter_fb_wr_m_axi_arlen),
    .m_axi_arqos   (_axi_clk_converter_fb_wr_m_axi_arqos),
    .m_axi_arid    (_axi_clk_converter_fb_wr_m_axi_arid),
    .m_axi_rdata   (_fb_write_converter_s_axi_rdata),
    .m_axi_rresp   (_fb_write_converter_s_axi_rresp),
    .m_axi_rvalid  (_fb_write_converter_s_axi_rvalid),
    .m_axi_rready  (_axi_clk_converter_fb_wr_m_axi_rready),
    .m_axi_rlast   (_fb_write_converter_s_axi_rlast),
    .m_axi_rid     (_fb_write_converter_s_axi_rid)
  );
  axi_clock_converter_0 axi_clk_converter_fd_rd (
    .s_axi_aclk    (_clk_pll_33_clk_out2),
    .s_axi_aresetn (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_slave_mux2_s3_awaddr),
    .s_axi_awprot  (_axi_slave_mux2_s3_awprot),
    .s_axi_awvalid (_axi_slave_mux2_s3_awvalid),
    .s_axi_awready (_axi_clk_converter_fd_rd_s_axi_awready),
    .s_axi_awsize  (_axi_slave_mux2_s3_awsize),
    .s_axi_awburst (_axi_slave_mux2_s3_awburst),
    .s_axi_awcache (_axi_slave_mux2_s3_awcache),
    .s_axi_awlen   (_axi_slave_mux2_s3_awlen),
    .s_axi_awlock  (_axi_slave_mux2_s3_awlock),
    .s_axi_awqos   (4'h0),
    .s_axi_awid    (_axi_slave_mux2_s3_awid),
    .s_axi_wdata   (_axi_slave_mux2_s3_wdata),
    .s_axi_wstrb   (_axi_slave_mux2_s3_wstrb),
    .s_axi_wvalid  (_axi_slave_mux2_s3_wvalid),
    .s_axi_wready  (_axi_clk_converter_fd_rd_s_axi_wready),
    .s_axi_wlast   (_axi_slave_mux2_s3_wlast),
    .s_axi_wid     (_axi_slave_mux2_s3_wid),
    .s_axi_bresp   (_axi_clk_converter_fd_rd_s_axi_bresp),
    .s_axi_bvalid  (_axi_clk_converter_fd_rd_s_axi_bvalid),
    .s_axi_bready  (_axi_slave_mux2_s3_bready),
    .s_axi_bid     (_axi_clk_converter_fd_rd_s_axi_bid),
    .s_axi_araddr  (_axi_slave_mux2_s3_araddr),
    .s_axi_arprot  (_axi_slave_mux2_s3_arprot),
    .s_axi_arvalid (_axi_slave_mux2_s3_arvalid),
    .s_axi_arready (_axi_clk_converter_fd_rd_s_axi_arready),
    .s_axi_arsize  (_axi_slave_mux2_s3_arsize),
    .s_axi_arburst (_axi_slave_mux2_s3_arburst),
    .s_axi_arcache (_axi_slave_mux2_s3_arcache),
    .s_axi_arlock  (_axi_slave_mux2_s3_arlock),
    .s_axi_arlen   (_axi_slave_mux2_s3_arlen),
    .s_axi_arqos   (4'h0),
    .s_axi_arid    (_axi_slave_mux2_s3_arid),
    .s_axi_rdata   (_axi_clk_converter_fd_rd_s_axi_rdata),
    .s_axi_rresp   (_axi_clk_converter_fd_rd_s_axi_rresp),
    .s_axi_rvalid  (_axi_clk_converter_fd_rd_s_axi_rvalid),
    .s_axi_rready  (_axi_slave_mux2_s3_rready),
    .s_axi_rlast   (_axi_clk_converter_fd_rd_s_axi_rlast),
    .s_axi_rid     (_axi_clk_converter_fd_rd_s_axi_rid),
    .m_axi_aclk    (_clk_pll_33_clk_100),
    .m_axi_aresetn (_main_reset_peripheral_aresetn),
    .m_axi_awaddr  (_axi_clk_converter_fd_rd_m_axi_awaddr),
    .m_axi_awprot  (_axi_clk_converter_fd_rd_m_axi_awprot),
    .m_axi_awvalid (_axi_clk_converter_fd_rd_m_axi_awvalid),
    .m_axi_awready (_fb_read_converter_s_axi_awready),
    .m_axi_awsize  (_axi_clk_converter_fd_rd_m_axi_awsize),
    .m_axi_awburst (_axi_clk_converter_fd_rd_m_axi_awburst),
    .m_axi_awcache (_axi_clk_converter_fd_rd_m_axi_awcache),
    .m_axi_awlen   (_axi_clk_converter_fd_rd_m_axi_awlen),
    .m_axi_awlock  (_axi_clk_converter_fd_rd_m_axi_awlock),
    .m_axi_awqos   (_axi_clk_converter_fd_rd_m_axi_awqos),
    .m_axi_awid    (_axi_clk_converter_fd_rd_m_axi_awid),
    .m_axi_wdata   (_axi_clk_converter_fd_rd_m_axi_wdata),
    .m_axi_wstrb   (_axi_clk_converter_fd_rd_m_axi_wstrb),
    .m_axi_wvalid  (_axi_clk_converter_fd_rd_m_axi_wvalid),
    .m_axi_wready  (_fb_read_converter_s_axi_wready),
    .m_axi_wlast   (_axi_clk_converter_fd_rd_m_axi_wlast),
    .m_axi_wid     (_axi_clk_converter_fd_rd_m_axi_wid),
    .m_axi_bresp   (_fb_read_converter_s_axi_bresp),
    .m_axi_bvalid  (_fb_read_converter_s_axi_bvalid),
    .m_axi_bready  (_axi_clk_converter_fd_rd_m_axi_bready),
    .m_axi_bid     (_fb_read_converter_s_axi_bid),
    .m_axi_araddr  (_axi_clk_converter_fd_rd_m_axi_araddr),
    .m_axi_arprot  (_axi_clk_converter_fd_rd_m_axi_arprot),
    .m_axi_arvalid (_axi_clk_converter_fd_rd_m_axi_arvalid),
    .m_axi_arready (_fb_read_converter_s_axi_arready),
    .m_axi_arsize  (_axi_clk_converter_fd_rd_m_axi_arsize),
    .m_axi_arburst (_axi_clk_converter_fd_rd_m_axi_arburst),
    .m_axi_arcache (_axi_clk_converter_fd_rd_m_axi_arcache),
    .m_axi_arlock  (_axi_clk_converter_fd_rd_m_axi_arlock),
    .m_axi_arlen   (_axi_clk_converter_fd_rd_m_axi_arlen),
    .m_axi_arqos   (_axi_clk_converter_fd_rd_m_axi_arqos),
    .m_axi_arid    (_axi_clk_converter_fd_rd_m_axi_arid),
    .m_axi_rdata   (_fb_read_converter_s_axi_rdata),
    .m_axi_rresp   (_fb_read_converter_s_axi_rresp),
    .m_axi_rvalid  (_fb_read_converter_s_axi_rvalid),
    .m_axi_rready  (_axi_clk_converter_fd_rd_m_axi_rready),
    .m_axi_rlast   (_fb_read_converter_s_axi_rlast),
    .m_axi_rid     (_fb_read_converter_s_axi_rid)
  );
  axi_clock_converter_0 axi_clk_converter_tft (
    .s_axi_aclk    (_clk_pll_33_clk_out2),
    .s_axi_aresetn (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_slave_mux2_s4_awaddr),
    .s_axi_awprot  (_axi_slave_mux2_s4_awprot),
    .s_axi_awvalid (_axi_slave_mux2_s4_awvalid),
    .s_axi_awready (_axi_clk_converter_tft_s_axi_awready),
    .s_axi_awsize  (_axi_slave_mux2_s4_awsize),
    .s_axi_awburst (_axi_slave_mux2_s4_awburst),
    .s_axi_awcache (_axi_slave_mux2_s4_awcache),
    .s_axi_awlen   (_axi_slave_mux2_s4_awlen),
    .s_axi_awlock  (_axi_slave_mux2_s4_awlock),
    .s_axi_awqos   (4'h0),
    .s_axi_awid    (_axi_slave_mux2_s4_awid),
    .s_axi_wdata   (_axi_slave_mux2_s4_wdata),
    .s_axi_wstrb   (_axi_slave_mux2_s4_wstrb),
    .s_axi_wvalid  (_axi_slave_mux2_s4_wvalid),
    .s_axi_wready  (_axi_clk_converter_tft_s_axi_wready),
    .s_axi_wlast   (_axi_slave_mux2_s4_wlast),
    .s_axi_wid     (_axi_slave_mux2_s4_wid),
    .s_axi_bresp   (_axi_clk_converter_tft_s_axi_bresp),
    .s_axi_bvalid  (_axi_clk_converter_tft_s_axi_bvalid),
    .s_axi_bready  (_axi_slave_mux2_s4_bready),
    .s_axi_bid     (_axi_clk_converter_tft_s_axi_bid),
    .s_axi_araddr  (_axi_slave_mux2_s4_araddr),
    .s_axi_arprot  (_axi_slave_mux2_s4_arprot),
    .s_axi_arvalid (_axi_slave_mux2_s4_arvalid),
    .s_axi_arready (_axi_clk_converter_tft_s_axi_arready),
    .s_axi_arsize  (_axi_slave_mux2_s4_arsize),
    .s_axi_arburst (_axi_slave_mux2_s4_arburst),
    .s_axi_arcache (_axi_slave_mux2_s4_arcache),
    .s_axi_arlock  (_axi_slave_mux2_s4_arlock),
    .s_axi_arlen   (_axi_slave_mux2_s4_arlen),
    .s_axi_arqos   (4'h0),
    .s_axi_arid    (_axi_slave_mux2_s4_arid),
    .s_axi_rdata   (_axi_clk_converter_tft_s_axi_rdata),
    .s_axi_rresp   (_axi_clk_converter_tft_s_axi_rresp),
    .s_axi_rvalid  (_axi_clk_converter_tft_s_axi_rvalid),
    .s_axi_rready  (_axi_slave_mux2_s4_rready),
    .s_axi_rlast   (_axi_clk_converter_tft_s_axi_rlast),
    .s_axi_rid     (_axi_clk_converter_tft_s_axi_rid),
    .m_axi_aclk    (_clk_pll_33_clk_100),
    .m_axi_aresetn (_main_reset_peripheral_aresetn),
    .m_axi_awaddr  (_axi_clk_converter_tft_m_axi_awaddr),
    .m_axi_awprot  (_axi_clk_converter_tft_m_axi_awprot),
    .m_axi_awvalid (_axi_clk_converter_tft_m_axi_awvalid),
    .m_axi_awready (_tft_protocol_converter_s_axi_awready),
    .m_axi_awsize  (_axi_clk_converter_tft_m_axi_awsize),
    .m_axi_awburst (_axi_clk_converter_tft_m_axi_awburst),
    .m_axi_awcache (_axi_clk_converter_tft_m_axi_awcache),
    .m_axi_awlen   (_axi_clk_converter_tft_m_axi_awlen),
    .m_axi_awlock  (_axi_clk_converter_tft_m_axi_awlock),
    .m_axi_awqos   (_axi_clk_converter_tft_m_axi_awqos),
    .m_axi_awid    (_axi_clk_converter_tft_m_axi_awid),
    .m_axi_wdata   (_axi_clk_converter_tft_m_axi_wdata),
    .m_axi_wstrb   (_axi_clk_converter_tft_m_axi_wstrb),
    .m_axi_wvalid  (_axi_clk_converter_tft_m_axi_wvalid),
    .m_axi_wready  (_tft_protocol_converter_s_axi_wready),
    .m_axi_wlast   (_axi_clk_converter_tft_m_axi_wlast),
    .m_axi_wid     (_axi_clk_converter_tft_m_axi_wid),
    .m_axi_bresp   (_tft_protocol_converter_s_axi_bresp),
    .m_axi_bvalid  (_tft_protocol_converter_s_axi_bvalid),
    .m_axi_bready  (_axi_clk_converter_tft_m_axi_bready),
    .m_axi_bid     (_tft_protocol_converter_s_axi_bid),
    .m_axi_araddr  (_axi_clk_converter_tft_m_axi_araddr),
    .m_axi_arprot  (_axi_clk_converter_tft_m_axi_arprot),
    .m_axi_arvalid (_axi_clk_converter_tft_m_axi_arvalid),
    .m_axi_arready (_tft_protocol_converter_s_axi_arready),
    .m_axi_arsize  (_axi_clk_converter_tft_m_axi_arsize),
    .m_axi_arburst (_axi_clk_converter_tft_m_axi_arburst),
    .m_axi_arcache (_axi_clk_converter_tft_m_axi_arcache),
    .m_axi_arlock  (_axi_clk_converter_tft_m_axi_arlock),
    .m_axi_arlen   (_axi_clk_converter_tft_m_axi_arlen),
    .m_axi_arqos   (_axi_clk_converter_tft_m_axi_arqos),
    .m_axi_arid    (_axi_clk_converter_tft_m_axi_arid),
    .m_axi_rdata   (_tft_protocol_converter_s_axi_rdata),
    .m_axi_rresp   (_tft_protocol_converter_s_axi_rresp),
    .m_axi_rvalid  (_tft_protocol_converter_s_axi_rvalid),
    .m_axi_rready  (_axi_clk_converter_tft_m_axi_rready),
    .m_axi_rlast   (_tft_protocol_converter_s_axi_rlast),
    .m_axi_rid     (_tft_protocol_converter_s_axi_rid)
  );
  axi_protocol_converter_0 fb_read_converter (
    .aclk          (_clk_pll_33_clk_100),
    .aresetn       (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_clk_converter_fd_rd_m_axi_awaddr),
    .s_axi_awprot  (_axi_clk_converter_fd_rd_m_axi_awprot),
    .s_axi_awvalid (_axi_clk_converter_fd_rd_m_axi_awvalid),
    .s_axi_awready (_fb_read_converter_s_axi_awready),
    .s_axi_awsize  (_axi_clk_converter_fd_rd_m_axi_awsize),
    .s_axi_awburst (_axi_clk_converter_fd_rd_m_axi_awburst),
    .s_axi_awcache (_axi_clk_converter_fd_rd_m_axi_awcache),
    .s_axi_awlen   (_axi_clk_converter_fd_rd_m_axi_awlen),
    .s_axi_awlock  (_axi_clk_converter_fd_rd_m_axi_awlock),
    .s_axi_awqos   (_axi_clk_converter_fd_rd_m_axi_awqos),
    .s_axi_awid    (_axi_clk_converter_fd_rd_m_axi_awid),
    .s_axi_wdata   (_axi_clk_converter_fd_rd_m_axi_wdata),
    .s_axi_wstrb   (_axi_clk_converter_fd_rd_m_axi_wstrb),
    .s_axi_wvalid  (_axi_clk_converter_fd_rd_m_axi_wvalid),
    .s_axi_wready  (_fb_read_converter_s_axi_wready),
    .s_axi_wlast   (_axi_clk_converter_fd_rd_m_axi_wlast),
    .s_axi_wid     (_axi_clk_converter_fd_rd_m_axi_wid),
    .s_axi_bresp   (_fb_read_converter_s_axi_bresp),
    .s_axi_bvalid  (_fb_read_converter_s_axi_bvalid),
    .s_axi_bready  (_axi_clk_converter_fd_rd_m_axi_bready),
    .s_axi_bid     (_fb_read_converter_s_axi_bid),
    .s_axi_araddr  (_axi_clk_converter_fd_rd_m_axi_araddr),
    .s_axi_arprot  (_axi_clk_converter_fd_rd_m_axi_arprot),
    .s_axi_arvalid (_axi_clk_converter_fd_rd_m_axi_arvalid),
    .s_axi_arready (_fb_read_converter_s_axi_arready),
    .s_axi_arsize  (_axi_clk_converter_fd_rd_m_axi_arsize),
    .s_axi_arburst (_axi_clk_converter_fd_rd_m_axi_arburst),
    .s_axi_arcache (_axi_clk_converter_fd_rd_m_axi_arcache),
    .s_axi_arlock  (_axi_clk_converter_fd_rd_m_axi_arlock),
    .s_axi_arlen   (_axi_clk_converter_fd_rd_m_axi_arlen),
    .s_axi_arqos   (_axi_clk_converter_fd_rd_m_axi_arqos),
    .s_axi_arid    (_axi_clk_converter_fd_rd_m_axi_arid),
    .s_axi_rdata   (_fb_read_converter_s_axi_rdata),
    .s_axi_rresp   (_fb_read_converter_s_axi_rresp),
    .s_axi_rvalid  (_fb_read_converter_s_axi_rvalid),
    .s_axi_rready  (_axi_clk_converter_fd_rd_m_axi_rready),
    .s_axi_rlast   (_fb_read_converter_s_axi_rlast),
    .s_axi_rid     (_fb_read_converter_s_axi_rid),
    .m_axi_awaddr  (_fb_read_converter_m_axi_awaddr),
    .m_axi_awprot  (/* unused */),
    .m_axi_awvalid (_fb_read_converter_m_axi_awvalid),
    .m_axi_awready (_fb_read_s_axi_CTRL_AWREADY),
    .m_axi_wdata   (_fb_read_converter_m_axi_wdata),
    .m_axi_wstrb   (_fb_read_converter_m_axi_wstrb),
    .m_axi_wvalid  (_fb_read_converter_m_axi_wvalid),
    .m_axi_wready  (_fb_read_s_axi_CTRL_WREADY),
    .m_axi_bresp   (_fb_read_s_axi_CTRL_BRESP),
    .m_axi_bvalid  (_fb_read_s_axi_CTRL_BVALID),
    .m_axi_bready  (_fb_read_converter_m_axi_bready),
    .m_axi_araddr  (_fb_read_converter_m_axi_araddr),
    .m_axi_arprot  (/* unused */),
    .m_axi_arvalid (_fb_read_converter_m_axi_arvalid),
    .m_axi_arready (_fb_read_s_axi_CTRL_ARREADY),
    .m_axi_rdata   (_fb_read_s_axi_CTRL_RDATA),
    .m_axi_rresp   (_fb_read_s_axi_CTRL_RRESP),
    .m_axi_rvalid  (_fb_read_s_axi_CTRL_RVALID),
    .m_axi_rready  (_fb_read_converter_m_axi_rready)
  );
  axi_protocol_converter_0 fb_write_converter (
    .aclk          (_clk_pll_33_clk_100),
    .aresetn       (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_clk_converter_fb_wr_m_axi_awaddr),
    .s_axi_awprot  (_axi_clk_converter_fb_wr_m_axi_awprot),
    .s_axi_awvalid (_axi_clk_converter_fb_wr_m_axi_awvalid),
    .s_axi_awready (_fb_write_converter_s_axi_awready),
    .s_axi_awsize  (_axi_clk_converter_fb_wr_m_axi_awsize),
    .s_axi_awburst (_axi_clk_converter_fb_wr_m_axi_awburst),
    .s_axi_awcache (_axi_clk_converter_fb_wr_m_axi_awcache),
    .s_axi_awlen   (_axi_clk_converter_fb_wr_m_axi_awlen),
    .s_axi_awlock  (_axi_clk_converter_fb_wr_m_axi_awlock),
    .s_axi_awqos   (_axi_clk_converter_fb_wr_m_axi_awqos),
    .s_axi_awid    (_axi_clk_converter_fb_wr_m_axi_awid),
    .s_axi_wdata   (_axi_clk_converter_fb_wr_m_axi_wdata),
    .s_axi_wstrb   (_axi_clk_converter_fb_wr_m_axi_wstrb),
    .s_axi_wvalid  (_axi_clk_converter_fb_wr_m_axi_wvalid),
    .s_axi_wready  (_fb_write_converter_s_axi_wready),
    .s_axi_wlast   (_axi_clk_converter_fb_wr_m_axi_wlast),
    .s_axi_wid     (_axi_clk_converter_fb_wr_m_axi_wid),
    .s_axi_bresp   (_fb_write_converter_s_axi_bresp),
    .s_axi_bvalid  (_fb_write_converter_s_axi_bvalid),
    .s_axi_bready  (_axi_clk_converter_fb_wr_m_axi_bready),
    .s_axi_bid     (_fb_write_converter_s_axi_bid),
    .s_axi_araddr  (_axi_clk_converter_fb_wr_m_axi_araddr),
    .s_axi_arprot  (_axi_clk_converter_fb_wr_m_axi_arprot),
    .s_axi_arvalid (_axi_clk_converter_fb_wr_m_axi_arvalid),
    .s_axi_arready (_fb_write_converter_s_axi_arready),
    .s_axi_arsize  (_axi_clk_converter_fb_wr_m_axi_arsize),
    .s_axi_arburst (_axi_clk_converter_fb_wr_m_axi_arburst),
    .s_axi_arcache (_axi_clk_converter_fb_wr_m_axi_arcache),
    .s_axi_arlock  (_axi_clk_converter_fb_wr_m_axi_arlock),
    .s_axi_arlen   (_axi_clk_converter_fb_wr_m_axi_arlen),
    .s_axi_arqos   (_axi_clk_converter_fb_wr_m_axi_arqos),
    .s_axi_arid    (_axi_clk_converter_fb_wr_m_axi_arid),
    .s_axi_rdata   (_fb_write_converter_s_axi_rdata),
    .s_axi_rresp   (_fb_write_converter_s_axi_rresp),
    .s_axi_rvalid  (_fb_write_converter_s_axi_rvalid),
    .s_axi_rready  (_axi_clk_converter_fb_wr_m_axi_rready),
    .s_axi_rlast   (_fb_write_converter_s_axi_rlast),
    .s_axi_rid     (_fb_write_converter_s_axi_rid),
    .m_axi_awaddr  (_fb_write_converter_m_axi_awaddr),
    .m_axi_awprot  (/* unused */),
    .m_axi_awvalid (_fb_write_converter_m_axi_awvalid),
    .m_axi_awready (_fb_write_s_axi_CTRL_AWREADY),
    .m_axi_wdata   (_fb_write_converter_m_axi_wdata),
    .m_axi_wstrb   (_fb_write_converter_m_axi_wstrb),
    .m_axi_wvalid  (_fb_write_converter_m_axi_wvalid),
    .m_axi_wready  (_fb_write_s_axi_CTRL_WREADY),
    .m_axi_bresp   (_fb_write_s_axi_CTRL_BRESP),
    .m_axi_bvalid  (_fb_write_s_axi_CTRL_BVALID),
    .m_axi_bready  (_fb_write_converter_m_axi_bready),
    .m_axi_araddr  (_fb_write_converter_m_axi_araddr),
    .m_axi_arprot  (/* unused */),
    .m_axi_arvalid (_fb_write_converter_m_axi_arvalid),
    .m_axi_arready (_fb_write_s_axi_CTRL_ARREADY),
    .m_axi_rdata   (_fb_write_s_axi_CTRL_RDATA),
    .m_axi_rresp   (_fb_write_s_axi_CTRL_RRESP),
    .m_axi_rvalid  (_fb_write_s_axi_CTRL_RVALID),
    .m_axi_rready  (_fb_write_converter_m_axi_rready)
  );
  axi_protocol_converter_0 tft_protocol_converter (
    .aclk          (_clk_pll_33_clk_100),
    .aresetn       (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_axi_clk_converter_tft_m_axi_awaddr),
    .s_axi_awprot  (_axi_clk_converter_tft_m_axi_awprot),
    .s_axi_awvalid (_axi_clk_converter_tft_m_axi_awvalid),
    .s_axi_awready (_tft_protocol_converter_s_axi_awready),
    .s_axi_awsize  (_axi_clk_converter_tft_m_axi_awsize),
    .s_axi_awburst (_axi_clk_converter_tft_m_axi_awburst),
    .s_axi_awcache (_axi_clk_converter_tft_m_axi_awcache),
    .s_axi_awlen   (_axi_clk_converter_tft_m_axi_awlen),
    .s_axi_awlock  (_axi_clk_converter_tft_m_axi_awlock),
    .s_axi_awqos   (_axi_clk_converter_tft_m_axi_awqos),
    .s_axi_awid    (_axi_clk_converter_tft_m_axi_awid),
    .s_axi_wdata   (_axi_clk_converter_tft_m_axi_wdata),
    .s_axi_wstrb   (_axi_clk_converter_tft_m_axi_wstrb),
    .s_axi_wvalid  (_axi_clk_converter_tft_m_axi_wvalid),
    .s_axi_wready  (_tft_protocol_converter_s_axi_wready),
    .s_axi_wlast   (_axi_clk_converter_tft_m_axi_wlast),
    .s_axi_wid     (_axi_clk_converter_tft_m_axi_wid),
    .s_axi_bresp   (_tft_protocol_converter_s_axi_bresp),
    .s_axi_bvalid  (_tft_protocol_converter_s_axi_bvalid),
    .s_axi_bready  (_axi_clk_converter_tft_m_axi_bready),
    .s_axi_bid     (_tft_protocol_converter_s_axi_bid),
    .s_axi_araddr  (_axi_clk_converter_tft_m_axi_araddr),
    .s_axi_arprot  (_axi_clk_converter_tft_m_axi_arprot),
    .s_axi_arvalid (_axi_clk_converter_tft_m_axi_arvalid),
    .s_axi_arready (_tft_protocol_converter_s_axi_arready),
    .s_axi_arsize  (_axi_clk_converter_tft_m_axi_arsize),
    .s_axi_arburst (_axi_clk_converter_tft_m_axi_arburst),
    .s_axi_arcache (_axi_clk_converter_tft_m_axi_arcache),
    .s_axi_arlock  (_axi_clk_converter_tft_m_axi_arlock),
    .s_axi_arlen   (_axi_clk_converter_tft_m_axi_arlen),
    .s_axi_arqos   (_axi_clk_converter_tft_m_axi_arqos),
    .s_axi_arid    (_axi_clk_converter_tft_m_axi_arid),
    .s_axi_rdata   (_tft_protocol_converter_s_axi_rdata),
    .s_axi_rresp   (_tft_protocol_converter_s_axi_rresp),
    .s_axi_rvalid  (_tft_protocol_converter_s_axi_rvalid),
    .s_axi_rready  (_axi_clk_converter_tft_m_axi_rready),
    .s_axi_rlast   (_tft_protocol_converter_s_axi_rlast),
    .s_axi_rid     (_tft_protocol_converter_s_axi_rid),
    .m_axi_awaddr  (_tft_protocol_converter_m_axi_awaddr),
    .m_axi_awprot  (/* unused */),
    .m_axi_awvalid (_tft_protocol_converter_m_axi_awvalid),
    .m_axi_awready (_tft_s_axi_awready),
    .m_axi_wdata   (_tft_protocol_converter_m_axi_wdata),
    .m_axi_wstrb   (_tft_protocol_converter_m_axi_wstrb),
    .m_axi_wvalid  (_tft_protocol_converter_m_axi_wvalid),
    .m_axi_wready  (_tft_s_axi_wready),
    .m_axi_bresp   (_tft_s_axi_bresp),
    .m_axi_bvalid  (_tft_s_axi_bvalid),
    .m_axi_bready  (_tft_protocol_converter_m_axi_bready),
    .m_axi_araddr  (_tft_protocol_converter_m_axi_araddr),
    .m_axi_arprot  (/* unused */),
    .m_axi_arvalid (_tft_protocol_converter_m_axi_arvalid),
    .m_axi_arready (_tft_s_axi_arready),
    .m_axi_rdata   (_tft_s_axi_rdata),
    .m_axi_rresp   (_tft_s_axi_rresp),
    .m_axi_rvalid  (_tft_s_axi_rvalid),
    .m_axi_rready  (_tft_protocol_converter_m_axi_rready)
  );
  v_frmbuf_wr_0 fb_write (
    .ap_clk                  (_clk_pll_33_clk_100),
    .ap_rst_n                (_main_reset_peripheral_aresetn),
    .interrupt               (/* unused */),
    .s_axi_CTRL_AWADDR       (_fb_write_converter_m_axi_awaddr),
    .s_axi_CTRL_AWVALID      (_fb_write_converter_m_axi_awvalid),
    .s_axi_CTRL_AWREADY      (_fb_write_s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA        (_fb_write_converter_m_axi_wdata),
    .s_axi_CTRL_WSTRB        (_fb_write_converter_m_axi_wstrb),
    .s_axi_CTRL_WVALID       (_fb_write_converter_m_axi_wvalid),
    .s_axi_CTRL_WREADY       (_fb_write_s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP        (_fb_write_s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID       (_fb_write_s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY       (_fb_write_converter_m_axi_bready),
    .s_axi_CTRL_ARADDR       (_fb_write_converter_m_axi_araddr),
    .s_axi_CTRL_ARVALID      (_fb_write_converter_m_axi_arvalid),
    .s_axi_CTRL_ARREADY      (_fb_write_s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA        (_fb_write_s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP        (_fb_write_s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID       (_fb_write_s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY       (_fb_write_converter_m_axi_rready),
    .m_axi_mm_video_AWADDR   (_fb_write_m_axi_mm_video_AWADDR),
    .m_axi_mm_video_AWPROT   (_fb_write_m_axi_mm_video_AWPROT),
    .m_axi_mm_video_AWVALID  (_fb_write_m_axi_mm_video_AWVALID),
    .m_axi_mm_video_AWREADY  (_mig_axi_interconnect_S05_AXI_AWREADY),
    .m_axi_mm_video_AWSIZE   (_fb_write_m_axi_mm_video_AWSIZE),
    .m_axi_mm_video_AWBURST  (_fb_write_m_axi_mm_video_AWBURST),
    .m_axi_mm_video_AWCACHE  (_fb_write_m_axi_mm_video_AWCACHE),
    .m_axi_mm_video_AWLEN    (_fb_write_m_axi_mm_video_AWLEN),
    .m_axi_mm_video_AWLOCK   (_fb_write_m_axi_mm_video_AWLOCK),
    .m_axi_mm_video_AWQOS    (_fb_write_m_axi_mm_video_AWQOS),
    .m_axi_mm_video_AWREGION (/* unused */),
    .m_axi_mm_video_WDATA    (_fb_write_m_axi_mm_video_WDATA),
    .m_axi_mm_video_WSTRB    (_fb_write_m_axi_mm_video_WSTRB),
    .m_axi_mm_video_WVALID   (_fb_write_m_axi_mm_video_WVALID),
    .m_axi_mm_video_WREADY   (_mig_axi_interconnect_S05_AXI_WREADY),
    .m_axi_mm_video_WLAST    (_fb_write_m_axi_mm_video_WLAST),
    .m_axi_mm_video_BRESP    (_mig_axi_interconnect_S05_AXI_BRESP),
    .m_axi_mm_video_BVALID   (_mig_axi_interconnect_S05_AXI_BVALID),
    .m_axi_mm_video_BREADY   (_fb_write_m_axi_mm_video_BREADY),
    .m_axi_mm_video_ARADDR   (_fb_write_m_axi_mm_video_ARADDR),
    .m_axi_mm_video_ARPROT   (_fb_write_m_axi_mm_video_ARPROT),
    .m_axi_mm_video_ARVALID  (_fb_write_m_axi_mm_video_ARVALID),
    .m_axi_mm_video_ARREADY  (_mig_axi_interconnect_S05_AXI_ARREADY),
    .m_axi_mm_video_ARSIZE   (_fb_write_m_axi_mm_video_ARSIZE),
    .m_axi_mm_video_ARBURST  (_fb_write_m_axi_mm_video_ARBURST),
    .m_axi_mm_video_ARCACHE  (_fb_write_m_axi_mm_video_ARCACHE),
    .m_axi_mm_video_ARLOCK   (_fb_write_m_axi_mm_video_ARLOCK),
    .m_axi_mm_video_ARLEN    (_fb_write_m_axi_mm_video_ARLEN),
    .m_axi_mm_video_ARQOS    (_fb_write_m_axi_mm_video_ARQOS),
    .m_axi_mm_video_ARREGION (/* unused */),
    .m_axi_mm_video_RDATA    (_mig_axi_interconnect_S05_AXI_RDATA),
    .m_axi_mm_video_RRESP    (_mig_axi_interconnect_S05_AXI_RRESP),
    .m_axi_mm_video_RVALID   (_mig_axi_interconnect_S05_AXI_RVALID),
    .m_axi_mm_video_RREADY   (_fb_write_m_axi_mm_video_RREADY),
    .m_axi_mm_video_RLAST    (_mig_axi_interconnect_S05_AXI_RLAST),
    .s_axis_video_TVALID     (_stream_ctl_m_axis_video_TVALID),
    .s_axis_video_TREADY     (_fb_write_s_axis_video_TREADY),
    .s_axis_video_TDATA      (_stream_ctl_m_axis_video_TDATA),
    .s_axis_video_TKEEP      (_stream_ctl_m_axis_video_TKEEP),
    .s_axis_video_TSTRB      (_stream_ctl_m_axis_video_TSTRB),
    .s_axis_video_TUSER      (_stream_ctl_m_axis_video_TUSER),
    .s_axis_video_TLAST      (_stream_ctl_m_axis_video_TLAST),
    .s_axis_video_TID        (_stream_ctl_m_axis_video_TID),
    .s_axis_video_TDEST      (_stream_ctl_m_axis_video_TDEST)
  );
  v_frmbuf_rd_0 fb_read (
    .ap_clk                  (_clk_pll_33_clk_100),
    .ap_rst_n                (_main_reset_peripheral_aresetn),
    .interrupt               (/* unused */),
    .s_axi_CTRL_AWADDR       (_fb_read_converter_m_axi_awaddr),
    .s_axi_CTRL_AWVALID      (_fb_read_converter_m_axi_awvalid),
    .s_axi_CTRL_AWREADY      (_fb_read_s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA        (_fb_read_converter_m_axi_wdata),
    .s_axi_CTRL_WSTRB        (_fb_read_converter_m_axi_wstrb),
    .s_axi_CTRL_WVALID       (_fb_read_converter_m_axi_wvalid),
    .s_axi_CTRL_WREADY       (_fb_read_s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP        (_fb_read_s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID       (_fb_read_s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY       (_fb_read_converter_m_axi_bready),
    .s_axi_CTRL_ARADDR       (_fb_read_converter_m_axi_araddr),
    .s_axi_CTRL_ARVALID      (_fb_read_converter_m_axi_arvalid),
    .s_axi_CTRL_ARREADY      (_fb_read_s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA        (_fb_read_s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP        (_fb_read_s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID       (_fb_read_s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY       (_fb_read_converter_m_axi_rready),
    .m_axi_mm_video_AWADDR   (_fb_read_m_axi_mm_video_AWADDR),
    .m_axi_mm_video_AWPROT   (_fb_read_m_axi_mm_video_AWPROT),
    .m_axi_mm_video_AWVALID  (_fb_read_m_axi_mm_video_AWVALID),
    .m_axi_mm_video_AWREADY  (_mig_axi_interconnect_S06_AXI_AWREADY),
    .m_axi_mm_video_AWSIZE   (_fb_read_m_axi_mm_video_AWSIZE),
    .m_axi_mm_video_AWBURST  (_fb_read_m_axi_mm_video_AWBURST),
    .m_axi_mm_video_AWCACHE  (_fb_read_m_axi_mm_video_AWCACHE),
    .m_axi_mm_video_AWLEN    (_fb_read_m_axi_mm_video_AWLEN),
    .m_axi_mm_video_AWLOCK   (_fb_read_m_axi_mm_video_AWLOCK),
    .m_axi_mm_video_AWQOS    (_fb_read_m_axi_mm_video_AWQOS),
    .m_axi_mm_video_AWREGION (/* unused */),
    .m_axi_mm_video_WDATA    (_fb_read_m_axi_mm_video_WDATA),
    .m_axi_mm_video_WSTRB    (_fb_read_m_axi_mm_video_WSTRB),
    .m_axi_mm_video_WVALID   (_fb_read_m_axi_mm_video_WVALID),
    .m_axi_mm_video_WREADY   (_mig_axi_interconnect_S06_AXI_WREADY),
    .m_axi_mm_video_WLAST    (_fb_read_m_axi_mm_video_WLAST),
    .m_axi_mm_video_BRESP    (_mig_axi_interconnect_S06_AXI_BRESP),
    .m_axi_mm_video_BVALID   (_mig_axi_interconnect_S06_AXI_BVALID),
    .m_axi_mm_video_BREADY   (_fb_read_m_axi_mm_video_BREADY),
    .m_axi_mm_video_ARADDR   (_fb_read_m_axi_mm_video_ARADDR),
    .m_axi_mm_video_ARPROT   (_fb_read_m_axi_mm_video_ARPROT),
    .m_axi_mm_video_ARVALID  (_fb_read_m_axi_mm_video_ARVALID),
    .m_axi_mm_video_ARREADY  (_mig_axi_interconnect_S06_AXI_ARREADY),
    .m_axi_mm_video_ARSIZE   (_fb_read_m_axi_mm_video_ARSIZE),
    .m_axi_mm_video_ARBURST  (_fb_read_m_axi_mm_video_ARBURST),
    .m_axi_mm_video_ARCACHE  (_fb_read_m_axi_mm_video_ARCACHE),
    .m_axi_mm_video_ARLOCK   (_fb_read_m_axi_mm_video_ARLOCK),
    .m_axi_mm_video_ARLEN    (_fb_read_m_axi_mm_video_ARLEN),
    .m_axi_mm_video_ARQOS    (_fb_read_m_axi_mm_video_ARQOS),
    .m_axi_mm_video_ARREGION (/* unused */),
    .m_axi_mm_video_RDATA    (_mig_axi_interconnect_S06_AXI_RDATA),
    .m_axi_mm_video_RRESP    (_mig_axi_interconnect_S06_AXI_RRESP),
    .m_axi_mm_video_RVALID   (_mig_axi_interconnect_S06_AXI_RVALID),
    .m_axi_mm_video_RREADY   (_fb_read_m_axi_mm_video_RREADY),
    .m_axi_mm_video_RLAST    (_mig_axi_interconnect_S06_AXI_RLAST),
    .m_axis_video_TVALID     (_fb_read_m_axis_video_TVALID),
    .m_axis_video_TREADY     (_stream_ctl_s_axis_video_TREADY),
    .m_axis_video_TDATA      (_fb_read_m_axis_video_TDATA),
    .m_axis_video_TKEEP      (_fb_read_m_axis_video_TKEEP),
    .m_axis_video_TSTRB      (_fb_read_m_axis_video_TSTRB),
    .m_axis_video_TUSER      (_fb_read_m_axis_video_TUSER),
    .m_axis_video_TLAST      (_fb_read_m_axis_video_TLAST),
    .m_axis_video_TID        (_fb_read_m_axis_video_TID),
    .m_axis_video_TDEST      (_fb_read_m_axis_video_TDEST)
  );
  axi_tft_0 tft (
    .md_error      (/* unused */),
    .ip2intc_irpt  (/* unused */),
    .m_axi_aclk    (_clk_pll_33_clk_100),
    .m_axi_aresetn (_main_reset_peripheral_aresetn),
    .m_axi_awaddr  (_tft_m_axi_awaddr),
    .m_axi_awprot  (_tft_m_axi_awprot),
    .m_axi_awvalid (_tft_m_axi_awvalid),
    .m_axi_awready (_mig_axi_interconnect_S04_AXI_AWREADY),
    .m_axi_awsize  (_tft_m_axi_awsize),
    .m_axi_awburst (_tft_m_axi_awburst),
    .m_axi_awcache (_tft_m_axi_awcache),
    .m_axi_awlen   (_tft_m_axi_awlen),
    .m_axi_wdata   (_tft_m_axi_wdata),
    .m_axi_wstrb   (_tft_m_axi_wstrb),
    .m_axi_wvalid  (_tft_m_axi_wvalid),
    .m_axi_wready  (_mig_axi_interconnect_S04_AXI_WREADY),
    .m_axi_wlast   (_tft_m_axi_wlast),
    .m_axi_bresp   (_mig_axi_interconnect_S04_AXI_BRESP),
    .m_axi_bvalid  (_mig_axi_interconnect_S04_AXI_BVALID),
    .m_axi_bready  (_tft_m_axi_bready),
    .m_axi_araddr  (_tft_m_axi_araddr),
    .m_axi_arprot  (_tft_m_axi_arprot),
    .m_axi_arvalid (_tft_m_axi_arvalid),
    .m_axi_arready (_mig_axi_interconnect_S04_AXI_ARREADY),
    .m_axi_arsize  (_tft_m_axi_arsize),
    .m_axi_arburst (_tft_m_axi_arburst),
    .m_axi_arcache (_tft_m_axi_arcache),
    .m_axi_arlen   (_tft_m_axi_arlen),
    .m_axi_rdata   (_mig_axi_interconnect_S04_AXI_RDATA),
    .m_axi_rresp   (_mig_axi_interconnect_S04_AXI_RRESP),
    .m_axi_rvalid  (_mig_axi_interconnect_S04_AXI_RVALID),
    .m_axi_rready  (_tft_m_axi_rready),
    .m_axi_rlast   (_mig_axi_interconnect_S04_AXI_RLAST),
    .s_axi_aclk    (_clk_pll_33_clk_100),
    .s_axi_aresetn (_main_reset_peripheral_aresetn),
    .s_axi_awaddr  (_tft_protocol_converter_m_axi_awaddr),
    .s_axi_awvalid (_tft_protocol_converter_m_axi_awvalid),
    .s_axi_awready (_tft_s_axi_awready),
    .s_axi_wdata   (_tft_protocol_converter_m_axi_wdata),
    .s_axi_wstrb   (_tft_protocol_converter_m_axi_wstrb),
    .s_axi_wvalid  (_tft_protocol_converter_m_axi_wvalid),
    .s_axi_wready  (_tft_s_axi_wready),
    .s_axi_bresp   (_tft_s_axi_bresp),
    .s_axi_bvalid  (_tft_s_axi_bvalid),
    .s_axi_bready  (_tft_protocol_converter_m_axi_bready),
    .s_axi_araddr  (_tft_protocol_converter_m_axi_araddr),
    .s_axi_arvalid (_tft_protocol_converter_m_axi_arvalid),
    .s_axi_arready (_tft_s_axi_arready),
    .s_axi_rdata   (_tft_s_axi_rdata),
    .s_axi_rresp   (_tft_s_axi_rresp),
    .s_axi_rvalid  (_tft_s_axi_rvalid),
    .s_axi_rready  (_tft_protocol_converter_m_axi_rready),
    .sys_tft_clk   (_clk_pll_33_clk_25),
    .tft_hsync     (io_tft_hsync),
    .tft_vsync     (io_tft_vsync),
    .tft_de        (io_tft_de),
    .tft_dps       (io_tft_dps),
    .tft_vga_clk   (io_tft_vga_clk),
    .tft_vga_r     (io_tft_vga_r),
    .tft_vga_g     (io_tft_vga_g),
    .tft_vga_b     (io_tft_vga_b)
  );
  stream_ctl_0 stream_ctl (
    .aclk                (_clk_pll_33_clk_100),
    .aresetn             (_main_reset_peripheral_aresetn),
    .ctl_reg1            (_confreg_vga_reg),
    .m_axis_video_TVALID (_stream_ctl_m_axis_video_TVALID),
    .m_axis_video_TREADY (_fb_write_s_axis_video_TREADY),
    .m_axis_video_TDATA  (_stream_ctl_m_axis_video_TDATA),
    .m_axis_video_TKEEP  (_stream_ctl_m_axis_video_TKEEP),
    .m_axis_video_TSTRB  (_stream_ctl_m_axis_video_TSTRB),
    .m_axis_video_TUSER  (_stream_ctl_m_axis_video_TUSER),
    .m_axis_video_TLAST  (_stream_ctl_m_axis_video_TLAST),
    .m_axis_video_TID    (_stream_ctl_m_axis_video_TID),
    .m_axis_video_TDEST  (_stream_ctl_m_axis_video_TDEST),
    .s_axis_video_TVALID (_fb_read_m_axis_video_TVALID),
    .s_axis_video_TREADY (_stream_ctl_s_axis_video_TREADY),
    .s_axis_video_TDATA  (_fb_read_m_axis_video_TDATA),
    .s_axis_video_TKEEP  (_fb_read_m_axis_video_TKEEP),
    .s_axis_video_TSTRB  (_fb_read_m_axis_video_TSTRB),
    .s_axis_video_TUSER  (_fb_read_m_axis_video_TUSER),
    .s_axis_video_TLAST  (_fb_read_m_axis_video_TLAST),
    .s_axis_video_TID    (_fb_read_m_axis_video_TID),
    .s_axis_video_TDEST  (_fb_read_m_axis_video_TDEST)
  );
  proc_sys_reset_0 main_reset (
    .slowest_sync_clk     (_clk_pll_33_clk_out2),
    .ext_reset_in         (1'h1),
    .aux_reset_in         (_mig_axi_init_calib_complete),
    .mb_debug_sys_rst     (1'h0),
    .dcm_locked           (_clk_pll_33_locked),
    .mb_reset             (_main_reset_mb_reset),
    .bus_struct_reset     (/* unused */),
    .peripheral_reset     (/* unused */),
    .interconnect_aresetn (_main_reset_interconnect_aresetn),
    .peripheral_aresetn   (_main_reset_peripheral_aresetn)
  );
  assign io_phy_rstn = _main_reset_peripheral_aresetn;
  assign io_ejtag_TDO = 1'h0;
endmodule

