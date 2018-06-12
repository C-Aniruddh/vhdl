entity even_number_detector is
	port(A : in integer; Q : out bit);
end even_number_detector;

architecture behaviour of even_number_detector 	is
begin
get_even : process(A)
begin
	if  A mod 2 = 0 then
		Q <= '1';
	else
		Q <= '0';
	end if;
end process;
end behaviour;