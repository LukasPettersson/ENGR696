/*
we need both a start input bit  a start output bit
*/
module storeNumbers(
		n,
		d,
		c,
		clk,
		primeNumOut,
		privateKeyOut,
		cipherOut,	
	);
	
	input [31:0] n; //product of prime numbers
	input [31:0] d; //private key
	input [31:0] c; //cipher text
	input clk;
	
	integer i,j; 
	integer counter;
	
	reg [4:0] count;
	
	reg [31:0] primeNum [31:0];
	reg [31:0] privateKey [31:0];
	reg [31:0] cipher [31:0];
	//output reg [31:0] pnum, pkey, cip;
	
	output reg [31:0] primeNumOut;
	output reg [31:0] privateKeyOut;
	output reg [31:0] cipherOut;	
	
	initial begin
	count = 5'b0;
	for(i = 0; i < 32; i = i + 1) begin
		primeNum[i] = 32'b0;
		privateKey[i] = 32'b0;
		cipher[i] = 32'b0;
	end
	end
	
	//this is used to input values into the registers
	always @(posedge clk)begin
		//store new values into 32x32 regs'
		if(count < 5'b11111) begin //2^5 = 32
				primeNum[count] <= n;
				privateKey[count] <= d;
				cipher[count] <= c;
		end
		
	//incerement count
	count <= count + 5'b00001;
		
	end
	
	//this is used to output from the registers
	always @(posedge clk) begin
		
		
	end


	
endmodule
