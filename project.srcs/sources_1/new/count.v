`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2024 11:30:58 AM
// Design Name: 
// Module Name: count
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


module count(

clk_100,S

    );
    input clk_100;
    
    output reg [6:0] S = 0;
    initial
    begin
            S=7'b0000_000;
    end

    

    
    always @(posedge clk_100)
    begin
        S = S+1;
    end
endmodule
