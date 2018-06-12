library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity generic_decoder_tb is
end generic_decoder_tb;

architecture TB_ARCHITECTURE of generic_decoder_tb is
	-- Component declaration of the tested unit
	component generic_decoder
	port(
		ena : in STD_LOGIC;
		sel : in STD_LOGIC_VECTOR(2 downto 0);
		x : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal ena : STD_LOGIC;
	signal sel : STD_LOGIC_VECTOR(2 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal x : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : generic_decoder
		port map (
			ena => ena,
			sel => sel,
			x => x
		);

	-- Add your stimulus here ...
	
	stimulus_process : process
	begin
		ena <= '0';
		if x = "11111111" then
			report "Working for ena = 0";
				wait for 50ns;
		end if;
		
		ena <= '1';
		sel <= "000";
		if x = "11111110" then
			report "Working for sel = 0";
				wait for 50 ns;
		end if;
		end process;
		
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_generic_decoder of generic_decoder_tb is
	for TB_ARCHITECTURE
		for UUT : generic_decoder
			use entity work.generic_decoder(behaviour);
		end for;
	end for;
end TESTBENCH_FOR_generic_decoder;

