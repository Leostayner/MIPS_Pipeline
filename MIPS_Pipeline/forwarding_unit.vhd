library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity forwarding_unit is
	 Port ( 
		EX_MEMRegWrite: in std_logic;
		MEM_WBRegWrite: in stD_logic;
		EX_MEMRegisterRd: in std_logic_vector(4 downto 0);
		ID_EXRegisterRs: in std_logic_vector(4 downto 0);
		MEM_WBRegisterRd: in std_logic_vector(4 downto 0);
		ID_EXRegisterRt: in std_logic_vector(4 downto 0);
		ForwardA: out std_logic_vector(1 downto 0);
		ForwardB: out std_logic_vector(1 downto 0)
	 );	 
end forwarding_unit;
 
architecture arch of forwarding_unit is	
begin
	process(all) begin
		if ((EX_MEMRegWrite = '1')  and (EX_MEMRegisterRd = ID_EXRegisterRs)) then
			ForwardA <= "10";
		elsif ((MEM_WBRegWrite = '1')  and not((EX_MEMRegWrite = '1')  and (EX_MEMRegisterRd /= ID_EXRegisterRs)) and (MEM_WBRegisterRd = ID_EXRegisterRs)) then
			ForwardA <= "01";
		else
			ForwardA <= "00";
		end if;
			
		if ((EX_MEMRegWrite = '1') and (EX_MEMRegisterRd = ID_EXRegisterRt)) then 
			ForwardB <= "10";
		elsif  ((MEM_WBRegWrite='1') and not((EX_MEMRegWrite = '1') and (EX_MEMRegisterRd /= ID_EXRegisterRt))and (MEM_WBRegisterRd = ID_EXRegisterRt)) then
			ForwardB <= "01";
		else
			ForwardB <= "00";
		end if;
		
	end process;
end architecture;