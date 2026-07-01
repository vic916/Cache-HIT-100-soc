//lcd top to connect lcd to cpu
`include "axi_defines.sv"
`include "lcd_types.sv"
`define AXI
module lcd_top
import lcd_types::*;
    (
        // rst and clk, clk is lower than cpu
        input   logic           clk,    // 33Mhz
        input   logic           resetn,

        /** from AXI **/
        input   logic [`ID]     s_arid,
        input   logic [`ADDR]   s_araddr,
        input   logic [`Len]    s_arlen,
        input   logic [`Size]   s_arsize,
        input   logic [`Burst]  s_arburst,
        input   logic [`Lock]   s_arlock,
        input   logic [`Cache]  s_arcache,
        input   logic [`Prot]   s_arprot,
        input   logic           s_arvalid,
        output  logic           s_arready,

        output  logic [`ID]     s_rid,
        output  logic [`Data]   s_rdata,
        output  logic [`Resp]   s_rresp,
        output  logic           s_rlast,
        output  logic           s_rvalid,
        input   logic           s_rready,

        input   logic [`ID]     s_awid,
        input   logic [`ADDR]   s_awaddr,
        input   logic [`Len]    s_awlen,
        input   logic [`Size]   s_awsize,
        input   logic [`Burst]  s_awburst,
        input   logic [`Lock]   s_awlock,
        input   logic [`Cache]  s_awcache,
        input   logic [`Prot]   s_awprot,
        input   logic           s_awvalid,
        output  logic           s_awready,

        input   logic [`ID]     s_wid,
        input   logic [`Data]   s_wdata,
        input   logic [`Strb]   s_wstrb,
        input   logic           s_wlast,
        input   logic           s_wvalid,
        output  logic           s_wready,

        output  logic [`ID]     s_bid,
        output  logic [`Resp]   s_bresp,
        output  logic           s_bvalid,
        input   logic           s_bready,

        /** display LCD **/
        output  logic           lcd_rst,
        output  logic           lcd_cs,
        output  logic           lcd_rs,
        output  logic           lcd_wr,
        output  logic           lcd_rd,
        inout   wire [15:0]     lcd_data_io,  //from/to lcd data
        output  wire            lcd_bl_ctr,

        /** touch LCD **/
        inout   wire            lcd_ct_int,  //触摸屏中断信号
        inout   wire            lcd_ct_sda,
        output  logic           lcd_ct_scl,
        output  logic           lcd_ct_rstn //lcd触摸屏幕复位信号
    );

    logic pclk;
    logic ts_clk;
    logic rst_n = resetn;
    clk_wiz_1 clk_pll (
        .clk_out1   (ts_clk ),  // 10 Mhz
        .clk_out2   (pclk   ),  // 50 Mhz
        .clk_in1    (clk    )   // 33 Mhz
    ); 

    //core <-> *
    logic           touch_flag;
    logic           release_flag;
    logic [31:0]    coordinate;
    logic           core_enable;
    logic           cpu_draw;
    logic [31:0]    touch_reg;
    logic           init_main_core;
    logic           init_finish_core;
    logic           cpu_work;
    logic [31:0]    game;
    logic           rand_num;
    logic [9:0]     core_random;
    logic           change_color;
    logic [31:0]    new_color;
    lcd_core u_lcd_core (
        .pclk           (pclk               ),
        .rst_n          (rst_n              ),

        // from lcd_init
        .init_finish    (init_finish_core   ),
        // to lcd_init
        .init_main      (init_main_core     ),

        // to lcd_ctrl
        .touch_reg      (touch_reg          ),
        .cpu_work       (cpu_work           ),
        .game           (game               ),
        .rand_num       (rand_num           ),
        .core_random    (core_random        ),
        // to lcd_mux
        .cpu_draw       (cpu_draw           ),
        .change_color   (change_color       ),
        .new_color      (new_color          ),
        //from lcd_touch_scanner
        .touch_flag     (touch_flag         ), //1表示碰到触碰点
        .release_flag   (release_flag       ), //it would be set as 1 when the coordinate is ready，1表示手松开
        .coordinate     (coordinate         ),  //{x_low,x_high,y_low,y_high}
        //to lcd_touch_scanner
        .enable         (core_enable        )//触摸屏开始工作
    );

    lcd_touch_scanner u_lcd_touch_scanner(
        .ts_clk         (ts_clk         ),//10Mhz
        .resetn         (rst_n          ),
        .touch_flag     (touch_flag     ),//1表示触碰点有效
        .release_flag   (release_flag   ), //it would be set as 1 when the coordinate is ready
        .coordinate     (coordinate     ),  //{x_low,x_high,y_low,y_high}
        .enable         (core_enable    ),//触摸屏开始工作
        .lcd_int        (lcd_ct_int     ),
        .lcd_sda        (lcd_ct_sda     ),
        .lcd_ct_scl     (lcd_ct_scl     ),
        .lcd_ct_rstn    (lcd_ct_rstn    )
    );

    // top <-> lcd_ctrl
    logic   [31:0] lcd_input_data;

    // top <-> lcd_interface
    wire    [15:0] lcd_data_i;
    wire    [15:0] lcd_data_o;
    wire           lcd_write_data_ctrl;
    logic   [31:0] data_reg;
    assign lcd_data_i  = lcd_data_io;
    assign lcd_data_io = (lcd_write_data_ctrl == 1'b1) ? lcd_data_o : 16'bz;
    logic   [15:0] data_i;
    always_ff @(posedge pclk) begin
        if (~rst_n) begin
            data_i <= 0;
        end else begin
            data_i <= lcd_data_i;
        end
    end
    // lcd_id ,lcd_init <-> mux <-> lcd_interface
    id_mux_struct           id_mux_signal;
    init_mux_struct         init_mux_signal;
    interface_mux_struct    inter_mux_signal;

    lcd_mux u_lcd_mux (
        .pclk               (pclk                           ),
        .rst_n              (rst_n                          ),
        //from cpu draw 
        .cpu_draw           (cpu_draw                       ),
        //from lcd_id   
        .id_we              (id_mux_signal.id_we            ),  //write enable
        .id_wr              (id_mux_signal.id_wr            ),  //0:read lcd 1:write lcd,distinguish inst kind
        .id_lcd_rs          (id_mux_signal.id_lcd_rs        ),
        .id_data_o          (id_mux_signal.id_data          ),
        .id_fm_i            (id_mux_signal.id_fm            ),
        .id_read_color_o    (id_mux_signal.id_read_color    ),
        //to lcd_id
        .busy_o             (id_mux_signal.busy             ),
        .write_color_ok_o   (id_mux_signal.write_color_ok   ),  //write one color

        //from lcd_init
        .init_data          (init_mux_signal.init_data      ),
        .init_we            (init_mux_signal.init_we        ),
        .init_wr            (init_mux_signal.init_wr        ),
        .init_rs            (init_mux_signal.init_rs        ),
        .init_work          (init_mux_signal.init_work      ),
        .init_finish        (init_mux_signal.init_finish    ),
        //to lcd_init
        .init_write_ok_o    (init_mux_signal.init_write_ok  ),

        //from lcd_core
        .cpu_work           (cpu_work                       ),
        //from lcd_interface
        .init_write_ok_i    (inter_mux_signal.init_write_ok ),
        .busy_i             (inter_mux_signal.busy          ),
        .write_color_ok_i   (inter_mux_signal.write_color_ok),  //write one color
        //to lcd_interface
        .data_o             (inter_mux_signal.data          ),
        .we_o               (inter_mux_signal.we            ),
        .wr_o               (inter_mux_signal.wr            ),
        .lcd_rs_o           (inter_mux_signal.lcd_rs        ),  //distinguish inst or data
        .id_fm_o            (inter_mux_signal.id_fm         ),  //distinguish read id or read fm,0:id,1:fm
        .read_color_o       (inter_mux_signal.read_color    )  //if read color ,reading time is at least 2
    );

    lcd_interface u_lcd_interface (
        .pclk               (pclk                           ),  //cycle time 20ns,50Mhz
        .rst_n              (rst_n                          ), //low is powerful

        //to lcd
        /**屏幕显示信号**/
        .lcd_rst            (lcd_rst                        ),  //lcd 复位键
        .lcd_cs             (lcd_cs                         ),
        .lcd_rs             (lcd_rs                         ),  //0:inst 1:data
        .lcd_wr             (lcd_wr                         ),  //write signal ,low is powerful
        .lcd_rd             (lcd_rd                         ),  //read signal,low is powerful
        .lcd_data_i         (lcd_data_i                     ),  //from lcd
        .lcd_data_o         (lcd_data_o                     ),  //to lcd
        .lcd_bl_ctr         (lcd_bl_ctr                     ),

        //to lcd top
        .lcd_write_data_ctrl(lcd_write_data_ctrl            ),  //写控制信号，用于决定顶层的lcd_data_io
        .data_reg           (data_reg                       ),
        //from lcd_id
        .data_i             (inter_mux_signal.data          ),
        .we                 (inter_mux_signal.we            ),
        .wr                 (inter_mux_signal.wr            ),
        .lcd_rs_i           (inter_mux_signal.lcd_rs        ),  //distinguish inst or data
        .id_fm              (inter_mux_signal.id_fm         ),  //distinguish read id or read fm,0:id,1:fm
        .read_color         (inter_mux_signal.read_color    ),  //if read color ,reading time is at least 2

        //to lcd_id
        .busy               (inter_mux_signal.busy          ),
        .write_color_ok     (inter_mux_signal.write_color_ok),
        .init_write_ok      (inter_mux_signal.init_write_ok )
    );

    //lcd_id <->lcd_ctrl
    logic        ctrl_write_lcd_id;
    logic [31:0] ctrl_addr_id;
    logic [31:0] ctrl_data_id;
    logic        write_ok;
    logic [31:0] ctrl_buffer_data_id;
    logic [31:0] ctrl_buffer_addr_id;
    logic        data_valid;
    logic [31:0] graph_size;
    logic        ctrl_refresh_id;
    logic        ctrl_refresh_rs_id;
    logic        ctrl_char_color_id;
    logic        ctrl_char_rs_id;
    lcd_id u_lcd_id (
        .pclk               (pclk                           ),
        .rst_n              (rst_n                          ),
        //from lcd ctrl
        .write_lcd_i        (data_valid                     ),
        .lcd_addr_i         (ctrl_buffer_addr_id            ),
        .lcd_data_i         (ctrl_buffer_data_id            ),
        .refresh_i          (ctrl_refresh_id                ),
        .refresh_rs_i       (ctrl_refresh_rs_id             ),

        //speeder
        .buffer_addr_i      (ctrl_buffer_addr_id            ),
        .buffer_data_i      (ctrl_buffer_data_id            ),
        .data_valid         (data_valid                     ),
        .graph_size_i       (graph_size                     ),
        .char_color_i       (ctrl_char_color_id             ),
        .char_rs_i          (ctrl_char_rs_id                ),
        //from lcd_core
        .cpu_work           (cpu_work                       ),

        //to lcd ctrl
        .write_ok           (write_ok                       ),

        //to lcd interface
        .we                 (id_mux_signal.id_we            ),  //write enable
        .wr                 (id_mux_signal.id_wr            ),  //0:read lcd 1:write lcd,distinguish inst kind
        .lcd_rs             (id_mux_signal.id_lcd_rs        ),
        .data_o             (id_mux_signal.id_data          ),
        .id_fm              (id_mux_signal.id_fm            ),
        .read_color_o       (id_mux_signal.id_read_color    ),

        //from lcd inteface
        .busy               (id_mux_signal.busy             ),
        .write_color_ok     (id_mux_signal.write_color_ok   )
    );

    //lcd_ctrl <-> lcd_refresh
    logic           enable;
    logic [6 :0]    refresh_req;//用于决定刷新的种类，
    logic [15:0]    refresh_data;
    logic           data_ok;
    logic           refresh_ok;//refresh is over
    logic           refresh_rs;

    //lcd_ctrl <-> char_ctrl
    logic [31:0]    cpu_code;
    logic           char_work;
    logic           char_write_ok;
    logic [15:0]    char_data;
    logic           char_color_ok;
    logic           write_str_end;
    
    logic [`ID]     s_fast_arid;
    logic [`ADDR]   s_fast_araddr;
    logic [`Len]    s_fast_arlen;
    logic [`Size]   s_fast_arsize;
    logic [`Burst]  s_fast_arburst;
    logic [`Lock]   s_fast_arlock;
    logic [`Cache]  s_fast_arcache;
    logic [`Prot]   s_fast_arprot;
    logic           s_fast_arvalid;
    logic           s_fast_arready;
    logic [`ID]     s_fast_rid;
    logic [`Data]   s_fast_rdata;
    logic [`Resp]   s_fast_rresp;
    logic           s_fast_rlast;
    logic           s_fast_rvalid;
    logic           s_fast_rready;
    logic [`ID]     s_fast_awid;
    logic [`ADDR]   s_fast_awaddr;
    logic [`Len]    s_fast_awlen;
    logic [`Size]   s_fast_awsize;
    logic [`Burst]  s_fast_awburst;
    logic [`Lock]   s_fast_awlock;
    logic [`Cache]  s_fast_awcache;
    logic [`Prot]   s_fast_awprot;
    logic           s_fast_awvalid;
    logic           s_fast_awready;
    logic [`ID]     s_fast_wid;
    logic [`Data]   s_fast_wdata;
    logic [`Strb]   s_fast_wstrb;
    logic           s_fast_wlast;
    logic           s_fast_wvalid;
    logic           s_fast_wready;
    logic [`ID]     s_fast_bid;
    logic [`Resp]   s_fast_bresp;
    logic           s_fast_bvalid;
    logic           s_fast_bready;
    // LCD 时钟域 -> SoC 时钟域
    axi_clock_converter_0 axi_clk_converter_lcd (
        .m_axi_awid       (s_fast_awid[3:0]   ),	
        .m_axi_awaddr     (s_fast_awaddr      ),
        .m_axi_awlen      (s_fast_awlen       ),
        .m_axi_awsize     (s_fast_awsize      ),
        .m_axi_awburst    (s_fast_awburst     ),
        .m_axi_awlock     (s_fast_awlock      ),
        .m_axi_awcache    (s_fast_awcache     ),
        .m_axi_awprot     (s_fast_awprot      ),
        .m_axi_awqos      (                   ),
        .m_axi_awvalid    (s_fast_awvalid     ),
        .m_axi_awready    (s_fast_awready     ),
        .m_axi_wid        (s_fast_wid[3:0]    ),
        .m_axi_wdata      (s_fast_wdata       ),
        .m_axi_wstrb      (s_fast_wstrb       ),
        .m_axi_wlast      (s_fast_wlast       ),
        .m_axi_wvalid     (s_fast_wvalid      ),
        .m_axi_wready     (s_fast_wready      ),
        .m_axi_bid        (s_fast_bid[3:0]    ),
        .m_axi_bresp      (s_fast_bresp       ),
        .m_axi_bvalid     (s_fast_bvalid      ),
        .m_axi_bready     (s_fast_bready      ),
        .m_axi_arid       (s_fast_arid[3:0]   ),
        .m_axi_araddr     (s_fast_araddr      ),
        .m_axi_arlen      (s_fast_arlen       ),
        .m_axi_arsize     (s_fast_arsize      ),
        .m_axi_arburst    (s_fast_arburst     ),
        .m_axi_arlock     (s_fast_arlock      ),
        .m_axi_arcache    (s_fast_arcache     ),
        .m_axi_arprot     (s_fast_arprot      ),
        .m_axi_arqos      (                   ),
        .m_axi_arvalid    (s_fast_arvalid     ),
        .m_axi_arready    (s_fast_arready     ),
        .m_axi_rid        (s_fast_rid[3:0]    ),
        .m_axi_rdata      (s_fast_rdata       ),
        .m_axi_rresp      (s_fast_rresp       ),
        .m_axi_rlast      (s_fast_rlast       ),
        .m_axi_rvalid     (s_fast_rvalid      ),
        .m_axi_rready     (s_fast_rready      ),
        .m_axi_aclk	      (pclk               ),
        .m_axi_aresetn    (rst_n              ),
        
        .s_axi_awid       (s_awid[3:0]        ),
        .s_axi_awaddr     (s_awaddr           ),
        .s_axi_awlen      (s_awlen            ),
        .s_axi_awsize     (s_awsize           ),
        .s_axi_awburst    (s_awburst          ),
        .s_axi_awlock     (s_awlock           ),
        .s_axi_awcache    (s_awcache          ),
        .s_axi_awprot     (s_awprot           ),
        .s_axi_awqos      (                   ),
        .s_axi_awvalid    (s_awvalid          ),
        .s_axi_awready    (s_awready          ),
        .s_axi_wid        (s_wid[3:0]         ),
        .s_axi_wdata      (s_wdata            ),
        .s_axi_wstrb      (s_wstrb            ),
        .s_axi_wlast      (s_wlast            ),
        .s_axi_wvalid     (s_wvalid           ),
        .s_axi_wready     (s_wready           ),
        .s_axi_bid        (s_bid[3:0]         ),
        .s_axi_bresp      (s_bresp            ),
        .s_axi_bvalid     (s_bvalid           ),
        .s_axi_bready     (s_bready           ),
        .s_axi_arid       (s_arid[3:0]        ),
        .s_axi_araddr     (s_araddr           ),
        .s_axi_arlen      (s_arlen            ),
        .s_axi_arsize     (s_arsize           ),
        .s_axi_arburst    (s_arburst          ),
        .s_axi_arlock     (s_arlock           ),
        .s_axi_arcache    (s_arcache          ),
        .s_axi_arprot     (s_arprot           ),
        .s_axi_arqos      (                   ),
        .s_axi_arvalid    (s_arvalid          ),
        .s_axi_arready    (s_arready          ),
        .s_axi_rid        (s_rid[3:0]         ),
        .s_axi_rdata      (s_rdata            ),
        .s_axi_rresp      (s_rresp            ),
        .s_axi_rlast      (s_rlast            ),
        .s_axi_rvalid     (s_rvalid           ),
        .s_axi_rready     (s_rready           ),
        .s_axi_aclk	      (clk                ),
        .s_axi_aresetn    (resetn             )  // input
    );

    lcd_ctrl u_lcd_ctrl (
        //rst and clk,clk is lower than cpu
        .pclk           (pclk               ),
        .rst_n          (rst_n              ),

        //from AXI
        .s_arid         (s_fast_arid        ),  //arbitration
        .s_araddr       (s_fast_araddr      ),
        .s_arlen        (s_fast_arlen       ),
        .s_arsize       (s_fast_arsize      ),
        .s_arburst      (s_fast_arburst     ),
        .s_arlock       (s_fast_arlock      ),
        .s_arcache      (s_fast_arcache     ),
        .s_arprot       (s_fast_arprot      ),
        .s_arvalid      (s_fast_arvalid     ),
        .s_arready      (s_fast_arready     ),

        .s_rid          (s_fast_rid         ),
        .s_rdata        (s_fast_rdata       ),
        .s_rresp        (s_fast_rresp       ),
        .s_rlast        (s_fast_rlast       ),  //the last read data
        .s_rvalid       (s_fast_rvalid      ),
        .s_rready       (s_fast_rready      ),

        .s_awid         (s_fast_awid        ),
        .s_awaddr       (s_fast_awaddr      ),
        .s_awlen        (s_fast_awlen       ),
        .s_awsize       (s_fast_awsize      ),
        .s_awburst      (s_fast_awburst     ),
        .s_awlock       (s_fast_awlock      ),
        .s_awcache      (s_fast_awcache     ),
        .s_awprot       (s_fast_awprot      ),
        .s_awvalid      (s_fast_awvalid     ),
        .s_awready      (s_fast_awready     ),

        .s_wid          (s_fast_wid         ),
        .s_wdata        (s_fast_wdata       ),
        .s_wstrb        (s_fast_wstrb       ),  //字节选通位和sel差不多
        .s_wlast        (s_fast_wlast       ),
        .s_wvalid       (s_fast_wvalid      ),
        .s_wready       (s_fast_wready      ),

        .s_bid          (s_fast_bid         ),
        .s_bresp        (s_fast_bresp       ),
        .s_bvalid       (s_fast_bvalid      ),
        .s_bready       (s_fast_bready      ),

        //speeder
        .buffer_data    (ctrl_buffer_data_id),  //speeder
        .buffer_addr    (ctrl_buffer_addr_id),  //speeder
        .data_valid     (data_valid         ),  //tell lcd_id
        .graph_size     (graph_size         ),
        .refresh        (ctrl_refresh_id    ),
        .refresh_rs_o   (ctrl_refresh_rs_id ),
        .char_color     (ctrl_char_color_id ),
        .char_rs        (ctrl_char_rs_id    ),
        //from lcd_interface
        //TODO
        .lcd_input_data (0                  ),  //data form lcd input

        //from/to lcd_refresh
        .enable         (enable             ),
        .refresh_req    (refresh_req        ),//用于决定刷新的种类，
        .refresh_data   (refresh_data       ),
        .data_ok        (data_ok            ),
        .refresh_ok_i   (refresh_ok         ),
        .refresh_rs_i   (refresh_rs         ),
        //from lcd_core
        .touch_reg      (touch_reg          ),
        .cpu_work       (cpu_work           ),
        .game           (game               ),
        .rand_num       (rand_num           ),
        .core_random    (core_random        ),
        //from lcd_id
        .write_ok       (write_ok           ),
        //to char_ctrl
        .cpu_code       (cpu_code           ),
        .char_work      (char_work          ),
        .char_write_ok  (char_write_ok      ),

        //from char_ctrl
        .char_data_i    (char_data          ),
        .char_color_ok  (char_color_ok      ),
        .write_str_end  (write_str_end      )
    );

    char_ctrl u_char_ctrl (
        .pclk           (pclk           ), 
        .rst_n          (rst_n          ),

        //from lcd_ctrl
        .cpu_code       (cpu_code       ),
        .char_work      (char_work      ),
        .write_ok       (char_write_ok  ),

        //to lcd_ctrl
        .data_o         (char_data      ),
        .color_ok       (char_color_ok  ),
        .write_str_end  (write_str_end  )
    );

    lcd_refresh u_lcd_refresh (
        .pclk           (pclk           ),
        .rst_n          (rst_n          ),
        //from lcd_ctrl
        .enable         (enable         ),
        .refresh_req    (refresh_req    ),//to choose the background
        .refresh_data   (refresh_data   ),
        .refresh_rs     (refresh_rs     ),
        .data_ok        (data_ok        ),
        .refresh_ok     (refresh_ok     )//refresh is over
    );

    lcd_init u_lcd_init (
        .pclk           (pclk                           ),
        .rst_n          (rst_n                          ),
        .init_write_ok  (init_mux_signal.init_write_ok  ),
        .init_data      (init_mux_signal.init_data      ),
        .init_addra     (                               ),
        .we             (init_mux_signal.init_we        ),
        .wr             (init_mux_signal.init_wr        ),
        .rs             (init_mux_signal.init_rs        ),
        .init_work      (init_mux_signal.init_work      ),
        .init_finish    (init_mux_signal.init_finish    ),
        .init_main      (init_main_core                 ),
        .change_color   (change_color                   ),
        .new_color      (new_color                      )
    );
    assign init_finish_core = init_mux_signal.init_finish;
endmodule
