////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : detect7B.vf
// /___/   /\     Timestamp : 02/03/2026 18:42:28
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/533_lab3/mini_idstest/detect7B.sch detect7B.vf
//Design Name: detect7B
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module detect7B(ce, 
                clk, 
                hwregA, 
                match_en, 
                mrst, 
                pipe1, 
                match);

    input ce;
    input clk;
    input [63:0] hwregA;
    input match_en;
    input mrst;
    input [71:0] pipe1;
   output match;
   
   wire [71:0] pipe0;
   wire [111:0] XLXN_43;
   wire XLXN_49;
   wire XLXN_52;
   wire XLXN_55;
   wire match_DUMMY;
   
   assign match = match_DUMMY;
   AND3B1 XLXI_12 (.I0(match_DUMMY), 
                   .I1(match_en), 
                   .I2(XLXN_49), 
                   .O(XLXN_52));
   FDCE XLXI_13 (.C(clk), 
                 .CE(XLXN_52), 
                 .CLR(XLXN_55), 
                 .D(XLXN_52), 
                 .Q(match_DUMMY));
   defparam XLXI_13.INIT = 1'b0;
   FD XLXI_14 (.C(clk), 
               .D(mrst), 
               .Q(XLXN_55));
   defparam XLXI_14.INIT = 1'b0;
   busmerge XLXI_15 (.da(pipe0[47:0]), 
                     .db(pipe1[63:0]), 
                     .q(XLXN_43[111:0]));
   reg9B XLXI_16 (.ce(ce), 
                  .clk(clk), 
                  .clr(XLXN_55), 
                  .d(pipe1[71:0]), 
                  .q(pipe0[71:0]));
   wordmatch XLXI_17 (.datacomp(hwregA[55:0]), 
                      .datain(XLXN_43[111:0]), 
                      .wildcard(hwregA[62:56]), 
                      .match(XLXN_49));
endmodule
