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
    
    //Led interface
    output  [  3:0]     o_led_n         ,
    
    //Key interface
    input   [  3:0]     i_key_n
);

// =========================================================================================================================================
// Signal
// =========================================================================================================================================


// =========================================================================================================================================
// Logic
// =========================================================================================================================================



endmodule
