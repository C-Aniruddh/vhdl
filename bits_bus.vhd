library ieee;
use ieee.std_logic_1164.all;

entity bit_bus is
	port(a, b, c, d, e, f : in std_logic; output : out std_logic_vector (5 downto 0));
end bit_bus;

architecture a of bit_bus is
begin
	process
	begin
		output(5) <= a;
		output(4) <= b;
		output(3) <= c;
		output(2) <= d;
		output(1) <= e;
		output(0) <= f;
	end process;
end a;

