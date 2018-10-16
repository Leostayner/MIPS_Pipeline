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
-- Generated on "10/11/2018 18:21:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL func : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL invA : STD_LOGIC;
SIGNAL invB : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT alu
	PORT (
	A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	cin : IN STD_LOGIC;
	cout : BUFFER STD_LOGIC;
	func : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	invA : IN STD_LOGIC;
	invB : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	zero : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	cin => cin,
	cout => cout,
	func => func,
	invA => invA,
	invB => invB,
	output => output,
	zero => zero
	);
-- A[31]
t_prcs_A_31: PROCESS
BEGIN
	A(31) <= '1';
WAIT;
END PROCESS t_prcs_A_31;
-- A[30]
t_prcs_A_30: PROCESS
BEGIN
	A(30) <= '1';
WAIT;
END PROCESS t_prcs_A_30;
-- A[29]
t_prcs_A_29: PROCESS
BEGIN
	A(29) <= '1';
WAIT;
END PROCESS t_prcs_A_29;
-- A[28]
t_prcs_A_28: PROCESS
BEGIN
	A(28) <= '1';
WAIT;
END PROCESS t_prcs_A_28;
-- A[27]
t_prcs_A_27: PROCESS
BEGIN
	A(27) <= '1';
WAIT;
END PROCESS t_prcs_A_27;
-- A[26]
t_prcs_A_26: PROCESS
BEGIN
	A(26) <= '1';
WAIT;
END PROCESS t_prcs_A_26;
-- A[25]
t_prcs_A_25: PROCESS
BEGIN
	A(25) <= '1';
WAIT;
END PROCESS t_prcs_A_25;
-- A[24]
t_prcs_A_24: PROCESS
BEGIN
	A(24) <= '1';
WAIT;
END PROCESS t_prcs_A_24;
-- A[23]
t_prcs_A_23: PROCESS
BEGIN
	A(23) <= '1';
WAIT;
END PROCESS t_prcs_A_23;
-- A[22]
t_prcs_A_22: PROCESS
BEGIN
	A(22) <= '1';
WAIT;
END PROCESS t_prcs_A_22;
-- A[21]
t_prcs_A_21: PROCESS
BEGIN
	A(21) <= '1';
WAIT;
END PROCESS t_prcs_A_21;
-- A[20]
t_prcs_A_20: PROCESS
BEGIN
	A(20) <= '1';
WAIT;
END PROCESS t_prcs_A_20;
-- A[19]
t_prcs_A_19: PROCESS
BEGIN
	A(19) <= '1';
WAIT;
END PROCESS t_prcs_A_19;
-- A[18]
t_prcs_A_18: PROCESS
BEGIN
	A(18) <= '1';
WAIT;
END PROCESS t_prcs_A_18;
-- A[17]
t_prcs_A_17: PROCESS
BEGIN
	A(17) <= '1';
WAIT;
END PROCESS t_prcs_A_17;
-- A[16]
t_prcs_A_16: PROCESS
BEGIN
	A(16) <= '1';
WAIT;
END PROCESS t_prcs_A_16;
-- A[15]
t_prcs_A_15: PROCESS
BEGIN
	A(15) <= '1';
WAIT;
END PROCESS t_prcs_A_15;
-- A[14]
t_prcs_A_14: PROCESS
BEGIN
	A(14) <= '1';
WAIT;
END PROCESS t_prcs_A_14;
-- A[13]
t_prcs_A_13: PROCESS
BEGIN
	A(13) <= '1';
WAIT;
END PROCESS t_prcs_A_13;
-- A[12]
t_prcs_A_12: PROCESS
BEGIN
	A(12) <= '1';
WAIT;
END PROCESS t_prcs_A_12;
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	A(11) <= '1';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	A(10) <= '1';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '1';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '1';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '1';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '1';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '1';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '1';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '1';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[31]
t_prcs_B_31: PROCESS
BEGIN
	B(31) <= '0';
WAIT;
END PROCESS t_prcs_B_31;
-- B[30]
t_prcs_B_30: PROCESS
BEGIN
	B(30) <= '0';
