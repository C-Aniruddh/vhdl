library ieee;
use ieee.std_logic_1164.all;

entity simple_tri_state_buffer is
	port (ena : in std_logic ; input : in std_logic_vector (7 downto 0); output : out std_logic_vector (7 downto 0 ));
end simple_tri_state_buffer;

architecture arch of simple_tri_state_buffer is
begin 
	
	
output <= input when (ena = '0') else
	(others => 'Z');
end arch;
