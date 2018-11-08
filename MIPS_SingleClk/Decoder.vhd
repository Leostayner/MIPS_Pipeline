library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 10
	);
	 
    port (
		  --INPUT
		  addr: in natural range 0 to 2**ADDR_WIDTH-1 := 0;
        
		  --OUTPUT
		  q: out std_logic_vector (1 downto 0)
    );
	 
	 
end entity;

architecture arch of Decoder is

begin
	process(all)
		begin
		
		--ACESSO A MEMORIA
		if (addr < 512) then
			q <= "01";
		
		--ACESSO AO LED
		else 
			q <= "10";
		
		end if;
		
	end process;
end architecture;