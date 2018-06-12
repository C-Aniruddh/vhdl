library ieee;
use ieee.std_logic_1164.all;

entity saregister is		   		 						   
	port (in_clk, comp_in, rst_in : in std_logic; signal a : in std_logic := '1'; 
	output_vector : out std_logic_vector (11 downto 0) ; end_c : out std_logic);
end saregister;

architecture state_machine of saregister is
    signal out_temp : std_logic_vector (11 downto 0);  
    type state is (state0, state1, state2, state3, state4, state5, state6, state7, state8, state9, state10, state11, state12);
	signal nx_state, pr_state : state;
	
	begin  
    process					  				 
        variable clk_count :  integer;
        variable temp_out : std_logic_vector(11 downto 0);
        variable set : std_logic_vector (11 downto 0) := "011111111111";
        begin
            wait until in_clk = '1'; 
			if rst_in = '1' then
				-- reset condition	 
                  nx_state <= state0;
                  temp_out := "011111111111";	   
                  clk_count := 0; 
                  end_c <= '0';
               else	
               case pr_state is
                  when state0 =>
				       temp_out(10) := '1'; 
					   temp_out(11) := not a;
                       nx_state <= state1;
                  when state1 =>
					   temp_out(9) := '1'; 
					   temp_out(10) := not a;
                       nx_state <= state2;
                  when state2 =>
					   temp_out(8) := '1';
				  	   temp_out(9) := not a;
                       nx_state <= state3;
                  when state3 =>	   			   
				       temp_out(7) := '1';
					   temp_out(8) := not a;
                       nx_state <= state4;
                  when state4 =>			   
				       temp_out(6) := '1';
					   nx_state <= state5;
				  	   temp_out(7) := not a;
                  when state5 =>			   
				       temp_out(5) := '1';
					   temp_out(6) := not a;
                       nx_state <= state6;
                  when state6 =>	 			   
				       temp_out(4) := '1';
					   temp_out(5) := not a;
                       nx_state <= state7;
                  when state7 =>   
				       temp_out(3) := '1';
					   temp_out(4) := not a;
                       nx_state <= state8;
                  when state8 =>			   
				       temp_out(2) := '1';
					   temp_out(3) := not a;
                       nx_state <= state9;
                  when state9 =>			   
				       temp_out(1) := '1';
					   temp_out(2) := not a;
                       nx_state <= state10;
                  when state10 =>			   
				       temp_out(0) := '1';
					   temp_out(1) := not a;
                       nx_state <= state11;
				  when state11 =>
				  	   temp_out(0) := not a;
				  	   nx_state <= state12;
                  when state12 =>
                       end_c <= '1';  
                       nx_state <= state0;
               end case;
               end if;		 
			   
        pr_state <= nx_state;
        out_temp <= temp_out;
    end process;
    output_vector <= out_temp;

end state_machine;
				
					
			
				