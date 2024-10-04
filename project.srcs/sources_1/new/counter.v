`timescale 1ns / 1ps



module counter(
 clk_100,pause,adj,rst,sel,cathode,anode
    );
input clk_100;

input pause;
input adj;
input rst;
input sel;
    
output [6:0] cathode;
output [3:0] anode;
wire clk_1;
wire clk_2;
wire clk_50;
wire clk_adjust;
wire [3:0]right_digit;
wire [3:0]rightCenter_digit;
wire [3:0]leftCenter_digit;
wire [3:0]left_digit;
wire [6:0] seven_bit1;
wire [6:0] seven_bit2;
wire [6:0] seven_bit3;
wire [6:0] seven_bit4;


wire [6:0] M;
wire [6:0] S;
reg pause_d = 0;
reg [1:0]state = 2'b00;

reg [6:0] count_s =0;
reg [6:0] count_m = 0;
assign S = count_s;
assign M = count_m;


assign right_digit =count_s % 10;
assign rightCenter_digit = count_s / 10;
assign leftCenter_digit =  count_m % 10 ;
assign left_digit =  {5'b00000,state+1} ;
clk clk_hz_100(
    .hz_100(clk_100),
    .hz_adjust(clk_adjust),
    .hz_1(clk_1),
    .hz_2(clk_2),
    .hz_50(clk_50)
            );
initial count_s=7'b0000000;


//    always @ (posedge rst)
//    begin
//        count_m=0;
//        count_s=0;
//        state=1;
//    end


    always @ (posedge clk_2)
    begin
        //pause_d=pause;
    
//        if(rst==1)
//        begin
//            count_m=0;
//            count_s=0;
//            state=1;
            
//        end
//        if(state==0)//clk
//        begin
        
////            state=1;  
////            if(pause_d==0 && pause==1)
////            begin
                
////            end
////            if(adj==1)
////            begin
////              state=2;    
////            end
//        end
//        else if(state==1)//pause
//        begin
//              state=0;    

////            if(pause_d==0 && pause==1)
////            begin
////            end
            
////            if(adj==1)
////            begin
////              state=2;    
////            end
//        end
//        else if(state==2)//pause
//        begin
            
//            if(adj==0)
//            begin
//              state=1;    
//            end
////            else
////            begin
////              state=1;    
////            end
        
                    
//        end
//        else
//        begin
                           
//        end
    end


always @ (posedge clk_1)
begin
        if(1)
        begin
            if (count_s>0 && count_s % 59==0)
            begin
                count_m = count_m+1;
                count_s=0;
            end
            else
            begin
               count_s = count_s + 1;
            end
            if(count_m % 59 == 0)
            begin
                count_m = 0;
            end
        end

    
end


//always @ (posedge clk_2)
//begin
//        if(state==2)
//        begin
//            if(sel==1)
//            begin
//                if (count_s>0 && count_s % 59==0)
//                begin
//                    count_m = count_m+1;
//                    count_s=0;
//                end
//                else
//                begin
//                   count_s = count_s + 1;
//                end
//                if(count_m % 59 == 0)
//                begin
//                    count_m = 0;
//                end
//             end
//            else
//             begin
//                 count_m = count_m+1;
//                 if(count_m % 59 == 0)
//                 begin
//                     count_m = 0;
//                 end
//              end
                
//        end

    
//end

displays show1( .num (right_digit), .seven_bit (seven_bit1));
displays show2(.num (rightCenter_digit), .seven_bit (seven_bit2));
displays show3( .num (leftCenter_digit), .seven_bit (seven_bit3));
displays show4(.num (left_digit), .seven_bit (seven_bit4));

display_signals display(//input
.clk_hz_100 (clk_50),
.adj (adj),
.sel (sel),
.blink_clk (clk_adjust),
.right_digit (seven_bit1),
.rightCenter_digit (seven_bit2),
.leftCenter_digit (seven_bit3),
.left_digit (seven_bit4),
//output
.cathode_vec (cathode),
.anode_vec (anode)
    );

endmodule



//initial count_s=7'b0000000;
//always @ (posedge clk_100)
//begin

//        if (count_s>0 && count_s % 59==0)
//        begin
//            count_m = count_m+1;
//            count_s=0;
//        end
//        else
//        begin
//           count_s = count_s + 1;
//        end
//        if(count_m % 59 == 0)
//        begin
//            count_m = 0;
//        end
//        $display("clk: %d %d",count_s,count_m);

    
//end





//module counter(
// clk_100,pause,adj,rst,sel,
// M,
// S
//    );
//input clk_100;

//wire clk_1;
//wire clk_2;
//wire clk_50;
//wire clk_adjust;

//input pause;
//input adj;
//input rst;
//input sel;
    


//output [6:0] M;
//output [6:0] S;
////reg pause_d = 0;
//reg [1:0]state = 1;

//reg [6:0] count_s =0;
//reg [6:0] count_m = 0;
//assign S = count_s;
//assign M = count_m;

//clk clk_hz_100(
//    .hz_100(clk_100),
//    .hz_adjust(clk_adjust),
//    .hz_1(clk_1),
//    .hz_2(clk_2),
//    .hz_50(clk_50)
//            );
//initial count_s=7'b0000000;


//    always @ (posedge clk_1)
//    begin
//        if(rst)
//        begin
//            count_m=0;
//            count_s=0;
//            state=1;
            
//        end
//        else if(state==0)//clk
//        begin
//            if(pause==1)
//            begin
//              state=1;    
//            end
        
//        end
//        else if(state==1)//pause
//        begin
//            if(pause==0)
//            begin
//              state=0;    
//            end
////            else
////            begin
////              state=1;    
////            end
        
                    
//        end
//        else
//        begin
                           
//        end
//    end


//always @ (posedge clk_1)
//begin
//        if(state==0)
//        begin
//            if (count_s>0 && count_s % 59==0)
//            begin
//                count_m = count_m+1;
//                count_s=0;
//            end
//            else
//            begin
//               count_s = count_s + 1;
//            end
//            if(count_m % 59 == 0)
//            begin
//                count_m = 0;
//            end
//        end
//        $display("clk: %d %d",count_s,count_m);

    
//end


//always @ (posedge clk_2)
//begin
//        if(state==2)
//        begin
//            if (count_s>0 && count_s % 59==0)
//            begin
//                count_m = count_m+1;
//                count_s=0;
//            end
//            else
//            begin
//               count_s = count_s + 1;
//            end
//            if(count_m % 59 == 0)
//            begin
//                count_m = 0;
//            end
//        end
//        $display("clk: %d %d",count_s,count_m);

    
//end
//endmodule
