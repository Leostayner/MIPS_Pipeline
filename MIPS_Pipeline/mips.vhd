library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mips is
	 Port ( 
		
		--INPUT
		KEY      : in std_logic_vector(3 downto 0);
		CLOCK_50 : in std_logic;
		
		
		--OUTPUT
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0); 
		HEX2 : out std_logic_vector(6 downto 0); 
		HEX3 : out std_logic_vector(6 downto 0); 
		HEX4 : out std_logic_vector(6 downto 0); 
		HEX5 : out std_logic_vector(6 downto 0); 
		HEX6 : out std_logic_vector(6 downto 0); 
		HEX7 : out std_logic_vector(6 downto 0); 
		
		LEDG : out std_logic_vector(8 downto 0)
		
		);
		
		
	 
end mips;
 
architecture mux_arch of mips is

---------------------------------------------
------------------SINAIS---------------------
---------------------------------------------

--CONTROLE
signal	opcode : std_logic_vector(5 downto 0);
signal	Mux1,Mux2,HabEscritaReg,Mux3,Mux4,BEQ,HabLeMEM,HabEscMEM: std_logic;
signal	ULAop: std_logic_vector(1 downto 0);

--REGISTRADOR
signal out_pc:  std_logic_vector(31 downto 0);
signal outR1 :  std_logic_vector(31 downto 0);
signal outR2 :  std_logic_vector(31 downto 0);
signal outR3 :  std_logic_vector(31 downto 0);
signal outR4 :  std_logic_vector(31 downto 0);
signal outR5 :  std_logic_vector(31 downto 0);
signal outR6 :  std_logic_vector(31 downto 0);
signal outR7 :  std_logic_vector(31 downto 0);

--CLOCK
signal clk : std_logic;
signal div_clk : std_logic;

--RESET
signal reset: std_logic;

begin

	--PORT MAP FLUXO DE DADOS
	fd: entity work.FluxoDeDados
		port map(
		clk   =>  clk,
		reset => reset,
		
		sel_MuxPC           => Mux1,
		sel_MuxRtRd         => Mux2,
		sel_MuxSaidaBankReg => Mux3,
		sel_MuxRegRam       => Mux4,
		
		hab_Escrita   => HabEscritaReg,
		habLeituraMem => HabLeMEM,
		habEscritaMem => HabEscMEM,
		
		BEQ    => BEQ,
		ULAop  => ULAop,
		opcode => opcode,
		
		out_Led => LEDG(0),
		
		outR0 => out_pc,
	   outR1 => outR1,
	   outR2 => outR2,
	   outR3 => outR3,
	   outR4 => outR4,
	   outR5 => outR5, 
	   outR6 => outR6,
		outR7 => outR7
		);
		
		
   --PORT MAP U.C. FLUXO DE DADOS
	ucfd: entity work.UCfd 
			port map(
			 opcode        => opcode,
			 Mux1          => Mux1,
			 Mux2          => Mux2,
			 HabEscritaReg => HabEscritaReg,
			 Mux3          => Mux3,
			 Mux4          => Mux4,
			 BEQ           => BEQ,
			 HabLeMEM      => HabLeMEM,
			 HabEscMEM     => HabEscMEM,
			 ULAop         => ULAop
			);
	
	
	--PORT MAPS CONVERDOR HEX 7SEG
	convhex1: entity work.conversorHex7Seg port map ( dadoHex => outR1(3 downto 0), saida7seg => HEX1);
	convhex2: entity work.conversorHex7Seg port map ( dadoHex => outR2(3 downto 0), saida7seg => HEX2);
	convhex3: entity work.conversorHex7Seg port map ( dadoHex => outR3(3 downto 0), saida7seg => HEX3);
	convhex4: entity work.conversorHex7Seg port map ( dadoHex => outR4(3 downto 0), saida7seg => HEX4);
	convhex5: entity work.conversorHex7Seg port map ( dadoHex => outR5(3 downto 0), saida7seg => HEX5);
	convhex6: entity work.conversorHex7Seg port map ( dadoHex => outR6(3 downto 0), saida7seg => HEX6);
	convhex7: entity work.conversorHex7Seg port map ( dadoHex => outR7(3 downto 0), saida7seg => HEX7);
	
	convhex0: entity work.conversorHex7Seg port map ( dadoHex => out_pc(5 downto 2), saida7seg => HEX0);
		
	--PORT MAP DETECTO BORDA DE SUBIDA CLOCK
	detectorSub: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => div_clk, saida => clk);

	--PORT MAP DETECTO BORDA DE SUBIDA RESET
	detectorSub2: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => reset);

	
	--PORT MAP DIVISOR
	fazDivisaoInteiro1: entity work.divisorGenerico(divInteiro)
            generic map (divisor => 50000000)   -- divide por frequencia.
            port map (clk => CLOCK_50, saida_clk => div_clk, setup => 3);
				
end architecture;