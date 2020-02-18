module multiTest;

	reg [3:0]a,b;
	wire [7:0] c;
	
	testMultiplication i0(a,b,c);
	initial begin
	#5 a = 4'b1010;
	#5 b = 4'b1000;
	end
	
	
endmodule
	