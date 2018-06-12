entity seven_segment_display is
	port(X, Y, Z : in bit; a, b, c, d, e, f, g : out bit);
end seven_segment_display;

architecture behaviour of seven_segment_display is
begin				  
	disp : process(X, Y, Z)
	begin
	    if X & Y & Z = "000" then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '0';
		elsif X & Y & Z = "001" then
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif X & Y & Z = "010" then
			a <= '1';
			b <= '1';
			c <= '0';
			d <= '1';
			e <= '1';
			f <= '0';
			g <= '1';
		elsif X & Y & Z = "011" then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '0';
			g <= '1';
		elsif X & Y & Z = "100" then
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '1';
			g <= '1';
		elsif X & Y & Z = "101" then
			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '1';
			g <= '1';
		elsif X & Y & Z = "110" then
			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';
		elsif X & Y & Z = "111" then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		end if;
	end process;
end behaviour;