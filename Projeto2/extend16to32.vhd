Library ieee;
use ieee.std_logic_1164.all;


entity extend16to32 is
	port(
		--INPUT
		input:  in STD_LOGIC_VECTOR(15 downto 0);
		
		--OUTPUT
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity;

architecture arch_or32 of extend16to32 is 

--SIGNAL
signal lastbit:std_logic;

begin

	lastbit <= input(15);
	output <= lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & lastbit & input;

end architecture;