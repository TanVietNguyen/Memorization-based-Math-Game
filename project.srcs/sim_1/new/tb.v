
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2024 10:23:55 AM
// Design Name: 
// Module Name: tb
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



    

module tb(
        
    );
//    wire hz_1;
//    wire hz_2;
//    wire hz_50;
//    wire hz_adjust;
    reg hz_100d = 0;
    reg p=0,r=0,adj=0,sel = 0;
//    clk clk_1(
//    .hz_100(hz_100d),
//    .hz_adjust(hz_adjust),
//    .hz_1(hz_1),
//    .hz_2(hz_2),
//    .hz_50(hz_50)
//        );
    
    
wire [6:0] cathode;
wire [3:0] anode;
    reg [18:0] count=0;

//    always #1
//    begin
//        hz_100d = ~hz_100d;
        
//        //$display("clk: %d %d",M,S);
////        $display("clk: %d %d %d %d",hz_1,hz_2,hz_50,hz_adjust);

//    end
//    counter M_S(
//     .clk_100(hz_100d),.pause(p),.adj(adj),.rst(r),
//     .cathode(cathode),
//     .anode(anode)
//        );
//    count stopwatch(
//     .clk_100(hz_100d),
//     .S(S)
//        );
    
endmodule
