module testMultiplication(a,b,c);
	input[3:0] a,b;
	output reg [7:0] c;

	always @ (*) begin
	
		c = a*b;
	end

endmodule
