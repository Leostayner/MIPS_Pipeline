library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity dmux32way is
	 Port ( 
	 
		 --INPUT
		 sel   : in std_logic_vector(4 downto 0);
		 input : in std_logic_vector(31 downto 0);
		 
		 --OUTPUT
		 o0, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31: out std_logic_vector(31 downto 0) 
	 );	 
end dmux32way;

 
architecture dmux_arch of dmux32way is
begin
	process (all) begin
		
		case sel  is
	
			when "00000" =>
				o0  <=  input ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			
			when  "00001"  =>
				o0  <=  (others=>'X') ;
				o1  <=  input ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X');
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			
			when "00010" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  input ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "00011" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  input ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "00100" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  input ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "00101" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  input ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "00110" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  input ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "00111" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  input ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01000" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  input ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01001" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  input ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01010" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  input ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01011" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  input ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01100" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  input ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01101" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  input ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01110" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  input ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "01111" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  input ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X');
				o31 <=  (others=>'X') ;
			
			when "10000" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  input ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10001" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  input ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10010" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  input ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10011" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  input ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10100" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  input ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10101" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  input ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10110" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  input ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "10111" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  input ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "11000" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  input ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "11001" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  input ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "11010" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  input ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "11011" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  input ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X');
				o31 <=  (others=>'X') ;
			
			when "11100" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  input ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X');
				o31 <=  (others=>'X') ;
			
			when "11101" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  input ;
				o30 <=  (others=>'X') ;
				o31 <=  (others=>'X') ;
			
			when "11110" =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  input;
				o31 <=  (others=>'X') ;
			
			when others =>
				o0  <=  (others=>'X') ;
				o1  <=  (others=>'X') ;
				o2  <=  (others=>'X') ;
				o3  <=  (others=>'X') ;
				o4  <=  (others=>'X') ;
				o5  <=  (others=>'X') ;
				o6  <=  (others=>'X') ;
				o7  <=  (others=>'X') ;
				o8  <=  (others=>'X') ;
				o9  <=  (others=>'X') ;
				o10 <=  (others=>'X') ;
				o11 <=  (others=>'X') ;
				o12 <=  (others=>'X') ;
				o13 <=  (others=>'X') ;
				o14 <=  (others=>'X') ;
				o15 <=  (others=>'X') ;
				o16 <=  (others=>'X') ;
				o17 <=  (others=>'X') ;
				o18 <=  (others=>'X') ;
				o19 <=  (others=>'X') ;
				o20 <=  (others=>'X') ;
				o21 <=  (others=>'X') ;
				o22 <=  (others=>'X') ;
				o23 <=  (others=>'X') ;
				o24 <=  (others=>'X') ;
				o25 <=  (others=>'X') ;
				o26 <=  (others=>'X') ;
				o27 <=  (others=>'X') ;
				o28 <=  (others=>'X') ;
				o29 <=  (others=>'X') ;
				o30 <=  (others=>'X') ;
				o31 <=  input;						
		end case;
		
	end process;

end architecture;