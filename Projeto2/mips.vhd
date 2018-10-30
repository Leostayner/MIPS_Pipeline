library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mips is
	 Port ( 
		--KEY: in std_logic_vector(3 downto 0);
		
		-----------Teste Clock--------
		clk: in std_logic;
		------------------------------
		
		
	/*
		HEX2 : out std_logic_vector(6 downto 0); 
		HEX3 : out std_logic_vector(6 downto 0); 
		HEX4 : out std_logic_vector(6 downto 0); 
		HEX5 : out std_logic_vector(6 downto 0); 
		HEX6 : out std_logic_vector(6 downto 0); 
		HEX7 : out std_logic_vector(6 downto 0); 
	*/
			  ---------Teste Wave Froms----------------
	   otR0 : out std_logic_vector(31 downto 0);
	   otR1 : out std_logic_vector(31 downto 0);
	   otR2 : out std_logic_vector(31 downto 0);
	   otR3 : out std_logic_vector(31 downto 0);
	   otR4 : out std_logic_vector(31 downto 0);
	   otR5 : out std_logic_vector(31 downto 0);
	   otR6 : out std_logic_vector(31 downto 0);
		otR7 : out std_logic_vector(31 downto 0);
		
		overflow : out STD_LOGIC;
		resultadoSoma: out std_logic_vector((32 -1) downto 0);
	   opcodeDebug: out std_logic_vector(5 downto 0);
	   Mux1Debug : out std_logic;
	   Mux2Debug : out std_logic;
	   HabEscritaRegDebug : out std_logic;
	   Mux3Debug : out std_logic;
	   Mux4Debug : out std_logic;
	   mux_beq : out std_logic;
	   
		BEQDebug: out std_logic;
		
		HabLeMEMDebug: out std_logic;
	   HabEscMEMDebug : out std_logic;
	   ULAopDebug: out std_logic_vector(1 downto 0);
	   out_PCTeste :  out std_logic_vector(31 downto 0);
	 
	   testAluA : out STD_LOGIC_vector(31 downto 0);
	   testAluB : out STD_LOGIC_vector(31 downto 0);
	   testeAluRes: out STD_LOGIC_vector(31 downto 0);
		testeOutRam : out STD_LOGIC_vector(31 downto 0)	
	   ------------------------------------------		
	 );
	 
end mips;
 
architecture mux_arch of mips is

signal	opcode : std_logic_vector(5 downto 0);
signal	Mux1,Mux2,HabEscritaReg,Mux3,Mux4,BEQ,HabLeMEM,HabEscMEM: std_logic;
signal	ULAop: std_logic_vector(1 downto 0);

signal outR0 :  std_logic_vector(31 downto 0);
signal outR1 :  std_logic_vector(31 downto 0);
signal outR2 :  std_logic_vector(31 downto 0);
signal outR3 :  std_logic_vector(31 downto 0);
signal outR4 :  std_logic_vector(31 downto 0);
signal outR5 :  std_logic_vector(31 downto 0);
signal outR6 :  std_logic_vector(31 downto 0);
signal outR7 :  std_logic_vector(31 downto 0);

begin

	fd: entity work.FluxoDeDados
		port map(
		clk => clk,
		sel_MuxPC => Mux1,
		sel_MuxRtRd => Mux2,
		sel_MuxSaidaBankReg => Mux3,
		sel_MuxRegRam => Mux4,
		hab_Escrita => HabEscritaReg,
		habLeituraMem => HabLeMEM,
		habEscritaMem => HabEscMEM,
		BEQ => BEQ,
		mux_beq => mux_beq,
		
		
		ULAop => ULAop,
		opcode => opcode,
		   
		outR0 => otR0,
	   outR1 => otR1,
	   outR2 => otR2,
	   outR3 => otR3,
	   outR4 => otR4,
	   outR5 => otR5, 
	   outR6 => otR6,
		outR7 => otR7,
		
		overflow => overflow,
		resultadoSoma => resultadoSoma,
		pcDebug  => out_PCTeste,
		testAluA => testAluA,
		testAluB => testAluB,
		testeAluRes => testeAluRes,
		testeOutRam => testeOutRam);	
		
	
--- teste debug sinais unidade de controle - 
	 opcodeDebug <= opcode;
	 Mux1Debug <= Mux1;
	 Mux2Debug <= Mux2;
	 HabEscritaRegDebug <= HabEscritaReg;
	 Mux3Debug <= Mux3;
	 Mux4Debug <= Mux4;
	 BEQDebug <= BEQ;
	 HabLeMEMDebug <= HabLeMEM;
	 HabEscMEMDebug <= HabEscMEM;
	 ULAopDebug <= ULAop;
	
	ucfd: entity work.UCfd 
			port map(
			 opcode => opcode,
			 Mux1 => Mux1,
			 Mux2 => Mux2,
			 HabEscritaReg => HabEscritaReg,
			 Mux3 => Mux3,
			 Mux4 => Mux4,
			 BEQ => BEQ,
			 HabLeMEM => HabLeMEM,
			 HabEscMEM => HabEscMEM,
			 ULAop => ULAop
			);
		
end architecture;