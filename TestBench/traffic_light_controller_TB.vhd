library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity traffic_light_controller_tb is
end traffic_light_controller_tb;

architecture TB_ARCHITECTURE of traffic_light_controller_tb is
	-- Component declaration of the tested unit
	component traffic_light_controller
	port(
		standby : in STD_LOGIC;
		test : in STD_LOGIC;
		in_clk : in STD_LOGIC;
		r1 : out STD_LOGIC;
		r2 : out STD_LOGIC;
		g1 : out STD_LOGIC;
		g2 : out STD_LOGIC;
		y1 : out STD_LOGIC;
		y2 : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal standby : STD_LOGIC;
	signal test : STD_LOGIC;
	signal in_clk : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal r1 : STD_LOGIC;
	signal r2 : STD_LOGIC;
	signal g1 : STD_LOGIC;
	signal g2 : STD_LOGIC;
	signal y1 : STD_LOGIC;
	signal y2 : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : traffic_light_controller
		port map (
			standby => standby,
			test => test,
			in_clk => in_clk,
			r1 => r1,
			r2 => r2,
			g1 => g1,
			g2 => g2,
			y1 => y1,
			y2 => y2
		);

	-- Add your stimulus here ... 
	test_signal : process
	begin		   
		test <= '0';
		wait;
	end process;
	
	standby_signal : process
	begin
		standby <= '1';
		wait;
	end process;
	
	clk_process : process
	begin
		in_clk <= '0';
		wait for 50 ns;
		in_clk <= '1';
		wait for 50 ns;
	end process;  
	
	report_process : process
	begin	   	 
		if standby = '1' then
			if y1 = '1' and y2 = '1' and r1 = '0' and r2 = '0' and g1 = '0' and g2 = '0' then
				report "Standby mode working correctly";
				wait for 200 ns;
			end if;
		end if;
	end process;
	
		

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_traffic_light_controller of traffic_light_controller_tb is
	for TB_ARCHITECTURE
		for UUT : traffic_light_controller
			use entity work.traffic_light_controller(finite_state_machine);
		end for;
	end for;
end TESTBENCH_FOR_traffic_light_controller;

