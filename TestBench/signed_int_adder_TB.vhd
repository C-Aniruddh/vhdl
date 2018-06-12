
	-- Add your library and packages declaration here ...

entity signed_int_adder_tb is
end signed_int_adder_tb;

architecture TB_ARCHITECTURE of signed_int_adder_tb is
	-- Component declaration of the tested unit
	component signed_int_adder
	port(
		A : in INTEGER;
		B : in INTEGER;
		S : out INTEGER );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal A : INTEGER;
	signal B : INTEGER;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal S : INTEGER;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : signed_int_adder
		port map (
			A => A,
			B => B,
			S => S
		);

	-- Add your stimulus here ...
	stimuli_process : process
	begin
		for i in 0 to 10 loop
			for j in 0 to 10 loop
				A <= i;
				B <= j;	
				wait for 100 ns;
			end loop;
		end loop;
		end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_signed_int_adder of signed_int_adder_tb is
	for TB_ARCHITECTURE
		for UUT : signed_int_adder
			use entity work.signed_int_adder(behaviour);
		end for;
	end for;
end TESTBENCH_FOR_signed_int_adder;

