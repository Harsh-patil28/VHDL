module test_and2_1;
reg a,b;
wire y;
and2_1 X1(y,a,b);
initial begin
a=1'b0 ; b=1'b0;
#10;
 a=1'b0; b=1'b1;
#10;
 a=1'b1; b=1'b0;
#10;
 a=1'b1; b=1'b1;
 #10;
end 

endmodule 