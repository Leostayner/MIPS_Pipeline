library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Computador_tb is
end entity;

ARCHITECTURE rtl OF Computador_tb IS

  component mips is 	 Port ( 
		--KEY: in std_logic_vector(3 downto 0);
		
		-----------Teste Clock--------
		clk: in std_logic;
		------------------------------
		
	  ---------Teste Wave Froms----------------
	   otR1 : out std_logic_vector(31 downto 0);
	   otR2 : out std_logic_vector(31 downto 0);
	   otR3 : out std_logic_vector(31 downto 0);
	   otR4 : out std_logic_vector(31 downto 0);
	   otR5 : out std_logic_vector(31 downto 0);
	   otR6 : out std_logic_vector(31 downto 0);
	   otR7 : out std_logic_vector(31 downto 0)  
	   ------------------------------------------

		
		
	 );
  end component;

  signal reset_n : std_logic := '0';
  signal clock_fast   : std_logic := '0';

begin

  clock_fast <= not clock_fast after 1 ns;

  process
  begin
    reset_n <= '0';
    wait for 1 ns;
    reset_n <= '1';
    wait;
  end process;

  c1 : mips port map (
		clk    => clock_fast,
		otR1 => open,
		otR2 => open,
		otR3 => open,
		otR4 => open,
		otR5 => open,
		otR6 => open,
		otR7 => open 
    );

end  architecture;