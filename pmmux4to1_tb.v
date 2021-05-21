module pmmux4to1_tb;

    reg [3:0] d0,d1,d2,d3;
    reg [1:0] sel;
    wire [3:0] y;

    pmmux4to1 pmmux4to1tb(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.sel(sel),.y(y));
    
    initial 
    begin
    d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b00;
    #10 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b01;
    #10 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b10;
    #10 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b11;
    #10 
    $stop;
    end
endmodule
