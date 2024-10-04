`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2024 04:09:34 PM
// Design Name: 
// Module Name: display_signals
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


module display_signals(//input
clk_hz_100,
adj,
sel,
blink_clk,
right_digit,
rightCenter_digit,
leftCenter_digit,
left_digit,
//output
cathode_vec,
anode_vec
    );
    input clk_hz_100;
    input adj;
    input sel;
    input blink_clk;
    input [6:0] right_digit;
    input [6:0] rightCenter_digit;
    input [6:0] leftCenter_digit;
    input [6:0] left_digit;
    output [6:0] cathode_vec;
    output [3:0] anode_vec;
    
    reg [6:0] cathode_vec_temp=7'b1000000;
    reg [3:0] anode_vec_temp=0;
    
    assign cathode_vec = cathode_vec_temp;
    assign anode_vec = anode_vec_temp;
    
    reg [1:0] display_position = 2'b00;
    always @ (posedge clk_hz_100) begin
    if (display_position == 0) begin
    
    
        display_position = display_position + 1;
        anode_vec_temp = ~(4'b0001);
        cathode_vec_temp = right_digit;
//        if (adj && !sel)begin
//            if (blink_clk) begin
//            cathode_vec_temp <= right_digit;
//            end
//            else begin
//            cathode_vec_temp <= 7'b1111111;
            
//            end
//        end
//        else begin
//        cathode_vec_temp <= right_digit;
//        end
        
    end
    else if (display_position == 1) begin
        display_position = display_position+ 1;
        anode_vec_temp = ~(4'b0010);
        cathode_vec_temp = rightCenter_digit;
//        if ( adj && !sel) begin
//            if (blink_clk) begin
//            cathode_vec_temp <= rightCenter_digit;
//            end
//            else begin
//            cathode_vec_temp <= 7'b1111111;
//            end
//        end
//        else begin
//        cathode_vec_temp <= rightCenter_digit;
//        end
        
    end
    else if (display_position == 2) begin
        display_position = display_position + 1;
        anode_vec_temp =~(4'b0100);
        cathode_vec_temp = leftCenter_digit;
//        if ( adj && sel) begin
//            if(blink_clk) begin
//            cathode_vec_temp <= leftCenter_digit;
//            end
//            else begin
//            cathode_vec_temp <= 7'b1111111;
//            end
//        end
//        else begin
//        cathode_vec_temp <= leftCenter_digit;
//        end
     end
     else if (display_position == 3) begin
        display_position = 0;
        anode_vec_temp = ~(4'b1000);
        cathode_vec_temp = left_digit;
//        if ( adj && sel) begin
//            if (blink_clk) begin
//            cathode_vec_temp <= left_digit;
//            end
//            else begin
//            cathode_vec_temp <= 7'b1111111;
//            end
//        end
//        else begin
//        cathode_vec_temp <= left_digit;
//        end

      end
    end
   
endmodule
