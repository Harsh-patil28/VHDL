module FA(s,co,x,y,ci);
output s,co;
input x,y,ci;
wire w1,w2,w3;
xor g1(w1,x,y);
xor g2(s,w1,ci);
and g3(w2,x,y);
and g4(w3,w1,ci);
or g5(co,w3,w2);
endmodule


module rca(s,co,x,y);
input [3:0]x,y;
output [3:0]s;
output co;
wire w1,w2,w3;
FA u1(s[0],w1,x[0],y[0],1'b0);
FA u2(s[1],w2,x[1],y[1],w1);
FA u3(s[2],w3,x[2],y[2],w2);
FA u4(s[3],co,x[3],y[3],w3);
endmodule


module test_rca;
reg [3:0]x,y;
wire [3:0]s;
wire co;
rca x1(s,co,x,y);
initial begin
$monitor($time,"x=%b , y=%b , s=%b , co=%b ",x,y,s,co);
x=4'b1011; y=4'b1101;
#10 x=4'b1010; y=4'b1100;
#10 x=4'b1110; y=4'b1101;
#10 x=4'b1111; y=4'b0000;
end
endmodule

