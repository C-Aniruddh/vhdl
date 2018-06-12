library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity saregister_tb is
end saregister_tb;

architecture TB_ARCHITECTURE of saregister_tb is
	-- Component declaration of the tested unit
	component saregister
	port(
		in_clk : in STD_LOGIC;
		comp_in : in STD_LOGIC;
		rst_in : in STD_LOGIC;
		a : in STD_LOGIC;
		output_vector : out STD_LOGIC_VECTOR(11 downto 0);
		end_c : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal in_clk : STD_LOGIC;
	signal comp_in : STD_LOGIC;
	signal rst_in : STD_LOGIC;
	signal a : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output_vector : STD_LOGIC_VECTOR(11 downto 0);
	signal end_c : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : saregister
		port map (
			in_clk => in_clk,
			comp_in => comp_in,
			rst_in => rst_in,
			a => a,
			output_vector => output_vector,
			end_c => end_c
		);

	-- Add your stimulus here ...
	process
	begin
		comp_in <= '1';
		wait;
	end process;
	
	process
	begin
		rst_in <= '0';
		wait for 10ns;
		rst_in <= '1';
		wait for 10ns;
	end process;
	
	
	process
	begin
		in_clk <= '0';
		wait for 20ns;
		in_clk <= '1';
		wait for 20ns;
	end process;
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_saregister of saregister_tb is
	for TB_ARCHITECTURE
		for UUT : saregister
			use entity work.saregister(state_machine);
		end for;
	end for;
end TESTBENCH_FOR_saregister;

