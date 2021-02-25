//////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2020 Kikyoko
// https://github.com/Kikyoko
// 
// Module   : DEFINE_FUNC
// Device   : Xilinx/Altera
// Author   : Kikyoko
// Contact  : Kikyoko@outlook.com
// Date     : 2020/8/13 11:18:24
// Revision : 1.00 - Simulation correct
//
// Description  : include file : Function
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

function integer FUNC_N2W;
    input integer   NUM    ;
    integer         WIDTH  ;
    
    begin
        WIDTH = 1;
        while (NUM > (2**WIDTH-1)) begin
            WIDTH = WIDTH + 1;
        end
        FUNC_N2W = WIDTH;
    end
endfunction

function integer FUNC_LOG2;
    input integer   NUM    ;
    
    FUNC_LOG2 = FUNC_N2W(NUM) - 1;
endfunction
