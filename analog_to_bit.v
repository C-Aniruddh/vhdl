module analog_to_bit(analog_input, output_bit);
	
input analog_input;
output output_bit;

reg output_bit;
always	 @ (analog_input)
	begin
		output_bit = analog_input;
	end
endmodule