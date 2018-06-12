
	-- Add your library and packages declaration here ...

entity even_number_detector_tb is
end even_number_detector_tb;

architecture TB_ARCHITECTURE of even_number_detector_tb is
	-- Component declaration of the tested unit
	component even_number_detector
	port(
		A : in INTEGER;
		Q : out BIT );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal A : INTEGER;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q : BIT;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : even_number_detector
		port map (
			A => A,
			Q => Q
		);

	-- Add your stimulus here ...
	stimuli_process : process
	begin
		for i in 0 to 15 loop
			A <= i;
			wait for 100 ns;
		end loop;
	end process;
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_even_number_detector of even_number_detector_tb is
	for TB_ARCHITECTURE
		for UUT : even_number_detector
			use entity work.even_number_detector(behaviour);
		end for;
	end for;
end TESTBENCH_FOR_even_number_detector;

