-- Full Adder

Library ieee;
use ieee.std_logic_1164.all;

entity FullAdder32 is
	port(
		a,b:      in STD_LOGIC_vector(31 downto 0);   -- entradas
		c: in  std_logic;
		soma: out STD_LOGIC_vector(31 downto 0);  
		vaium,v : out STD_LOGIC
	);

end entity;

architecture arch_FullAdder of FullAdder32 is 

component FullAdder is
	port(
		a,b,c:      in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end component;



signal carries: STD_LOGIC_vector(31 downto 0);


begin
	a0: FullAdder port map(a=> a(0), b=> b(0), c => c, soma => soma(0), vaium => carries(0));
	addsloop: for i IN 1 to 31 generate
	  add1to31: FullAdder port map(a=> a(i), b=> b(i), c => carries(i-1), soma => soma(i), vaium => carries(i));
	end generate;

	vaium <= carries(31);
	
	v <=  ((not a(31)) and (not b(31)) and (soma(31)) ) or ( a(31) and b(31) and (not soma(31)) ); 
	
end architecture;