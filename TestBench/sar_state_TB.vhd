library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity sar_state_tb is
end sar_state_tb;

architecture TB_ARCHITECTURE of sar_state_tb is
	-- Component declaration of the tested unit
	component sar_state
	port(
		in_clk : in STD_LOGIC;
		rst_n : in STD_LOGIC;
		start : in STD_LOGIC;
		comp_in : in STD_LOGIC;
		data_out : out STD_LOGIC_VECTOR(7 downto 0);
		D_out : out STD_LOGIC_VECTOR(7 downto 0);
		B_hold : out STD_LOGIC_VECTOR(7 downto 0);
		sample : out STD_LOGIC;
		hold : out STD_LOGIC;
		eoc : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal in_clk : STD_LOGIC;
	signal rst_n : STD_LOGIC;
	signal start : STD_LOGIC;
	signal comp_in : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal data_out : STD_LOGIC_VECTOR(7 downto 0);
	signal D_out : STD_LOGIC_VECTOR(7 downto 0);
	signal B_hold : STD_LOGIC_VECTOR(7 downto 0);
	signal sample : STD_LOGIC;
	signal hold : STD_LOGIC;
	signal eoc : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : sar_state
		port map (
			in_clk => in_clk,
			rst_n => rst_n,
			start => start,
			comp_in => comp_in,
			data_out => data_out,
			D_out => D_out,
			B_hold => B_hold,
			sample => sample,
			hold => hold,
			eoc => eoc
		);

	-- Add your stimulus here ... 
	process
	begin
		start <= '1';
		wait;
	end process;
	
	process
	begin
		comp_in <= '0';
		wait;--for 50ns;
		--comp_in <= '0';
		--wait for 50ns;
	end process;
	
	process
	begin
		rst_n <= '1';
		wait for 30ns;
		rst_n <= '0';
		wait for 30ns;
		rst_n <= '1';
		wait;
	end process;
	
	
	process
	begin
		in_clk <= '0';
		wait for 20ns;
		in_clk <= '1';
		wait for 20ns;
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_sar_state of sar_state_tb is
	for TB_ARCHITECTURE
		for UUT : sar_state
			use entity work.sar_state(state_machine);
		end for;
	end for;
end TESTBENCH_FOR_sar_state;

