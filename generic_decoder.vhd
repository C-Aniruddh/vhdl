library ieee;
USE ieee.std_logic_1164.all;


entity generic_decoder is 
	port ( ena : in STD_logic; 
	sel : in STd_logic_vector (2 downto 0);
	x : out STd_logic_vector (7 downto 0));
end generic_decoder;


architecture behaviour of generic_decoder is
begin
	process(ena, sel)
	variable temp1 : STD_logic_vector (x'HIGH downto 0);
	variable temp2 : Integer range 0 to x'HIGH;
	begin
		temp1 := (others => '1');
		temp2 := 0;		  
		if (ena = '1') then
			for i in sel'Range loop 
				if (sel(i) = '1') then
					temp2 := 2*temp2+1;
				else
					temp2 := 2*temp2;
				end if;
				end loop;
				temp1(temp2) := '0';
			end if;
			x <= temp1;
		end process;
	end behaviour;
	
		
		