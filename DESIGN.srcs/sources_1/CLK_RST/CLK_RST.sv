//////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2020 Kikyoko
// https://github.com/Kikyoko
//
// Module   : CLK_RST
// Device   : Xilinx
// Author   : Kikyoko
// Contact  : Kikyoko@outlook.com
// Date     : 2021/3/4 14:07:48
// Revision : 1.00 - Simulation correct
//
// Description  : Clock and reset generate
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

module CLK_RST (
    //Hardware clock & reset
    input               hard_clk        ,
    input               hard_rst_n      ,
    
    //clock & reset output
    output              sys_clk         ,
    output              sys_rst
);

// =========================================================================================================================================
// Signal
// =========================================================================================================================================
wire                clk_200         ;
wire                s_mmcm_lock     ;
wire                s_hrst          ;

logic   [  7:0]     r_sys_rst_8ff   ;
logic               r_sys_rst       ;

// =========================================================================================================================================
// Output generate
// =========================================================================================================================================
assign sys_clk  = clk_200;

// =========================================================================================================================================
// Logic
// =========================================================================================================================================
MMCM_SYS_CLK u_MMCM_SYS_CLK (
    .clk_in1    ( hard_clk      ),
    .reset      ( ~hard_rst_n   ),
    .clk_out1   ( clk_200       ), //200M
    .locked     ( s_mmcm_lock   )
);
assign s_hrst   = ~hard_rst_n | ~s_mmcm_lock;

always @ (posedge sys_clk or posedge s_hrst) begin
    if (s_hrst) begin
        r_sys_rst_8ff   <= 8'hFF;
        r_sys_rst       <= 1'b1;
    end else begin
        r_sys_rst_8ff   <= (r_sys_rst_8ff << 1);
        r_sys_rst       <= |r_sys_rst_8ff;
    end
end

BUFG u_SYS_RST (.I(r_sys_rst), .O(sys_rst));

endmodule
