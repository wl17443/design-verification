module counter (clk,rst,enable,count);
input clk, rst, enable;
output [3:0] count;
reg [3:0] count;

always @ (posedge clk or posedge rst)
//all blocks marked always will run - simultaneously when one
//  or more of the conditions listed within it is fulfilled
//e.g. always block will run when either rst or clk reaches
//  a positive edge o.e. when their value has risen from 0 to 1
//NB can have two or more always blocks in a program going at
//  the same time
if (rst) begin
  count <= 0;
end else begin : COUNT
  while (enable) begin
    count <= count + 1;
    disable COUNT;
    //after each counter increment, the COUNT block of code (not
    //  shown) is disabled 
  end
end
endmodule
