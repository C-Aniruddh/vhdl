library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity bcd_counter_tb is
end bcd_counter_tb;

architecture TB_ARCHITECTURE of bcd_counter_tb is
	-- Component declaration of the tested unit
	component bcd_counter
	port(
		in_clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		output_vector : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal in_clk : STD_LOGIC;
	signal rst : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output_vector : STD_LOGIC_VECTOR(3 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : bcd_counter
		port map (
			in_clk => in_clk,
			rst => rst,
			output_vector => output_vector
		);
	
process
	begin 	 		
		rst <= '1';
		wait for 60 ns;
		rst <= '0';
	    wait	 ;
	end process;	
		
		
	-- Add your stimulus here ...
	process
	begin 

		in_clk <= '0';
		wait for 50 ns;
		in_clk <= '1';
		wait for 50 ns;
	end process;
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_bcd_counter of bcd_counter_tb is
	for TB_ARCHITECTURE
		for UUT : bcd_counter
			use entity work.bcd_counter(fsm);
		end for;
	end for;
end TESTBENCH_FOR_bcd_counter;

