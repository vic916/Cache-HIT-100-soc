//初始化代码LOGO的颜色参数地址
`define COLOR_ADDR 18'd803
//以下参数都需要随着bram内容的改变而重新定义
//init bram
`define LOGO_END   18'd123302//重要一定要配置好
`define NAME_ADDR  18'd123322
`define INIT_END   18'd164837//一定要配置好
`define KEEP_TIME  32'd3_0000_0000//keep 5s
//clear bram
`define WHITE_COLOR 10'd19
`define GAME1      10'd37
`define GAME2      10'd55
`define GAME3      10'd73
`define GAME4      10'd91
`define MAIN_END   10'd92
//title name
`define TITLE1_START 13'd0
`define TITLE1_END   13'd18
`define TITLE2_START 13'd1419
`define TITLE2_END   13'd1437
`define TITLE3_START 13'd2438
`define TITLE3_END   13'd2456
`define TITLE4_START 13'd3657
`define TITLE4_END   13'd3675
`define TITLE_END    13'd4675
module lcd_init (
        input  logic        pclk,
        input  logic        rst_n,
        input  logic        init_write_ok,
        output logic [15:0] init_data,
        output logic [17:0] init_addra,
        output logic        we,
        output logic        wr,
        output logic        rs,
        output logic        init_work,
        output logic        init_finish,
        //from lcd_core
        input logic init_main,
        input logic change_color,
        input logic [31:0]new_color
    );
    logic refresh_flag;
    logic [9:0]refresh_addra;
    logic [15:0]refresh_data;
    logic [31:0]refresh_counter;
    logic is_color;
    logic is_main;
    logic is_main_color;
    logic core_change_color;
    logic [31:0]core_new_color;
    logic [12:0]title_addra;
    logic [15:0]title_data;
    logic draw_title_name_flag;
    enum int {
             IDLE,
             INIT,
             CLEAR,//to refresh the lcd
             DRAW_BG,//to draw the background
             DRAW_LOGO,
             INIT_FINISH,
             LOGO_KEEPING,//to keep the logo for a while
             DRAW_NAME,
             DRAW_MAIN,//to draw the main table
             DRAW_TITLE,
             DRAW_TITLE_NAME,//write inst
             DRAW_TITLE_NAME_CHAR//write color

         } init_state;
    enum int {
             WAIT_INIT,
             DELAY
         } delay_state;
    logic [17:0] addra;
    logic [31:0] delay_counter;

    //初始化序列需要延迟一段时间
    always_ff @(posedge pclk) begin
        if (~rst_n) begin
            delay_state   <= WAIT_INIT;
            delay_counter <= 0;
        end
        else begin
            case (delay_state)
                WAIT_INIT: begin
                    if (init_write_ok && addra == 17'd762 && delay_counter <= 40000)
                        delay_state <= DELAY;
                end
                DELAY: begin
                    if (delay_counter <= 40000)
                        delay_counter <= delay_counter + 1;
                    else
                        delay_state <= WAIT_INIT;
                end
                default: begin
                    delay_state   <= WAIT_INIT;
                    delay_counter <= 0;
                end
            endcase
        end
    end

    //logo需要保持一段时间
    logic [31:0]delay_time;
    always_ff @( posedge pclk ) begin
        if(~rst_n)
            delay_time<=0;
        else if(init_state==LOGO_KEEPING)
            delay_time<=delay_time+1;
        else
            delay_time<=0;
    end

    logic [31:0]size;
    logic [15:0]main_color;
    always_comb begin
        if(init_state==DRAW_TITLE) begin
            case(refresh_addra)
                `WHITE_COLOR: begin
                    size=32'd384000;
                    main_color=16'hffff;
                end
                `GAME1,`GAME2,`GAME3,`GAME4: begin
                    size=32'd45000;
                    main_color=core_change_color?core_new_color[15:0]:16'he56c;
                end
                default: begin
                    size=0;
                    main_color=0;
                end
            endcase
        end else begin
            size=0;
            main_color=0;
        end
    end
    always_ff @(posedge pclk) begin
        if (~rst_n) begin
            init_state <= IDLE;
            addra <= 0;
            we <= 0;
            wr <= 1;
            rs <= 0;
            init_work <= 1;
            init_finish <= 0;
            refresh_addra<=0;
            refresh_flag<=0;
            refresh_counter<=0;
            is_color<=0;
            is_main<=0;
            is_main_color<=0;
            core_change_color<=0;
            core_new_color<=0;
            title_addra<=0;
            draw_title_name_flag<=0;
        end
        else begin
            case (init_state)
                IDLE: begin
                    init_state <= INIT;
                    addra <= 0;
                    we <= 1;
                    wr <= 1;
                    rs <= 0;
                    init_work <= 1;
                    init_finish <= 0;
                    refresh_addra<=0;
                    refresh_flag<=0;
                    refresh_counter<=0;
                    is_color<=0;
                    is_main<=0;
                    is_main_color<=0;
                    core_change_color<=0;
                    core_new_color<=0;
                    title_addra<=0;
                    draw_title_name_flag<=0;
                end
                //hardware initial
                INIT: begin
                    if (init_write_ok) begin
                        //init finish
                        if (addra == 18'd783) begin
                            init_state <= CLEAR;
                            addra <= addra+1;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_addra<=0;
                            refresh_flag<=1;
                            refresh_counter<=0;
                        end
                        else begin
                            addra <= addra + 1;
                            we <= 0;
                        end
                    end
                    else if (delay_state == DELAY) begin//2900前面的那条指令需要延迟一段时间
                        we <= 0;
                    end
                    else begin
                        init_state <= INIT;
                        addra <= addra;
                        we <= 1;
                        wr <= 1;
                        init_work   <= 1;
                        init_finish <= 0;
                        if (addra == 17'd763)
                            rs <= 0;
                        else if (addra[0] == 1)
                            rs <= 1;
                        else
                            rs <= 0;
                    end
                end
                //refresh LCD,draw white
                CLEAR: begin
                    init_state<=DRAW_BG;
                    we <= 0;
                    wr <= 1;
                    rs <= 0;
                    init_work <= 1;
                    init_finish <= 0;
                    refresh_flag<=1;
                    refresh_addra<=0;
                    is_color<=1;
                    refresh_counter<=1;
                end
                //draw white,give the params to lcd
                DRAW_BG: begin
                    if(init_write_ok) begin
                        if(refresh_counter==384000) begin
                            init_state <= DRAW_LOGO;
                            addra <= addra;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_flag<=0;
                            is_color<=0;
                        end
                        else begin
                            we<=0;
                            refresh_counter<=refresh_counter+1;
                        end
                    end
                    else begin
                        rs<=1;
                        we <= 1;
                        wr <= 1;
                    end
                end
                //draw logo and name as a single block
                DRAW_LOGO: begin
                    if (init_write_ok) begin
                        // draw logo
                        if (addra == `LOGO_END) begin
                            init_state <= LOGO_KEEPING;
                            addra <= addra + 1;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                        end else begin
                            addra <= addra + 1;
                            we <= 0;
                        end
                    end else begin
                        init_state <= DRAW_LOGO;
                        addra <= addra;
                        we <= 1;
                        wr <= 1;
                        if (addra >= `COLOR_ADDR)
                            rs <= 1;
                        else if (addra[0] == 1)
                            rs <= 1;
                        else
                            rs <= 0;
                    end
                end
                DRAW_NAME: begin
                    if (init_write_ok) begin
                        // draw name
                        if (addra == `INIT_END) begin
                            init_state <= LOGO_KEEPING;
                            addra <= 0;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                        end else begin
                            addra <= addra + 1;
                            we <= 0;
                        end
                    end else begin
                        init_state <= DRAW_NAME;
                        addra <= addra;
                        we <= 1;
                        wr <= 1;
                        if (addra >= `NAME_ADDR)
                            rs <= 1;
                        else if (addra[0] == 1)
                            rs <= 1;
                        else
                            rs <= 0;
                    end
                end
                //logo should keep for a while，then turn to the game table
                LOGO_KEEPING: begin
                    we<=0;
                    init_work<=1;
                    init_finish<=0;
                    wr <= 1;
                    rs <= 0;
                    refresh_addra<=0;
                    refresh_flag<=1;
                    refresh_counter<=0;
                    is_main<=1;
                    if(delay_time<=`KEEP_TIME)
                        init_state<=LOGO_KEEPING;
                    else begin
                        init_state<=DRAW_MAIN;
                    end
                end
                DRAW_MAIN: begin
                    if (init_write_ok) begin
                        //write main table data
                        if (refresh_addra == `MAIN_END) begin//MAIN_END需要比实际的值大1
                            init_state <= DRAW_TITLE_NAME;
                            addra <= 0;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_flag<=0;
                            refresh_addra<=0;
                            is_color<=0;
                            refresh_counter<=0;
                            is_main<=0;
                            is_main_color<=0;
                            title_addra<=0;
                            draw_title_name_flag<=1;
                        end
                        else if(refresh_addra==`WHITE_COLOR||refresh_addra==`GAME1||refresh_addra==`GAME2||refresh_addra==`GAME3||refresh_addra==`GAME4) begin
                            init_state<=DRAW_TITLE;
                            we <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_counter<=1;
                            is_main_color<=1;
                            refresh_addra<=refresh_addra;
                        end
                        else begin
                            is_main_color<=0;
                            refresh_counter<=0;
                            refresh_addra <= refresh_addra + 1;
                            we <= 0;
                        end
                    end
                    else begin
                        refresh_addra<=refresh_addra;
                        we <= 1;
                        wr <= 1;
                        if (refresh_addra[0] == 1)
                            rs <= 1;
                        else
                            rs <= 0;
                        init_work   <= 1;
                        init_finish <= 0;
                    end
                end
                DRAW_TITLE: begin
                    if(init_write_ok) begin
                        if(refresh_counter==size) begin
                            init_state <= DRAW_MAIN;
                            addra <= addra;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_flag<=1;
                            is_color<=0;
                            is_main_color<=0;
                            is_main<=1;
                            refresh_addra=refresh_addra+1;
                        end
                        else begin
                            we<=0;
                            refresh_counter<=refresh_counter+1;
                        end
                    end
                    else begin
                        rs<=1;
                        we <= 1;
                        wr <= 1;
                    end
                end

                //draw each title name
                DRAW_TITLE_NAME: begin
                    if (init_write_ok) begin
                        //draw logo
                        if (title_addra == `TITLE_END) begin
                            init_state <= INIT_FINISH;
                            addra <= 0;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_flag<=0;
                            refresh_addra<=0;
                            is_color<=0;
                            refresh_counter<=0;
                            is_main<=0;
                            is_main_color<=0;
                            title_addra<=0;
                            draw_title_name_flag<=0;
                        end
                        else if(title_addra==`TITLE1_END||title_addra==`TITLE2_END||title_addra==`TITLE3_END||title_addra==`TITLE4_END) begin
                            init_state<=DRAW_TITLE_NAME_CHAR;
                            we <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            title_addra<=title_addra+1;
                        end
                        else begin
                            title_addra <= title_addra + 1;
                            we <= 0;
                        end
                    end
                    else begin
                        init_state <= DRAW_TITLE_NAME;
                        title_addra <= title_addra;
                        we <= 1;
                        wr <= 1;
                        if ((title_addra>=`TITLE1_START&&title_addra<=`TITLE1_END)||(title_addra>=`TITLE3_START&&title_addra<=`TITLE3_END)) begin
                            if(title_addra[0] == 1)
                                rs <= 1;
                            else
                                rs <= 0;
                        end
                        else begin
                            if(title_addra[0] == 0)
                                rs <= 1;
                            else
                                rs <= 0;
                        end
                    end
                end
                DRAW_TITLE_NAME_CHAR: begin
                    if (init_write_ok) begin
                        //draw logo
                        if (title_addra == `TITLE_END) begin
                            init_state <= INIT_FINISH;
                            addra <= 0;
                            we <= 0;
                            wr <= 1;
                            rs <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            refresh_flag<=0;
                            refresh_addra<=0;
                            is_color<=0;
                            refresh_counter<=0;
                            is_main<=0;
                            is_main_color<=0;
                            title_addra<=0;
                            draw_title_name_flag<=0;
                        end
                        else if(title_addra==`TITLE2_START-1||title_addra==`TITLE3_START-1||title_addra==`TITLE4_START-1) begin
                            init_state<=DRAW_TITLE_NAME;
                            we <= 0;
                            init_work <= 1;
                            init_finish <= 0;
                            title_addra<=title_addra+1;
                        end
                        else begin
                            title_addra <= title_addra + 1;
                            we <= 0;
                        end
                    end
                    else begin
                        rs<=1;
                        we <= 1;
                        wr <= 1;
                    end
                end
                //initial finish，the cpu can control the LCD by AXI
                INIT_FINISH: begin
                    // init_state <= INIT_FINISH;
                    if(init_main) begin
                        init_state<=DRAW_MAIN;
                        init_work<=1;
                        init_finish<=0;
                        wr <= 1;
                        rs <= 0;
                        we<=0;
                        refresh_addra<=0;
                        refresh_flag<=1;
                        refresh_counter<=0;
                        is_main_color<=0;
                        is_main<=1;
                        core_change_color<=change_color;
                        core_new_color<=new_color;
                        title_addra<=0;
                        draw_title_name_flag<=0;
                    end
                    else begin
                        init_state<=INIT_FINISH;
                        addra <= 0;
                        we <= 0;
                        wr <= 1;
                        rs <= 0;
                        init_work <= 0;
                        init_finish <= 1;
                        core_change_color<=0;
                        core_new_color<=0;
                        title_addra<=0;
                        draw_title_name_flag<=0;
                    end
                end
                default: begin
                    init_state <= IDLE;
                    addra <= 0;
                    we <= 0;
                    wr <= 1;
                    rs <= 0;
                    init_work <= 1;
                    init_finish <= 0;
                    refresh_addra<=0;
                    refresh_flag<=0;
                    refresh_counter<=0;
                    is_color<=0;
                    is_main<=0;
                    is_main_color<=0;
                    core_change_color<=0;
                    core_new_color<=0;
                    title_addra<=0;
                    draw_title_name_flag<=0;
                end
            endcase
        end
    end
    assign init_addra=addra;
`ifdef  DATA32

    logic [31:0]data_o;
    assign init_data=refresh_flag?(is_main?(is_main_color?main_color:refresh_data):(is_color?16'hffff:0)):(draw_title_name_flag?title_data:data_o[15:0]);
`else
    logic [15:0]data_o;
    assign init_data=refresh_flag?(is_main?(is_main_color?main_color:refresh_data):(is_color?16'hffff:0)):(draw_title_name_flag?title_data:data_o);
`endif

    //注意bram的时序，选择单口bram，无流水线
    //initial code
    lcd_init_bram u_lcd_init_bram (
                      .clka (pclk),      // input wire clka
                      .ena  (1),         // input wire ena
                      .addra(addra),     // input wire [17 : 0] addra
                      .douta(data_o)  // output wire [15 : 0] douta
                  );
    //draw MAIN
    lcd_clear_bram u_lcd_clear_bram (
                       .clka(pclk),    // input wire clka
                       .ena(1),      // input wire ena
                       .addra(refresh_addra),  // input wire [9 : 0] addra
                       .douta(refresh_data));  // output wire [15 : 0] douta
    title_bram u_title_bram (
                   .clka(pclk),    // input wire clka
                   .ena(1),      // input wire ena
                   .addra(title_addra),  // input wire [12 : 0] addra
                   .douta(title_data)  // output wire [15 : 0] douta
               );
endmodule
