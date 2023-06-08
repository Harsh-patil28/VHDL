module aoi(y,a,b,c,d);
output y;
input a,b,c,d;
wire w1,w2,w3;
and x1(w1,a,b);
and x2(w2,c,d);
or x3(w3,w1,w2);
not x4(y,w3);
endmodule 


module test_aoi;
wire y;
reg a,b,c,d;
aoi x1(y,a,b,c,d);
initial begin 
$monitor($time,"a=%b , b=%b , c=%b , d=%b , y=%b ",a,b,c,d,y);
a=1'b0; b=1'b0; c=1'b0; d=1'b0;
#10;
a=1'b0; b=1'b0; c=1'b0; d=1'b1;
#10;
a=1'b0; b=1'b0; c=1'b1; d=1'b0;
#10;
a=1'b0; b=1'b0; c=1'b1; d=1'b1;
#10;
{a,b,c,d}=4'b0100;
#10;
{a,b,c,d}=4'b0101;
#10;
{a,b,c,d}=4'b0110;
#10;
{a,b,c,d}=4'b0111;
#10;
{a,b,c,d}=4'b1000;
#10;
{a,b,c,d}=4'b1001;
#10;
{a,b,c,d}=4'b1010;
#10;
{a,b,c,d}=4'b1011;
#10;
{a,b,c,d}=4'b1100;
#10;
{a,b,c,d}=4'b1101;
#10;
{a,b,c,d}=4'b1110;
#10;
{a,b,c,d}=4'b1111;
#10;
end 
endmodule
