//////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2020 Kikyoko
// https://github.com/Kikyoko
//
// Module   : HS7A35_TOP
// Device   : Xilinx
// Author   : Kikyoko
// Contact  : Kikyoko@outlook.com
// Date     : 2021/2/24 17:54:25
// Revision : 1.00 - Simulation correct
//
// Description  : HS7A35 top
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//////////////////////////////////////////////////////////////////////////////////////////

`include "FPGA_DEFINE.vh"

module HS7A35_TOP (
    //Hardware clock & reset
    input               hard_clk        ,
    input               hard_rst_n      ,
    
    //uart interface
    output              uart_txd        ,
    input               uart_rxd        ,
    
    //Led interface
    output  [  3:0]     o_led_n         ,
    
    //Key interface
    input   [  3:0]     i_key_n
);

// =========================================================================================================================================
// Signal
// =========================================================================================================================================
//clock & reset generate
logic               sys_clk             ;
logic               sys_rst             ;

//reg interface
logic   [  7:0]     reg_addr            ;
logic   [ 31:0]     reg_wdata           ;
logic               reg_we              ;
logic               reg_re              ;
logic   [ 31:0]     reg_rdata           ;
logic               reg_rvalid          ;

//W25QXX interface
logic               W25QXX_en           ;
logic               W25QXX_tx_ready     ;
logic   [  7:0]     W25QXX_tx_data      ;
logic               W25QXX_tx_valid     ;
logic   [  7:0]     W25QXX_rx_data      ;
logic               W25QXX_rx_valid     ;

//use XADC read temperature
logic   [  7:0]     s_temperature       ;
logic               s_temp_warnning     ;
logic               s_temp_alert        ;

// =========================================================================================================================================
// Logic
// =========================================================================================================================================
//clock & reset generate
CLK_RST (
    //Hardware clock & reset
    .hard_clk       ( hard_clk      ),
    .hard_rst_n     ( hard_rst_n    ),
    
    //clock & reset output
    .sys_clk        ( sys_clk       ),
    .sys_rst        ( sys_rst       )
);

//UART control
UART_CTL u_UART_CTL (
    //global clock & reset
    .clk                ( sys_clk           ),
    .rst                ( sys_rst           ),
    
    //UART ports
    .uart_txd           ( uart_txd          ),
    .uart_rxd           ( uart_rxd          ),
    
    //REG bus
    .reg_addr           ( reg_addr          ),
    .reg_wdata          ( reg_wdata         ),
    .reg_we             ( reg_we            ),
    .reg_re             ( reg_re            ),
    .reg_rdata          ( reg_rdata         ),
    .reg_rvalid         ( reg_rvalid        ),
    
    //W25QXX tx/rx interface, W25QXX tx to PC
    .W25QXX_en          ( W25QXX_en         ),
    .W25QXX_tx_ready    ( W25QXX_tx_ready   ),
    .W25QXX_tx_data     ( W25QXX_tx_data    ),
    .W25QXX_tx_valid    ( W25QXX_tx_valid   ),
    .W25QXX_rx_data     ( W25QXX_rx_data    ),
    .W25QXX_rx_valid    ( W25QXX_rx_valid   )
);
              
//System register instance
SYS_REG (
    //global clock & reset
    .sys_clk            ( sys_clk           ),
    .sys_rst            ( sys_rst           ),
    
    //REG bus
    .reg_addr           ( reg_addr          ),
    .reg_wdata          ( reg_wdata         ),
    .reg_we             ( reg_we            ),
    .reg_re             ( reg_re            ),
    .reg_rdata          ( reg_rdata         ),
    .reg_rvalid         ( reg_rvalid        ),
    
    //XADC temperature
    .i_temperature      ( s_temperature     )
);

//use XADC read temperature
XADC_TEMP u_XADC_TEMP (
    //global clock & reset
    .xadc_clk           ( sys_clk           ), //200M
    .xadc_rst           ( sys_rst           ),
    
    .o_temperature      ( s_temperature     ), //{1-signed,7-temp_value}
    .o_temp_warnning    ( s_temp_warnning   ), //temp>70 warnning, temp<60 warnning cancel         
    .o_temp_alert       ( s_temp_alert      )  //temp>85 alert, temp<70 alert cancel 
);


endmodule
