library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC        : in std_logic := '0';
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0);

		  outR0 : out std_logic_vector(31 downto 0);
		  outR1 : out std_logic_vector(31 downto 0);
		  outR2 : out std_logic_vector(31 downto 0);
		  outR3 : out std_logic_vector(31 downto 0);
		  outR4 : out std_logic_vector(31 downto 0);
		  outR5 : out std_logic_vector(31 downto 0);
		  outR6 : out std_logic_vector(31 downto 0);
		  outR7 : out std_logic_vector(31 downto 0)  

		  
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

-- So para teste:  ====================================================================

--  function inicializa_regs
--      return memoria_t is
--      variable tmp : memoria_t := (others => (others => '0'));
--  begin
--      tmp(0) := (others => '0');    -- $zero
--      return tmp;
--  end inicializa_regs;
    -- ===================================================================================

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;
--  shared variable registrador : memoria_t := inicializa_regs;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(enderecoA)));
         end if;
         if (unsigned(enderecoB) = 0) then
            saidaB <= (others => '0');
         else
            saidaB <= registrador(to_integer(unsigned(enderecoB)));
        end if;
		  
 		   outR0 <= registrador(0);
			outR1 <= registrador(1);
			outR2 <= registrador(2);
			outR3 <= registrador(3);
			outR4 <= registrador(4);
			outR5 <= registrador(5);	
			outR6 <= registrador(6);
		   outR7 <= registrador(7);
		  
     end process;
end architecture;