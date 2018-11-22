library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity UCFd is
	 Port ( 
	 
		 --INPUT
		 opcode : in std_logic_vector(5 downto 0);
		 
		 --OUTPUT
		 Mux1,Mux2,HabEscritaReg,Mux3,Mux4,BEQ,HabLeMEM,HabEscMEM: out std_logic;
		 ULAop: out std_logic_vector(1 downto 0));

end UCFd;
 
architecture mux_arch of UCFd is
begin
	process (all) begin
		if(opcode = "000000") then
			Mux1 <= '0';
			Mux2 <= '1';
			HabEscritaReg <= '1';
			Mux3 <= '0';
			Mux4 <= '0';
			BEQ <= '0';
			HabLeMEM <= '0';
			HabEscMEM <= '0';
			ULAop <= "10";
			
		elsif(opcode = "100011") then 
			Mux1 <= '0';
			Mux2 <= '0';
			HabEscritaReg <= '1';
			Mux3 <= '1';
			Mux4 <= '1';
			BEQ <= '0';
			HabLeMEM <= '1';
			HabEscMEM <= '0';
			ULAop <= "00";
		
		elsif(opcode = "101011") then 
			Mux1 <= '0';
			Mux2 <= '0';
			HabEscritaReg <= '0';
			Mux3 <= '1';
			Mux4 <= '0';
			BEQ <= '0';
			HabLeMEM <= '0';
			HabEscMEM <= '1';
			ULAop <= "00";
		
		elsif(opcode = "000100") then 
			Mux1 <= '0';
			Mux2 <= '0';
			HabEscritaReg <= '0';
			Mux3 <= '0';
			Mux4 <= '0';
			BEQ <= '1';
			HabLeMEM <= '0';
			HabEscMEM <= '0';
			ULAop <= "01";	
		
		elsif(opcode = "000010") then 
			Mux1 <= '1';
			Mux2 <= '0';
			HabEscritaReg <= '0';
			Mux3 <= '0';
			Mux4 <= '0';
			BEQ <= '0';
			HabLeMEM <= '0';
			HabEscMEM <= '0';
			ULAop <= "00";
		
		else
			Mux1 <= '0';
			Mux2 <= '0';
			HabEscritaReg <= '0';
			Mux3 <= '0';
			Mux4 <= '0';
			BEQ <= '0';
			HabLeMEM <= '0';
			HabEscMEM <= '0';
			ULAop <= "00";
			
		end if;
	end process;		
end architecture;