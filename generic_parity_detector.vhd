library ieee;
USE ieee.std_logic_1164.all;


entity parity_detector is
	port (input_vector : in std_logic_vector (7 downto 0);
	output : out bit);
end parity_detector;

architecture behaviour of parity_detector is
begin			  
	count_p : process (input_vector)  
	variable count : integer := 0;
	begin			   
		for i in input_vector'Range loop
			if input_vector(i) = '1' then
				count := count +1;
			end if;
		end loop;
		if count mod 2 = 0 then
			output <= '1';
		else
			output <= '0';
		end if;
		end process;
	end behaviour;
	