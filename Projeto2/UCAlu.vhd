library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity UCAlu is
	 Port ( 
	 
	 --INPUT
	 funct : in std_logic_vector(5 downto 0);
	 CUfd  : in std_logic_vector(1 downto 0);
	 
	 --OUTPUT
	 output: out std_logic_vector(3 downto 0)
	 
	 );
end UCAlu;
 
architecture mux_arch of UCAlu is

begin
	process (all) begin
		
		if(CUfd = "00") then
			output <= "0010";
	
   	elsif(Cufd = "01") then
			output <= "0110";
	
   	else
			
			if(funct = "100000") then
				output <= "0010";
			
			elsif(funct = "100010") then
				output <= "0110";
			
			elsif(funct = "100100") then
				output <= "0000";
			
			elsif(funct = "100101") then
				output <= "0001";
			
			elsif(funct = "101010") then
				output <= "0111";
			else
				output <= (others =>'0');
	
			end if;
		end if;	
	end process;		
end architecture;