`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 11:44:53 AM
// Design Name: 
// Module Name: clk
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


module clk(
hz_100,hz_adjust,hz_1, hz_2,hz_50
    );
    
    input hz_100;
    output hz_adjust;
    output hz_1;
    output hz_2;
    output hz_50;
    reg hz_1d=0;
    reg hz_2d=0;
    reg hz_50d=0;
    reg hz_adjustd=0;

    reg [26:0] count=0;
    assign hz_1 = hz_1d;
    assign hz_2 = hz_2d;
    assign hz_50 = hz_50d;
    assign hz_adjust = hz_adjustd;

    always@(posedge hz_100)
    begin
        count = count+1;
        if(count % 50000000 == 0) //50,000,000
        begin
           hz_1d = ~hz_1d;
           //$display("c: %d",count);
           count = 0;
          
        end
        if(count %25000000==0)//25,000,000
        begin
                   hz_2d = ~hz_2d;
                   hz_adjustd =~hz_adjustd;
                   
                   //$display("c: %d",count);
                  
        end
        if(count % 250000==0)//25,000,000
        begin
                   hz_50d = ~hz_50d;
                   //$display("c: %d",count);
                  
        end
        //$display("c: %d",count);
        //hz_1 = ;
    end

endmodule
