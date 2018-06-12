library ieee;
use ieee.std_logic_1164.all;

entity adc_sampler is
	port(data_in : in std_logic_vector (7 downto 0); sample_in : in std_logic; 
	data_out : out std_logic_vector (7 downto 0); data_obs : out std_logic_vector (7 downto 0));
end adc_sampler;

architecture sampler of adc_sampler is
begin
	process(sample_in)				  
	variable last_data : std_logic_vector (7 downto 0) := "00000000";
	begin
		if sample_in = '1' then
			data_out <= data_in;
			data_obs <= data_in;
			last_data := data_in;
		else
			data_out <= last_data;
			data_obs <= last_data;
		end if;
	end process;
end sampler;
		