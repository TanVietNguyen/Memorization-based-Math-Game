`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2024 05:02:43 PM
// Design Name: 
// Module Name: saparating_numbers
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


module saparating_numbers(//input
M,
S,
//output
right_digit,
rightCenter_digit,
leftCenter_digit,
left_digit
    );
    input [6:0] M;
    input [6:0] S;
    output [3:0] right_digit;
    output [3:0] rightCenter_digit;
    output [3:0] leftCenter_digit;
    output [3:0] left_digit;
    
endmodule
