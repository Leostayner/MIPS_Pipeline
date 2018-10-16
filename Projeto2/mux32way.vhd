library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mux32way is
	 Port ( 
	 i0, i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31: in std_logic_vector(31 downto 0);
	 sel: in std_logic_vector(4 downto 0);
	 selected : out std_logic_vector(31 downto 0));
end mux32way;
 
architecture mux_arch of mux32way is
begin
	process (all) begin
		if sel = "00000" then
			selected <= i0;
		elsif sel = "00001" then
			selected <= i1;
		elsif sel = "00010" then
			selected <= i2;
		elsif sel = "00011" then
			selected <= i3;
		elsif sel = "00100" then
			selected <= i4;
		elsif sel = "00101" then
			selected <= i5;
		elsif sel = "00110" then
			selected <= i6;
		elsif sel = "00111" then
			selected <= i7;
		elsif sel = "01000" then
			selected <= i8;
		elsif sel = "01001" then
			selected <= i9;
		elsif sel = "01010" then
			selected <= i10;
		elsif sel = "01011" then
			selected <= i11;
		elsif sel = "01100" then
			selected <= i12;
		elsif sel = "01101" then
			selected <= i13;
		elsif sel = "01110" then
			selected <= i14;
		elsif sel = "01111" then
			selected <= i15;
		elsif sel = "10000" then
			selected <= i16;
		elsif sel = "10001" then
			selected <= i17;
		elsif sel = "10010" then
			selected <= i18;
		elsif sel = "10011" then
			selected <= i19;
		elsif sel = "10100" then
			selected <= i20;
		elsif sel = "10101" then
			selected <= i21;
		elsif sel = "10110" then
			selected <= i22;
		elsif sel = "10111" then
			selected <= i23;
		elsif sel = "11000" then
			selected <= i24;
		elsif sel = "11001" then
			selected <= i25;
		elsif sel = "11010" then
			selected <= i26;
		elsif sel = "11011" then
			selected <= i27;
		elsif sel = "11100" then
			selected <= i28;
		elsif sel = "11101" then
			selected <= i29;
		elsif sel = "11110" then
			selected <= i30;
		else
			selected <= i31;
		end if;
	end process;

end architecture;