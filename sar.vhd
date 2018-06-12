library ieee;
use ieee.std_logic_1164.all;

entity sar is								   
	generic (N : integer := 8);
	port (in_clk, comp_in : in std_logic;
	output_vector : out std_logic_vector (0 to N));
end sar;

architecture arch of sar is
begin	
	process (in_clk)								  						  
	variable out_temp : std_logic_vector (0 to N) := (others => '0');							  
	begin
		if in_clk'event and in_clk = '1'then		 
			output_vector <= (others => '0');
			for i in 0 to N loop
				if comp_in = '1' then
					out_temp(i) := '1';
				else
					out_temp(i) := '0';
				end if;
			end loop;
			output_vector <= out_temp; 
		end if;											   
	end process;
end arch;
	
			
	
	
	
	