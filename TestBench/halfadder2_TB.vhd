
	-- Add your library and packages declaration here ...

entity halfadder2_tb is
end halfadder2_tb;

architecture TB_ARCHITECTURE of halfadder2_tb is
	-- Component declaration of the tested unit
	component halfadder2
	port(
		a : in BIT;
		b : in BIT;
		s : out BIT;
		c : out BIT );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal a : BIT;
	signal b : BIT;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal s : BIT;
	signal c : BIT;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : halfadder2
		port map (
			a => a,
			b => b,
			s => s,
			c => c
		);

	-- Add your stimulus here ... 
	stimuli_process : process
	begin
		a <= '0';
		b <= '0';
		wait for 100 ns;
		a <= '0';
		b <= '1';
		wait for 100 ns;
		a <= '1';
		b <= '0';
		wait for 100 ns;
		a <= '1';
		b <= '1';
		wait for 100 ns;
	end process;
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_halfadder2 of halfadder2_tb is
	for TB_ARCHITECTURE
		for UUT : halfadder2
			use entity work.halfadder2(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_halfadder2;

