module cipherDecode(

	cipherText,
	
	privateKey,
	
	CLK,
	
	Prod,
	
	enDiv
);
//--------I/O assigment-------------
	input[3:0] cipherText;
	input[3:0] privateKey;
	input CLK;
	reg [3:0] count;
	
	output reg[7:0] Prod;
	reg tempProd;
	output reg enDiv;
	
//logic	
	initial begin
		Prod = 16'b0000000000000000;
		count = 0;
		enDiv = 0;
	end
	always @ (posedge CLK) begin
		if(count <= cipherText) begin
			Prod <= cipherText * Prod;	
			enDiv <= 1'b0;
			count <= count +1;
		end
		
		else begin
		Prod <= Prod;
		enDiv <= 1'b1;
		count <= 4'b0000;
		
		end
	end
endmodule
