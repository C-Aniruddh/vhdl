library ieee;
use ieee.std_logic_1164.all;

entity pattern_detector is
		port (d, in_clk, rst : in std_logic; output : out std_logic );
end pattern_detector;

architecture fsm of pattern_detector is
type state is (zero, one, two, three);
signal pr_state, nx_state : state;
begin
	-- Sequential block				  
	process(in_clk)
	begin
		if rst='1' then
				pr_state <= zero;
		elsif in_clk'event and in_clk = '1' then
				pr_state <= nx_state;
		end if;
	end process;
	
	-- Combinational Block
	process(d, pr_state)
	begin
		case pr_state is
			when zero =>
				output <= '0';
				if d='1' then
					nx_state <= one;
				else
					nx_state <= zero;
				end	if;
			when one =>
				output <= '0' ;
				if d='1' then
					nx_state <= two;
				else
					nx_state <= zero;
				end	if;
			when two =>
				output <= '0';
				if d='1' then
					nx_state <= three;
				else
					nx_state <= zero;
				end	if;
			when three =>
				output <= '0';
				if d='1' then
					nx_state <= zero;
				else
					nx_state <= three;
				end	if;
		end case; 
	end process;
end fsm;
	
				
				
				
				
			
	