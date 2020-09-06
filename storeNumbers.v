module storeNumbers(n,d,c,clk,primeNum,privateKey,cipher);
	
	input [31:0] n; //product of prime numbers
	input [31:0] d; //private key
	input [31:0] c; //cipher text
	input clk;
	
	reg [5:0] count;
	output reg [63:0] primeNum,privateKey,cipher;
	//output reg [31:0] pnum, pkey, cip;
	
	initial begin
	count = 5'b0;
	primeNum = 64'b0;
	privateKey = 64'b0;
	cipher = 64'b0;
	end
	
	always @(posedge clk)begin
		//store new values into large reg
		
		primeNum <= {primeNum[63:32],n};
		privateKey <= {privateKey[31:0],d};
		cipher <= {c,cipher[63:32]};
		
		//ISSUES
//		primeNum <= {primeNum[63:32], n};
//		privateKey <= {privateKey[63:32], d};
//		cipher <= {cipher[63:32], c};

				//ISSUES
		//shift values in reg
		//primeNum <= primeNum<<32;
		//privateKey <= privateKey<<32;
		//cipher <= cipher<<32;
		
		//incerement count
		count <= count + 5'b00001;
			
	end
	
endmodule
