module FullAdder(a,b,cin,sum,cout);
input a,b,cin; 
output sum, cout; 
reg sum, cout; // registers retain value
always @ (a or b or cin) // Anytime a or b or cin
CHANGE, run the 
process 
begin sum <= a ^ b ^ cin; 
cout <= (a & b) | (a & cin) | (b & cin); 
end 
endmodule
