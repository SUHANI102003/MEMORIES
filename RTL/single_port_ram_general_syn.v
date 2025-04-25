`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 10:43:03
// Design Name: 
// Module Name: single_port_ram_general_syn
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

// 64 * 8
module single_port_ram_general_syn (
    input clk,
    input we,
    input rst,
    input [5:0] addr, // 2^6
    input [7:0] din, // 8 bits
    output [7:0] dout
    );
    
 reg [7:0] mem [63:0];
 reg [7:0] temp;
 integer i = 0;
 
 always@(posedge clk)
 begin   
    if(rst == 1'b1)
     begin
      for(i=0; i< 64; i = i + 1)
       begin
       mem[i] <= 8'h00;
       end
      temp <= 8'h00;
     end
     
     else
       begin
         if(we == 1'b1)
           mem[addr] <= din;
         else
           temp      <= mem[addr];     
       end   
 end   
 
 assign dout = temp;

    
endmodule
