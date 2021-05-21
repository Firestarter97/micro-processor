`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2020 09:05:05 PM
// Design Name: 
// Module Name: pmmux2to1_tb
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


module pmmux2to1_tb;

    reg [3:0] d0,d1;
    reg s;
    wire [3:0] y; 
    
    pmmux2to1 pmmux2to1tb(.d0(d0),.d1(d1),.s(s),.y(y));
    
    initial
    begin
    d1 = 0; d0 = 0; s = 0;
    #10 d1 = 0; d0 = 0; s = 1;
    #10 d1 = 0; d0 = 1; s = 0;
    #10 d1 = 0; d0 = 1; s = 1;
    #10 d1 = 1; d0 = 0; s = 0;
    #10 d1 = 1; d0 = 0; s = 1;
    #10 d1 = 1; d0 = 1; s = 0;
    #10 d1 = 1; d0 = 1; s = 1;
    #10 
    $stop;
    end
endmodule
