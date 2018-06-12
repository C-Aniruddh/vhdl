library ieee;
use ieee.std_logic_1164.all;

entity bcd_counter is
	port (in_clk, rst: in std_logic; output_vector : out std_logic_vector (3 downto 0));
end bcd_counter;

architecture fsm of bcd_counter is
type state is (zero, one, two, three, four, five, six, seven, eight, nine);
signal pr_state, nx_state : state;

begin
	-- Lower sequential circuit
	process(in_clk)
	begin
	if rst = '1' then
		pr_state <= zero;
	elsif in_clk'event and in_clk='1' then
		pr_state <= nx_state;
	end if;
	end process;
	
	-- Upper combinational circuit
	
	process (pr_state)
	begin
		case pr_state is
			when zero =>
				output_vector <= "0000";
				nx_state <= one;
			when one =>
				output_vector <= "0001";
				nx_state <= two;
			when two =>
				output_vector  <= "0010";
				nx_state <= three;
			when three =>
				output_vector <= "0011";
				nx_state <= four;
			when four =>
				output_vector <= "0100";
				nx_state <= five; 
			when five =>	 	  
				output_vector <= "0101";
				nx_state <= six;
			when six =>
				output_vector <= "0110";
				nx_state <= seven;
			when seven =>
				output_vector <= "0111";
				nx_state <= eight;
			when eight =>
				output_vector <= "1000";
				nx_state <= nine;
			when nine =>
				output_vector <= "1001"; 
				nx_state <= zero;	
		end case;
	end process;
end fsm;

			
				