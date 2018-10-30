library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity romMif is

    generic
    (
        DATA_WIDTH : natural := 32;
        ADDR_WIDTH : natural := 16
    );

    port (
		  clk : in std_logic;
        addr: in natural range 0 to 2**ADDR_WIDTH-1 := 0;
        q: out std_logic_vector (DATA_WIDTH-1 downto 0)
    );
end entity;

architecture initFileROM of romMif is

type memory_t is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
signal content: memory_t;
attribute ram_init_file : string;
attribute ram_init_file of content:
signal is "initROM.mif";

begin
       q <= content(addr);
	 
end architecture;