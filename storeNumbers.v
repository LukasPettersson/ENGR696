module storeNumbers(n,d,c,clk);
	input [31:0] n; //product of prime numbers
	input [31:0] d; //private key
	input [31:0] c; //cipher text
	input clk;
	reg [5:0] count;
	reg [1023:0] primeNum,privateKey,cipher;
	
	
	initial begin
	count = 5'b0;
	
	primeNum = 1024'b0;
	
	privateKey = 1024'b0;
	
	cipher = 1024'b0;
	end
	
	always @(posedge clk)begin
	
	//is this going to work?
	if(count < 5'b11111)
		begin
		primeNum = {primeNum,n};
		
		privateKey = {privateKey,d};
		
		cipher = {cipher,c};
		count = count + 5'b00001;
		end
	end
	
endmodule
