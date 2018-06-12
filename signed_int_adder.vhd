entity signed_int_adder is
	port(A, B : in integer; S: out integer);
end signed_int_adder;

architecture behaviour of signed_int_adder is
begin				  
	add_numbers : process
	begin
		S <=  A + B;
		wait for 2 ns;
	end process;
end behaviour;