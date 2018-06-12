library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity pattern_detector_tb is
end pattern_detector_tb;

architecture TB_ARCHITECTURE of pattern_detector_tb is
	-- Component declaration of the tested unit
	component pattern_detector
	port(
		d : in STD_LOGIC;
		in_clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		output : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal d : STD_LOGIC;
	signal in_clk : STD_LOGIC;
	signal rst : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : pattern_detector
		port map (
			d => d,
			in_clk => in_clk,
			rst => rst,
			output => output
		);

	-- Add your stimulus here ...
	process
	begin 

		in_clk <= '0';
		wait for 20 ns;
		in_clk <= '1';
		wait for 20 ns;
	end process;
	
	process
	begin
		d <= '0';
		wait for 100ns;
		d <= '1';
		wait for 100ns;
		d <= '1';
		wait for 100ns;
		d <= '1';
		wait for 100ns;
		d <= '0';
		wait for 100ns;
		d <= '0';
		wait for 100ns;
		
	end process;
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_pattern_detector of pattern_detector_tb is
	for TB_ARCHITECTURE
		for UUT : pattern_detector
			use entity work.pattern_detector(fsm);
		end for;
	end for;
end TESTBENCH_FOR_pattern_detector;

