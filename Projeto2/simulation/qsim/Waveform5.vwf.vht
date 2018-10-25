-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/25/2018 18:41:24"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL otR1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR5 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR6 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL otR7 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT mips
	PORT (
	clk : IN STD_LOGIC;
	otR1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	otR7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	otR1 => otR1,
	otR2 => otR2,
	otR3 => otR3,
	otR4 => otR4,
	otR5 => otR5,
	otR6 => otR6,
	otR7 => otR7
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END mips_arch;
