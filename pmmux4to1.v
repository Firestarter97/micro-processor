`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2020 09:16:13 PM
// Design Name: 
// Module Name: pmmux4to1
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


module pmmux4to1(d0,d1,d2,d3,sel,y);

    input [3:0] d0,d1,d2,d3;
    input [1:0] sel;
    output reg [3:0] y;

    always@(d0 or d1 or d2 or d3 or sel) 
    begin
        case(sel)
            2'b00: y = d0;
            2'b01: y = d1;
            2'b10: y = d2;
            2'b11: y = d3;
        endcase
    end
endmodule
