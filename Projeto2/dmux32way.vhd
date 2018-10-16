library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity dmux32way is
	 Port ( 
	 sel: in std_logic_vector(4 downto 0);
	 input : in std_logic_vector(31 downto 0);
	 o0, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31: out std_logic_vector(31 downto 0) 
	 );	 
end dmux32way;
 
architecture dmux_arch of dmux32way is
begin
	process (all) begin
		if sel = "00000" then
			o0 <= input;
		elsif sel = "00001" then
			o1 <= input;
		elsif sel = "00010" then
			o2 <= input;
		elsif sel = "00011" then
			o3 <= input;
		elsif sel = "00100" then
			o4 <= input;
		elsif sel = "00101" then
			o5 <= input;
		elsif sel = "00110" then
			o6 <= input;
		elsif sel = "00111" then
			o7 <= input;
		elsif sel = "01000" then
			o8 <= input;
		elsif sel = "01001" then
			o9 <= input;
		elsif sel = "01010" then
			o10 <= input;
		elsif sel = "01011" then
			o11 <= input;
		elsif sel = "01100" then
			o12 <= input;
		elsif sel = "01101" then
			o13 <= input;
		elsif sel = "01110" then
			o14 <= input;
		elsif sel = "01111" then
			o15 <= input;
		elsif sel = "10000" then
			o16 <= input;
		elsif sel = "10001" then
			o17 <= input;
		elsif sel = "10010" then
			o18 <= input;
		elsif sel = "10011" then
			o19 <= input;
		elsif sel = "10100" then
			o20 <= input;
		elsif sel = "10101" then
			o21 <= input;
		elsif sel = "10110" then
			o22 <= input;
		elsif sel = "10111" then
			o23 <= input;
		elsif sel = "11000" then
			o24 <= input;
		elsif sel = "11001" then
			o25 <= input;
		elsif sel = "11010" then
			o26 <= input;
		elsif sel = "11011" then
			o27 <= input;
		elsif sel = "11100" then
			o28 <= input;
		elsif sel = "11101" then
			o29 <= input;
		elsif sel = "11110" then
			o30 <= input;
		else
			o31 <= input;
		end if;
	end process;

end architecture;