library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FluxoDeDados is
  
  generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5
    );
	 
	port
	(
		clk       	: in std_logic;
		sel_MuxPC 	: in std_logic;
		sel_MuxRtRd : in std_logic;
		hab_Escrita : in std_logic;
	);
	 
end entity;

architecture arch of FluxoDeDados is

----------Sinais------------

--Rom--
signal out_Rom  : std_logic_vector(31 downto 0);

--Registrador--
signal out_PC : std_logic_vector(31 downto 0);


--Mux--
signal out_MuxPC 			 : std_logic_vector(31 downto 0);
signal out_MuxRtRd : std_logic_vector(31 downto 0);

--BankRegister--
signal out_BankRA : std_logic_vector(31 downto 0);
signal out_BankRB : std_logic_vector(31 downto 0);
	
begin

	MuxPC :  entity work.mux2way
		Port map(i1 => , i2=> , sel => sel_MuxPC, selected => out_MuxPC);
	
	PC : entity work.Registrador
		Port map (DIN => out_MuxPC, DOUT => out_PC, ENABLE => "11111" ,CLK => clk, RST => '0');
	
	Rom : entity work.romMif
		Port map (clk => clk, addr => out_PC, q => out_Rom);
		
	MuxRtRd : entity work.mux2way
		Port map(i1 => out_Rom(20 downto 16), i2=> out_Rom(15 downto 11), sel => sel_MuxRtRd, selected => out_MuxRtRd);
	
	BankRegister: entity work.bancoRegistradores
		Port map(clk => clk, enderecoA => out_Rom(25 downto 21), enderecoB => out_Rom(20 downto 16), enderecoC => out_MuxRtRd,
					dadoEscritaC => , escreveC => hab_Escrita, saidaA => out_BankRA, saidaB => out_BankRB);
	--NEXT
	Ext: entity work.extend16to32
		port map()
	
	MuxRtRd : entity work.mux2way
		Port map(i1 => out_BankRA , i2=> , sel => , selected => );
	
	
	
end architecture;