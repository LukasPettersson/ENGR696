`timescale 1ns/1ps

module tb;

reg clk;
reg [31:0] n,d,c;
wire [31:0] m;
integer i = 0;
wire[1023:0] primeNum,privateKey,cipher;
storeNumbers dut(.n(n),.d(d),.c(c),.clk(clk));

always  
	#5 clk = ~clk;

initial begin
	clk = 0;
	
end

initial begin

	for(i = 0; i < 32; i = i+1)
		begin
			#5
			n <= 4'h0100;
			d <= 4'h0020;
			c <= 4'h0200;
				
		end
		
	end	
		
endmodule
