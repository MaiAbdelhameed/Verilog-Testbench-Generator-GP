module encoder14 (din, dout);
input [3:0] din;
output reg [1:0] dout;

always @(*)
begin
    if (din ==4'b0001) dout=2'b00;
    else if (din==4'b0010) dout=2'b01;
    else if (din==4'b0100) dout=2'b10;
    else if (din==4'b1000) dout=2'b11;
    else dout = 2'b00;
end
endmodule