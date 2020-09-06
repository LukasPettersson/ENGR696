`timescale 1ns/1ps

module tb;

reg clk;
reg [31:0] n,d,c;
wire [31:0] m;
wire [31:0] primeNum, privateKey, cipher;
integer i;


//.primeNum(primeNum), .privateKey(privateKey), .cipher(cipher)
storeNumbers dut(.n(n),.d(d),.c(c),.clk(clk), .primeNumOut(primeNum), .privateKeyOut(privateKey), .cipherOut(cipher));

always  
	#5 clk = ~clk;

initial begin
	clk = 0;
	
end
/*
initial begin

	for(i = 0; i < 32; i = i+1)
		begin
			n <= 8'hffff0000;
			d <= 8'hffff0000;
			c <= 8'hffff0000;
			
			n <= 8'hffff0000;
			d <= 8'hffff0000;
			c <= 8'hffff0000;
					
		end
		
	end	
*/

	initial begin
			
			n <= 32'hffffffff;
			d <= 32'hffffffff;
			c <= 32'hffffffff;
			#15
			n <= 32'h00000000;
			d <= 32'h00000000;
			c <= 32'h00000000;
	end

endmodule

