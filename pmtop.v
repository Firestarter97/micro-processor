`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 04:03:45 PM
// Design Name: 
// Module Name: pmtop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pmtop(en,sw1,clk,m0,m1,m2,cin,r0,r1,r2);

    input sw1,clk,cin,en;
    input [3:0] m0,m1,m2;
    output [3:0] r0,r1,r2;
    
    wire [1:0] sel;
    wire [2:0] w, s;
    wire [3:0] ce;
    wire [2:0] cs,ns;
    
    pmfsm fms1(.s(s),.reset(sw1),.clk(clk),.w(w),.ce(ce),.sel(sel),.en(en),.cs(cs),.ns(ns));
    pmdatapath dp1(.m0(m0),.m1(m1),.m2(m2),.cin(cin),.clr(sw1),.w(w),.ce(ce),.sel(sel),.s(s),.clk(clk),.r0(r0),.r1(r1),.r2(r2));

endmodule
