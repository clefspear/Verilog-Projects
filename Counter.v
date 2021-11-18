module first_counter (
 10 clock , // Clock input of the design
 11 reset , // active high, synchronous Reset input
 12 enable , // Active high enable signal for counter
 13 counter_out // 4 bit vector output of the counter
 14 ); // End of port list
 15 //-------------Input Ports-----------------------------
 16 input clock ;
 17 input reset ;
 18 input enable ;
 19 //-------------Output Ports----------------------------
 20 output [3:0] counter_out ;
 21 //-------------Input ports Data Type-------------------
 22 // By rule all the input ports should be wires   
 23 wire clock ;
 24 wire reset ;
 25 wire enable ;
 26 //-------------Output Ports Data Type------------------
 27 // Output port can be a storage element (reg) or a wire
 28 reg [3:0] counter_out ;
 29 
 30 //------------Code Starts Here-------------------------
 31 // Since this counter is a positive edge trigged one,
 32 // We trigger the below block with respect to positive
 33 // edge of the clock.
 34 always @ (posedge clock)
 35 begin : COUNTER // Block Name
 36   // At every rising edge of clock we check if reset is active
 37   // If active, we load the counter output with 4'b0000
 38   if (reset == 1'b1) begin
 39     counter_out <=  #1  4'b0000;
 40   end
 41   // If enable is active, then we increment the counter
 42   else if (enable == 1'b1) begin
 43     counter_out <=  #1  counter_out + 1;
 44   end
 45 end // End of Block COUNTER
 46 
 47 endmodule // 