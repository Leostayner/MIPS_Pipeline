Library ieee;
use ieee.std_logic_1164.all;


entity or32 is
	port(
		input:      in STD_LOGIC_VECTOR(31 downto 0);
		output: out STD_LOGIC
	);
end entity;

architecture arch_or32 of or32 is 

signal carries:std_logic_vector(30 downto 0);

begin
carries(0) <= input(0) or input(1);
carries(1) <= carries(0) or input(2);
carries(2) <= carries(1) or input(3);
carries(3) <= carries(2) or input(4);
carries(4) <= carries(3) or input(5);
carries(5) <= carries(4) or input(6);
carries(6) <= carries(5) or input(7);
carries(7) <= carries(6) or input(8);
carries(8) <= carries(7) or input(9);
carries(9) <= carries(8) or input(10);
carries(10) <= carries(9) or input(11);
carries(11) <= carries(10) or input(12);
carries(12) <= carries(11) or input(13);
carries(13) <= carries(12) or input(14);
carries(14) <= carries(13) or input(15);
carries(15) <= carries(14) or input(16);
carries(16) <= carries(15) or input(17);
carries(17) <= carries(16) or input(18);
carries(18) <= carries(17) or input(19);
carries(19) <= carries(18) or input(20);
carries(20) <= carries(19) or input(21);
carries(21) <= carries(20) or input(22);
carries(22) <= carries(21) or input(23);
carries(23) <= carries(22) or input(24);
carries(24) <= carries(23) or input(25);
carries(25) <= carries(24) or input(26);
carries(26) <= carries(25) or input(27);
carries(27) <= carries(26) or input(28);
carries(28) <= carries(27) or input(29);
carries(29) <= carries(28) or input(30);
carries(30) <= carries(29) or input(31);

output <= carries(30);

end architecture;