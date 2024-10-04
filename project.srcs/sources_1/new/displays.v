`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 11:44:53 AM
// Design Name: 
// Module Name: displays
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


module displays(
 num,
seven_bit
//input [7:0] 1_D;
//input [7:0] 2_D;
//input [7:0] 3_D;
//input [7:0] 4_D;

//output 
    );
 input [3:0] num;
 output [6:0] seven_bit;
 reg[6:0] seven_bit_temp;
 
 assign seven_bit = seven_bit_temp;
 
 always @ (num) 
 begin
    if (num == 0)
    begin
    seven_bit_temp = 7'b1000000;
    end
    else if (num == 1)
    begin
    seven_bit_temp = 7'b1111001;
    end
    else if (num == 2)
    begin
    seven_bit_temp = 7'b0100100;
    end
    else if (num == 3)
    begin
    seven_bit_temp = 7'b0110000;
    end
    else if (num == 4)
    begin
    seven_bit_temp = 7'b0011001;
    end
    else if (num == 5)
    begin
    seven_bit_temp = 7'b0010010;
    end 
    else if (num == 6)
    begin
    seven_bit_temp = 7'b0000010;
    end
    else if (num == 7)
    begin
    seven_bit_temp = 7'b1111000;
    end
    else if (num == 8)
    begin
    seven_bit_temp = 7'b0000000;
    end
    else if (num == 9)
    begin
    seven_bit_temp = 7'b0010000;
    end
 end
 

 
endmodule
