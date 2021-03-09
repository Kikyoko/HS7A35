// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar  8 16:04:03 2021
// Host        : fpga_PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               l:/01_FPGA/03_HS7A35/HS7A35_20210306_1736/DESIGN.srcs/sources_1/ip/DSP_13x10sub22_out12_m23l12/DSP_13x10sub22_out12_m23l12_sim_netlist.v
// Design      : DSP_13x10sub22_out12_m23l12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DSP_13x10sub22_out12_m23l12,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module DSP_13x10sub22_out12_m23l12
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [12:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [21:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire [12:0]A;
  wire [9:0]B;
  wire [21:0]C;
  wire CLK;
  wire [11:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "13" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "22" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100011010100000000" *) 
  (* C_P_LSB = "12" *) 
  (* C_P_MSB = "23" *) 
  (* C_REG_CONFIG = "00000000000011100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  DSP_13x10sub22_out12_m23l12_xbip_dsp48_macro_v3_0_17 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "13" *) (* C_B_WIDTH = "10" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "22" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100011010100000000" *) (* C_P_LSB = "12" *) 
(* C_P_MSB = "23" *) (* C_REG_CONFIG = "00000000000011100011100011000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_17" *) (* downgradeipidentifiedwarnings = "yes" *) 
module DSP_13x10sub22_out12_m23l12_xbip_dsp48_macro_v3_0_17
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [12:0]A;
  input [9:0]B;
  input [21:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [11:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [12:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [9:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [21:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [11:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "13" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "22" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100011010100000000" *) 
  (* C_P_LSB = "12" *) 
  (* C_P_MSB = "23" *) 
  (* C_REG_CONFIG = "00000000000011100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  DSP_13x10sub22_out12_m23l12_xbip_dsp48_macro_v3_0_17_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
mVSg04jx48ohF6ET+GPgL/18xNlqSjc68SAwWWVL7ETIEhL/N/IEEa794563sOuKxSt0Kl67y+94
UB0egY5nGg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmyXeW6W5x34OcR/9HBy5DakFHbrAP2VPoaQ3ab68lLfG02ITRD3w7EdbM/TyvDE2AithtcpGANE
xoGGRFEy5XpfEmD0vRdB2QdH78Q3znXmRJJRNPPn0gBDy8HiV5ndsmD/LeinHmOe8eK7LpDgq37J
/At5o0EqFZW3WjRL3sk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ScNmNM0W62HGNpFgTi5FAXgfrWYsig59kPYL2q8QE5KGweGkCLDCL7Hkobrafd5P88QLcDON+uhX
IyI83xgtYqHn9XvdBn8HqJzARuJNNTON3Zj7Cg0wwXEkJtSsBQmXcAr8B8YlHB5Ot1eWfmo01yW2
ucT2GUyoADNv1dAw9b6BSTAsVTnSGRaLEFNmWdsXqE9NxNE2TgfO5x/a8DTy3f4g5X7/hJLCKpg4
wudzUxG+uR7hx57H8Q09kX8BvU+C37l5Ltf3PNYwwUbKRz/EM4tLYtmrZC9s12buYcsYbj6wNTU7
3gzKdMayi7u7lq3LMlQDerpr0jYxylPt4GrIOA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e87Uz7OgoObx921b4TAOTFPf7RdEkGb5ZVAdacGLXY7GMiPCfCc7YMl+VeJl5YDir0JYQiTkbhLh
mLscEPt5ONOoiBzAJqkKFldx6auMyo+P/7DiauuYIbPgkW7umqOxwZfrmjnw20eMtarltmzr6AGp
6aopNGbAJEL+hwyM5JFo5kit3y/Ea4LUEzIW9ld9DY+p0Ihvdhdfy0zQmToIHb/Np9zzKX8tpOC3
Fa4uXF8qCvbeUJr6LjjXyQB+06m7Lz0C23RJ4hC9KIerHxpF3jfuAzHKSvlLatWH1Yh0cIKx7k/y
DKMp82d5B3CU6d7/9rRzzzXEniDDeg47rWYfDg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9AuFk0bI81JYG49sYg/AXtRGVFdClaczQEWHn/vG0tDAjhQ2qA0GYN+86AxMP6Eq5ZUOynxdshU
bN1lWaCpVjK938uUJqRzJ07jB62cIexo8C/g1/2x8b1jzFGqoZaH8XuvvhE2jws7SBqjDWp6QqwF
DccZxmM0BtqxnQ0vOxg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ksqAObrv2EPWm9QjMQbS9Jri8+lbIuMSp3qiCFd7V5lqBbL7GPCdYLZeldgitO6uJU6g/HJUdlqY
vAtACW1AEC8JJxRRn91cFSbi+kvg64hC5Vnug+KdRN6vjapzUK4c/DIOy6/+2jRigEC+IX4vaS+x
i+Oi2k1i9ZiAzw7qzBPTCbiy3fIyNxT8GQf6HanMu/28I8MRYfhgvQ7ol1S003awbKh+hQ0F0PzV
QKh9CDlIz8s1WyXc+huI2QS1FG60KK6XWZ0aalbB+Lt5+x9Z8uV4zUAwJB1XlcNRMiM5SkjkIg9r
y6yFAGmNR5T5BqgWguE62jSBd9Zfnh8JXP2NOQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yejHCke96a3eh+No32kwjUcXbwCyaPKyFR3prOsF6TJCbrqwfvvxDeC6TSDIUBXnczwcjZGdrJzh
kWpgjQJo/+Fhj4Ofu3XGUwSa6fkycuNX9V9NKeCjQKWKmMwRn7y3etJWdJ9gQzeiKRshRI1cO1mT
xKbyArTNkWP2ZyuWXsKVeN/uv2UAnGmIkXXlm+ydbtEEypSYfKGvayajQjpQkN9HKz13nMpeuMc9
6DMCTp2atZYYbmvMLGsYr48d8enLKwx68sd7DuvTAfi41FUDiRNDI4vopTU0JcRKcjXGPRMY8yoc
XZdRPSINaUGZCdPmtfc2gza4Uxt7sTq51XGfrg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGh3mlgVn/697cVM/wVbbB7SoNiFJgOKvbMq77owzjnL3crAcnY8GFt3Q08R5QyrP2hHuw8Lswju
dXYOZ3/oAi7aUy1kyPLhuKPWeWxo3+dYvubUpGt2JG+EAT+jldyl+H25jnvNn+t3heQmGgAsd2nd
MIq2UzPXQ2RVJZa9xZCPPHg1CnXHeNMi4uv/6DX4+JoQGVTyGQXjGOxnxJ5b8V7W4BbY/opssAME
iaFMorNt/wd5IaLUhZ9xN1hAax910Vrp1kXD6WAysFoxMIabE4Oq3hm6M7fi2AGw5K+4HIYSfrvh
X+3VnMAwckadGO97+iJkxqNFTAR1vyW1StWhFw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pui+6jIzuAMgIrqBhLPkObysF1xlKfNhOoUcMAEnnCukOSOFRG7FlFnE35Y7dv5tVrcj1zyjpjBM
sXZv8anrAKSRvqeJBa6ob74VpJPjY03nbvpX9cKAy/35SoT0G/h13Vq3R2V8237P13necwIXQCfi
FgiqLcEwSK/bMDkKeuJaUpwJpR8qwpPU/FFCN+14kb6y7BVbAlPLvxPiBFnHkQ0W9XitUAeU5Av4
b/BxC9luLD7NZ4l0iN1eD7w84NtO4AbC9x8FYMuqAJcqo8/Zjs/UMMfZBMLhUGeSSe0TmZVZxuPo
q7heU5cfCjNVluZN/Uc2IX1ahWmYJ5tO7GDp5A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mjJMdG3b3tNQJXohnxd0pSbMD1A/zY+9oORzHsMRtzeU5E3PL6ru9654hBR8EwNiz3DE3LLGybmD
kIWvP/ieiwzGQeDu+nc6r+ThAZ9fUyliSVM29F/WTz0fST12Xp0F7+UJk2jMI2HanifMCaq0WZJM
K3Y23fGNxeDxdyQgv+o+VIBq6qEYDXh1MhRVBjX0JGjjgUgjyQPoKGSeLNdhuQZzzG7D9gMqp4GJ
I0CyNDCsEfP2BR9cvyXfO1MBxcso2Xa23la4dTRGZhq/RdFeODgw4U4oO1vVdOpLjlgU6pxw6Ynu
d4DOFbLsNrBACDeBjHycvDHpvum5qAnjHUlNyQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j6/wI9dgV4mPxHf5u8ZH9z3IF3XtJJAlWcgwVe2iCjIvHcI71DzivMubd/JjVtQIE4BReaUiIDQN
d86HLLUP5kb0vLIZKoQQmDB4QJFyHbHW/Kwvp/PsV5wkGhedv39g9inXH40gZkHESGvLU/QjTZOy
oXK1cDwYT4kuurK/vFQ2PM29a0HdGEGj/EqYDu2SnJRKcj4Vseq44SsCgST0aUEqA12CBXRMjo81
Some81VqjdFdSuUNPbcfiii8v71aH9XK6uY+l2+c916wycZXaG1i1e83e1bDnTncNqrEw+X7bSqL
elPA7uisMIrBD9rkvgXy5jU6NJ8ljcTMW3jlvA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49248)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
