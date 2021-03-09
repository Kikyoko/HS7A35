//////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2020 Kikyoko
// https://github.com/Kikyoko
// 
// Module   : SYS_REG
// Device   : Xilinx/Altera
// Author   : Kikyoko
// Contact  : Kikyoko@outlook.com
// Date     : 2020/9/1 11:44:22
// Revision : 1.00 - Simulation correct
//
// Description  : System register
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

module TEMP_TO_ASIC (
    //global clock & reset
    input               clk                 ,
    input               rst                 ,
    
    //XADC temperature
    input   [  7:0]     i_xadc_temp         , //{1-signed,7-temp_value}
    output  [ 31:0]     o_reg_temp            //latency = 10
);

// =========================================================================================================================================
// Signal
// =========================================================================================================================================
logic   [ 15:0]     s_BCD_temp      ;
logic               s_BCD_vld       ;
logic   [  8:0]     r_signed_9ff    ;
logic   [ 31:0]     r_reg_temp      ;

// =========================================================================================================================================
// output generate
// =========================================================================================================================================
assign o_reg_temp = r_reg_temp;

// =========================================================================================================================================
// Logic
// =========================================================================================================================================
//Binary to BCD
B_TO_BCD # (
    .WIDTH          ( 8             )
) u_B_TO_BCD (
    .clk            ( clk           ),
    .rst            ( rst           ),
    
    .o_binary_ready (               ),
    .i_binary_data  ( i_xadc_temp   ),
    .i_binary_vld   ( 1'b1          ),
    
    .o_BCD_data     ( s_BCD_temp    ), //must < 9999
    .o_BCD_vld      ( s_BCD_vld     )  //latency = WIDTH + 1
);

//signed FF
always @ (posedge clk) begin
    r_signed_9ff    <= {r_signed_9ff[7:0],i_xadc_temp[7]};
end

//output FF
always @ (posedge clk) begin
    if (s_BCD_vld) begin
        r_reg_temp[ 7: 0]   <= {4'd3,s_BCD_temp[ 3:0]};        
        r_reg_temp[15: 8]   <= {4'd3,s_BCD_temp[ 7:4]};        
        r_reg_temp[23:16]   <= {4'd3,s_BCD_temp[11:8]};        
        r_reg_temp[31:24]   <= r_signed_9ff[8] ? 8'h2D : 8'h20;
    end
end


endmodule

