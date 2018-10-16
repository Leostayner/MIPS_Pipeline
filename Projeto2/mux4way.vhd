library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mux4way is
	 Port ( 
	 i1 : in std_logic_vector(31 downto 0);
	 i2 : in std_logic_vector(31 downto 0);
	 i3 : in std_logic_vector(31 downto 0);
	 i4 : in std_logic_vector(31 downto 0);
	 sel : in std_logic_vector(1 downto 0);
	 selected : out std_logic_vector(31 downto 0));
end mux4way;
 
architecture mux_arch of mux4way is
begin
	process (i1,i2,i3,i4,sel) begin
		if sel = "00" then
			selected <= i1;
		elsif sel = "01" then
			selected <= i2;
		elsif sel = "10" then
			selected <= i3;
		else
			selected <= i4;
		end if;
	end process;

end architecture;