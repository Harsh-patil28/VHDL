module rca_n(s,co,x,y,carry_in);
parameter n=4;
input [n-1:0]x,y;
input carry_in;
output [n-1:0]s;
output co;
wire [n:0]carry ;
assign carry[0]=carry_in;
genvar i;
generate 
for(i=0;i<n;i=i+1)
begin:
generate_n_bit_adder
FA u1(s[i],carry[i+1],x[i],y[i],carry[i]);
end 
assign co=carry[n];
endgenerate 
endmodule


module FA(s,cout,x,y,ci);
input x,y,ci;
output s,cout;
wire w1,w2,w3;
xor G1(w1,x,y);
xor G2(s,w1,ci);
and G3(w2,w1,ci);
and G4(w3,x,y);
or G5(cout,w2,w3);
endmodule


module test_rca_n;
reg [3:0]x,y;
reg carry_in;
wire [3:0]s;
wire co;
rca_n x1(s,co,x,y,carry_in);
initial begin
$monitor($time," carry_in=%b , x=%b , y=%b , s=%b , co=%b ",carry_in,x,y,s,co);
 x=4'b1011; y=4'b1101; carry_in=1'b0;
#100 x=4'b1010; y=4'b1100;
#100 x=4'b1110; y=4'b1101;
#100 x=4'b1111; y=4'b0000;
#100;
end
endmodule 

