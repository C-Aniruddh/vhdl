module bit_bus_module(a, b, c, d, e, f, output_bus);
	
input a, b, c, d, e, f;
output [5:0] output_bus;

reg [5:0] output_bus;
always	 @ (a, b, c, d, e, f)
	begin
		output_bus[5] = a;
		output_bus[4] = b;
		output_bus[3] = c;
		output_bus[2] = d;
		output_bus[1] = e;
		output_bus[0] = f;
	end
endmodule