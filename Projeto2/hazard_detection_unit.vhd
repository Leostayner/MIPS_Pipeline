library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity hazard_detection_unit is
	 Port ( 
		ID_EXMemRead: in std_logic_Vector(4 downto 0);
		ID_EXRegisterRt: in std_logic_vector(4 downto 0);
		IF_IDRegisterRs: in std_logic_vector(4 downto 0);
		PC_Enable: out std_logic;
		IF_ID_Enable: out std_logic;
		ID_EX_Enable: out std_logic	
	 );
	 
	 
end hazard_detection_unit;
 
architecture arch of hazard_detection_unit is
begin
	process(all) begin
		if (ID_EXMemRead and ((ID_EXRegisterRt = IF_IDRegisterRs) or (ID_EXRegisterRt = IF_IDRegisterRt))) then
			PC_Enble <= '0';
			IF_ID_Enable <= '0';
			ID_EX_Enable <= '0';
		else
			PC_Enble <= '1';
			IF_ID_Enable <= '1';
			ID_EX_Enable <= '1';
		end if;
	end process;
end architecture;