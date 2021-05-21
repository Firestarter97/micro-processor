`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 03:06:46 PM
// Design Name: 
// Module Name: pmfsm
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

module pmfsm(reset,clk,clr,w,ce,sel,s,en,cs,ns);

    input clk,reset;
    output reg clr,en;
    output reg [1:0] sel;
    output reg [2:0] s,w;
    output reg [3:0] ce;
    
    output reg [2:0] cs,ns;
    parameter idle = 0,s1 = 1,s2 = 2,s3 = 3,s4 = 4,s5 = 5;
    
    always@(posedge clk or posedge reset) 
    begin
        if(reset) 
            cs <= idle;
        else 
            cs <= ns;    
    end
    always@(cs) 
    begin
        case(cs)
            idle: 
            begin 
                ns = s1; clr = 1; ce = 4'b1111; 
                w = 3'b100; s = 3'b010; sel = 2'b00; 
                en = 0; 
            end
            s1: 
            begin 
                ns = s2; clr = 0; ce = 4'b1111; 
                w = 3'b100; s = 3'b010; sel = 2'b00; 
                en = 0; 
            end
            s2: 
            begin 
                ns = s3; clr = 0; ce = 4'b1111; 
                w = 3'b100; s = 3'b010; sel = 2'b00; 
                en = 0; 
            end
            s3: 
            begin 
                ns = s4; clr = 0; ce = 4'b1111; 
                w = 3'b100; s = 3'b001; sel = 2'b01; 
                en = 0; 
            end
            s4: 
            begin 
                ns = s5; clr = 0; ce = 4'b0111; 
                w = 3'b100; s = 3'b001; sel = 2'b01; 
                en = 0; 
            end
            s5: 
            begin 
                ns = s5; clr = 0; ce = 4'b0111; 
                w = 3'b100; s = 3'b001; sel = 2'b01; 
                en = 1; 
            end
            default: 
            begin 
                ns = s1; clr = 1; ce = 4'b1111; 
                w = 3'b100; s = 3'b010; sel = 2'b00; 
                en = 0; 
            end
        endcase
    end
endmodule
