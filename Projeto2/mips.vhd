library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mips is
	 Port ( 
		KEY: in std_logic_vector(3 downto 0);
		HEX2 : out std_logic_vector(6 downto 0); 
		HEX3 : out std_logic_vector(6 downto 0); 
		HEX4 : out std_logic_vector(6 downto 0); 
		HEX5 : out std_logic_vector(6 downto 0); 
		HEX6 : out std_logic_vector(6 downto 0); 
		HEX7 : out std_logic_vector(6 downto 0) 
	 );
end mips;
 
architecture mux_arch of mips is

signal	opcode : std_logic_vector(5 downto 0);
signal	Mux1,Mux2,HabEscritaReg,Mux3,Mux4,BEQ,HabLeMEM,HabEscMEM: std_logic;
signal	ULAop: std_logic_vector(1 downto 0);

signal clk : std_logic;

begin

	clk <= KEY(0);

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
		ULAop => ULAop,
		opcode => opcode);	
		
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