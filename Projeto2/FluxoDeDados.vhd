library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FluxoDeDados is
  	 
	port
	(
		clk       	: in std_logic;
		sel_MuxPC 	: in std_logic;
		sel_MuxRtRd : in std_logic;
		sel_MuxSaidaBankReg: in std_logic;
		sel_MuxRegRam: in std_logic;
		hab_Escrita : in std_logic;
		habLeituraMem: in std_logic;
		habEscritaMem: in std_logic;
		BEQ: in std_logic;
		ULAop: in std_logic_vector(1 downto 0);
		opcode: out std_logic_vector(5 downto 0);
		
	
			  ---------Teste Wave Froms----------------
	  outR1 : out std_logic_vector(31 downto 0);
	  outR2 : out std_logic_vector(31 downto 0);
	  outR3 : out std_logic_vector(31 downto 0);
	  outR4 : out std_logic_vector(31 downto 0);
	  outR5 : out std_logic_vector(31 downto 0);
	  outR6 : out std_logic_vector(31 downto 0);
	  outR7 : out std_logic_vector(31 downto 0);
	  pcDebug: out std_logic_vector(31 downto 0);
	  testAluA : out STD_LOGIC_vector(31 downto 0);
	  testAluB : out STD_LOGIC_vector(31 downto 0);
	  testeAluRes: out STD_LOGIC_vector(31 downto 0)
	  ------------------------------------------
	);
	 
end entity;

architecture arch of FluxoDeDados is

----------Sinais------------

--Rom--
signal out_Rom  : std_logic_vector(31 downto 0);

--Registrador--
signal out_PC : std_logic_vector(31 downto 0);

--generals
signal extendedImmediate : std_logic_vector(31 downto 0);
signal beqAnd: std_logic;
signal pcAddOut: std_logic_vector(31 downto 0);
signal pcImmeAddOut: std_logic_vector(31 downto 0);
signal shiftedImme: std_logic_vector(25 downto 0);
signal pcorjump: std_logic_vector(31 downto 0);
signal extendedImmediateShifted : std_logic_vector(31 downto 0);

--ula
signal UCAluOut: std_logic_vector(3 downto 0);
signal AluOut: std_logic_vector(31 downto 0);
signal aluFlag: std_logic;



--Mux--
signal out_MuxPC : std_logic_vector(31 downto 0);
signal out_MuxBeq : std_logic_vector(31 downto 0);
signal out_MuxRtRd : std_logic_vector(4 downto 0);
signal out_MuxBankRegister: std_logic_vector(31 downto 0);
signal out_MuxRegRam: std_logic_vector(31 downto 0);

--BankRegister--
signal out_BankRA : std_logic_vector(31 downto 0);
signal out_BankRB : std_logic_vector(31 downto 0);

--ram
signal ram_out : std_logic_vector(31 downto 0);
	
begin

	pcDebug <= out_PC;
	
	opcode <= out_Rom(31 downto 26);

	extendedImmediateShifted <= extendedImmediate(29 downto 0) & "00";

	beqAnd <= aluFlag and BEQ;
		
	shiftedImme <= out_Rom(23 downto 0) & "00";
	
	pcorjump <= pcAddOut(31 downto 28) & shiftedImme & "00";

	MuxPC :  entity work.mux2way
		port map(i1 => out_MuxBeq , i2 => pcorjump , sel => sel_MuxPC, selected => out_MuxPC);
	
	PC : entity work.Registrador 
		port map (DIN => out_MuxPC, DOUT => out_PC, ENABLE => "11111" ,CLK => clk, RST => '0');
		
	adder: entity work.FullAdder32
		port map (a => "00000000000000000000000000000001",b => out_PC, c => '0', soma => pcAddOut);
	
	Rom : entity work.romMif
		port map (addr => to_integer(unsigned(out_PC)), q => out_Rom);
		
	MuxRtRd : entity work.mux2way generic map (dataLength => 5)
		port map(i1 => out_Rom(20 downto 16), i2 => out_Rom(15 downto 11), sel => sel_MuxRtRd, selected => out_MuxRtRd);
	
	BankRegister: entity work.bancoRegistradores
		port map(clk => clk, enderecoA => out_Rom(25 downto 21), enderecoB => out_Rom(20 downto 16), enderecoC => out_MuxRtRd,
					dadoEscritaC => out_MuxRegRam, escreveC => hab_Escrita, saidaA => out_BankRA, saidaB => out_BankRB,  outR1 => outR1,
		  outR2 => outR2,
		  outR3 => outR3,
		  outR4 => outR4,
		  outR5 => outR5,
		  outR6 => outR6, 
		  outR7 => outR7);

	Ext: entity work.extend16to32
		port map(input => out_Rom(15 downto 0), output => extendedImmediate );
	
	MuxSaidaBankRegister : entity work.mux2way
		port map(i1 => out_BankRB , i2=> extendedImmediate, sel => sel_MuxSaidaBankReg, selected => out_MuxBankRegister);
		 
		  ------------------------------------------
		
	UCalu: entity work.UCAlu
		port map(funct => out_Rom(5 downto 0), CUfd => ULAop, output => UCAluOut );
		
	--checar qm controla o invA invB e o Cin	
	ALU: entity work.alu
		port map(A =>out_BankRA, B=>out_MuxBankRegister, cin => UCAluOut(2), invA => UCAluOut(3), invB => UCAluOut(2), func => UCAluOut(1 downto 0), output => AluOut, zero => aluFlag);
	
  testAluA <= out_BankRA;
  testAluB <= out_MuxBankRegister;
  testeAluRes <= AluOut;
	
	MuxRegRam: entity work.mux2way
		port map(i1 => AluOut, i2=> ram_out, sel => sel_MuxRegRam, selected => out_MuxRegRam);
		
	Ram: entity work.ram
		port map(clk => clk,addr => to_integer(unsigned(AluOut)), data => out_BankRB , canRead => habLeituraMem ,canWrite => habEscritaMem ,q =>ram_out);
		
	adder2: entity work.FullAdder32
		port map (a => pcAddOut,b => extendedImmediateShifted, c => '0', soma => pcImmeAddOut);
		
	MuxBeq : entity work.mux2way
		port map(i1 => pcAddOut, i2 => pcImmeAddOut, sel => beqAnd, selected => out_MuxBeq);
		
end architecture;