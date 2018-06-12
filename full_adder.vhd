entity fulladder is
	port (X, Y, Z : in bit;
	S, Ca : out bit);
end fulladder;

architecture behaviour of fulladder is
begin			  
	fa : process(X, Y, Z)
	begin
		if X & Y & Z = "000" then
			S <= '0';
			Ca <= '0';
		elsif X & Y & Z = "001" then
			S <= '1';
			Ca <= '0';
		elsif X & Y & Z = "010" then
			S <= '1';
			Ca <= '0';
		elsif X & Y & Z = "011" then
			S <= '0';
			Ca <= '1';
		elsif X & Y & Z = "100" then
			S <= '1';
			Ca <= '0';
		elsif X & Y & Z = "101" then
			S <= '0';
			Ca <= '1';
		elsif X & Y & Z = "110" then
			S <= '0';
			Ca <= '1';
		elsif X & Y & Z = "111" then
			S <= '1';
			Ca <= '1';
		end if;
		end process;
		
end behaviour;
