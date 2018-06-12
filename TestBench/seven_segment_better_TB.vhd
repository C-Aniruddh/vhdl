
	-- Add your library and packages declaration here ...

entity seven_segment_better_tb is
end seven_segment_better_tb;

architecture TB_ARCHITECTURE of seven_segment_better_tb is
	-- Component declaration of the tested unit
	component seven_segment_better
	port(
		X : in INTEGER;
		a : out BIT;
		b : out BIT;
		c : out BIT;
		d : out BIT;
		e : out BIT;
		f : out BIT;
		g : out BIT );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal X : INTEGER;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal a : BIT;
	signal b : BIT;
	signal c : BIT;
	signal d : BIT;
	signal e : BIT;
	signal f : BIT;
	signal g : BIT;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : seven_segment_better
		port map (
			X => X,
			a => a,
			b => b,
			c => c,
			d => d,
			e => e,
			f => f,
			g => g
		);

	-- Add your stimulus here ...
	stimuli_process : process
	begin
		for i in 0 to 10 loop
			X <= i;
			wait for 100 ns;
		end loop; 
		X <= 0;
		if a <= '1' and b <= '1' and c <= '1' and d <= '1' and e <= '1' and f <= '1' and g <= '0'  then
		report "works " severity warning;
		end if;
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_seven_segment_better of seven_segment_better_tb is
	for TB_ARCHITECTURE
		for UUT : seven_segment_better
			use entity work.seven_segment_better(behaviour);
		end for;
	end for;
end TESTBENCH_FOR_seven_segment_better;

