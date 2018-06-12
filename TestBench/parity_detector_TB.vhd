library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity parity_detector_tb is
end parity_detector_tb;

architecture TB_ARCHITECTURE of parity_detector_tb is
	-- Component declaration of the tested unit
	component parity_detector
	port(
		input_vector : in STD_LOGIC_VECTOR(7 downto 0);
		output : out BIT );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal input_vector : STD_LOGIC_VECTOR(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : BIT;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : parity_detector
		port map (
			input_vector => input_vector,
			output => output
		);

	-- Add your stimulus here ...
	stimulus_process : process(input_vector)
	begin
		input_vector <= "11111111";
		if output = '1' then
			report "Working";
		else 
			report "Not working";
		end if;
										
		input_vector <= "11101111";
		
		if output = '1' then
			report "Working";
		else 
			report "Not working";
		end if;
									  
		end process;
		
		
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_parity_detector of parity_detector_tb is
	for TB_ARCHITECTURE
		for UUT : parity_detector
			use entity work.parity_detector(behaviour);
		end for;
	end for;
end TESTBENCH_FOR_parity_detector;

