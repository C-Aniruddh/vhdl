
	-- Add your library and packages declaration here ...

entity fulladder_tb is
end fulladder_tb;

architecture TB_ARCHITECTURE of fulladder_tb is
	-- Component declaration of the tested unit
	component fulladder
	port(
		X : in BIT;
		Y : in BIT;
		Z : in BIT;
		S : out BIT;
		Ca : out BIT );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal X : BIT;
	signal Y : BIT;
	signal Z : BIT;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal S : BIT;
	signal Ca : BIT;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : fulladder
		port map (
			X => X,
			Y => Y,
			Z => Z,
			S => S,
			Ca => Ca
		);

	-- Add your stimulus here ...
	stimuli_process : process
	begin
		X <= '0';
		Y <= '0';
		Z <= '0';
		wait for 100 ns;
		X <= '0';
		Y <= '0';
		Z <= '1';
		wait for 100 ns;
		X <= '0';
		Y <= '1';
		Z <= '0';
		wait for 100 ns;
		X <= '0';
		Y <= '1';
		Z <= '1';
		wait for 100 ns;
		X <= '1';
		Y <= '0';
		Z <= '0';
		wait for 100 ns;
		X <= '1';
		Y <= '0';
		Z <= '1';
		wait for 100 ns;
		X <= '1';
		Y <= '1';
		Z <= '0';
		wait for 100 ns;
		X <= '1';
		Y <= '1';
		Z <= '1';
		wait for 100 ns;
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_fulladder of fulladder_tb is
	for TB_ARCHITECTURE
		for UUT : fulladder
			use entity work.fulladder(behaviour);
		end for;
	end for;
end TESTBENCH_FOR_fulladder;

