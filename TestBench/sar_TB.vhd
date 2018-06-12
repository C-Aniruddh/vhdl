library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity sar_tb is
	-- Generic declarations of the tested unit
		generic(
		N : INTEGER := 8 );
end sar_tb;

architecture TB_ARCHITECTURE of sar_tb is
	-- Component declaration of the tested unit
	component sar
		generic(
		N : INTEGER := 8 );
	port(
		in_clk : in STD_LOGIC;
		comp_in : in STD_LOGIC;
		output_vector : out STD_LOGIC_VECTOR(0 to N) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal in_clk : STD_LOGIC;
	signal comp_in : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output_vector : STD_LOGIC_VECTOR(0 to N);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : sar
		generic map (
			N => N
		)

		port map (
			in_clk => in_clk,
			comp_in => comp_in,
			output_vector => output_vector
		);

	-- Add your stimulus here ...
	process_stimulus : process
	begin
		in_clk <= '0';
		wait for 50ns;
		in_clk <= '1';
		wait for 50ns;
	end process;
	
	process_comp : process
	begin
		comp_in <= '1';
		wait for 20ns;
		comp_in <= '0';
		wait for 20ns;
	end process;
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_sar of sar_tb is
	for TB_ARCHITECTURE
		for UUT : sar
			use entity work.sar(arch);
		end for;
	end for;
end TESTBENCH_FOR_sar;

