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

//UART_IF instance
logic               s_user_tx_ready     ;
logic   [  7:0]     s_user_tx_data      ;
logic               s_user_tx_valid     ;
logic   [  7:0]     s_user_rx_data      ;
logic               s_user_rx_valid     ;
logic               s_user_rx_err       ;

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

//UART_IF instance
UART_IF # (
    .CLK_FRAC           ( `_FRAC_SYS_CLK    ), //unit: MHz
    .BAUD               ( `_UART_BAUD       ),
    .DATA_WIDTH         ( 8                 ),
    .CHECK_BIT          ( "none"            ), //"even", "odd", "mask", "space", "none"
    .END_WIDTH          ( 1                 )  //end bit width
) u_UART_IF (
    //global clock & reset
    .clk                ( sys_clk           ),
    .rst                ( sys_rst           ),
    
    //user data interface
    .o_user_tx_ready    ( s_user_tx_ready   ),
    .i_user_tx_data     ( s_user_tx_data    ),
    .i_user_tx_valid    ( s_user_tx_valid   ),
    .o_user_rx_data     ( s_user_rx_data    ),
    .o_user_rx_valid    ( s_user_rx_valid   ),
    .o_user_rx_err      ( s_user_rx_err     ),
    
    //UART interface
    .uart_txd           ( uart_txd          ),
    .uart_rxd           ( uart_rxd          )
);

//uart loop-back
DRAM_SYNC_FIFO # (
    .WIDTH          ( 8                 ),
    .PF_VALUE       ( 28                )
) u_URAT_LOOPBACK (
    .clk            ( sys_clk           ),
    .rst            ( sys_rst           ),
    .din            ( s_user_rx_data    ),
    .wr_en          ( s_user_rx_valid   ),
    .rd_en          ( s_user_tx_ready & s_user_tx_valid ),
    .dout           ( s_user_tx_data    ),
    .valid          ( s_user_tx_valid   ),
    .prog_full      (                   ),
    .full           (                   ),
    .empty          (                   )
);

endmodule
