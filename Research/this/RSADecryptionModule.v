module RSADecryptionModule( //top level design

	cipherText,
	privateKey,
	n, //product of prime numbers
	CLK,
	m //output


);
input[3:0] cipherText, privateKey, n;
input CLK;

wire [15:0] Prod; 
wire enDiv;

//things to take care of later
output m;

cipherDecode cd1(.cipherText(cipherText), .privateKey(privateKey), .CLK(CLK), .Prod(Prod), .enDiv(enDiv));
endmodule
