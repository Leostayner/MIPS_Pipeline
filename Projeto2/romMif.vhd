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
        clk: in std_logic;
        addr: in natural range 0 to 2**ADDR_WIDTH-1;
        q: out std_logic_vector (DATA_WIDTH-1 downto 0)
    );
end entity;

architecture initFileROM of romMif is

begin
    process(clk)
    begin
        if (RISING_EDGE(clk)) then
				case addr  is
					when 0 =>
						q <= "10001100000000100000000000000001";
					when 1 =>
						q <= "10001100000000010000000000000100";
					when 2 =>
						q <= "00000000001000100001100000100000";
					when 3 =>
						q <= "00000000001000100010000000100010";
					when 4 =>
						q <= "00000000001000100010100000100100";
					when 5 =>
						q <= "00000000001000100011000000100101";
					when 6 =>
						q <= "00000000010000010011100000101010";
					when 7 =>
						q <= "00010000011001000000000000000001";
					when 8 =>
						q <= "10001100000000010000000000000101";
					when 9 =>
						q <= "00001000000000000000000000001011";
					when 10 =>
						q <= "00000000001000100000100000100000";
					when 11 =>
						q <= "00001000000000000000000000001001";
					when others => 
						q <= "00000000000000000000000000000000";
				end case;

        end if;
    end process;
end architecture;