WAIT;
END PROCESS t_prcs_B_30;
-- B[29]
t_prcs_B_29: PROCESS
BEGIN
	B(29) <= '0';
WAIT;
END PROCESS t_prcs_B_29;
-- B[28]
t_prcs_B_28: PROCESS
BEGIN
	B(28) <= '0';
WAIT;
END PROCESS t_prcs_B_28;
-- B[27]
t_prcs_B_27: PROCESS
BEGIN
	B(27) <= '0';
WAIT;
END PROCESS t_prcs_B_27;
-- B[26]
t_prcs_B_26: PROCESS
BEGIN
	B(26) <= '0';
WAIT;
END PROCESS t_prcs_B_26;
-- B[25]
t_prcs_B_25: PROCESS
BEGIN
	B(25) <= '0';
WAIT;
END PROCESS t_prcs_B_25;
-- B[24]
t_prcs_B_24: PROCESS
BEGIN
	B(24) <= '0';
WAIT;
END PROCESS t_prcs_B_24;
-- B[23]
t_prcs_B_23: PROCESS
BEGIN
	B(23) <= '0';
WAIT;
END PROCESS t_prcs_B_23;
-- B[22]
t_prcs_B_22: PROCESS
BEGIN
	B(22) <= '0';
WAIT;
END PROCESS t_prcs_B_22;
-- B[21]
t_prcs_B_21: PROCESS
BEGIN
	B(21) <= '0';
WAIT;
END PROCESS t_prcs_B_21;
-- B[20]
t_prcs_B_20: PROCESS
BEGIN
	B(20) <= '0';
WAIT;
END PROCESS t_prcs_B_20;
-- B[19]
t_prcs_B_19: PROCESS
BEGIN
	B(19) <= '0';
WAIT;
END PROCESS t_prcs_B_19;
-- B[18]
t_prcs_B_18: PROCESS
BEGIN
	B(18) <= '0';
WAIT;
END PROCESS t_prcs_B_18;
-- B[17]
t_prcs_B_17: PROCESS
BEGIN
	B(17) <= '0';
WAIT;
END PROCESS t_prcs_B_17;
-- B[16]
t_prcs_B_16: PROCESS
BEGIN
	B(16) <= '0';
WAIT;
END PROCESS t_prcs_B_16;
-- B[15]
t_prcs_B_15: PROCESS
BEGIN
	B(15) <= '0';
WAIT;
END PROCESS t_prcs_B_15;
-- B[14]
t_prcs_B_14: PROCESS
BEGIN
	B(14) <= '0';
WAIT;
END PROCESS t_prcs_B_14;
-- B[13]
t_prcs_B_13: PROCESS
BEGIN
	B(13) <= '0';
WAIT;
END PROCESS t_prcs_B_13;
-- B[12]
t_prcs_B_12: PROCESS
BEGIN
	B(12) <= '0';
WAIT;
END PROCESS t_prcs_B_12;
-- B[11]
t_prcs_B_11: PROCESS
BEGIN
	B(11) <= '0';
WAIT;
END PROCESS t_prcs_B_11;
-- B[10]
t_prcs_B_10: PROCESS
BEGIN
	B(10) <= '0';
WAIT;
END PROCESS t_prcs_B_10;
-- B[9]
t_prcs_B_9: PROCESS
BEGIN
	B(9) <= '0';
WAIT;
END PROCESS t_prcs_B_9;
-- B[8]
t_prcs_B_8: PROCESS
BEGIN
	B(8) <= '0';
WAIT;
END PROCESS t_prcs_B_8;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '0';
WAIT;
END PROCESS t_prcs_cin;
-- func[1]
t_prcs_func_1: PROCESS
BEGIN
	func(1) <= '0';
WAIT;
END PROCESS t_prcs_func_1;
-- func[0]
t_prcs_func_0: PROCESS
BEGIN
	func(0) <= '1';
WAIT;
END PROCESS t_prcs_func_0;

-- invA
t_prcs_invA: PROCESS
BEGIN
	invA <= '0';
WAIT;
END PROCESS t_prcs_invA;

-- invB
t_prcs_invB: PROCESS
BEGIN
	invB <= '0';
WAIT;
END PROCESS t_prcs_invB;
END alu_arch;
