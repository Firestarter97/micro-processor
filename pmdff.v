`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2020 09:26:53 PM
// Design Name: 
// Module Name: pmdff
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


module pmdff(clk,clr,d,q,ce);

    input clk, ce, clr;
    input [3:0] d;
    
    output reg [3:0] q;

    always@(posedge clr or posedge clk)
    begin
        if(clr) 
        begin
        q <= 0;
        end
        else if(ce) 
        begin
        q <= d;
        end
    end
endmodule