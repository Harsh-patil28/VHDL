module keypad(clk , rst , en , disp , row , key0 , key1 , key2 , key3);
input clk;
input rst;
output [1:6]en;
input key0;
input key1;
input key2;
input key3;
output [7:0]disp;
output [3:0]row;
wire temp =1'b1;
wire bkey0;  //rows
wire bkey1;
wire bkey2;
wire bkey3;
wire bclk;
wire bclk1;
reg [3:0]row;
reg [7:0]disp;
reg [3:0]rowtemp=4'b1110; //columns
reg [3:0]disptemp;

assign en = 6'b100000;

IBUF c1(.I(key0) , .O(bkey0));
IBUF c2(.I(key1) , .O(bkey1));
IBUF c3(.I(key2) , .O(bkey2));
IBUF c4(.I(key3) , .O(bkey3));


always @(posedge clk)
begin
if(rst==1)
disptemp<=4'b0000;
else
row<=rowtemp;

if(rowtemp==4'b1101)
begin
if(bkey0==1'b0)
disptemp<=4'b0000;
else if(bkey1==1'b0)
disptemp<=4'b0001;
else if(bkey2==1'b0)
disptemp<=4'b0010;
else if(bkey3==1'b0)
disptemp<=4'b0011;
end

if(rowtemp==4'b1011)
begin
if(bkey0==1'b0)
disptemp<=4'b0100;
else if(bkey1==1'b0)
disptemp<=4'b0101;
else if(bkey2==1'b0)
disptemp<=4'b0110;
else if(bkey3==1'b0)
disptemp<=4'b0111;
end

if(rowtemp==4'b0111)
begin
if(bkey0==1'b0)
disptemp<=4'b1000;
else if(bkey1==1'b0)
disptemp<=4'b1001;
else if(bkey2==1'b0)
disptemp<=4'b1010;
else if(bkey3==1'b0)
disptemp<=4'b1011;
end

if(rowtemp==4'b1110) //col-1
begin
if(bkey0==1'b0)
disptemp<=4'b1100;
else if(bkey1==1'b0)
disptemp<=4'b1101;
else if(bkey2==1'b0)
disptemp<=4'b1110;
else if(bkey3==1'b0)
disptemp<=4'b1111;
end

case(rowtemp) //rotate
4'b1110 : rowtemp = 4'b1101;
4'b1101 : rowtemp = 4'b1011;
4'b1011 : rowtemp = 4'b0111;
4'b0111 : rowtemp = 4'b1110;
endcase 
end

always @(disptemp)
begin
if(disptemp==4'b0000)
disp<=8'b01110001;
else if(disptemp==4'b0001)
disp<=8'b01111100;
else if(disptemp==4'b0010)
disp<=8'b00000111;
else if(disptemp==4'b0011)
disp<=8'b01001111;
else if(disptemp==4'b0100)
disp<=8'b01111001;
else if(disptemp==4'b0101)
disp<=8'b01111101;
else if(disptemp==4'b0110)
disp<=8'b01111101;
else if(disptemp==4'b0111)
disp<=8'b01011011;
else if(disptemp==4'b1000)
disp<=8'b01011110;
else if(disptemp==4'b1001)
disp<=8'b01101111;
else if(disptemp==4'b1010)
disp<=8'b01101101;
else if(disptemp==4'b1011)
disp<=8'b00000110;
else if(disptemp==4'b1100)
disp<=8'b00111001;
else if(disptemp==4'b1110)
disp<=8'b01100110;
else if(disptemp==4'b1111)
disp<=8'b00111111;
end
endmodule












