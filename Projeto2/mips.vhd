library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mips is
	 Port ( 
		KEY: in std_logic_vector(3 downto 0);
		CLOCK_50: in std_logic;
		
		HEX1 : out std_logic_vector(6 downto 0); 
		HEX2 : out std_logic_vector(6 downto 0); 
		HEX3 : out std_logic_vector(6 downto 0); 
		HEX4 : out std_logic_vector(6 downto 0); 
		HEX5 : out std_logic_vector(6 downto 0); 
		HEX6 : out std_logic_vector(6 downto 0); 
		HEX7 : out std_logic_vector(6 downto 0); 
		
		LEDG : out std_logic_vector(8 downto 0);
		
		
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

signal outR1 :  std_logic_vector(31 downto 0);
signal outR2 :  std_logic_vector(31 downto 0);
signal outR3 :  std_logic_vector(31 downto 0);
signal outR4 :  std_logic_vector(31 downto 0);
signal outR5 :  std_logic_vector(31 downto 0);
signal outR6 :  std_logic_vector(31 downto 0);
signal outR7 :  std_logic_vector(31 downto 0);

signal clk : std_logic;

begin

	fd: entity work.FluxoDeDados
		port map(
		clk =>  clk,
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
		
		out_Led => LEDG(0),
		
	   outR1 => outR1,
	   outR2 => outR2,
	   outR3 => outR3,
	   outR4 => outR4,
	   outR5 => outR5, 
	   outR6 => outR6,
		outR7 => outR7,
		
		
		
		overflow => overflow,
		resultadoSoma => resultadoSoma,
		pcDebug  => out_PCTeste,
		testAluA => testAluA,
		testAluB => testAluB,
		testeAluRes => testeAluRes,
		testeOutRam => testeOutRam);
			
	
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
	
	convhex1: entity work.conversorHex7Seg port map ( dadoHex => outR1(3 downto 0), saida7seg => HEX1);
	convhex2: entity work.conversorHex7Seg port map ( dadoHex => outR2(3 downto 0), saida7seg => HEX2);
	convhex3: entity work.conversorHex7Seg port map ( dadoHex => outR3(3 downto 0), saida7seg => HEX3);
	convhex4: entity work.conversorHex7Seg port map ( dadoHex => outR4(3 downto 0), saida7seg => HEX4);
	convhex5: entity work.conversorHex7Seg port map ( dadoHex => outR5(3 downto 0), saida7seg => HEX5);
	convhex6: entity work.conversorHex7Seg port map ( dadoHex => outR6(3 downto 0), saida7seg => HEX6);
	convhex7: entity work.conversorHex7Seg port map ( dadoHex => outR7(3 downto 0), saida7seg => HEX7);
		
	detectorSub: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => clk);

end architecture;