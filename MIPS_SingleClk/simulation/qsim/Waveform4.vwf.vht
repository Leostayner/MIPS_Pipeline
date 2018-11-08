-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/29/2018 19:26:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_vhd_vec_tst IS
END mips_vhd_vec_tst;
ARCHITECTURE mips_arch OF mips_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BEQDebug : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL HabEscMEMDebug : STD_LOGIC;
SIGNAL HabEscritaRegDebug : STD_LOGIC;
SIGNAL HabLeMEMDebug : STD_LOGIC;
SIGNAL Mux1Debug : STD_LOGIC;
SIGNAL Mux2Debug : STD_LOGIC;
SIGNAL Mux3Debug : STD_LOGIC;
SIGNAL Mux4Debug : STD_LOGIC;
SIGNAL opcodeDebug : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL otR0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR5 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR6 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_PCTeste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL testAluA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL testAluB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL testeAluRes : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL testeOutRam : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAopDebug : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mips
	PORT (
	BEQDebug : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	HabEscMEMDebug : BUFFER STD_LOGIC;
	HabEscritaRegDebug : BUFFER STD_LOGIC;
	HabLeMEMDebug : BUFFER STD_LOGIC;
	Mux1Debug : BUFFER STD_LOGIC;
	Mux2Debug : BUFFER STD_LOGIC;
	Mux3Debug : BUFFER STD_LOGIC;
	Mux4Debug : BUFFER STD_LOGIC;
	opcodeDebug : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	otR0 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR2 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR3 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR4 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR5 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR6 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_PCTeste : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	testAluA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	testAluB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	testeAluRes : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	testeOutRam : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAopDebug : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	BEQDebug => BEQDebug,
	clk => clk,
	HabEscMEMDebug => HabEscMEMDebug,
	HabEscritaRegDebug => HabEscritaRegDebug,
	HabLeMEMDebug => HabLeMEMDebug,
	Mux1Debug => Mux1Debug,
	Mux2Debug => Mux2Debug,
	Mux3Debug => Mux3Debug,
	Mux4Debug => Mux4Debug,
	opcodeDebug => opcodeDebug,
	otR0 => otR0,
	otR1 => otR1,
	otR2 => otR2,
	otR3 => otR3,
	otR4 => otR4,
	otR5 => otR5,
	otR6 => otR6,
	out_PCTeste => out_PCTeste,
	testAluA => testAluA,
	testAluB => testAluB,
	testeAluRes => testeAluRes,
	testeOutRam => testeOutRam,
	ULAopDebug => ULAopDebug
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 9
	LOOP
		clk <= '0';
		WAIT FOR 50000 ps;
		clk <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END mips_arch;
