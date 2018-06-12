entity seven_segment_better is
	port(X : in integer; a, b, c, d, e, f, g : out bit);
end seven_segment_better;

architecture behaviour of seven_segment_better is
begin				  
	disp : process(X)
	begin
	    if X = 0 then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '0';
		elsif X = 1 then
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif X = 2 then
			a <= '1';
			b <= '1';
			c <= '0';
			d <= '1';
			e <= '1';
			f <= '0';
			g <= '1';
		elsif X = 3 then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '0';
			g <= '1';
		elsif X = 4 then
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '1';
			g <= '1';
		elsif X = 5 then
			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '1';
			g <= '1';
		elsif X = 6 then
			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';
		elsif X = 7 then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif X = 8 then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';
		elsif X = 9 then
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '1';
			g <= '1';
		elsif X >= 10 then
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		end if;
	end process;
end behaviour;