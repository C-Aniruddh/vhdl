library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity simple_tri_state_buffer_tb is
end simple_tri_state_buffer_tb;

architecture TB_ARCHITECTURE of simple_tri_state_buffer_tb is
	-- Component declaration of the tested unit
	component simple_tri_state_buffer
	port(
		ena : in STD_LOGIC;
		input : in STD_LOGIC_VECTOR(7 downto 0);
		output : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal ena : STD_LOGIC;
	signal input : STD_LOGIC_VECTOR(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : simple_tri_state_buffer
		port map (
			ena => ena,
			input => input,
			output => output
		);

	-- Add your stimulus here ...
	stimuli_process : process
	begin
		input <= "00000000";
		ena <= '0';
		
		if output = "00000000" then
			report "Working";
		else
			report "Not working;"  ;
		end if;
		
		ena <= '1';
		if output = "ZZZZZZZZ" then
			report "Working" ;
		else
			report "Not working" ;
		end if;						   
		end process;
		
		

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_simple_tri_state_buffer of simple_tri_state_buffer_tb is
	for TB_ARCHITECTURE
		for UUT : simple_tri_state_buffer
			use entity work.simple_tri_state_buffer(arch);
		end for;
	end for;
end TESTBENCH_FOR_simple_tri_state_buffer;

