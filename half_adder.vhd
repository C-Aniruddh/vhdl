entity halfadder2 is
port(a, b : in bit;
   s, c : out bit);
end halfadder2;

architecture behavioral of halfadder2 is
begin

p1: process(a,b)
begin

if a & b = "00" then
s <= '0';
c <= '0';
elsif a & b = "01" or a & b = "10" then
s <= '1';
c <= '0';
else
s <= '0';
c <= '1';
end if;

end process;

end behavioral;
