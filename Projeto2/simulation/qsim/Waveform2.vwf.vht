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
-- Generated on "10/11/2018 17:29:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UCAlu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UCAlu_vhd_vec_tst IS
END UCAlu_vhd_vec_tst;
ARCHITECTURE UCAlu_arch OF UCAlu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CUfd : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT UCAlu
	PORT (
	CUfd : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	funct : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UCAlu
	PORT MAP (
-- list connections between master ports and signals
	CUfd => CUfd,
	funct => funct,
	output => output
	);
-- CUfd[1]
t_prcs_CUfd_1: PROCESS
BEGIN
	CUfd(1) <= '1';
WAIT;
END PROCESS t_prcs_CUfd_1;
-- CUfd[0]
t_prcs_CUfd_0: PROCESS
BEGIN
	CUfd(0) <= '0';
WAIT;
END PROCESS t_prcs_CUfd_0;
-- funct[5]
t_prcs_funct_5: PROCESS
BEGIN
	funct(5) <= '1';
WAIT;
END PROCESS t_prcs_funct_5;
-- funct[4]
t_prcs_funct_4: PROCESS
BEGIN
	funct(4) <= '0';
WAIT;
END PROCESS t_prcs_funct_4;
-- funct[3]
t_prcs_funct_3: PROCESS
BEGIN
	funct(3) <= '0';
WAIT;
END PROCESS t_prcs_funct_3;
-- funct[2]
t_prcs_funct_2: PROCESS
BEGIN
	funct(2) <= '0';
WAIT;
END PROCESS t_prcs_funct_2;
-- funct[1]
t_prcs_funct_1: PROCESS
BEGIN
	funct(1) <= '1';
WAIT;
END PROCESS t_prcs_funct_1;
-- funct[0]
t_prcs_funct_0: PROCESS
BEGIN
	funct(0) <= '0';
WAIT;
END PROCESS t_prcs_funct_0;
END UCAlu_arch;
