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

module SYS_REG (
    //global clock & reset
    input               sys_clk             ,
    input               sys_rst             ,
    
    //REG bus
    input   [  7:0]     reg_addr            ,
    input   [ 31:0]     reg_wdata           ,
    input               reg_we              ,
    input               reg_re              ,
    output  [ 31:0]     reg_rdata           ,
    output              reg_rvalid          
);

// =========================================================================================================================================
// Signal
// =========================================================================================================================================
//System register write
logic   [ 31:0]     r_reg_rw_test   ;

//System register read
logic   [ 31:0]     r_reg_rdata     ;
logic               r_reg_rvalid    ;

// =========================================================================================================================================
// output generate
// =========================================================================================================================================
assign reg_rdata    = r_reg_rdata;
assign reg_rvalid   = r_reg_rvalid;

// =========================================================================================================================================
// Logic
// =========================================================================================================================================
//System register write
always @ (posedge sys_clk) begin
    if (sys_rst) begin
        r_reg_rw_test   <= 'd0;
    end else begin
        //reg read/write test
        if (reg_we & (reg_addr == `_reg_rw_test)) begin
            r_reg_rw_test   <= reg_wdata;
        end
    end
end

//System register read
always @ (posedge sys_clk) begin
    if (sys_rst) begin
        r_reg_rdata     <= 32'd0;
        r_reg_rvalid    <= 1'b0;
    end else begin
        case (reg_addr)
            `_reg_fpga_ver  : r_reg_rdata <= {`_product_code,`_major_ver,`_minor_ver,`_build_id};
            `_reg_rw_test   : r_reg_rdata <= r_reg_rw_test;
        endcase
        r_reg_rvalid    <= reg_re;
    end
end


endmodule

