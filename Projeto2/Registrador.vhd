library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 entity Registrador is
    generic (
        larguraDados : natural := 32
    );
      port (
		
			  --INPUT
			  DIN     : in    std_logic_vector(larguraDados-1 downto 0);
           ENABLE  : in  std_logic;
			  CLK,RST : in std_logic;
			  
			  --OUTPUT
			  DOUT : out   std_logic_vector(larguraDados-1 downto 0)
           
           );
 end entity;

 architecture comportamento of Registrador is
 begin
 
    process(RST, CLK)
 
		begin
        if (RST = '1') then
            DOUT <= (others => '0');
        else
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= DIN;
                end if;
            end if;
        end if;
    end process;
 end architecture;