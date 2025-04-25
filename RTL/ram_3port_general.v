`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 11:27:13
// Design Name: 
// Module Name: ram_3port_general
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


module ram_3port_general
# (parameter ADDR_WIDTH = 3, DATA_WIDTH=8)
(
input clk, we,
input [DATA_WIDTH-1:0] w_data, // writing data
input [ADDR_WIDTH-1:0] r_addr0,r_addr1, w_addr,  // reading & writing address
output [DATA_WIDTH-1:0] r_data0, 
output reg [DATA_WIDTH-1:0] r_data1 // reading data
    );
    
// declaring memory size
reg [DATA_WIDTH-1:0] ram2 [0 : 2**ADDR_WIDTH-1];

// syn write operation
always@(posedge clk) begin
    if(we)
        ram2[w_addr] <= w_data;
        r_data1 = ram2[r_addr1]; // if 1 read is syn 
end

// asyn read operation // therefore, outside always
assign r_data0 = ram2[r_addr0];
//assign r_data1 = ram2[r_addr1];

    
endmodule
