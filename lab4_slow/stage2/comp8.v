////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comp8.vf
// /___/   /\     Timestamp : 02/03/2026 18:42:26
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/533_lab3/mini_idstest/comp8.sch comp8.vf
//Design Name: comp8
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module comp8(A, 
             B, 
             EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire XLXN_25;
   wire XLXN_26;
   wire XLXN_27;
   wire XLXN_28;
   wire XLXN_29;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_33;
   wire XLXN_34;
   
   XNOR2 XLXI_1 (.I0(B[0]), 
                 .I1(A[0]), 
                 .O(XLXN_29));
   XNOR2 XLXI_2 (.I0(B[1]), 
                 .I1(A[1]), 
                 .O(XLXN_30));
   XNOR2 XLXI_3 (.I0(B[2]), 
                 .I1(A[2]), 
                 .O(XLXN_31));
   XNOR2 XLXI_4 (.I0(B[3]), 
                 .I1(A[3]), 
                 .O(XLXN_32));
   XNOR2 XLXI_5 (.I0(B[4]), 
                 .I1(A[4]), 
                 .O(XLXN_27));
   XNOR2 XLXI_6 (.I0(B[5]), 
                 .I1(A[5]), 
                 .O(XLXN_26));
   XNOR2 XLXI_7 (.I0(B[6]), 
                 .I1(A[6]), 
                 .O(XLXN_25));
   XNOR2 XLXI_8 (.I0(B[7]), 
                 .I1(A[7]), 
                 .O(XLXN_28));
   AND4 XLXI_9 (.I0(XLXN_32), 
                .I1(XLXN_31), 
                .I2(XLXN_30), 
                .I3(XLXN_29), 
                .O(XLXN_34));
   AND4 XLXI_10 (.I0(XLXN_28), 
                 .I1(XLXN_25), 
                 .I2(XLXN_26), 
                 .I3(XLXN_27), 
                 .O(XLXN_33));
   AND2 XLXI_11 (.I0(XLXN_33), 
                 .I1(XLXN_34), 
                 .O(EQ));
endmodule
