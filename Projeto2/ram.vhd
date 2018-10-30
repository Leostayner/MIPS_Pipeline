-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;

entity ram is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 5
	);

	port 
	(
		clk		: in std_logic;
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		canRead	: in std_logic;
		canWrite: in std_logic;
		q	: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of ram is

type memory_t is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
signal ram: memory_t;
attribute ram_init_file : string;
attribute ram_init_file of ram:
signal is "initRAM.mif";

	-- Register to hold the address 
signal addr_reg : natural range 0 to 2**ADDR_WIDTH-1;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if((canWrite = '1')) then
			ram(addr) <= data;
		end if;
		
		if((canRead = '1')) then
			addr_reg <= addr;
		end if;
	end if;
	end process;

	q <= ram(addr_reg);

end rtl;