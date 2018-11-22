library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FluxoDeDados is
  	 
	port
	(
		--INPUT
		clk       	: in std_logic;
		reset       : in std_logic;
		
		sel_MuxPC 	        : in std_logic;
		sel_MuxRtRd         : in std_logic;
		sel_MuxSaidaBankReg : in std_logic;
		sel_MuxRegRam       : in std_logic;
		
		hab_Escrita   : in std_logic;
		habLeituraMem : in std_logic;
		habEscritaMem : in std_logic;	
		
		BEQ   : in std_logic;
		ULAop : in std_logic_vector(1 downto 0);
		
		opcode  : out std_logic_vector(5 downto 0);
	   out_Led : out std_logic;
		
	   --OUTPUT
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

architecture arch of FluxoDeDados is

----------------------------
----------Sinais------------
----------------------------

--Rom
signal out_Rom : std_logic_vector(31 downto 0);

--Registrador
signal out_PC  : std_logic_vector(31 downto 0);

--generals
signal extendedImmediate        : std_logic_vector(31 downto 0);
signal beqAnd                   : std_logic;
signal pcAddOut                 : std_logic_vector(31 downto 0);
signal pcImmeAddOut             : std_logic_vector(31 downto 0);
signal shiftedImme              : std_logic_vector(25 downto 0);
signal pcorjump                 : std_logic_vector(31 downto 0);
signal extendedImmediateShifted : std_logic_vector(31 downto 0);

--ula
signal UCAluOut : std_logic_vector(3 downto 0);
signal AluOut   : std_logic_vector(31 downto 0);
signal aluFlag  : std_logic;

--Mux
signal out_MuxPC           : std_logic_vector(31 downto 0);
signal out_MuxBeq          : std_logic_vector(31 downto 0);
signal out_MuxRtRd         : std_logic_vector(4 downto 0);
signal out_MuxBankRegister : std_logic_vector(31 downto 0);
signal out_MuxRegRam       : std_logic_vector(31 downto 0);

--BankRegister
signal out_BankRA : std_logic_vector(31 downto 0);
signal out_BankRB : std_logic_vector(31 downto 0);

--ram
signal ram_out : std_logic_vector(31 downto 0);
	
--Decoder
signal flag_decoder: std_logic_vector(1 downto 0);
signal led_b       : std_logic;


--Register PIPELINE
signal out_IF_ID  : std_logic_vector(63 downto 0);	
signal out_ID_EX  : std_logic_vector(146 downto 0);
signal out_EX_MEM : std_logic_vector(106 downto 0);
signal out_MEM_WB : std_logic_vector(70 downto 0);


signal wb   : std_logic_vector(1 downto 0);	
signal mtom : std_logic_vector(2 downto 0);	
signal ex   : std_logic_vector(3 downto 0);	

	
begin
	
	--SINAIS AUXILIARES
	opcode <= out_IF_ID(31 downto 26);

	beqAnd <= out_EX_MEM(104) and out_EX_MEM(69);
	extendedImmediateShifted <= out_ID_EX(39 downto 10) & "00";
	
	pcorjump <= pcAddOut(31 downto 28) & out_IF_ID(25 downto 0) & "00";

	--PORT MAP PC
	PC : entity work.Registrador 
		port map (DIN => out_MuxPC, DOUT => out_PC, ENABLE => '1' ,CLK => clk, RST => reset);
	
	outR0 <= out_PC;
	
	--PORT MAP ADDER
	adder: entity work.FullAdder32
		port map (a => "00000000000000000000000000000100",b => out_PC, c => '0', soma => pcAddOut);
	
	--PORT MAP ROM
	Rom : entity work.romMif
		port map (addr => to_integer(unsigned(out_PC(31 downto 2))), q => out_Rom, clk => clk);
		
	--PORT MAP MUX SELETOR ENTRE RT E RD	
	MuxRtRd : entity work.mux2way generic map (dataLength => 5)
		port map(i1 => out_ID_EX(9 downto 5), i2 => out_ID_EX(4 downto 0), sel => out_ID_EX(141), selected => out_MuxRtRd);
	
	--PORT MAP BANCO DE REGISTRADORES
	BankRegister: entity work.bancoRegistradores
		port map(clk => clk,reset => reset, enderecoA => out_IF_ID(25 downto 21), enderecoB => out_IF_ID(20 downto 16), enderecoC => out_MEM_WB(4 downto 0),
					dadoEscritaC => out_MuxRegRam, escreveC => out_MEM_WB(70), saidaA => out_BankRA, saidaB => out_BankRB, 
		  outR1 => outR1,
		  outR2 => outR2,
		  outR3 => outR3,
		  outR4 => outR4,
		  outR5 => outR5,
		  outR6 => outR6, 
		  outR7 => outR7);

   --PORT MAP EXTENSOR
	Ext: entity work.extend16to32
		port map(input => out_IF_ID(15 downto 0), output => extendedImmediate );
	
	--PORT MAP MUX SELETOR ENTRE SAIDA B DO BANCO DE REGISTRADOR E IMEDIATO
	MuxSaidaBankRegister : entity work.mux2way
		port map(i1 => out_ID_EX(73 downto 42) , i2=> out_ID_EX(41 downto 10), sel => out_ID_EX(138), selected => out_MuxBankRegister);
		 
	--PORT MAP UNIDADE DE CONTROLE ALU
	UCalu: entity work.UCAlu
		port map(funct => out_ID_EX(15 downto 10), CUfd => out_ID_EX(140 downto 139), output => UCAluOut );
		
	--PORT MAP ALU
	ALU: entity work.alu
		port map(A => out_ID_EX(105 downto 74), B=>out_MuxBankRegister, cin => UCAluOut(2), invA => UCAluOut(3), invB => UCAluOut(2), func => UCAluOut(1 downto 0), output => AluOut, zero => aluFlag);
		
	--PORT MAP MUX SELETOR ENTRE REGISTRADOR E RAM
	MuxRegRam: entity work.mux2way
		port map(i1 => out_MEM_WB(36 downto 5), i2=> out_MEM_WB(68 downto 37), sel => out_MEM_WB(69), selected => out_MuxRegRam);
		
	--PORT MAP RAM
	Ram: entity work.ram
		port map(clk => clk,addr => to_integer(unsigned(out_EX_MEM(68 downto 37))), data => out_EX_MEM(36 downto 5) , canRead => out_EX_MEM(103) and flag_decoder(0) ,canWrite => out_EX_MEM(102) and flag_decoder(0), q =>ram_out);
	
	--PORT MAP ADDER2
	adder2: entity work.FullAdder32
		port map (a => out_ID_EX(137 downto 106),b => extendedImmediateShifted, c => '0', soma => pcImmeAddOut);

	--PORT MAP DECODER
	Dec : entity work.Decoder
		port map(addr => to_integer(unsigned(out_EX_MEM(68 downto 37))), q => flag_decoder);
		
	--PORT MAP REGISTRADOR DO LED
	Led_Reg : entity work.Registrador generic map (larguraDados => 1)
		port map (DIN(0) => led_b, DOUT(0) => out_Led, ENABLE => flag_decoder(1), CLK => clk, RST => reset);
	
	--PORT MAP LED
	inLed   : entity work.or32
		port map( input => out_EX_MEM(36 downto 5), output => led_b);
		
	
	--Mux BEQ/JUMP/PC+4/NOP
	Mux_BJPN : entity work.mux4way
		port map(i1 => pcAddOut, i2=> out_EX_MEM(101 downto 70) , i3 => pcorjump, i4 => (others => '0') , sel => sel_MuxPC & (out_EX_MEM(104) and out_EX_MEM(69)), selected => out_MuxPC);
	
	
	
	--Registradores PIPELINE
	
	wb   <= hab_Escrita & sel_MuxRegRam;
	mtom <=  BEQ & habLeituraMem & habEscritaMem;
	ex   <= sel_MuxRtRd & ULAop & sel_MuxSaidaBankReg; 
	
	
	--PORT MAP REGISTRADOR IF/ID
	Reg_IF_ID : entity work.Registrador generic map (larguraDados => 64)
		port map (DIN => pcAddOut & out_Rom, DOUT => out_IF_ID, ENABLE => '1', CLK => clk, RST => reset);
	
	
	--PORT MAP REGISTRADOR ID/EX
	Reg_ID_EX : entity work.Registrador generic map (larguraDados => 147)
		port map (DIN => wb & mtom & ex & out_IF_ID(63 downto 32) & out_BankRA & out_BankRB 
					 & extendedImmediate & out_IF_ID(20 downto 16) & out_IF_ID(15 downto 11), 
					 DOUT => out_ID_EX, ENABLE => '1', CLK => clk, RST => reset);
	
	
	--PORT MAP REGISTRADOR EX/MEM
	Reg_EX_MEM : entity work.Registrador generic map (larguraDados => 107)
		port map (DIN => out_ID_EX(146 downto 145) & out_ID_EX(144 downto 142) & pcImmeAddOut & aluFlag & AluOut & out_ID_EX(73 downto 42) & out_MuxRtRd, 
		DOUT => out_EX_MEM, ENABLE => '1', CLK => clk, RST => reset);
	
	
	--PORT MAP REGISTRADOR MEM/WB
	Reg_MEM_WB : entity work.Registrador generic map (larguraDados => 71)
		port map (DIN => out_EX_MEM(106 downto 105) & ram_out & out_EX_MEM(68 downto 37) & out_EX_MEM(4 downto 0) , 
					 DOUT => out_MEM_WB, ENABLE => '1', CLK => clk, RST => reset);
	
	
end architecture;