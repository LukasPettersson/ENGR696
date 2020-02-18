module powerTestBench;
reg CLK;
reg[3:0] privateKey, cipherText;
wire [7:0] Prod;
wire enDiv;

//cipherDecode  i0(.cipherText(cipherText), .privateKey(privateKey), .CLK(clk), .Prod(Prod), .enDiv(enDiv));
cipherDecode  i0(cipherText, privateKey, CLK, Prod, enDiv);
initial begin
	cipherText = 4'b1001;
	privateKey = 4'b1010;	
	CLK = 0;
end	
always #20 CLK = !CLK;

endmodule
