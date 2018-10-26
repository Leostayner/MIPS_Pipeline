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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "10/25/2018 21:02:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	otR1 : OUT std_logic_vector(31 DOWNTO 0);
	otR2 : OUT std_logic_vector(31 DOWNTO 0);
	otR3 : OUT std_logic_vector(31 DOWNTO 0);
	otR4 : OUT std_logic_vector(31 DOWNTO 0);
	otR5 : OUT std_logic_vector(31 DOWNTO 0);
	otR6 : OUT std_logic_vector(31 DOWNTO 0);
	otR7 : OUT std_logic_vector(31 DOWNTO 0);
	opcodeDebug : OUT std_logic_vector(5 DOWNTO 0);
	Mux1Debug : OUT std_logic;
	Mux2Debug : OUT std_logic;
	HabEscritaRegDebug : OUT std_logic;
	Mux3Debug : OUT std_logic;
	Mux4Debug : OUT std_logic;
	BEQDebug : OUT std_logic;
	HabLeMEMDebug : OUT std_logic;
	HabEscMEMDebug : OUT std_logic;
	ULAopDebug : OUT std_logic_vector(1 DOWNTO 0);
	out_PCTeste : OUT std_logic_vector(31 DOWNTO 0);
	testAluA : OUT std_logic_vector(31 DOWNTO 0);
	testAluB : OUT std_logic_vector(31 DOWNTO 0);
	testeAluRes : OUT std_logic_vector(31 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- otR1[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[2]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[4]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[5]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[8]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[9]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[10]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[16]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[17]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[18]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[19]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[20]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[21]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[22]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[23]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[24]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[25]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[26]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[27]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[28]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[29]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[30]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[31]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[2]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[6]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[8]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[10]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[11]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[13]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[16]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[17]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[18]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[20]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[21]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[22]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[23]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[24]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[25]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[26]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[27]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[28]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[29]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[30]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[31]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[1]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[5]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[7]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[9]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[10]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[11]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[12]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[13]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[15]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[16]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[17]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[18]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[19]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[20]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[21]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[22]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[23]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[24]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[25]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[26]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[27]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[28]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[29]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[31]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[6]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[8]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[10]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[12]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[14]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[15]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[16]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[17]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[18]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[19]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[20]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[21]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[22]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[23]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[24]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[25]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[26]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[27]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[28]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[29]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[30]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[31]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[2]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[5]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[8]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[9]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[10]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[11]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[12]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[14]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[15]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[16]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[17]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[18]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[19]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[20]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[21]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[22]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[23]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[24]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[26]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[27]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[28]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[29]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[30]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[31]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[1]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[5]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[7]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[11]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[12]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[13]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[14]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[15]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[17]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[18]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[19]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[20]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[21]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[22]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[24]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[25]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[26]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[27]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[28]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[29]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[30]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[31]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[4]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[6]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[9]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[10]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[11]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[12]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[15]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[16]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[17]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[18]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[19]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[20]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[21]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[22]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[23]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[24]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[25]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[27]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[28]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[29]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[30]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[31]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux1Debug	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux2Debug	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabEscritaRegDebug	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux3Debug	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux4Debug	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BEQDebug	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabLeMEMDebug	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabEscMEMDebug	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAopDebug[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAopDebug[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[8]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[12]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[17]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[19]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[20]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[21]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[23]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[24]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[25]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[26]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[27]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[28]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[29]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[30]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[31]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[3]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[5]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[6]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[8]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[9]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[11]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[12]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[13]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[17]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[18]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[19]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[20]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[21]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[22]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[23]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[24]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[25]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[26]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[27]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[28]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[29]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[30]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[31]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[1]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[2]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[4]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[5]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[6]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[7]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[8]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[9]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[11]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[13]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[14]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[16]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[17]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[18]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[19]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[20]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[21]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[22]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[23]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[24]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[25]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[26]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[27]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[28]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[30]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[31]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[4]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[6]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[10]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[13]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[15]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[17]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[18]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[19]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[20]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[21]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[22]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[23]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[24]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[25]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[26]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[27]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[28]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[29]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[31]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_otR1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR5 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR6 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR7 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opcodeDebug : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Mux1Debug : std_logic;
SIGNAL ww_Mux2Debug : std_logic;
SIGNAL ww_HabEscritaRegDebug : std_logic;
SIGNAL ww_Mux3Debug : std_logic;
SIGNAL ww_Mux4Debug : std_logic;
SIGNAL ww_BEQDebug : std_logic;
SIGNAL ww_HabLeMEMDebug : std_logic;
SIGNAL ww_HabEscMEMDebug : std_logic;
SIGNAL ww_ULAopDebug : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_PCTeste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testAluA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testAluB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testeAluRes : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \otR1[0]~output_o\ : std_logic;
SIGNAL \otR1[1]~output_o\ : std_logic;
SIGNAL \otR1[2]~output_o\ : std_logic;
SIGNAL \otR1[3]~output_o\ : std_logic;
SIGNAL \otR1[4]~output_o\ : std_logic;
SIGNAL \otR1[5]~output_o\ : std_logic;
SIGNAL \otR1[6]~output_o\ : std_logic;
SIGNAL \otR1[7]~output_o\ : std_logic;
SIGNAL \otR1[8]~output_o\ : std_logic;
SIGNAL \otR1[9]~output_o\ : std_logic;
SIGNAL \otR1[10]~output_o\ : std_logic;
SIGNAL \otR1[11]~output_o\ : std_logic;
SIGNAL \otR1[12]~output_o\ : std_logic;
SIGNAL \otR1[13]~output_o\ : std_logic;
SIGNAL \otR1[14]~output_o\ : std_logic;
SIGNAL \otR1[15]~output_o\ : std_logic;
SIGNAL \otR1[16]~output_o\ : std_logic;
SIGNAL \otR1[17]~output_o\ : std_logic;
SIGNAL \otR1[18]~output_o\ : std_logic;
SIGNAL \otR1[19]~output_o\ : std_logic;
SIGNAL \otR1[20]~output_o\ : std_logic;
SIGNAL \otR1[21]~output_o\ : std_logic;
SIGNAL \otR1[22]~output_o\ : std_logic;
SIGNAL \otR1[23]~output_o\ : std_logic;
SIGNAL \otR1[24]~output_o\ : std_logic;
SIGNAL \otR1[25]~output_o\ : std_logic;
SIGNAL \otR1[26]~output_o\ : std_logic;
SIGNAL \otR1[27]~output_o\ : std_logic;
SIGNAL \otR1[28]~output_o\ : std_logic;
SIGNAL \otR1[29]~output_o\ : std_logic;
SIGNAL \otR1[30]~output_o\ : std_logic;
SIGNAL \otR1[31]~output_o\ : std_logic;
SIGNAL \otR2[0]~output_o\ : std_logic;
SIGNAL \otR2[1]~output_o\ : std_logic;
SIGNAL \otR2[2]~output_o\ : std_logic;
SIGNAL \otR2[3]~output_o\ : std_logic;
SIGNAL \otR2[4]~output_o\ : std_logic;
SIGNAL \otR2[5]~output_o\ : std_logic;
SIGNAL \otR2[6]~output_o\ : std_logic;
SIGNAL \otR2[7]~output_o\ : std_logic;
SIGNAL \otR2[8]~output_o\ : std_logic;
SIGNAL \otR2[9]~output_o\ : std_logic;
SIGNAL \otR2[10]~output_o\ : std_logic;
SIGNAL \otR2[11]~output_o\ : std_logic;
SIGNAL \otR2[12]~output_o\ : std_logic;
SIGNAL \otR2[13]~output_o\ : std_logic;
SIGNAL \otR2[14]~output_o\ : std_logic;
SIGNAL \otR2[15]~output_o\ : std_logic;
SIGNAL \otR2[16]~output_o\ : std_logic;
SIGNAL \otR2[17]~output_o\ : std_logic;
SIGNAL \otR2[18]~output_o\ : std_logic;
SIGNAL \otR2[19]~output_o\ : std_logic;
SIGNAL \otR2[20]~output_o\ : std_logic;
SIGNAL \otR2[21]~output_o\ : std_logic;
SIGNAL \otR2[22]~output_o\ : std_logic;
SIGNAL \otR2[23]~output_o\ : std_logic;
SIGNAL \otR2[24]~output_o\ : std_logic;
SIGNAL \otR2[25]~output_o\ : std_logic;
SIGNAL \otR2[26]~output_o\ : std_logic;
SIGNAL \otR2[27]~output_o\ : std_logic;
SIGNAL \otR2[28]~output_o\ : std_logic;
SIGNAL \otR2[29]~output_o\ : std_logic;
SIGNAL \otR2[30]~output_o\ : std_logic;
SIGNAL \otR2[31]~output_o\ : std_logic;
SIGNAL \otR3[0]~output_o\ : std_logic;
SIGNAL \otR3[1]~output_o\ : std_logic;
SIGNAL \otR3[2]~output_o\ : std_logic;
SIGNAL \otR3[3]~output_o\ : std_logic;
SIGNAL \otR3[4]~output_o\ : std_logic;
SIGNAL \otR3[5]~output_o\ : std_logic;
SIGNAL \otR3[6]~output_o\ : std_logic;
SIGNAL \otR3[7]~output_o\ : std_logic;
SIGNAL \otR3[8]~output_o\ : std_logic;
SIGNAL \otR3[9]~output_o\ : std_logic;
SIGNAL \otR3[10]~output_o\ : std_logic;
SIGNAL \otR3[11]~output_o\ : std_logic;
SIGNAL \otR3[12]~output_o\ : std_logic;
SIGNAL \otR3[13]~output_o\ : std_logic;
SIGNAL \otR3[14]~output_o\ : std_logic;
SIGNAL \otR3[15]~output_o\ : std_logic;
SIGNAL \otR3[16]~output_o\ : std_logic;
SIGNAL \otR3[17]~output_o\ : std_logic;
SIGNAL \otR3[18]~output_o\ : std_logic;
SIGNAL \otR3[19]~output_o\ : std_logic;
SIGNAL \otR3[20]~output_o\ : std_logic;
SIGNAL \otR3[21]~output_o\ : std_logic;
SIGNAL \otR3[22]~output_o\ : std_logic;
SIGNAL \otR3[23]~output_o\ : std_logic;
SIGNAL \otR3[24]~output_o\ : std_logic;
SIGNAL \otR3[25]~output_o\ : std_logic;
SIGNAL \otR3[26]~output_o\ : std_logic;
SIGNAL \otR3[27]~output_o\ : std_logic;
SIGNAL \otR3[28]~output_o\ : std_logic;
SIGNAL \otR3[29]~output_o\ : std_logic;
SIGNAL \otR3[30]~output_o\ : std_logic;
SIGNAL \otR3[31]~output_o\ : std_logic;
SIGNAL \otR4[0]~output_o\ : std_logic;
SIGNAL \otR4[1]~output_o\ : std_logic;
SIGNAL \otR4[2]~output_o\ : std_logic;
SIGNAL \otR4[3]~output_o\ : std_logic;
SIGNAL \otR4[4]~output_o\ : std_logic;
SIGNAL \otR4[5]~output_o\ : std_logic;
SIGNAL \otR4[6]~output_o\ : std_logic;
SIGNAL \otR4[7]~output_o\ : std_logic;
SIGNAL \otR4[8]~output_o\ : std_logic;
SIGNAL \otR4[9]~output_o\ : std_logic;
SIGNAL \otR4[10]~output_o\ : std_logic;
SIGNAL \otR4[11]~output_o\ : std_logic;
SIGNAL \otR4[12]~output_o\ : std_logic;
SIGNAL \otR4[13]~output_o\ : std_logic;
SIGNAL \otR4[14]~output_o\ : std_logic;
SIGNAL \otR4[15]~output_o\ : std_logic;
SIGNAL \otR4[16]~output_o\ : std_logic;
SIGNAL \otR4[17]~output_o\ : std_logic;
SIGNAL \otR4[18]~output_o\ : std_logic;
SIGNAL \otR4[19]~output_o\ : std_logic;
SIGNAL \otR4[20]~output_o\ : std_logic;
SIGNAL \otR4[21]~output_o\ : std_logic;
SIGNAL \otR4[22]~output_o\ : std_logic;
SIGNAL \otR4[23]~output_o\ : std_logic;
SIGNAL \otR4[24]~output_o\ : std_logic;
SIGNAL \otR4[25]~output_o\ : std_logic;
SIGNAL \otR4[26]~output_o\ : std_logic;
SIGNAL \otR4[27]~output_o\ : std_logic;
SIGNAL \otR4[28]~output_o\ : std_logic;
SIGNAL \otR4[29]~output_o\ : std_logic;
SIGNAL \otR4[30]~output_o\ : std_logic;
SIGNAL \otR4[31]~output_o\ : std_logic;
SIGNAL \otR5[0]~output_o\ : std_logic;
SIGNAL \otR5[1]~output_o\ : std_logic;
SIGNAL \otR5[2]~output_o\ : std_logic;
SIGNAL \otR5[3]~output_o\ : std_logic;
SIGNAL \otR5[4]~output_o\ : std_logic;
SIGNAL \otR5[5]~output_o\ : std_logic;
SIGNAL \otR5[6]~output_o\ : std_logic;
SIGNAL \otR5[7]~output_o\ : std_logic;
SIGNAL \otR5[8]~output_o\ : std_logic;
SIGNAL \otR5[9]~output_o\ : std_logic;
SIGNAL \otR5[10]~output_o\ : std_logic;
SIGNAL \otR5[11]~output_o\ : std_logic;
SIGNAL \otR5[12]~output_o\ : std_logic;
SIGNAL \otR5[13]~output_o\ : std_logic;
SIGNAL \otR5[14]~output_o\ : std_logic;
SIGNAL \otR5[15]~output_o\ : std_logic;
SIGNAL \otR5[16]~output_o\ : std_logic;
SIGNAL \otR5[17]~output_o\ : std_logic;
SIGNAL \otR5[18]~output_o\ : std_logic;
SIGNAL \otR5[19]~output_o\ : std_logic;
SIGNAL \otR5[20]~output_o\ : std_logic;
SIGNAL \otR5[21]~output_o\ : std_logic;
SIGNAL \otR5[22]~output_o\ : std_logic;
SIGNAL \otR5[23]~output_o\ : std_logic;
SIGNAL \otR5[24]~output_o\ : std_logic;
SIGNAL \otR5[25]~output_o\ : std_logic;
SIGNAL \otR5[26]~output_o\ : std_logic;
SIGNAL \otR5[27]~output_o\ : std_logic;
SIGNAL \otR5[28]~output_o\ : std_logic;
SIGNAL \otR5[29]~output_o\ : std_logic;
SIGNAL \otR5[30]~output_o\ : std_logic;
SIGNAL \otR5[31]~output_o\ : std_logic;
SIGNAL \otR6[0]~output_o\ : std_logic;
SIGNAL \otR6[1]~output_o\ : std_logic;
SIGNAL \otR6[2]~output_o\ : std_logic;
SIGNAL \otR6[3]~output_o\ : std_logic;
SIGNAL \otR6[4]~output_o\ : std_logic;
SIGNAL \otR6[5]~output_o\ : std_logic;
SIGNAL \otR6[6]~output_o\ : std_logic;
SIGNAL \otR6[7]~output_o\ : std_logic;
SIGNAL \otR6[8]~output_o\ : std_logic;
SIGNAL \otR6[9]~output_o\ : std_logic;
SIGNAL \otR6[10]~output_o\ : std_logic;
SIGNAL \otR6[11]~output_o\ : std_logic;
SIGNAL \otR6[12]~output_o\ : std_logic;
SIGNAL \otR6[13]~output_o\ : std_logic;
SIGNAL \otR6[14]~output_o\ : std_logic;
SIGNAL \otR6[15]~output_o\ : std_logic;
SIGNAL \otR6[16]~output_o\ : std_logic;
SIGNAL \otR6[17]~output_o\ : std_logic;
SIGNAL \otR6[18]~output_o\ : std_logic;
SIGNAL \otR6[19]~output_o\ : std_logic;
SIGNAL \otR6[20]~output_o\ : std_logic;
SIGNAL \otR6[21]~output_o\ : std_logic;
SIGNAL \otR6[22]~output_o\ : std_logic;
SIGNAL \otR6[23]~output_o\ : std_logic;
SIGNAL \otR6[24]~output_o\ : std_logic;
SIGNAL \otR6[25]~output_o\ : std_logic;
SIGNAL \otR6[26]~output_o\ : std_logic;
SIGNAL \otR6[27]~output_o\ : std_logic;
SIGNAL \otR6[28]~output_o\ : std_logic;
SIGNAL \otR6[29]~output_o\ : std_logic;
SIGNAL \otR6[30]~output_o\ : std_logic;
SIGNAL \otR6[31]~output_o\ : std_logic;
SIGNAL \otR7[0]~output_o\ : std_logic;
SIGNAL \otR7[1]~output_o\ : std_logic;
SIGNAL \otR7[2]~output_o\ : std_logic;
SIGNAL \otR7[3]~output_o\ : std_logic;
SIGNAL \otR7[4]~output_o\ : std_logic;
SIGNAL \otR7[5]~output_o\ : std_logic;
SIGNAL \otR7[6]~output_o\ : std_logic;
SIGNAL \otR7[7]~output_o\ : std_logic;
SIGNAL \otR7[8]~output_o\ : std_logic;
SIGNAL \otR7[9]~output_o\ : std_logic;
SIGNAL \otR7[10]~output_o\ : std_logic;
SIGNAL \otR7[11]~output_o\ : std_logic;
SIGNAL \otR7[12]~output_o\ : std_logic;
SIGNAL \otR7[13]~output_o\ : std_logic;
SIGNAL \otR7[14]~output_o\ : std_logic;
SIGNAL \otR7[15]~output_o\ : std_logic;
SIGNAL \otR7[16]~output_o\ : std_logic;
SIGNAL \otR7[17]~output_o\ : std_logic;
SIGNAL \otR7[18]~output_o\ : std_logic;
SIGNAL \otR7[19]~output_o\ : std_logic;
SIGNAL \otR7[20]~output_o\ : std_logic;
SIGNAL \otR7[21]~output_o\ : std_logic;
SIGNAL \otR7[22]~output_o\ : std_logic;
SIGNAL \otR7[23]~output_o\ : std_logic;
SIGNAL \otR7[24]~output_o\ : std_logic;
SIGNAL \otR7[25]~output_o\ : std_logic;
SIGNAL \otR7[26]~output_o\ : std_logic;
SIGNAL \otR7[27]~output_o\ : std_logic;
SIGNAL \otR7[28]~output_o\ : std_logic;
SIGNAL \otR7[29]~output_o\ : std_logic;
SIGNAL \otR7[30]~output_o\ : std_logic;
SIGNAL \otR7[31]~output_o\ : std_logic;
SIGNAL \opcodeDebug[0]~output_o\ : std_logic;
SIGNAL \opcodeDebug[1]~output_o\ : std_logic;
SIGNAL \opcodeDebug[2]~output_o\ : std_logic;
SIGNAL \opcodeDebug[3]~output_o\ : std_logic;
SIGNAL \opcodeDebug[4]~output_o\ : std_logic;
SIGNAL \opcodeDebug[5]~output_o\ : std_logic;
SIGNAL \Mux1Debug~output_o\ : std_logic;
SIGNAL \Mux2Debug~output_o\ : std_logic;
SIGNAL \HabEscritaRegDebug~output_o\ : std_logic;
SIGNAL \Mux3Debug~output_o\ : std_logic;
SIGNAL \Mux4Debug~output_o\ : std_logic;
SIGNAL \BEQDebug~output_o\ : std_logic;
SIGNAL \HabLeMEMDebug~output_o\ : std_logic;
SIGNAL \HabEscMEMDebug~output_o\ : std_logic;
SIGNAL \ULAopDebug[0]~output_o\ : std_logic;
SIGNAL \ULAopDebug[1]~output_o\ : std_logic;
SIGNAL \out_PCTeste[0]~output_o\ : std_logic;
SIGNAL \out_PCTeste[1]~output_o\ : std_logic;
SIGNAL \out_PCTeste[2]~output_o\ : std_logic;
SIGNAL \out_PCTeste[3]~output_o\ : std_logic;
SIGNAL \out_PCTeste[4]~output_o\ : std_logic;
SIGNAL \out_PCTeste[5]~output_o\ : std_logic;
SIGNAL \out_PCTeste[6]~output_o\ : std_logic;
SIGNAL \out_PCTeste[7]~output_o\ : std_logic;
SIGNAL \out_PCTeste[8]~output_o\ : std_logic;
SIGNAL \out_PCTeste[9]~output_o\ : std_logic;
SIGNAL \out_PCTeste[10]~output_o\ : std_logic;
SIGNAL \out_PCTeste[11]~output_o\ : std_logic;
SIGNAL \out_PCTeste[12]~output_o\ : std_logic;
SIGNAL \out_PCTeste[13]~output_o\ : std_logic;
SIGNAL \out_PCTeste[14]~output_o\ : std_logic;
SIGNAL \out_PCTeste[15]~output_o\ : std_logic;
SIGNAL \out_PCTeste[16]~output_o\ : std_logic;
SIGNAL \out_PCTeste[17]~output_o\ : std_logic;
SIGNAL \out_PCTeste[18]~output_o\ : std_logic;
SIGNAL \out_PCTeste[19]~output_o\ : std_logic;
SIGNAL \out_PCTeste[20]~output_o\ : std_logic;
SIGNAL \out_PCTeste[21]~output_o\ : std_logic;
SIGNAL \out_PCTeste[22]~output_o\ : std_logic;
SIGNAL \out_PCTeste[23]~output_o\ : std_logic;
SIGNAL \out_PCTeste[24]~output_o\ : std_logic;
SIGNAL \out_PCTeste[25]~output_o\ : std_logic;
SIGNAL \out_PCTeste[26]~output_o\ : std_logic;
SIGNAL \out_PCTeste[27]~output_o\ : std_logic;
SIGNAL \out_PCTeste[28]~output_o\ : std_logic;
SIGNAL \out_PCTeste[29]~output_o\ : std_logic;
SIGNAL \out_PCTeste[30]~output_o\ : std_logic;
SIGNAL \out_PCTeste[31]~output_o\ : std_logic;
SIGNAL \testAluA[0]~output_o\ : std_logic;
SIGNAL \testAluA[1]~output_o\ : std_logic;
SIGNAL \testAluA[2]~output_o\ : std_logic;
SIGNAL \testAluA[3]~output_o\ : std_logic;
SIGNAL \testAluA[4]~output_o\ : std_logic;
SIGNAL \testAluA[5]~output_o\ : std_logic;
SIGNAL \testAluA[6]~output_o\ : std_logic;
SIGNAL \testAluA[7]~output_o\ : std_logic;
SIGNAL \testAluA[8]~output_o\ : std_logic;
SIGNAL \testAluA[9]~output_o\ : std_logic;
SIGNAL \testAluA[10]~output_o\ : std_logic;
SIGNAL \testAluA[11]~output_o\ : std_logic;
SIGNAL \testAluA[12]~output_o\ : std_logic;
SIGNAL \testAluA[13]~output_o\ : std_logic;
SIGNAL \testAluA[14]~output_o\ : std_logic;
SIGNAL \testAluA[15]~output_o\ : std_logic;
SIGNAL \testAluA[16]~output_o\ : std_logic;
SIGNAL \testAluA[17]~output_o\ : std_logic;
SIGNAL \testAluA[18]~output_o\ : std_logic;
SIGNAL \testAluA[19]~output_o\ : std_logic;
SIGNAL \testAluA[20]~output_o\ : std_logic;
SIGNAL \testAluA[21]~output_o\ : std_logic;
SIGNAL \testAluA[22]~output_o\ : std_logic;
SIGNAL \testAluA[23]~output_o\ : std_logic;
SIGNAL \testAluA[24]~output_o\ : std_logic;
SIGNAL \testAluA[25]~output_o\ : std_logic;
SIGNAL \testAluA[26]~output_o\ : std_logic;
SIGNAL \testAluA[27]~output_o\ : std_logic;
SIGNAL \testAluA[28]~output_o\ : std_logic;
SIGNAL \testAluA[29]~output_o\ : std_logic;
SIGNAL \testAluA[30]~output_o\ : std_logic;
SIGNAL \testAluA[31]~output_o\ : std_logic;
SIGNAL \testAluB[0]~output_o\ : std_logic;
SIGNAL \testAluB[1]~output_o\ : std_logic;
SIGNAL \testAluB[2]~output_o\ : std_logic;
SIGNAL \testAluB[3]~output_o\ : std_logic;
SIGNAL \testAluB[4]~output_o\ : std_logic;
SIGNAL \testAluB[5]~output_o\ : std_logic;
SIGNAL \testAluB[6]~output_o\ : std_logic;
SIGNAL \testAluB[7]~output_o\ : std_logic;
SIGNAL \testAluB[8]~output_o\ : std_logic;
SIGNAL \testAluB[9]~output_o\ : std_logic;
SIGNAL \testAluB[10]~output_o\ : std_logic;
SIGNAL \testAluB[11]~output_o\ : std_logic;
SIGNAL \testAluB[12]~output_o\ : std_logic;
SIGNAL \testAluB[13]~output_o\ : std_logic;
SIGNAL \testAluB[14]~output_o\ : std_logic;
SIGNAL \testAluB[15]~output_o\ : std_logic;
SIGNAL \testAluB[16]~output_o\ : std_logic;
SIGNAL \testAluB[17]~output_o\ : std_logic;
SIGNAL \testAluB[18]~output_o\ : std_logic;
SIGNAL \testAluB[19]~output_o\ : std_logic;
SIGNAL \testAluB[20]~output_o\ : std_logic;
SIGNAL \testAluB[21]~output_o\ : std_logic;
SIGNAL \testAluB[22]~output_o\ : std_logic;
SIGNAL \testAluB[23]~output_o\ : std_logic;
SIGNAL \testAluB[24]~output_o\ : std_logic;
SIGNAL \testAluB[25]~output_o\ : std_logic;
SIGNAL \testAluB[26]~output_o\ : std_logic;
SIGNAL \testAluB[27]~output_o\ : std_logic;
SIGNAL \testAluB[28]~output_o\ : std_logic;
SIGNAL \testAluB[29]~output_o\ : std_logic;
SIGNAL \testAluB[30]~output_o\ : std_logic;
SIGNAL \testAluB[31]~output_o\ : std_logic;
SIGNAL \testeAluRes[0]~output_o\ : std_logic;
SIGNAL \testeAluRes[1]~output_o\ : std_logic;
SIGNAL \testeAluRes[2]~output_o\ : std_logic;
SIGNAL \testeAluRes[3]~output_o\ : std_logic;
SIGNAL \testeAluRes[4]~output_o\ : std_logic;
SIGNAL \testeAluRes[5]~output_o\ : std_logic;
SIGNAL \testeAluRes[6]~output_o\ : std_logic;
SIGNAL \testeAluRes[7]~output_o\ : std_logic;
SIGNAL \testeAluRes[8]~output_o\ : std_logic;
SIGNAL \testeAluRes[9]~output_o\ : std_logic;
SIGNAL \testeAluRes[10]~output_o\ : std_logic;
SIGNAL \testeAluRes[11]~output_o\ : std_logic;
SIGNAL \testeAluRes[12]~output_o\ : std_logic;
SIGNAL \testeAluRes[13]~output_o\ : std_logic;
SIGNAL \testeAluRes[14]~output_o\ : std_logic;
SIGNAL \testeAluRes[15]~output_o\ : std_logic;
SIGNAL \testeAluRes[16]~output_o\ : std_logic;
SIGNAL \testeAluRes[17]~output_o\ : std_logic;
SIGNAL \testeAluRes[18]~output_o\ : std_logic;
SIGNAL \testeAluRes[19]~output_o\ : std_logic;
SIGNAL \testeAluRes[20]~output_o\ : std_logic;
SIGNAL \testeAluRes[21]~output_o\ : std_logic;
SIGNAL \testeAluRes[22]~output_o\ : std_logic;
SIGNAL \testeAluRes[23]~output_o\ : std_logic;
SIGNAL \testeAluRes[24]~output_o\ : std_logic;
SIGNAL \testeAluRes[25]~output_o\ : std_logic;
SIGNAL \testeAluRes[26]~output_o\ : std_logic;
SIGNAL \testeAluRes[27]~output_o\ : std_logic;
SIGNAL \testeAluRes[28]~output_o\ : std_logic;
SIGNAL \testeAluRes[29]~output_o\ : std_logic;
SIGNAL \testeAluRes[30]~output_o\ : std_logic;
SIGNAL \testeAluRes[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd|MuxPC|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[1]~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~18_combout\ : std_logic;
SIGNAL \fd|Rom|content~19_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:2:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:3:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:3:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~7_combout\ : std_logic;
SIGNAL \fd|Rom|content~8_combout\ : std_logic;
SIGNAL \fd|Rom|content~32_combout\ : std_logic;
SIGNAL \fd|Rom|content~28_combout\ : std_logic;
SIGNAL \ucfd|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~16_combout\ : std_logic;
SIGNAL \fd|MuxRtRd|selected[1]~3_combout\ : std_logic;
SIGNAL \fd|Rom|content~14_combout\ : std_logic;
SIGNAL \fd|Rom|content~26_combout\ : std_logic;
SIGNAL \fd|MuxRtRd|selected[0]~2_combout\ : std_logic;
SIGNAL \ucfd|HabEscritaReg~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~30_combout\ : std_logic;
SIGNAL \fd|Rom|content~31_combout\ : std_logic;
SIGNAL \fd|MuxRtRd|selected[2]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~15_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~64_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~65_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~66_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~67_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~199_combout\ : std_logic;
SIGNAL \fd|Rom|content~24_combout\ : std_logic;
SIGNAL \fd|Rom|content~25_combout\ : std_logic;
SIGNAL \fd|UCalu|output[2]~3_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~1_combout\ : std_logic;
SIGNAL \ucfd|BEQ~0_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal2~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~5_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal0~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~2_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~0_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~1_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~4_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~5_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~6_combout\ : std_logic;
SIGNAL \fd|Rom|content~10_combout\ : std_logic;
SIGNAL \fd|Rom|content~11_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[0]~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~9_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~3_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal2~1_combout\ : std_logic;
SIGNAL \fd|UCalu|output[2]~4_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~2_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~3_combout\ : std_logic;
SIGNAL \fd|ALU|choiceB|selected[0]~2_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[0]~60_combout\ : std_logic;
SIGNAL \fd|ALU|adder|a0|soma~2_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~2_combout\ : std_logic;
SIGNAL \fd|ALU|adder|a0|vaium~0_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~72_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~73_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~74_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~75_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~193_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~76_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~77_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~78_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~79_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~194_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~80_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~81_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~82_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~83_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~200_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[6]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[6]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[5]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[5]~11_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[5]~8_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[4]~7_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[3]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[1]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[1]~3_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[2]~5_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~88_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~89_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[6]~9_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[6]~114_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[6]~115_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[7]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[7]~15_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~92_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~93_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[7]~10_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[7]~112_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[7]~113_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~148_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~149_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~150_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~151_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~213_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[26]~52_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[26]~53_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~168_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~169_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[26]~29_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~166_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~167_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[25]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[25]~50_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[25]~51_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~160_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~161_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[24]~27_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[24]~48_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[24]~49_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[23]~46_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[23]~47_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~158_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~159_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[23]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~152_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~153_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[22]~25_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[22]~44_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[22]~45_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[21]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~146_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~147_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[20]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[20]~40_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[20]~41_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[19]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[19]~38_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[19]~39_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[19]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~140_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~141_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[19]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~138_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~139_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[18]~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[18]~36_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[18]~37_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[17]~34_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[17]~35_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~134_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~135_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[17]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[16]~32_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[16]~33_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~128_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~129_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[16]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~126_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~127_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[15]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[15]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[15]~31_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[14]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[14]~29_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~122_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~123_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[14]~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[13]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[13]~27_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[13]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[12]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[12]~25_combout\ : std_logic;
SIGNAL \fd|Rom|content~27_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[11]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[11]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[11]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~106_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~107_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[10]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[10]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[10]~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[9]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[9]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~96_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~97_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[8]~11_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[8]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[8]~17_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~100_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~101_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[9]~12_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~29_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[12]~15_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[26]~74_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[26]~75_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~190_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~191_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~188_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~189_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~223_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[30]~60_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[30]~60_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[30]~61_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~186_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~187_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[30]~33_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[29]~58_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[29]~59_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~182_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~183_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[29]~32_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~176_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~177_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[28]~31_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[28]~56_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[28]~57_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[27]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~172_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~173_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[27]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[27]~54_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[27]~55_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[30]~66_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[30]~67_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[30]~61_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[30]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~184_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~185_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~222_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[29]~58_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[29]~68_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[29]~69_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[29]~59_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~180_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~181_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~221_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[28]~56_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[28]~70_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[28]~71_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[28]~57_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~178_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~179_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~220_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[27]~54_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[27]~72_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[27]~73_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[27]~55_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~174_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~175_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~219_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[26]~52_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[26]~53_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~170_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~171_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~218_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[25]~50_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[25]~76_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[25]~77_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[25]~51_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~164_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~165_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~217_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[24]~48_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[24]~78_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[24]~79_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[24]~49_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~162_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~163_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~216_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[23]~46_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[23]~80_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[23]~81_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[23]~47_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~156_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~157_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~215_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[22]~44_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[22]~82_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[22]~83_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[22]~45_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~154_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~155_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~214_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[20]~40_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[20]~86_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[20]~87_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[20]~41_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~144_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~145_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~212_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[19]~38_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[19]~88_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[19]~89_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[19]~39_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~142_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~143_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~211_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[18]~36_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[18]~90_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[18]~91_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[18]~37_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~136_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~137_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~210_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[17]~34_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[17]~92_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[17]~93_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[17]~35_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~132_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~133_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~209_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[16]~32_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[16]~94_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[16]~95_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[16]~33_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~130_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~131_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~208_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[15]~30_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[15]~96_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[15]~97_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[15]~31_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~124_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~125_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~207_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[14]~28_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[14]~98_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[14]~99_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[14]~29_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|DOUT[14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~120_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~121_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~206_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[13]~26_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[13]~100_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[13]~101_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[13]~27_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~118_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~119_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~116_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~117_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~198_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[12]~24_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[12]~102_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[12]~103_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[12]~25_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~112_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~113_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~114_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~115_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~197_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[11]~22_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[11]~104_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[11]~105_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[11]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~110_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~111_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~108_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~109_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~196_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[10]~20_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[10]~106_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[10]~107_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[10]~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~104_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~105_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~205_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[9]~18_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[9]~108_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[9]~109_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[9]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~102_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~103_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~204_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[8]~16_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[8]~110_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[8]~111_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[8]~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~98_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~99_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~203_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[7]~14_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[7]~15_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~94_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~95_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~202_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[6]~12_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[6]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~90_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~91_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~201_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[5]~10_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[5]~116_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[5]~117_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[5]~11_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~86_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~87_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~84_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~85_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~195_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[4]~8_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[4]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[4]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[4]~9_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[4]~118_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[4]~119_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[3]~6_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[3]~7_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[3]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[3]~7_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[3]~120_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[3]~121_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[2]~4_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[2]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[2]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[2]~5_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[2]~122_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[2]~123_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[1]~2_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[1]~3_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~68_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~69_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~70_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~71_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~192_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[1]~4_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[1]~124_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[1]~125_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[31]~62_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[31]~34_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~62_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~64_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~65_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~63_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[31]~63_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[31]~62_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[31]~63_combout\ : std_logic;
SIGNAL \fd|ALU|out4[0]~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[0]~61_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[21]~42_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[21]~43_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[21]~42_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[21]~43_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[21]~84_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[21]~85_combout\ : std_logic;
SIGNAL \fd|beqAnd~5_combout\ : std_logic;
SIGNAL \fd|beqAnd~6_combout\ : std_logic;
SIGNAL \fd|beqAnd~7_combout\ : std_logic;
SIGNAL \fd|beqAnd~1_combout\ : std_logic;
SIGNAL \fd|beqAnd~2_combout\ : std_logic;
SIGNAL \fd|beqAnd~0_combout\ : std_logic;
SIGNAL \fd|beqAnd~3_combout\ : std_logic;
SIGNAL \fd|beqAnd~4_combout\ : std_logic;
SIGNAL \fd|beqAnd~8_combout\ : std_logic;
SIGNAL \fd|beqAnd~9_combout\ : std_logic;
SIGNAL \fd|beqAnd~10_combout\ : std_logic;
SIGNAL \fd|beqAnd~11_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[3]~3_combout\ : std_logic;
SIGNAL \fd|Rom|content~12_combout\ : std_logic;
SIGNAL \fd|Rom|content~13_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[2]~2_combout\ : std_logic;
SIGNAL \fd|Rom|content~20_combout\ : std_logic;
SIGNAL \fd|Rom|content~21_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:3:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:3:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:4:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:4:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[4]~5_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:4:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:4:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:5:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:5:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[5]~4_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:6:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:6:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:7:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:7:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[7]~2_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:8:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:7:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[8]~10_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:8:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:8:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:9:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:9:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[9]~1_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:7:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:9:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:9:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:10:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[10]~9_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:10:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:11:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[11]~8_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:12:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:11:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[12]~7_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:12:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:10:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:12:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[13]~5_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[13]~6_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:15:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:13:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:13:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:14:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:15:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[15]~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~2_combout\ : std_logic;
SIGNAL \fd|Rom|content~22_combout\ : std_logic;
SIGNAL \fd|Rom|content~23_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:6:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:6:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[6]~3_combout\ : std_logic;
SIGNAL \fd|Rom|content~3_combout\ : std_logic;
SIGNAL \fd|Rom|content~6_combout\ : std_logic;
SIGNAL \ucfd|Equal4~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:14:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:14:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[14]~4_combout\ : std_logic;
SIGNAL \fd|Rom|content~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~4_combout\ : std_logic;
SIGNAL \ucfd|Equal1~0_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[0]~1_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:15:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:15:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:16:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:16:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[16]~6_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:16:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:16:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:17:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:17:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[17]~7_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:17:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:18:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[18]~11_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:18:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:19:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:18:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[19]~12_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:19:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:17:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:19:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:20:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:20:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[20]~8_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:20:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:20:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:21:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:21:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[21]~9_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:21:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:22:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:21:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[22]~13_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:23:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:22:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[23]~14_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:23:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:24:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[24]~15_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:24:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:22:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:24:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:25:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:25:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[25]~10_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:25:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:23:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:25:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:26:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:26:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[26]~11_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:26:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:27:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[27]~16_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:27:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:28:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:27:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[28]~17_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:29:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:26:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:28:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[29]~18_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:29:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:30:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[30]~19_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:28:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:31:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:30:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[31]~20_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~35_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to3|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to5|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to1|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to6|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to2|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to8|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to4|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|Ram|ram_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \fd|UCalu|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ucfd|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \fd|Rom|ALT_INV_content~6_combout\ : std_logic;
SIGNAL \fd|Rom|ALT_INV_content~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
otR1 <= ww_otR1;
otR2 <= ww_otR2;
otR3 <= ww_otR3;
otR4 <= ww_otR4;
otR5 <= ww_otR5;
otR6 <= ww_otR6;
otR7 <= ww_otR7;
opcodeDebug <= ww_opcodeDebug;
Mux1Debug <= ww_Mux1Debug;
Mux2Debug <= ww_Mux2Debug;
HabEscritaRegDebug <= ww_HabEscritaRegDebug;
Mux3Debug <= ww_Mux3Debug;
Mux4Debug <= ww_Mux4Debug;
BEQDebug <= ww_BEQDebug;
HabLeMEMDebug <= ww_HabLeMEMDebug;
HabEscMEMDebug <= ww_HabEscMEMDebug;
ULAopDebug <= ww_ULAopDebug;
out_PCTeste <= ww_out_PCTeste;
testAluA <= ww_testAluA;
testAluB <= ww_testAluB;
testeAluRes <= ww_testeAluRes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \fd|BankRegister|muxB|selected[31]~223_combout\ & \fd|BankRegister|muxB|selected[30]~222_combout\ & \fd|BankRegister|muxB|selected[29]~221_combout\ & 
\fd|BankRegister|muxB|selected[28]~220_combout\ & \fd|BankRegister|muxB|selected[27]~219_combout\ & \fd|BankRegister|muxB|selected[26]~218_combout\ & \fd|BankRegister|muxB|selected[25]~217_combout\ & \fd|BankRegister|muxB|selected[24]~216_combout\ & 
\fd|BankRegister|muxB|selected[23]~215_combout\ & \fd|BankRegister|muxB|selected[22]~214_combout\ & \fd|BankRegister|muxB|selected[21]~213_combout\ & \fd|BankRegister|muxB|selected[20]~212_combout\ & \fd|BankRegister|muxB|selected[19]~211_combout\ & 
\fd|BankRegister|muxB|selected[18]~210_combout\ & \fd|BankRegister|muxB|selected[17]~209_combout\ & \fd|BankRegister|muxB|selected[16]~208_combout\ & \fd|BankRegister|muxB|selected[15]~207_combout\ & \fd|BankRegister|muxB|selected[14]~206_combout\ & 
\fd|BankRegister|muxB|selected[13]~198_combout\ & \fd|BankRegister|muxB|selected[12]~197_combout\ & \fd|BankRegister|muxB|selected[11]~196_combout\ & \fd|BankRegister|muxB|selected[10]~205_combout\ & \fd|BankRegister|muxB|selected[9]~204_combout\ & 
\fd|BankRegister|muxB|selected[8]~203_combout\ & \fd|BankRegister|muxB|selected[7]~202_combout\ & \fd|BankRegister|muxB|selected[6]~201_combout\ & \fd|BankRegister|muxB|selected[5]~195_combout\ & \fd|BankRegister|muxB|selected[4]~200_combout\ & 
\fd|BankRegister|muxB|selected[3]~194_combout\ & \fd|BankRegister|muxB|selected[2]~193_combout\ & \fd|BankRegister|muxB|selected[1]~192_combout\ & \fd|BankRegister|muxB|selected[0]~199_combout\);

\fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fd|ALU|final|selected[4]~119_combout\ & \fd|ALU|final|selected[3]~121_combout\ & \fd|ALU|final|selected[2]~123_combout\ & \fd|ALU|final|selected[1]~125_combout\ & 
\fd|ALU|final|selected[0]~61_combout\);

\fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fd|ALU|final|selected[4]~119_combout\ & \fd|ALU|final|selected[3]~121_combout\ & \fd|ALU|final|selected[2]~123_combout\ & \fd|ALU|final|selected[1]~125_combout\ & 
\fd|ALU|final|selected[0]~61_combout\);

\fd|Ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a1\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a2\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a3\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a4\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a5\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a6\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a7\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a8\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a9\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a10\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a11\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a12\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a13\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a14\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a15\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a16\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a17\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a18\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a19\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a20\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a21\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a22\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a23\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a24\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a25\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a26\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a27\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a28\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a29\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a30\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a31\ <= \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ucfd|ALT_INV_Equal1~0_combout\ <= NOT \ucfd|Equal1~0_combout\;
\fd|Rom|ALT_INV_content~6_combout\ <= NOT \fd|Rom|content~6_combout\;
\fd|Rom|ALT_INV_content~4_combout\ <= NOT \fd|Rom|content~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y49_N9
\otR1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(0),
	devoe => ww_devoe,
	o => \otR1[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\otR1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(1),
	devoe => ww_devoe,
	o => \otR1[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\otR1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(2),
	devoe => ww_devoe,
	o => \otR1[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\otR1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(3),
	devoe => ww_devoe,
	o => \otR1[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\otR1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(4),
	devoe => ww_devoe,
	o => \otR1[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\otR1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(5),
	devoe => ww_devoe,
	o => \otR1[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\otR1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(6),
	devoe => ww_devoe,
	o => \otR1[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\otR1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(7),
	devoe => ww_devoe,
	o => \otR1[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\otR1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(8),
	devoe => ww_devoe,
	o => \otR1[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\otR1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(9),
	devoe => ww_devoe,
	o => \otR1[9]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\otR1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(10),
	devoe => ww_devoe,
	o => \otR1[10]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\otR1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(11),
	devoe => ww_devoe,
	o => \otR1[11]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\otR1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(12),
	devoe => ww_devoe,
	o => \otR1[12]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\otR1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(13),
	devoe => ww_devoe,
	o => \otR1[13]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\otR1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(14),
	devoe => ww_devoe,
	o => \otR1[14]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\otR1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(15),
	devoe => ww_devoe,
	o => \otR1[15]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\otR1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(16),
	devoe => ww_devoe,
	o => \otR1[16]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\otR1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(17),
	devoe => ww_devoe,
	o => \otR1[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\otR1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(18),
	devoe => ww_devoe,
	o => \otR1[18]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\otR1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(19),
	devoe => ww_devoe,
	o => \otR1[19]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\otR1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(20),
	devoe => ww_devoe,
	o => \otR1[20]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\otR1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(21),
	devoe => ww_devoe,
	o => \otR1[21]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\otR1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(22),
	devoe => ww_devoe,
	o => \otR1[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\otR1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(23),
	devoe => ww_devoe,
	o => \otR1[23]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\otR1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(24),
	devoe => ww_devoe,
	o => \otR1[24]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\otR1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(25),
	devoe => ww_devoe,
	o => \otR1[25]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\otR1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(26),
	devoe => ww_devoe,
	o => \otR1[26]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\otR1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(27),
	devoe => ww_devoe,
	o => \otR1[27]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\otR1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(28),
	devoe => ww_devoe,
	o => \otR1[28]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\otR1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(29),
	devoe => ww_devoe,
	o => \otR1[29]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\otR1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(30),
	devoe => ww_devoe,
	o => \otR1[30]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\otR1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to1|DOUT\(31),
	devoe => ww_devoe,
	o => \otR1[31]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\otR2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(0),
	devoe => ww_devoe,
	o => \otR2[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\otR2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(1),
	devoe => ww_devoe,
	o => \otR2[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\otR2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(2),
	devoe => ww_devoe,
	o => \otR2[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\otR2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(3),
	devoe => ww_devoe,
	o => \otR2[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\otR2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(4),
	devoe => ww_devoe,
	o => \otR2[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\otR2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(5),
	devoe => ww_devoe,
	o => \otR2[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\otR2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(6),
	devoe => ww_devoe,
	o => \otR2[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\otR2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(7),
	devoe => ww_devoe,
	o => \otR2[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\otR2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(8),
	devoe => ww_devoe,
	o => \otR2[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\otR2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(9),
	devoe => ww_devoe,
	o => \otR2[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\otR2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(10),
	devoe => ww_devoe,
	o => \otR2[10]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\otR2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(11),
	devoe => ww_devoe,
	o => \otR2[11]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\otR2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(12),
	devoe => ww_devoe,
	o => \otR2[12]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\otR2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(13),
	devoe => ww_devoe,
	o => \otR2[13]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\otR2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(14),
	devoe => ww_devoe,
	o => \otR2[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\otR2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(15),
	devoe => ww_devoe,
	o => \otR2[15]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\otR2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(16),
	devoe => ww_devoe,
	o => \otR2[16]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\otR2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(17),
	devoe => ww_devoe,
	o => \otR2[17]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\otR2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(18),
	devoe => ww_devoe,
	o => \otR2[18]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\otR2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(19),
	devoe => ww_devoe,
	o => \otR2[19]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\otR2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(20),
	devoe => ww_devoe,
	o => \otR2[20]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\otR2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(21),
	devoe => ww_devoe,
	o => \otR2[21]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\otR2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(22),
	devoe => ww_devoe,
	o => \otR2[22]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\otR2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(23),
	devoe => ww_devoe,
	o => \otR2[23]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\otR2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(24),
	devoe => ww_devoe,
	o => \otR2[24]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\otR2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(25),
	devoe => ww_devoe,
	o => \otR2[25]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\otR2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(26),
	devoe => ww_devoe,
	o => \otR2[26]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\otR2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(27),
	devoe => ww_devoe,
	o => \otR2[27]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\otR2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(28),
	devoe => ww_devoe,
	o => \otR2[28]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\otR2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(29),
	devoe => ww_devoe,
	o => \otR2[29]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\otR2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(30),
	devoe => ww_devoe,
	o => \otR2[30]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\otR2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to2|DOUT\(31),
	devoe => ww_devoe,
	o => \otR2[31]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\otR3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(0),
	devoe => ww_devoe,
	o => \otR3[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\otR3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(1),
	devoe => ww_devoe,
	o => \otR3[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\otR3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(2),
	devoe => ww_devoe,
	o => \otR3[2]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\otR3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(3),
	devoe => ww_devoe,
	o => \otR3[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\otR3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(4),
	devoe => ww_devoe,
	o => \otR3[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\otR3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(5),
	devoe => ww_devoe,
	o => \otR3[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\otR3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(6),
	devoe => ww_devoe,
	o => \otR3[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\otR3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(7),
	devoe => ww_devoe,
	o => \otR3[7]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\otR3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(8),
	devoe => ww_devoe,
	o => \otR3[8]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\otR3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(9),
	devoe => ww_devoe,
	o => \otR3[9]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\otR3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(10),
	devoe => ww_devoe,
	o => \otR3[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\otR3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(11),
	devoe => ww_devoe,
	o => \otR3[11]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\otR3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(12),
	devoe => ww_devoe,
	o => \otR3[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\otR3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(13),
	devoe => ww_devoe,
	o => \otR3[13]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\otR3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(14),
	devoe => ww_devoe,
	o => \otR3[14]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\otR3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(15),
	devoe => ww_devoe,
	o => \otR3[15]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\otR3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(16),
	devoe => ww_devoe,
	o => \otR3[16]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\otR3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(17),
	devoe => ww_devoe,
	o => \otR3[17]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\otR3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(18),
	devoe => ww_devoe,
	o => \otR3[18]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\otR3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(19),
	devoe => ww_devoe,
	o => \otR3[19]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\otR3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(20),
	devoe => ww_devoe,
	o => \otR3[20]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\otR3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(21),
	devoe => ww_devoe,
	o => \otR3[21]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\otR3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(22),
	devoe => ww_devoe,
	o => \otR3[22]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\otR3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(23),
	devoe => ww_devoe,
	o => \otR3[23]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\otR3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(24),
	devoe => ww_devoe,
	o => \otR3[24]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\otR3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(25),
	devoe => ww_devoe,
	o => \otR3[25]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\otR3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(26),
	devoe => ww_devoe,
	o => \otR3[26]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\otR3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(27),
	devoe => ww_devoe,
	o => \otR3[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\otR3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(28),
	devoe => ww_devoe,
	o => \otR3[28]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\otR3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(29),
	devoe => ww_devoe,
	o => \otR3[29]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\otR3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(30),
	devoe => ww_devoe,
	o => \otR3[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\otR3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to3|DOUT\(31),
	devoe => ww_devoe,
	o => \otR3[31]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\otR4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(0),
	devoe => ww_devoe,
	o => \otR4[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\otR4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(1),
	devoe => ww_devoe,
	o => \otR4[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\otR4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(2),
	devoe => ww_devoe,
	o => \otR4[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\otR4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(3),
	devoe => ww_devoe,
	o => \otR4[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\otR4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(4),
	devoe => ww_devoe,
	o => \otR4[4]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\otR4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(5),
	devoe => ww_devoe,
	o => \otR4[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\otR4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(6),
	devoe => ww_devoe,
	o => \otR4[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\otR4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(7),
	devoe => ww_devoe,
	o => \otR4[7]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\otR4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(8),
	devoe => ww_devoe,
	o => \otR4[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\otR4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(9),
	devoe => ww_devoe,
	o => \otR4[9]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\otR4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(10),
	devoe => ww_devoe,
	o => \otR4[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\otR4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(11),
	devoe => ww_devoe,
	o => \otR4[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\otR4[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(12),
	devoe => ww_devoe,
	o => \otR4[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\otR4[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(13),
	devoe => ww_devoe,
	o => \otR4[13]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\otR4[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(14),
	devoe => ww_devoe,
	o => \otR4[14]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\otR4[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(15),
	devoe => ww_devoe,
	o => \otR4[15]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\otR4[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(16),
	devoe => ww_devoe,
	o => \otR4[16]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\otR4[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(17),
	devoe => ww_devoe,
	o => \otR4[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\otR4[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(18),
	devoe => ww_devoe,
	o => \otR4[18]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\otR4[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(19),
	devoe => ww_devoe,
	o => \otR4[19]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\otR4[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(20),
	devoe => ww_devoe,
	o => \otR4[20]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\otR4[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(21),
	devoe => ww_devoe,
	o => \otR4[21]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\otR4[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(22),
	devoe => ww_devoe,
	o => \otR4[22]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\otR4[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(23),
	devoe => ww_devoe,
	o => \otR4[23]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\otR4[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(24),
	devoe => ww_devoe,
	o => \otR4[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\otR4[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(25),
	devoe => ww_devoe,
	o => \otR4[25]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\otR4[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(26),
	devoe => ww_devoe,
	o => \otR4[26]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\otR4[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(27),
	devoe => ww_devoe,
	o => \otR4[27]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\otR4[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(28),
	devoe => ww_devoe,
	o => \otR4[28]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\otR4[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(29),
	devoe => ww_devoe,
	o => \otR4[29]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\otR4[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(30),
	devoe => ww_devoe,
	o => \otR4[30]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\otR4[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to4|DOUT\(31),
	devoe => ww_devoe,
	o => \otR4[31]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\otR5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(0),
	devoe => ww_devoe,
	o => \otR5[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\otR5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(1),
	devoe => ww_devoe,
	o => \otR5[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\otR5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(2),
	devoe => ww_devoe,
	o => \otR5[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\otR5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(3),
	devoe => ww_devoe,
	o => \otR5[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\otR5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(4),
	devoe => ww_devoe,
	o => \otR5[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\otR5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(5),
	devoe => ww_devoe,
	o => \otR5[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\otR5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(6),
	devoe => ww_devoe,
	o => \otR5[6]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\otR5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(7),
	devoe => ww_devoe,
	o => \otR5[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\otR5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(8),
	devoe => ww_devoe,
	o => \otR5[8]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\otR5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(9),
	devoe => ww_devoe,
	o => \otR5[9]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\otR5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(10),
	devoe => ww_devoe,
	o => \otR5[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\otR5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(11),
	devoe => ww_devoe,
	o => \otR5[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\otR5[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(12),
	devoe => ww_devoe,
	o => \otR5[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\otR5[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(13),
	devoe => ww_devoe,
	o => \otR5[13]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\otR5[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(14),
	devoe => ww_devoe,
	o => \otR5[14]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\otR5[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(15),
	devoe => ww_devoe,
	o => \otR5[15]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\otR5[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(16),
	devoe => ww_devoe,
	o => \otR5[16]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\otR5[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(17),
	devoe => ww_devoe,
	o => \otR5[17]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\otR5[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(18),
	devoe => ww_devoe,
	o => \otR5[18]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\otR5[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(19),
	devoe => ww_devoe,
	o => \otR5[19]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\otR5[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(20),
	devoe => ww_devoe,
	o => \otR5[20]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\otR5[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(21),
	devoe => ww_devoe,
	o => \otR5[21]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\otR5[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(22),
	devoe => ww_devoe,
	o => \otR5[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\otR5[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(23),
	devoe => ww_devoe,
	o => \otR5[23]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\otR5[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(24),
	devoe => ww_devoe,
	o => \otR5[24]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\otR5[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(25),
	devoe => ww_devoe,
	o => \otR5[25]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\otR5[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(26),
	devoe => ww_devoe,
	o => \otR5[26]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\otR5[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(27),
	devoe => ww_devoe,
	o => \otR5[27]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\otR5[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(28),
	devoe => ww_devoe,
	o => \otR5[28]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\otR5[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(29),
	devoe => ww_devoe,
	o => \otR5[29]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\otR5[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(30),
	devoe => ww_devoe,
	o => \otR5[30]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\otR5[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to5|DOUT\(31),
	devoe => ww_devoe,
	o => \otR5[31]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\otR6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(0),
	devoe => ww_devoe,
	o => \otR6[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\otR6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(1),
	devoe => ww_devoe,
	o => \otR6[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\otR6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(2),
	devoe => ww_devoe,
	o => \otR6[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\otR6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(3),
	devoe => ww_devoe,
	o => \otR6[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\otR6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(4),
	devoe => ww_devoe,
	o => \otR6[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\otR6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(5),
	devoe => ww_devoe,
	o => \otR6[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\otR6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(6),
	devoe => ww_devoe,
	o => \otR6[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\otR6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(7),
	devoe => ww_devoe,
	o => \otR6[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\otR6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(8),
	devoe => ww_devoe,
	o => \otR6[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\otR6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(9),
	devoe => ww_devoe,
	o => \otR6[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\otR6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(10),
	devoe => ww_devoe,
	o => \otR6[10]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\otR6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(11),
	devoe => ww_devoe,
	o => \otR6[11]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\otR6[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(12),
	devoe => ww_devoe,
	o => \otR6[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\otR6[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(13),
	devoe => ww_devoe,
	o => \otR6[13]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\otR6[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(14),
	devoe => ww_devoe,
	o => \otR6[14]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\otR6[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(15),
	devoe => ww_devoe,
	o => \otR6[15]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\otR6[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(16),
	devoe => ww_devoe,
	o => \otR6[16]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\otR6[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(17),
	devoe => ww_devoe,
	o => \otR6[17]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\otR6[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(18),
	devoe => ww_devoe,
	o => \otR6[18]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\otR6[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(19),
	devoe => ww_devoe,
	o => \otR6[19]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\otR6[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(20),
	devoe => ww_devoe,
	o => \otR6[20]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\otR6[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(21),
	devoe => ww_devoe,
	o => \otR6[21]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\otR6[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(22),
	devoe => ww_devoe,
	o => \otR6[22]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\otR6[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(23),
	devoe => ww_devoe,
	o => \otR6[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\otR6[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(24),
	devoe => ww_devoe,
	o => \otR6[24]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\otR6[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(25),
	devoe => ww_devoe,
	o => \otR6[25]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\otR6[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(26),
	devoe => ww_devoe,
	o => \otR6[26]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\otR6[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(27),
	devoe => ww_devoe,
	o => \otR6[27]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\otR6[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(28),
	devoe => ww_devoe,
	o => \otR6[28]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\otR6[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(29),
	devoe => ww_devoe,
	o => \otR6[29]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\otR6[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(30),
	devoe => ww_devoe,
	o => \otR6[30]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\otR6[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to6|DOUT\(31),
	devoe => ww_devoe,
	o => \otR6[31]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\otR7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(0),
	devoe => ww_devoe,
	o => \otR7[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\otR7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(1),
	devoe => ww_devoe,
	o => \otR7[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\otR7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(2),
	devoe => ww_devoe,
	o => \otR7[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\otR7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(3),
	devoe => ww_devoe,
	o => \otR7[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\otR7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(4),
	devoe => ww_devoe,
	o => \otR7[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\otR7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(5),
	devoe => ww_devoe,
	o => \otR7[5]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\otR7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(6),
	devoe => ww_devoe,
	o => \otR7[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\otR7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(7),
	devoe => ww_devoe,
	o => \otR7[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\otR7[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(8),
	devoe => ww_devoe,
	o => \otR7[8]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\otR7[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(9),
	devoe => ww_devoe,
	o => \otR7[9]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\otR7[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(10),
	devoe => ww_devoe,
	o => \otR7[10]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\otR7[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(11),
	devoe => ww_devoe,
	o => \otR7[11]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\otR7[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(12),
	devoe => ww_devoe,
	o => \otR7[12]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\otR7[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(13),
	devoe => ww_devoe,
	o => \otR7[13]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\otR7[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(14),
	devoe => ww_devoe,
	o => \otR7[14]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\otR7[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(15),
	devoe => ww_devoe,
	o => \otR7[15]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\otR7[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(16),
	devoe => ww_devoe,
	o => \otR7[16]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\otR7[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(17),
	devoe => ww_devoe,
	o => \otR7[17]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\otR7[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(18),
	devoe => ww_devoe,
	o => \otR7[18]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\otR7[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(19),
	devoe => ww_devoe,
	o => \otR7[19]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\otR7[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(20),
	devoe => ww_devoe,
	o => \otR7[20]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\otR7[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(21),
	devoe => ww_devoe,
	o => \otR7[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\otR7[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(22),
	devoe => ww_devoe,
	o => \otR7[22]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\otR7[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(23),
	devoe => ww_devoe,
	o => \otR7[23]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\otR7[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(24),
	devoe => ww_devoe,
	o => \otR7[24]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\otR7[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(25),
	devoe => ww_devoe,
	o => \otR7[25]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\otR7[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(26),
	devoe => ww_devoe,
	o => \otR7[26]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\otR7[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(27),
	devoe => ww_devoe,
	o => \otR7[27]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\otR7[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(28),
	devoe => ww_devoe,
	o => \otR7[28]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\otR7[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(29),
	devoe => ww_devoe,
	o => \otR7[29]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\otR7[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(30),
	devoe => ww_devoe,
	o => \otR7[30]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\otR7[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|add1to7|DOUT\(31),
	devoe => ww_devoe,
	o => \otR7[31]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\opcodeDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|ALT_INV_content~4_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\opcodeDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|ALT_INV_content~6_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\opcodeDebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|content~9_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[2]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\opcodeDebug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcodeDebug[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\opcodeDebug[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcodeDebug[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\opcodeDebug[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|ALT_INV_content~4_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Mux1Debug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal4~0_combout\,
	devoe => ww_devoe,
	o => \Mux1Debug~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Mux2Debug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Mux2Debug~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HabEscritaRegDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|HabEscritaReg~0_combout\,
	devoe => ww_devoe,
	o => \HabEscritaRegDebug~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Mux3Debug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \Mux3Debug~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\Mux4Debug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \Mux4Debug~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\BEQDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|BEQ~0_combout\,
	devoe => ww_devoe,
	o => \BEQDebug~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HabLeMEMDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HabLeMEMDebug~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\HabEscMEMDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HabEscMEMDebug~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\ULAopDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|BEQ~0_combout\,
	devoe => ww_devoe,
	o => \ULAopDebug[0]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\ULAopDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ULAopDebug[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\out_PCTeste[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \out_PCTeste[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\out_PCTeste[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \out_PCTeste[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\out_PCTeste[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \out_PCTeste[2]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\out_PCTeste[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \out_PCTeste[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\out_PCTeste[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \out_PCTeste[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\out_PCTeste[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \out_PCTeste[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\out_PCTeste[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \out_PCTeste[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\out_PCTeste[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \out_PCTeste[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\out_PCTeste[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \out_PCTeste[8]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\out_PCTeste[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(9),
	devoe => ww_devoe,
	o => \out_PCTeste[9]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\out_PCTeste[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(10),
	devoe => ww_devoe,
	o => \out_PCTeste[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\out_PCTeste[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(11),
	devoe => ww_devoe,
	o => \out_PCTeste[11]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\out_PCTeste[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(12),
	devoe => ww_devoe,
	o => \out_PCTeste[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\out_PCTeste[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(13),
	devoe => ww_devoe,
	o => \out_PCTeste[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\out_PCTeste[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(14),
	devoe => ww_devoe,
	o => \out_PCTeste[14]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\out_PCTeste[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(15),
	devoe => ww_devoe,
	o => \out_PCTeste[15]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\out_PCTeste[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(16),
	devoe => ww_devoe,
	o => \out_PCTeste[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\out_PCTeste[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(17),
	devoe => ww_devoe,
	o => \out_PCTeste[17]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\out_PCTeste[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(18),
	devoe => ww_devoe,
	o => \out_PCTeste[18]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\out_PCTeste[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(19),
	devoe => ww_devoe,
	o => \out_PCTeste[19]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\out_PCTeste[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(20),
	devoe => ww_devoe,
	o => \out_PCTeste[20]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\out_PCTeste[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(21),
	devoe => ww_devoe,
	o => \out_PCTeste[21]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\out_PCTeste[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(22),
	devoe => ww_devoe,
	o => \out_PCTeste[22]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\out_PCTeste[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(23),
	devoe => ww_devoe,
	o => \out_PCTeste[23]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\out_PCTeste[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(24),
	devoe => ww_devoe,
	o => \out_PCTeste[24]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\out_PCTeste[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(25),
	devoe => ww_devoe,
	o => \out_PCTeste[25]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\out_PCTeste[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(26),
	devoe => ww_devoe,
	o => \out_PCTeste[26]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\out_PCTeste[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(27),
	devoe => ww_devoe,
	o => \out_PCTeste[27]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\out_PCTeste[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(28),
	devoe => ww_devoe,
	o => \out_PCTeste[28]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\out_PCTeste[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(29),
	devoe => ww_devoe,
	o => \out_PCTeste[29]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\out_PCTeste[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(30),
	devoe => ww_devoe,
	o => \out_PCTeste[30]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\out_PCTeste[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|PC|DOUT\(31),
	devoe => ww_devoe,
	o => \out_PCTeste[31]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\testAluA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[0]~1_combout\,
	devoe => ww_devoe,
	o => \testAluA[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\testAluA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[1]~3_combout\,
	devoe => ww_devoe,
	o => \testAluA[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\testAluA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[2]~5_combout\,
	devoe => ww_devoe,
	o => \testAluA[2]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\testAluA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[3]~7_combout\,
	devoe => ww_devoe,
	o => \testAluA[3]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\testAluA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[4]~9_combout\,
	devoe => ww_devoe,
	o => \testAluA[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\testAluA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[5]~11_combout\,
	devoe => ww_devoe,
	o => \testAluA[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\testAluA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[6]~13_combout\,
	devoe => ww_devoe,
	o => \testAluA[6]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\testAluA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[7]~15_combout\,
	devoe => ww_devoe,
	o => \testAluA[7]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\testAluA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[8]~17_combout\,
	devoe => ww_devoe,
	o => \testAluA[8]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\testAluA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[9]~19_combout\,
	devoe => ww_devoe,
	o => \testAluA[9]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\testAluA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[10]~21_combout\,
	devoe => ww_devoe,
	o => \testAluA[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\testAluA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[11]~23_combout\,
	devoe => ww_devoe,
	o => \testAluA[11]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\testAluA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[12]~25_combout\,
	devoe => ww_devoe,
	o => \testAluA[12]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\testAluA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[13]~27_combout\,
	devoe => ww_devoe,
	o => \testAluA[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\testAluA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[14]~29_combout\,
	devoe => ww_devoe,
	o => \testAluA[14]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\testAluA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[15]~31_combout\,
	devoe => ww_devoe,
	o => \testAluA[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\testAluA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[16]~33_combout\,
	devoe => ww_devoe,
	o => \testAluA[16]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\testAluA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[17]~35_combout\,
	devoe => ww_devoe,
	o => \testAluA[17]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\testAluA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[18]~37_combout\,
	devoe => ww_devoe,
	o => \testAluA[18]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\testAluA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[19]~39_combout\,
	devoe => ww_devoe,
	o => \testAluA[19]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\testAluA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[20]~41_combout\,
	devoe => ww_devoe,
	o => \testAluA[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\testAluA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[21]~43_combout\,
	devoe => ww_devoe,
	o => \testAluA[21]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\testAluA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[22]~45_combout\,
	devoe => ww_devoe,
	o => \testAluA[22]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\testAluA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[23]~47_combout\,
	devoe => ww_devoe,
	o => \testAluA[23]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\testAluA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[24]~49_combout\,
	devoe => ww_devoe,
	o => \testAluA[24]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\testAluA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[25]~51_combout\,
	devoe => ww_devoe,
	o => \testAluA[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\testAluA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[26]~53_combout\,
	devoe => ww_devoe,
	o => \testAluA[26]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\testAluA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[27]~55_combout\,
	devoe => ww_devoe,
	o => \testAluA[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\testAluA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[28]~57_combout\,
	devoe => ww_devoe,
	o => \testAluA[28]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\testAluA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[29]~59_combout\,
	devoe => ww_devoe,
	o => \testAluA[29]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\testAluA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[30]~61_combout\,
	devoe => ww_devoe,
	o => \testAluA[30]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\testAluA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|muxA|selected[31]~63_combout\,
	devoe => ww_devoe,
	o => \testAluA[31]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\testAluB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[0]~35_combout\,
	devoe => ww_devoe,
	o => \testAluB[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\testAluB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[1]~4_combout\,
	devoe => ww_devoe,
	o => \testAluB[1]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\testAluB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[2]~5_combout\,
	devoe => ww_devoe,
	o => \testAluB[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\testAluB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[3]~6_combout\,
	devoe => ww_devoe,
	o => \testAluB[3]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\testAluB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[4]~7_combout\,
	devoe => ww_devoe,
	o => \testAluB[4]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\testAluB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[5]~8_combout\,
	devoe => ww_devoe,
	o => \testAluB[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\testAluB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[6]~9_combout\,
	devoe => ww_devoe,
	o => \testAluB[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\testAluB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[7]~10_combout\,
	devoe => ww_devoe,
	o => \testAluB[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\testAluB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[8]~11_combout\,
	devoe => ww_devoe,
	o => \testAluB[8]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\testAluB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[9]~12_combout\,
	devoe => ww_devoe,
	o => \testAluB[9]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\testAluB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[10]~13_combout\,
	devoe => ww_devoe,
	o => \testAluB[10]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\testAluB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[11]~14_combout\,
	devoe => ww_devoe,
	o => \testAluB[11]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\testAluB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[12]~15_combout\,
	devoe => ww_devoe,
	o => \testAluB[12]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\testAluB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[13]~16_combout\,
	devoe => ww_devoe,
	o => \testAluB[13]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\testAluB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[14]~17_combout\,
	devoe => ww_devoe,
	o => \testAluB[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\testAluB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	devoe => ww_devoe,
	o => \testAluB[15]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\testAluB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[16]~19_combout\,
	devoe => ww_devoe,
	o => \testAluB[16]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\testAluB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[17]~20_combout\,
	devoe => ww_devoe,
	o => \testAluB[17]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\testAluB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[18]~21_combout\,
	devoe => ww_devoe,
	o => \testAluB[18]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\testAluB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[19]~22_combout\,
	devoe => ww_devoe,
	o => \testAluB[19]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\testAluB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[20]~23_combout\,
	devoe => ww_devoe,
	o => \testAluB[20]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\testAluB[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[21]~24_combout\,
	devoe => ww_devoe,
	o => \testAluB[21]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\testAluB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[22]~25_combout\,
	devoe => ww_devoe,
	o => \testAluB[22]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\testAluB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[23]~26_combout\,
	devoe => ww_devoe,
	o => \testAluB[23]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\testAluB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[24]~27_combout\,
	devoe => ww_devoe,
	o => \testAluB[24]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\testAluB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[25]~28_combout\,
	devoe => ww_devoe,
	o => \testAluB[25]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\testAluB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[26]~29_combout\,
	devoe => ww_devoe,
	o => \testAluB[26]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\testAluB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[27]~30_combout\,
	devoe => ww_devoe,
	o => \testAluB[27]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\testAluB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[28]~31_combout\,
	devoe => ww_devoe,
	o => \testAluB[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\testAluB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[29]~32_combout\,
	devoe => ww_devoe,
	o => \testAluB[29]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\testAluB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[30]~33_combout\,
	devoe => ww_devoe,
	o => \testAluB[30]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\testAluB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[31]~34_combout\,
	devoe => ww_devoe,
	o => \testAluB[31]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\testeAluRes[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[0]~61_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\testeAluRes[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[1]~125_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\testeAluRes[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[2]~123_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[2]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\testeAluRes[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[3]~121_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\testeAluRes[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[4]~119_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[4]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\testeAluRes[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[5]~117_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[5]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\testeAluRes[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[6]~115_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\testeAluRes[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[7]~113_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[7]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\testeAluRes[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[8]~111_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\testeAluRes[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[9]~109_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[9]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\testeAluRes[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[10]~107_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[10]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\testeAluRes[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[11]~105_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[11]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\testeAluRes[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[12]~103_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\testeAluRes[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[13]~101_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[13]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\testeAluRes[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[14]~99_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[14]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\testeAluRes[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[15]~97_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[15]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\testeAluRes[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[16]~95_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[16]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\testeAluRes[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[17]~93_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[17]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\testeAluRes[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[18]~91_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[18]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\testeAluRes[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[19]~89_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[19]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\testeAluRes[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[20]~87_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[20]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\testeAluRes[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[21]~85_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[21]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\testeAluRes[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[22]~83_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[22]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\testeAluRes[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[23]~81_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[23]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\testeAluRes[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[24]~79_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[24]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\testeAluRes[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[25]~77_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[25]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\testeAluRes[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[26]~75_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[26]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\testeAluRes[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[27]~73_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[27]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\testeAluRes[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[28]~71_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[28]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\testeAluRes[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[29]~69_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[29]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\testeAluRes[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[30]~67_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[30]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\testeAluRes[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[31]~63_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y25_N4
\fd|MuxPC|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[0]~0_combout\ = (!\fd|PC|DOUT\(0) & ((\fd|Rom|content~6_combout\) # (!\fd|Rom|content~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|MuxPC|selected[0]~0_combout\);

-- Location: FF_X58_Y24_N13
\fd|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxPC|selected[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(0));

-- Location: LCCOMB_X58_Y25_N30
\fd|MuxPC|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[1]~1_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|PC|DOUT\(1) $ (\fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datac => \fd|PC|DOUT\(0),
	datad => \ucfd|Equal4~0_combout\,
	combout => \fd|MuxPC|selected[1]~1_combout\);

-- Location: FF_X58_Y24_N15
\fd|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxPC|selected[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(1));

-- Location: LCCOMB_X59_Y25_N22
\fd|Rom|content~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~18_combout\ = (\fd|PC|DOUT\(2) & (!\fd|PC|DOUT\(3) & (!\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1)))) # (!\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(3) $ (\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~18_combout\);

-- Location: LCCOMB_X59_Y25_N0
\fd|Rom|content~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~19_combout\ = (\fd|Rom|content~18_combout\ & (\fd|Rom|content~3_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~18_combout\,
	datab => \fd|Rom|content~3_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~19_combout\);

-- Location: LCCOMB_X58_Y25_N24
\fd|adder|addsloop:2:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:2:add1to31|soma~combout\ = \fd|PC|DOUT\(2) $ (((\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|adder|addsloop:2:add1to31|soma~combout\);

-- Location: LCCOMB_X58_Y25_N10
\fd|adder|addsloop:3:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:3:add1to31|soma~combout\ = \fd|PC|DOUT\(3) $ (((\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(1) & \fd|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|adder|addsloop:3:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y25_N30
\fd|adder2|addsloop:3:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:3:add1to31|soma~0_combout\ = \fd|Rom|content~19_combout\ $ (\fd|adder|addsloop:3:add1to31|soma~combout\ $ (((\fd|adder|addsloop:2:add1to31|soma~combout\ & \fd|Rom|content~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~19_combout\,
	datab => \fd|adder|addsloop:2:add1to31|soma~combout\,
	datac => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datad => \fd|Rom|content~13_combout\,
	combout => \fd|adder2|addsloop:3:add1to31|soma~0_combout\);

-- Location: LCCOMB_X58_Y24_N16
\fd|Rom|content~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~7_combout\ = (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) & !\fd|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~7_combout\);

-- Location: LCCOMB_X58_Y24_N26
\fd|Rom|content~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~8_combout\ = (\fd|Rom|content~3_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~3_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~7_combout\,
	combout => \fd|Rom|content~8_combout\);

-- Location: LCCOMB_X57_Y25_N12
\fd|Rom|content~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~32_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & \fd|Rom|content~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~1_combout\,
	datac => \fd|Rom|content~2_combout\,
	datad => \fd|Rom|content~3_combout\,
	combout => \fd|Rom|content~32_combout\);

-- Location: LCCOMB_X59_Y25_N26
\fd|Rom|content~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~28_combout\ = (!\fd|PC|DOUT\(3) & ((\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(0))) # (!\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(0) & \fd|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~28_combout\);

-- Location: LCCOMB_X58_Y25_N22
\ucfd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal0~0_combout\ = (\fd|Rom|content~4_combout\ & (\fd|Rom|content~6_combout\ & ((!\fd|PC|DOUT\(0)) # (!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \ucfd|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y24_N12
\fd|Rom|content~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~16_combout\ = (\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(3)) # (\fd|PC|DOUT\(2) $ (!\fd|PC|DOUT\(1))))) # (!\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(1) & ((\fd|PC|DOUT\(2)))) # (!\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(3),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~16_combout\);

-- Location: LCCOMB_X58_Y25_N2
\fd|MuxRtRd|selected[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRtRd|selected[1]~3_combout\ = (\fd|Rom|content~32_combout\ & ((\ucfd|Equal0~0_combout\ & (\fd|Rom|content~28_combout\)) # (!\ucfd|Equal0~0_combout\ & ((!\fd|Rom|content~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~32_combout\,
	datab => \fd|Rom|content~28_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|MuxRtRd|selected[1]~3_combout\);

-- Location: LCCOMB_X58_Y24_N14
\fd|Rom|content~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~14_combout\ = (\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(0) & (!\fd|PC|DOUT\(3) & \fd|PC|DOUT\(2)))) # (!\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(0) $ (\fd|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(2),
	combout => \fd|Rom|content~14_combout\);

-- Location: LCCOMB_X58_Y25_N14
\fd|Rom|content~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~26_combout\ = (!\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(2) & ((!\fd|PC|DOUT\(3)))) # (!\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~26_combout\);

-- Location: LCCOMB_X58_Y25_N12
\fd|MuxRtRd|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRtRd|selected[0]~2_combout\ = (\fd|Rom|content~32_combout\ & ((\ucfd|Equal0~0_combout\ & ((\fd|Rom|content~26_combout\))) # (!\ucfd|Equal0~0_combout\ & (\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|Rom|content~26_combout\,
	datad => \fd|Rom|content~32_combout\,
	combout => \fd|MuxRtRd|selected[0]~2_combout\);

-- Location: LCCOMB_X58_Y25_N20
\ucfd|HabEscritaReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|HabEscritaReg~0_combout\ = (\fd|Rom|content~8_combout\ & (!\fd|PC|DOUT\(0) & (\fd|Rom|content~4_combout\ $ (!\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~8_combout\ & (\fd|Rom|content~4_combout\ $ ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \ucfd|HabEscritaReg~0_combout\);

-- Location: LCCOMB_X59_Y25_N30
\fd|Rom|content~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~30_combout\ = (!\fd|PC|DOUT\(3) & (\fd|PC|DOUT\(2) $ (((\fd|PC|DOUT\(1) & \fd|PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~30_combout\);

-- Location: LCCOMB_X59_Y25_N16
\fd|Rom|content~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~31_combout\ = (\fd|Rom|content~30_combout\ & (\fd|Rom|content~3_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~30_combout\,
	datab => \fd|Rom|content~3_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~31_combout\);

-- Location: LCCOMB_X58_Y25_N18
\fd|MuxRtRd|selected[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRtRd|selected[2]~4_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\) # ((\fd|Rom|content~31_combout\ & \ucfd|Equal0~0_combout\)))) # (!\fd|PC|DOUT\(0) & (\fd|Rom|content~31_combout\ & (\ucfd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~31_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|MuxRtRd|selected[2]~4_combout\);

-- Location: LCCOMB_X57_Y22_N24
\fd|BankRegister|add1to8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|Equal0~0_combout\ = (\fd|MuxRtRd|selected[1]~3_combout\ & (\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & \fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to8|Equal0~0_combout\);

-- Location: FF_X58_Y23_N3
\fd|BankRegister|add1to8|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(0));

-- Location: LCCOMB_X58_Y24_N28
\fd|Rom|content~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~15_combout\ = (\fd|Rom|content~3_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~14_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~3_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~15_combout\);

-- Location: LCCOMB_X57_Y22_N12
\fd|BankRegister|add1to6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|Equal0~0_combout\ = (!\fd|MuxRtRd|selected[1]~3_combout\ & (\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & \fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to6|Equal0~0_combout\);

-- Location: FF_X57_Y23_N1
\fd|BankRegister|add1to6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(0));

-- Location: LCCOMB_X57_Y22_N14
\fd|BankRegister|add1to5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|Equal0~0_combout\ = (!\fd|MuxRtRd|selected[1]~3_combout\ & (!\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & \fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to5|Equal0~0_combout\);

-- Location: FF_X58_Y23_N13
\fd|BankRegister|add1to5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(0));

-- Location: LCCOMB_X58_Y24_N30
\fd|Rom|content~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~17_combout\ = (\fd|Rom|content~3_combout\ & (\fd|Rom|content~2_combout\ & (!\fd|Rom|content~16_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~3_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~17_combout\);

-- Location: LCCOMB_X57_Y22_N22
\fd|BankRegister|add1to7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|Equal0~0_combout\ = (\fd|MuxRtRd|selected[1]~3_combout\ & (!\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & \fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to7|Equal0~0_combout\);

-- Location: FF_X57_Y23_N29
\fd|BankRegister|add1to7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(0));

-- Location: LCCOMB_X57_Y23_N28
\fd|BankRegister|muxB|selected[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~64_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(0) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(0)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(0),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(0),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[0]~64_combout\);

-- Location: LCCOMB_X57_Y23_N0
\fd|BankRegister|muxB|selected[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~65_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[0]~64_combout\ & ((\fd|BankRegister|add1to6|DOUT\(0)))) # (!\fd|BankRegister|muxB|selected[0]~64_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(0))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[0]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(0),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[0]~64_combout\,
	combout => \fd|BankRegister|muxB|selected[0]~65_combout\);

-- Location: LCCOMB_X57_Y22_N4
\fd|BankRegister|add1to2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|Equal0~0_combout\ = (!\fd|MuxRtRd|selected[1]~3_combout\ & (\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & !\fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to2|Equal0~0_combout\);

-- Location: FF_X59_Y24_N13
\fd|BankRegister|add1to2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(0));

-- Location: LCCOMB_X57_Y22_N28
\fd|BankRegister|add1to4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|Equal0~0_combout\ = (\fd|MuxRtRd|selected[1]~3_combout\ & (\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & !\fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to4|Equal0~0_combout\);

-- Location: FF_X58_Y20_N1
\fd|BankRegister|add1to4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(0));

-- Location: LCCOMB_X57_Y22_N10
\fd|BankRegister|add1to3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|Equal0~0_combout\ = (\fd|MuxRtRd|selected[1]~3_combout\ & (!\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & !\fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to3|Equal0~0_combout\);

-- Location: FF_X59_Y24_N19
\fd|BankRegister|add1to3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(0));

-- Location: LCCOMB_X59_Y24_N18
\fd|BankRegister|muxB|selected[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~66_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(0)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(0) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(0),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(0),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[0]~66_combout\);

-- Location: LCCOMB_X59_Y24_N20
\fd|BankRegister|muxB|selected[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~67_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[0]~66_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[0]~66_combout\ & (\fd|BankRegister|add1to2|DOUT\(0))) # 
-- (!\fd|BankRegister|muxB|selected[0]~66_combout\ & ((\fd|BankRegister|add1to1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(0),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[0]~66_combout\,
	combout => \fd|BankRegister|muxB|selected[0]~67_combout\);

-- Location: LCCOMB_X63_Y24_N28
\fd|BankRegister|muxB|selected[0]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~199_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[0]~65_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[0]~67_combout\))))) # (!\fd|Rom|content~8_combout\ & 
-- (((\fd|BankRegister|muxB|selected[0]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|muxB|selected[0]~65_combout\,
	datac => \fd|BankRegister|muxB|selected[0]~67_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[0]~199_combout\);

-- Location: LCCOMB_X59_Y25_N2
\fd|Rom|content~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~24_combout\ = (\fd|PC|DOUT\(2) & (!\fd|PC|DOUT\(3) & ((!\fd|PC|DOUT\(1)) # (!\fd|PC|DOUT\(0))))) # (!\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(1) & ((!\fd|PC|DOUT\(0)) # (!\fd|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~24_combout\);

-- Location: LCCOMB_X59_Y25_N24
\fd|Rom|content~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~25_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~3_combout\ & \fd|Rom|content~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~3_combout\,
	datad => \fd|Rom|content~24_combout\,
	combout => \fd|Rom|content~25_combout\);

-- Location: LCCOMB_X56_Y25_N26
\fd|UCalu|output[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[2]~3_combout\ = ((\fd|Rom|content~19_combout\) # ((\fd|Rom|content~23_combout\) # (!\fd|Rom|content~25_combout\))) # (!\fd|Rom|content~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~21_combout\,
	datab => \fd|Rom|content~19_combout\,
	datac => \fd|Rom|content~25_combout\,
	datad => \fd|Rom|content~23_combout\,
	combout => \fd|UCalu|output[2]~3_combout\);

-- Location: LCCOMB_X56_Y25_N6
\fd|UCalu|output[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~1_combout\ = (\fd|Rom|content~21_combout\ & (!\fd|Rom|content~19_combout\ & (\fd|Rom|content~13_combout\ & !\fd|Rom|content~23_combout\))) # (!\fd|Rom|content~21_combout\ & (\fd|Rom|content~19_combout\ & (!\fd|Rom|content~13_combout\ & 
-- \fd|Rom|content~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~21_combout\,
	datab => \fd|Rom|content~19_combout\,
	datac => \fd|Rom|content~13_combout\,
	datad => \fd|Rom|content~23_combout\,
	combout => \fd|UCalu|output[3]~1_combout\);

-- Location: LCCOMB_X58_Y25_N8
\ucfd|BEQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|BEQ~0_combout\ = (\fd|Rom|content~4_combout\ & (\fd|Rom|content~6_combout\ & (\fd|Rom|content~8_combout\ & \fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \ucfd|BEQ~0_combout\);

-- Location: LCCOMB_X57_Y25_N2
\fd|UCalu|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal2~0_combout\ = (!\fd|Rom|content~13_combout\ & (\fd|Rom|content~25_combout\ & !\fd|Rom|content~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~13_combout\,
	datac => \fd|Rom|content~25_combout\,
	datad => \fd|Rom|content~23_combout\,
	combout => \fd|UCalu|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y25_N8
\fd|UCalu|output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~0_combout\ = (\ucfd|BEQ~0_combout\) # ((\fd|UCalu|Equal2~0_combout\ & ((!\fd|Rom|content~21_combout\) # (!\fd|Rom|content~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|BEQ~0_combout\,
	datab => \fd|Rom|content~19_combout\,
	datac => \fd|Rom|content~21_combout\,
	datad => \fd|UCalu|Equal2~0_combout\,
	combout => \fd|UCalu|output[3]~0_combout\);

-- Location: LCCOMB_X58_Y25_N16
\fd|Rom|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~0_combout\ = (\fd|PC|DOUT\(1)) # ((\fd|PC|DOUT\(2)) # ((\fd|PC|DOUT\(3) & \fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|content~0_combout\);

-- Location: LCCOMB_X58_Y24_N8
\fd|Rom|content~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~5_combout\ = (\fd|PC|DOUT\(2)) # ((\fd|PC|DOUT\(1) & ((!\fd|PC|DOUT\(3)) # (!\fd|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~5_combout\);

-- Location: LCCOMB_X57_Y25_N24
\fd|UCalu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal0~0_combout\ = (\fd|Rom|content~32_combout\ & ((!\fd|Rom|content~5_combout\) # (!\fd|Rom|content~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~5_combout\,
	datad => \fd|Rom|content~32_combout\,
	combout => \fd|UCalu|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y25_N4
\fd|UCalu|output[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~2_combout\ = (\fd|UCalu|output[3]~0_combout\) # ((\fd|UCalu|Equal0~0_combout\) # ((\fd|UCalu|output[3]~1_combout\ & \fd|Rom|content~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output[3]~1_combout\,
	datab => \fd|UCalu|output[3]~0_combout\,
	datac => \fd|Rom|content~25_combout\,
	datad => \fd|UCalu|Equal0~0_combout\,
	combout => \fd|UCalu|output[3]~2_combout\);

-- Location: LCCOMB_X56_Y25_N28
\fd|UCalu|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~0_combout\ = (!\fd|UCalu|output[2]~3_combout\ & (\fd|UCalu|output[3]~2_combout\ & \ucfd|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output[2]~3_combout\,
	datab => \fd|UCalu|output[3]~2_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|comb~0_combout\);

-- Location: LCCOMB_X56_Y25_N14
\fd|UCalu|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~1_combout\ = (\fd|UCalu|output[3]~2_combout\ & ((\fd|UCalu|output[2]~3_combout\) # (!\ucfd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output[2]~3_combout\,
	datab => \fd|UCalu|output[3]~2_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|comb~1_combout\);

-- Location: LCCOMB_X56_Y25_N24
\fd|UCalu|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(1) = (!\fd|UCalu|comb~0_combout\ & ((\fd|UCalu|comb~1_combout\) # (\fd|UCalu|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|comb~0_combout\,
	datac => \fd|UCalu|comb~1_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|UCalu|output\(1));

-- Location: LCCOMB_X57_Y25_N6
\fd|UCalu|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~4_combout\ = ((\fd|Rom|content~21_combout\ & \fd|Rom|content~19_combout\)) # (!\fd|UCalu|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~21_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|UCalu|Equal2~0_combout\,
	combout => \fd|UCalu|comb~4_combout\);

-- Location: LCCOMB_X56_Y25_N12
\fd|UCalu|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~5_combout\ = (\fd|UCalu|output[3]~2_combout\ & ((!\ucfd|Equal0~0_combout\) # (!\fd|UCalu|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~4_combout\,
	datac => \fd|UCalu|output[3]~2_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|comb~5_combout\);

-- Location: LCCOMB_X56_Y25_N30
\fd|UCalu|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~6_combout\ = (\fd|UCalu|comb~4_combout\ & (\fd|UCalu|output[3]~2_combout\ & \ucfd|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~4_combout\,
	datac => \fd|UCalu|output[3]~2_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|comb~6_combout\);

-- Location: LCCOMB_X56_Y25_N16
\fd|UCalu|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(0) = (!\fd|UCalu|comb~5_combout\ & ((\fd|UCalu|comb~6_combout\) # (\fd|UCalu|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~5_combout\,
	datac => \fd|UCalu|comb~6_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|UCalu|output\(0));

-- Location: LCCOMB_X58_Y24_N20
\fd|Rom|content~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~10_combout\ = (\fd|PC|DOUT\(1) & ((\fd|PC|DOUT\(0) & ((!\fd|PC|DOUT\(3)))) # (!\fd|PC|DOUT\(0) & (!\fd|PC|DOUT\(2))))) # (!\fd|PC|DOUT\(1) & (((\fd|PC|DOUT\(2) & !\fd|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~10_combout\);

-- Location: LCCOMB_X58_Y24_N6
\fd|Rom|content~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~11_combout\ = (\fd|Rom|content~3_combout\ & (\fd|Rom|content~10_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~3_combout\,
	datab => \fd|Rom|content~10_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~11_combout\);

-- Location: LCCOMB_X58_Y20_N28
\fd|BankRegister|muxA|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[0]~0_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to2|DOUT\(0))) # (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(0),
	datac => \fd|BankRegister|add1to1|DOUT\(0),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[0]~0_combout\);

-- Location: LCCOMB_X58_Y20_N0
\fd|BankRegister|muxA|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[0]~1_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[0]~0_combout\ & ((\fd|BankRegister|add1to4|DOUT\(0)))) # (!\fd|BankRegister|muxA|selected[0]~0_combout\ & (\fd|BankRegister|add1to3|DOUT\(0))))) 
-- # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(0),
	datac => \fd|BankRegister|add1to4|DOUT\(0),
	datad => \fd|BankRegister|muxA|selected[0]~0_combout\,
	combout => \fd|BankRegister|muxA|selected[0]~1_combout\);

-- Location: LCCOMB_X58_Y23_N16
\fd|Rom|content~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~9_combout\ = (\fd|PC|DOUT\(0) & \fd|Rom|content~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(0),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|Rom|content~9_combout\);

-- Location: LCCOMB_X59_Y24_N30
\fd|MuxSaidaBankRegister|selected[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~3_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[0]~65_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[0]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|muxB|selected[0]~67_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[0]~65_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~3_combout\);

-- Location: LCCOMB_X56_Y25_N20
\fd|UCalu|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal2~1_combout\ = (!\fd|Rom|content~21_combout\ & (!\fd|Rom|content~19_combout\ & \fd|UCalu|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~21_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|UCalu|Equal2~0_combout\,
	combout => \fd|UCalu|Equal2~1_combout\);

-- Location: LCCOMB_X56_Y25_N2
\fd|UCalu|output[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[2]~4_combout\ = (\ucfd|BEQ~0_combout\) # ((!\fd|UCalu|Equal2~1_combout\ & (\fd|UCalu|output[2]~3_combout\ & \ucfd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|BEQ~0_combout\,
	datab => \fd|UCalu|Equal2~1_combout\,
	datac => \fd|UCalu|output[2]~3_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|output[2]~4_combout\);

-- Location: LCCOMB_X56_Y25_N0
\fd|UCalu|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~2_combout\ = (\fd|UCalu|output[3]~2_combout\ & !\fd|UCalu|output[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|UCalu|output[3]~2_combout\,
	datad => \fd|UCalu|output[2]~4_combout\,
	combout => \fd|UCalu|comb~2_combout\);

-- Location: LCCOMB_X56_Y25_N22
\fd|UCalu|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~3_combout\ = (\fd|UCalu|output[3]~2_combout\ & \fd|UCalu|output[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|UCalu|output[3]~2_combout\,
	datad => \fd|UCalu|output[2]~4_combout\,
	combout => \fd|UCalu|comb~3_combout\);

-- Location: LCCOMB_X56_Y25_N10
\fd|UCalu|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(2) = (!\fd|UCalu|comb~2_combout\ & ((\fd|UCalu|comb~3_combout\) # (\fd|UCalu|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|comb~2_combout\,
	datac => \fd|UCalu|comb~3_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|UCalu|output\(2));

-- Location: LCCOMB_X59_Y24_N6
\fd|ALU|choiceB|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|choiceB|selected[0]~2_combout\ = \fd|UCalu|output\(2) $ (((\fd|MuxSaidaBankRegister|selected[0]~3_combout\) # ((\fd|Rom|content~13_combout\ & \ucfd|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~3_combout\,
	datab => \fd|Rom|content~13_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|choiceB|selected[0]~2_combout\);

-- Location: LCCOMB_X59_Y24_N4
\fd|ALU|final|selected[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[0]~60_combout\ = (\fd|UCalu|output\(1) & (\fd|UCalu|output\(0))) # (!\fd|UCalu|output\(1) & ((\fd|UCalu|output\(0) & ((\fd|BankRegister|muxA|selected[0]~1_combout\) # (\fd|ALU|choiceB|selected[0]~2_combout\))) # 
-- (!\fd|UCalu|output\(0) & (\fd|BankRegister|muxA|selected[0]~1_combout\ & \fd|ALU|choiceB|selected[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected[0]~1_combout\,
	datad => \fd|ALU|choiceB|selected[0]~2_combout\,
	combout => \fd|ALU|final|selected[0]~60_combout\);

-- Location: LCCOMB_X59_Y24_N24
\fd|ALU|adder|a0|soma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|a0|soma~2_combout\ = \fd|BankRegister|muxA|selected[0]~1_combout\ $ (((\fd|MuxSaidaBankRegister|selected[0]~3_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|content~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~3_combout\,
	datab => \fd|BankRegister|muxA|selected[0]~1_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|Rom|content~13_combout\,
	combout => \fd|ALU|adder|a0|soma~2_combout\);

-- Location: LCCOMB_X59_Y25_N4
\fd|MuxSaidaBankRegister|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~2_combout\ = (\ucfd|Equal1~0_combout\ & \fd|Rom|content~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|Rom|content~13_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~2_combout\);

-- Location: LCCOMB_X60_Y23_N16
\fd|ALU|adder|a0|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|a0|vaium~0_combout\ = (\fd|MuxSaidaBankRegister|selected[0]~2_combout\ & (((\fd|BankRegister|muxA|selected[0]~1_combout\)))) # (!\fd|MuxSaidaBankRegister|selected[0]~2_combout\ & ((\fd|MuxSaidaBankRegister|selected[0]~3_combout\ & 
-- ((\fd|BankRegister|muxA|selected[0]~1_combout\))) # (!\fd|MuxSaidaBankRegister|selected[0]~3_combout\ & (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[0]~2_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[0]~3_combout\,
	datad => \fd|BankRegister|muxA|selected[0]~1_combout\,
	combout => \fd|ALU|adder|a0|vaium~0_combout\);

-- Location: LCCOMB_X59_Y23_N30
\fd|Ram|ram_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X59_Y23_N31
\fd|Ram|ram_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(14));

-- Location: FF_X59_Y23_N5
\fd|Ram|ram_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[1]~192_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(13));

-- Location: LCCOMB_X55_Y23_N8
\fd|Ram|ram_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X55_Y23_N9
\fd|Ram|ram_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(16));

-- Location: LCCOMB_X65_Y25_N4
\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X57_Y23_N10
\fd|BankRegister|add1to6|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[2]~5_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[2]~feeder_combout\);

-- Location: FF_X57_Y23_N11
\fd|BankRegister|add1to6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[2]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(2));

-- Location: FF_X58_Y23_N7
\fd|BankRegister|add1to8|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(2));

-- Location: FF_X58_Y23_N17
\fd|BankRegister|add1to5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(2));

-- Location: FF_X57_Y23_N13
\fd|BankRegister|add1to7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(2));

-- Location: LCCOMB_X57_Y23_N12
\fd|BankRegister|muxB|selected[2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~72_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(2) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(2)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(2),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(2),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~72_combout\);

-- Location: LCCOMB_X58_Y23_N6
\fd|BankRegister|muxB|selected[2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~73_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[2]~72_combout\ & (\fd|BankRegister|add1to6|DOUT\(2))) # (!\fd|BankRegister|muxB|selected[2]~72_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(2)))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[2]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to6|DOUT\(2),
	datac => \fd|BankRegister|add1to8|DOUT\(2),
	datad => \fd|BankRegister|muxB|selected[2]~72_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~73_combout\);

-- Location: LCCOMB_X57_Y22_N30
\fd|BankRegister|add1to1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|Equal0~0_combout\ = (!\fd|MuxRtRd|selected[1]~3_combout\ & (!\fd|MuxRtRd|selected[0]~2_combout\ & (\ucfd|HabEscritaReg~0_combout\ & !\fd|MuxRtRd|selected[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[1]~3_combout\,
	datab => \fd|MuxRtRd|selected[0]~2_combout\,
	datac => \ucfd|HabEscritaReg~0_combout\,
	datad => \fd|MuxRtRd|selected[2]~4_combout\,
	combout => \fd|BankRegister|add1to1|Equal0~0_combout\);

-- Location: FF_X58_Y20_N21
\fd|BankRegister|add1to1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(2));

-- Location: FF_X60_Y20_N19
\fd|BankRegister|add1to4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(2));

-- Location: FF_X60_Y20_N5
\fd|BankRegister|add1to3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(2));

-- Location: LCCOMB_X60_Y20_N4
\fd|BankRegister|muxB|selected[2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~74_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to4|DOUT\(2))) # (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to3|DOUT\(2)))))) # (!\fd|Rom|content~17_combout\ 
-- & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(2),
	datac => \fd|BankRegister|add1to3|DOUT\(2),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~74_combout\);

-- Location: LCCOMB_X59_Y23_N10
\fd|BankRegister|muxB|selected[2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~75_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[2]~74_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[2]~74_combout\ & ((\fd|BankRegister|add1to2|DOUT\(2)))) 
-- # (!\fd|BankRegister|muxB|selected[2]~74_combout\ & (\fd|BankRegister|add1to1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(2),
	datac => \fd|BankRegister|add1to2|DOUT\(2),
	datad => \fd|BankRegister|muxB|selected[2]~74_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~75_combout\);

-- Location: LCCOMB_X59_Y23_N24
\fd|BankRegister|muxB|selected[2]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~193_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[2]~73_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[2]~75_combout\))))) # (!\fd|PC|DOUT\(0) & 
-- (((\fd|BankRegister|muxB|selected[2]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[2]~73_combout\,
	datad => \fd|BankRegister|muxB|selected[2]~75_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~193_combout\);

-- Location: LCCOMB_X63_Y23_N16
\fd|BankRegister|add1to7|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~7_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\);

-- Location: FF_X63_Y23_N17
\fd|BankRegister|add1to7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(3));

-- Location: FF_X58_Y23_N23
\fd|BankRegister|add1to5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(3));

-- Location: LCCOMB_X58_Y23_N22
\fd|BankRegister|muxB|selected[3]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~76_combout\ = (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(3) & ((!\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to5|DOUT\(3)) # 
-- (\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(3),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(3),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[3]~76_combout\);

-- Location: FF_X58_Y23_N25
\fd|BankRegister|add1to8|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(3));

-- Location: LCCOMB_X62_Y23_N18
\fd|BankRegister|add1to6|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[3]~7_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\);

-- Location: FF_X62_Y23_N19
\fd|BankRegister|add1to6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(3));

-- Location: LCCOMB_X58_Y23_N24
\fd|BankRegister|muxB|selected[3]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~77_combout\ = (\fd|BankRegister|muxB|selected[3]~76_combout\ & (((\fd|BankRegister|add1to6|DOUT\(3))) # (!\fd|Rom|content~15_combout\))) # (!\fd|BankRegister|muxB|selected[3]~76_combout\ & (\fd|Rom|content~15_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[3]~76_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to8|DOUT\(3),
	datad => \fd|BankRegister|add1to6|DOUT\(3),
	combout => \fd|BankRegister|muxB|selected[3]~77_combout\);

-- Location: FF_X58_Y20_N15
\fd|BankRegister|add1to1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(3));

-- Location: FF_X59_Y20_N9
\fd|BankRegister|add1to4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(3));

-- Location: FF_X59_Y20_N23
\fd|BankRegister|add1to3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(3));

-- Location: LCCOMB_X59_Y20_N22
\fd|BankRegister|muxB|selected[3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~78_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to4|DOUT\(3))) # (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to3|DOUT\(3)))))) # (!\fd|Rom|content~17_combout\ 
-- & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(3),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(3),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[3]~78_combout\);

-- Location: LCCOMB_X59_Y23_N20
\fd|BankRegister|muxB|selected[3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~79_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[3]~78_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[3]~78_combout\ & ((\fd|BankRegister|add1to2|DOUT\(3)))) 
-- # (!\fd|BankRegister|muxB|selected[3]~78_combout\ & (\fd|BankRegister|add1to1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(3),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(3),
	datad => \fd|BankRegister|muxB|selected[3]~78_combout\,
	combout => \fd|BankRegister|muxB|selected[3]~79_combout\);

-- Location: LCCOMB_X59_Y23_N6
\fd|BankRegister|muxB|selected[3]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~194_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[3]~77_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[3]~79_combout\))))) # (!\fd|PC|DOUT\(0) & 
-- (((\fd|BankRegister|muxB|selected[3]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|BankRegister|muxB|selected[3]~77_combout\,
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|muxB|selected[3]~79_combout\,
	combout => \fd|BankRegister|muxB|selected[3]~194_combout\);

-- Location: LCCOMB_X62_Y23_N20
\fd|BankRegister|add1to6|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[4]~9_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\);

-- Location: FF_X62_Y23_N21
\fd|BankRegister|add1to6|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(4));

-- Location: FF_X58_Y23_N31
\fd|BankRegister|add1to8|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(4));

-- Location: LCCOMB_X63_Y23_N14
\fd|BankRegister|add1to7|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[4]~9_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[4]~feeder_combout\);

-- Location: FF_X63_Y23_N15
\fd|BankRegister|add1to7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[4]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(4));

-- Location: FF_X58_Y23_N1
\fd|BankRegister|add1to5|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(4));

-- Location: LCCOMB_X58_Y23_N0
\fd|BankRegister|muxB|selected[4]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~80_combout\ = (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(4) & ((!\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to5|DOUT\(4)) # 
-- (\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(4),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(4),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[4]~80_combout\);

-- Location: LCCOMB_X58_Y23_N30
\fd|BankRegister|muxB|selected[4]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~81_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[4]~80_combout\ & (\fd|BankRegister|add1to6|DOUT\(4))) # (!\fd|BankRegister|muxB|selected[4]~80_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(4)))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[4]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(4),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to8|DOUT\(4),
	datad => \fd|BankRegister|muxB|selected[4]~80_combout\,
	combout => \fd|BankRegister|muxB|selected[4]~81_combout\);

-- Location: LCCOMB_X58_Y21_N28
\fd|BankRegister|add1to1|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[4]~9_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\);

-- Location: FF_X58_Y21_N29
\fd|BankRegister|add1to1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(4));

-- Location: FF_X58_Y21_N15
\fd|BankRegister|add1to2|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(4));

-- Location: FF_X59_Y22_N13
\fd|BankRegister|add1to4|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(4));

-- Location: LCCOMB_X59_Y22_N16
\fd|BankRegister|muxB|selected[4]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~82_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(4))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to3|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(4),
	datad => \fd|BankRegister|add1to4|DOUT\(4),
	combout => \fd|BankRegister|muxB|selected[4]~82_combout\);

-- Location: LCCOMB_X58_Y21_N14
\fd|BankRegister|muxB|selected[4]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~83_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[4]~82_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[4]~82_combout\ & ((\fd|BankRegister|add1to2|DOUT\(4)))) 
-- # (!\fd|BankRegister|muxB|selected[4]~82_combout\ & (\fd|BankRegister|add1to1|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(4),
	datac => \fd|BankRegister|add1to2|DOUT\(4),
	datad => \fd|BankRegister|muxB|selected[4]~82_combout\,
	combout => \fd|BankRegister|muxB|selected[4]~83_combout\);

-- Location: LCCOMB_X59_Y21_N6
\fd|BankRegister|muxB|selected[4]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~200_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[4]~81_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[4]~83_combout\))))) # (!\fd|PC|DOUT\(0) & 
-- (((\fd|BankRegister|muxB|selected[4]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[4]~81_combout\,
	datad => \fd|BankRegister|muxB|selected[4]~83_combout\,
	combout => \fd|BankRegister|muxB|selected[4]~200_combout\);

-- Location: LCCOMB_X65_Y23_N24
\fd|Ram|ram_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X65_Y23_N25
\fd|Ram|ram_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(22));

-- Location: FF_X59_Y22_N23
\fd|BankRegister|add1to3|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~13_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(6));

-- Location: FF_X59_Y23_N29
\fd|BankRegister|add1to2|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~13_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(6));

-- Location: LCCOMB_X58_Y22_N6
\fd|BankRegister|muxA|selected[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[6]~12_combout\ = (\fd|Rom|content~11_combout\ & (((\fd|Rom|content~8_combout\) # (\fd|BankRegister|add1to2|DOUT\(6))))) # (!\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to1|DOUT\(6) & (!\fd|Rom|content~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~11_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(6),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|add1to2|DOUT\(6),
	combout => \fd|BankRegister|muxA|selected[6]~12_combout\);

-- Location: FF_X59_Y22_N19
\fd|BankRegister|add1to4|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~13_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(6));

-- Location: LCCOMB_X59_Y22_N18
\fd|BankRegister|muxA|selected[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[6]~13_combout\ = (\fd|BankRegister|muxA|selected[6]~12_combout\ & (((\fd|BankRegister|add1to4|DOUT\(6)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[6]~12_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(6) & ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(6),
	datab => \fd|BankRegister|muxA|selected[6]~12_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(6),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[6]~13_combout\);

-- Location: FF_X59_Y23_N23
\fd|BankRegister|add1to2|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(5));

-- Location: FF_X59_Y20_N11
\fd|BankRegister|add1to4|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(5));

-- Location: FF_X59_Y20_N13
\fd|BankRegister|add1to3|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(5));

-- Location: LCCOMB_X58_Y20_N24
\fd|BankRegister|muxA|selected[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[5]~10_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(5)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(5) & !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(5),
	datac => \fd|BankRegister|add1to1|DOUT\(5),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[5]~10_combout\);

-- Location: LCCOMB_X59_Y20_N10
\fd|BankRegister|muxA|selected[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[5]~11_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[5]~10_combout\ & ((\fd|BankRegister|add1to4|DOUT\(5)))) # (!\fd|BankRegister|muxA|selected[5]~10_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(5))))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(5),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(5),
	datad => \fd|BankRegister|muxA|selected[5]~10_combout\,
	combout => \fd|BankRegister|muxA|selected[5]~11_combout\);

-- Location: LCCOMB_X59_Y23_N26
\fd|MuxSaidaBankRegister|selected[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[5]~8_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|Rom|content~25_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|BankRegister|muxB|selected[5]~195_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~25_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[5]~195_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[5]~8_combout\);

-- Location: LCCOMB_X59_Y23_N18
\fd|MuxSaidaBankRegister|selected[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[4]~7_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[4]~81_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[4]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[4]~81_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|muxB|selected[4]~83_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[4]~7_combout\);

-- Location: LCCOMB_X59_Y23_N8
\fd|MuxSaidaBankRegister|selected[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[3]~6_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|Rom|content~23_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|BankRegister|muxB|selected[3]~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~23_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[3]~194_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[3]~6_combout\);

-- Location: FF_X59_Y23_N13
\fd|BankRegister|add1to2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(1));

-- Location: FF_X59_Y20_N19
\fd|BankRegister|add1to4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(1));

-- Location: FF_X59_Y20_N17
\fd|BankRegister|add1to3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(1));

-- Location: FF_X58_Y20_N23
\fd|BankRegister|add1to1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(1));

-- Location: LCCOMB_X58_Y20_N22
\fd|BankRegister|muxA|selected[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[1]~2_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(1)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(1) & !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(1),
	datac => \fd|BankRegister|add1to1|DOUT\(1),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[1]~2_combout\);

-- Location: LCCOMB_X59_Y20_N18
\fd|BankRegister|muxA|selected[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[1]~3_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[1]~2_combout\ & ((\fd|BankRegister|add1to4|DOUT\(1)))) # (!\fd|BankRegister|muxA|selected[1]~2_combout\ & (\fd|BankRegister|add1to2|DOUT\(1))))) 
-- # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(1),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(1),
	datad => \fd|BankRegister|muxA|selected[1]~2_combout\,
	combout => \fd|BankRegister|muxA|selected[1]~3_combout\);

-- Location: LCCOMB_X60_Y23_N26
\fd|ALU|adder|addsloop:1:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[1]~3_combout\ & ((\fd|ALU|adder|a0|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~4_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[1]~3_combout\ & (\fd|ALU|adder|a0|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[1]~3_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[1]~4_combout\,
	datad => \fd|ALU|adder|a0|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y23_N14
\fd|MuxSaidaBankRegister|selected[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[2]~5_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|Rom|content~21_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|BankRegister|muxB|selected[2]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|content~21_combout\,
	datad => \fd|BankRegister|muxB|selected[2]~193_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[2]~5_combout\);

-- Location: LCCOMB_X60_Y23_N24
\fd|ALU|adder|addsloop:2:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[2]~5_combout\ & ((\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~5_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[2]~5_combout\ & (\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[2]~5_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~5_combout\,
	combout => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N6
\fd|ALU|adder|addsloop:3:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[3]~7_combout\ & ((\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[3]~6_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[3]~7_combout\ & (\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[3]~6_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[3]~6_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|muxA|selected[3]~7_combout\,
	datad => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N0
\fd|ALU|adder|addsloop:4:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[4]~9_combout\ & ((\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[4]~7_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[4]~9_combout\ & (\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[4]~7_combout\,
	datac => \fd|BankRegister|muxA|selected[4]~9_combout\,
	datad => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N10
\fd|ALU|adder|addsloop:5:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[5]~11_combout\ & ((\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~8_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[5]~11_combout\ & (\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[5]~11_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[5]~8_combout\,
	datad => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X62_Y23_N24
\fd|BankRegister|add1to6|DOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[6]~13_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[6]~feeder_combout\);

-- Location: FF_X62_Y23_N25
\fd|BankRegister|add1to6|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[6]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(6));

-- Location: FF_X58_Y23_N15
\fd|BankRegister|add1to8|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~13_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(6));

-- Location: FF_X58_Y23_N29
\fd|BankRegister|add1to5|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~13_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(6));

-- Location: LCCOMB_X63_Y23_N26
\fd|BankRegister|add1to7|DOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[6]~13_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[6]~feeder_combout\);

-- Location: FF_X63_Y23_N27
\fd|BankRegister|add1to7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[6]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(6));

-- Location: LCCOMB_X58_Y23_N28
\fd|BankRegister|muxB|selected[6]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~88_combout\ = (\fd|Rom|content~15_combout\ & (!\fd|Rom|content~17_combout\)) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(6)))) # (!\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to5|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(6),
	datad => \fd|BankRegister|add1to7|DOUT\(6),
	combout => \fd|BankRegister|muxB|selected[6]~88_combout\);

-- Location: LCCOMB_X58_Y23_N14
\fd|BankRegister|muxB|selected[6]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~89_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[6]~88_combout\ & (\fd|BankRegister|add1to6|DOUT\(6))) # (!\fd|BankRegister|muxB|selected[6]~88_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(6)))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[6]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(6),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to8|DOUT\(6),
	datad => \fd|BankRegister|muxB|selected[6]~88_combout\,
	combout => \fd|BankRegister|muxB|selected[6]~89_combout\);

-- Location: LCCOMB_X58_Y23_N20
\fd|MuxSaidaBankRegister|selected[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[6]~9_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[6]~89_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[6]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|muxB|selected[6]~89_combout\,
	datad => \fd|BankRegister|muxB|selected[6]~91_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[6]~9_combout\);

-- Location: LCCOMB_X56_Y23_N24
\fd|ALU|final|selected[6]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[6]~114_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~9_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[6]~9_combout\,
	combout => \fd|ALU|final|selected[6]~114_combout\);

-- Location: LCCOMB_X56_Y23_N26
\fd|ALU|final|selected[6]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[6]~115_combout\ = (\fd|BankRegister|muxA|selected[6]~13_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[6]~114_combout\))))) # (!\fd|BankRegister|muxA|selected[6]~13_combout\ & 
-- (\fd|ALU|final|selected[6]~114_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[6]~13_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[6]~114_combout\,
	combout => \fd|ALU|final|selected[6]~115_combout\);

-- Location: LCCOMB_X65_Y23_N12
\fd|Ram|ram_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X65_Y23_N13
\fd|Ram|ram_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(24));

-- Location: FF_X59_Y20_N25
\fd|BankRegister|add1to4|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(7));

-- Location: FF_X59_Y20_N27
\fd|BankRegister|add1to3|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(7));

-- Location: FF_X58_Y20_N11
\fd|BankRegister|add1to1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(7));

-- Location: LCCOMB_X58_Y20_N10
\fd|BankRegister|muxA|selected[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[7]~14_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(7)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(7) & !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(7),
	datac => \fd|BankRegister|add1to1|DOUT\(7),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[7]~14_combout\);

-- Location: LCCOMB_X59_Y20_N24
\fd|BankRegister|muxA|selected[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[7]~15_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[7]~14_combout\ & ((\fd|BankRegister|add1to4|DOUT\(7)))) # (!\fd|BankRegister|muxA|selected[7]~14_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(7))))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(7),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(7),
	datad => \fd|BankRegister|muxA|selected[7]~14_combout\,
	combout => \fd|BankRegister|muxA|selected[7]~15_combout\);

-- Location: FF_X58_Y23_N19
\fd|BankRegister|add1to8|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(7));

-- Location: FF_X57_Y23_N9
\fd|BankRegister|add1to6|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(7));

-- Location: LCCOMB_X56_Y23_N12
\fd|BankRegister|add1to5|DOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[7]~feeder_combout\ = \fd|MuxRegRam|selected[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[7]~15_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[7]~feeder_combout\);

-- Location: FF_X56_Y23_N13
\fd|BankRegister|add1to5|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[7]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(7));

-- Location: FF_X57_Y23_N19
\fd|BankRegister|add1to7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(7));

-- Location: LCCOMB_X57_Y23_N18
\fd|BankRegister|muxB|selected[7]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~92_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(7)))) # (!\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to5|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(7),
	datac => \fd|BankRegister|add1to7|DOUT\(7),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[7]~92_combout\);

-- Location: LCCOMB_X57_Y23_N8
\fd|BankRegister|muxB|selected[7]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~93_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[7]~92_combout\ & ((\fd|BankRegister|add1to6|DOUT\(7)))) # (!\fd|BankRegister|muxB|selected[7]~92_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(7))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[7]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(7),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(7),
	datad => \fd|BankRegister|muxB|selected[7]~92_combout\,
	combout => \fd|BankRegister|muxB|selected[7]~93_combout\);

-- Location: LCCOMB_X57_Y23_N26
\fd|MuxSaidaBankRegister|selected[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[7]~10_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[7]~93_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[7]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[7]~93_combout\,
	datac => \fd|BankRegister|muxB|selected[7]~95_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[7]~10_combout\);

-- Location: LCCOMB_X60_Y23_N8
\fd|ALU|adder|addsloop:6:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[6]~13_combout\ & ((\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~9_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[6]~13_combout\ & (\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[6]~13_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[6]~9_combout\,
	datad => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y23_N2
\fd|ALU|final|selected[7]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[7]~112_combout\ = \fd|MuxSaidaBankRegister|selected[7]~10_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[7]~10_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[7]~112_combout\);

-- Location: LCCOMB_X56_Y23_N30
\fd|ALU|final|selected[7]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[7]~113_combout\ = (\fd|BankRegister|muxA|selected[7]~15_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[7]~112_combout\))))) # (!\fd|BankRegister|muxA|selected[7]~15_combout\ & 
-- (\fd|ALU|final|selected[7]~112_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected[7]~15_combout\,
	datad => \fd|ALU|final|selected[7]~112_combout\,
	combout => \fd|ALU|final|selected[7]~113_combout\);

-- Location: LCCOMB_X63_Y22_N26
\fd|Ram|ram_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X63_Y22_N27
\fd|Ram|ram_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(26));

-- Location: FF_X63_Y22_N17
\fd|Ram|ram_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[7]~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(25));

-- Location: LCCOMB_X59_Y21_N30
\fd|Ram|ram_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X59_Y21_N31
\fd|Ram|ram_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(30));

-- Location: FF_X59_Y21_N17
\fd|Ram|ram_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[9]~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(29));

-- Location: LCCOMB_X63_Y21_N18
\fd|Ram|ram_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X63_Y21_N19
\fd|Ram|ram_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(34));

-- Location: LCCOMB_X63_Y22_N12
\fd|Ram|ram_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X63_Y22_N13
\fd|Ram|ram_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(40));

-- Location: FF_X63_Y21_N27
\fd|Ram|ram_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[14]~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(39));

-- Location: LCCOMB_X63_Y21_N22
\fd|Ram|ram_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X63_Y21_N23
\fd|Ram|ram_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(42));

-- Location: FF_X63_Y21_N3
\fd|Ram|ram_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[16]~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(43));

-- Location: FF_X63_Y22_N11
\fd|Ram|ram_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[18]~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(47));

-- Location: LCCOMB_X63_Y24_N4
\fd|Ram|ram_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X63_Y24_N5
\fd|Ram|ram_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(50));

-- Location: FF_X63_Y24_N31
\fd|Ram|ram_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[19]~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(49));

-- Location: LCCOMB_X63_Y22_N0
\fd|Ram|ram_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X63_Y22_N1
\fd|Ram|ram_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(52));

-- Location: LCCOMB_X62_Y20_N14
\fd|BankRegister|add1to5|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[21]~43_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\);

-- Location: FF_X62_Y20_N15
\fd|BankRegister|add1to5|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(21));

-- Location: FF_X62_Y20_N25
\fd|BankRegister|add1to7|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~43_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(21));

-- Location: LCCOMB_X62_Y20_N24
\fd|BankRegister|muxB|selected[21]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~148_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(21) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(21)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(21),
	datac => \fd|BankRegister|add1to7|DOUT\(21),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[21]~148_combout\);

-- Location: FF_X61_Y20_N15
\fd|BankRegister|add1to6|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~43_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(21));

-- Location: FF_X61_Y20_N23
\fd|BankRegister|add1to8|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[21]~43_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(21));

-- Location: LCCOMB_X61_Y20_N14
\fd|BankRegister|muxB|selected[21]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~149_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[21]~148_combout\ & (\fd|BankRegister|add1to6|DOUT\(21))) # (!\fd|BankRegister|muxB|selected[21]~148_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(21)))))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|muxB|selected[21]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|muxB|selected[21]~148_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(21),
	datad => \fd|BankRegister|add1to8|DOUT\(21),
	combout => \fd|BankRegister|muxB|selected[21]~149_combout\);

-- Location: LCCOMB_X58_Y21_N4
\fd|BankRegister|add1to1|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[21]~43_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[21]~feeder_combout\);

-- Location: FF_X58_Y21_N5
\fd|BankRegister|add1to1|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[21]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(21));

-- Location: FF_X60_Y20_N7
\fd|BankRegister|add1to4|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~43_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(21));

-- Location: LCCOMB_X60_Y20_N8
\fd|BankRegister|add1to3|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[21]~43_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[21]~feeder_combout\);

-- Location: FF_X60_Y20_N9
\fd|BankRegister|add1to3|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[21]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(21));

-- Location: LCCOMB_X60_Y20_N2
\fd|BankRegister|muxB|selected[21]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~150_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(21)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(21) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(21),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(21),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[21]~150_combout\);

-- Location: LCCOMB_X61_Y20_N16
\fd|BankRegister|muxB|selected[21]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~151_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[21]~150_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[21]~150_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(21))) # (!\fd|BankRegister|muxB|selected[21]~150_combout\ & ((\fd|BankRegister|add1to1|DOUT\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(21),
	datac => \fd|BankRegister|add1to1|DOUT\(21),
	datad => \fd|BankRegister|muxB|selected[21]~150_combout\,
	combout => \fd|BankRegister|muxB|selected[21]~151_combout\);

-- Location: LCCOMB_X61_Y20_N2
\fd|BankRegister|muxB|selected[21]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~213_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[21]~149_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[21]~151_combout\))))) # 
-- (!\fd|PC|DOUT\(0) & (((\fd|BankRegister|muxB|selected[21]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[21]~149_combout\,
	datad => \fd|BankRegister|muxB|selected[21]~151_combout\,
	combout => \fd|BankRegister|muxB|selected[21]~213_combout\);

-- Location: LCCOMB_X63_Y26_N28
\fd|Ram|ram_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X63_Y26_N29
\fd|Ram|ram_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(56));

-- Location: FF_X63_Y24_N25
\fd|Ram|ram_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[22]~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(55));

-- Location: FF_X63_Y24_N7
\fd|Ram|ram_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[24]~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(59));

-- Location: FF_X60_Y20_N15
\fd|BankRegister|add1to3|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(26));

-- Location: FF_X60_Y20_N17
\fd|BankRegister|add1to4|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(26));

-- Location: FF_X61_Y21_N25
\fd|BankRegister|add1to2|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(26));

-- Location: LCCOMB_X61_Y21_N4
\fd|BankRegister|muxA|selected[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[26]~52_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to2|DOUT\(26))) # (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(26),
	datac => \fd|BankRegister|add1to1|DOUT\(26),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[26]~52_combout\);

-- Location: LCCOMB_X60_Y20_N16
\fd|BankRegister|muxA|selected[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[26]~53_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[26]~52_combout\ & ((\fd|BankRegister|add1to4|DOUT\(26)))) # (!\fd|BankRegister|muxA|selected[26]~52_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(26))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[26]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(26),
	datac => \fd|BankRegister|add1to4|DOUT\(26),
	datad => \fd|BankRegister|muxA|selected[26]~52_combout\,
	combout => \fd|BankRegister|muxA|selected[26]~53_combout\);

-- Location: FF_X61_Y24_N11
\fd|BankRegister|add1to8|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[26]~53_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(26));

-- Location: FF_X62_Y21_N19
\fd|BankRegister|add1to5|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(26));

-- Location: FF_X63_Y24_N9
\fd|BankRegister|add1to7|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(26));

-- Location: LCCOMB_X63_Y24_N8
\fd|BankRegister|muxB|selected[26]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~168_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(26)))) # (!\fd|Rom|content~17_combout\ 
-- & (\fd|BankRegister|add1to5|DOUT\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(26),
	datac => \fd|BankRegister|add1to7|DOUT\(26),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~168_combout\);

-- Location: FF_X61_Y24_N9
\fd|BankRegister|add1to6|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(26));

-- Location: LCCOMB_X61_Y24_N8
\fd|BankRegister|muxB|selected[26]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~169_combout\ = (\fd|BankRegister|muxB|selected[26]~168_combout\ & (((\fd|BankRegister|add1to6|DOUT\(26)) # (!\fd|Rom|content~15_combout\)))) # (!\fd|BankRegister|muxB|selected[26]~168_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(26) & ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(26),
	datab => \fd|BankRegister|muxB|selected[26]~168_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(26),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~169_combout\);

-- Location: LCCOMB_X61_Y24_N20
\fd|MuxSaidaBankRegister|selected[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[26]~29_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[26]~169_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[26]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[26]~171_combout\,
	datac => \fd|BankRegister|muxB|selected[26]~169_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[26]~29_combout\);

-- Location: LCCOMB_X61_Y21_N30
\fd|BankRegister|add1to1|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[25]~51_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\);

-- Location: FF_X61_Y21_N31
\fd|BankRegister|add1to1|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(25));

-- Location: LCCOMB_X63_Y20_N26
\fd|BankRegister|add1to4|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[25]~51_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[25]~feeder_combout\);

-- Location: FF_X63_Y20_N27
\fd|BankRegister|add1to4|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(25));

-- Location: LCCOMB_X63_Y20_N6
\fd|BankRegister|add1to3|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[25]~51_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\);

-- Location: FF_X63_Y20_N7
\fd|BankRegister|add1to3|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(25));

-- Location: LCCOMB_X63_Y20_N0
\fd|BankRegister|muxB|selected[25]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~166_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(25)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|Rom|content~17_combout\ & 
-- \fd|BankRegister|add1to3|DOUT\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(25),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|Rom|content~17_combout\,
	datad => \fd|BankRegister|add1to3|DOUT\(25),
	combout => \fd|BankRegister|muxB|selected[25]~166_combout\);

-- Location: FF_X61_Y21_N27
\fd|BankRegister|add1to2|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~51_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(25));

-- Location: LCCOMB_X61_Y21_N26
\fd|BankRegister|muxB|selected[25]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~167_combout\ = (\fd|BankRegister|muxB|selected[25]~166_combout\ & (((\fd|BankRegister|add1to2|DOUT\(25)) # (\fd|Rom|content~17_combout\)))) # (!\fd|BankRegister|muxB|selected[25]~166_combout\ & 
-- (\fd|BankRegister|add1to1|DOUT\(25) & ((!\fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(25),
	datab => \fd|BankRegister|muxB|selected[25]~166_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(25),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[25]~167_combout\);

-- Location: LCCOMB_X62_Y23_N22
\fd|MuxSaidaBankRegister|selected[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[25]~28_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[25]~165_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[25]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[25]~167_combout\,
	datad => \fd|BankRegister|muxB|selected[25]~165_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[25]~28_combout\);

-- Location: LCCOMB_X63_Y20_N12
\fd|BankRegister|muxA|selected[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[25]~50_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to3|DOUT\(25)) # (\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|add1to1|DOUT\(25) & 
-- ((!\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(25),
	datac => \fd|BankRegister|add1to3|DOUT\(25),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[25]~50_combout\);

-- Location: LCCOMB_X63_Y20_N10
\fd|BankRegister|muxA|selected[25]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[25]~51_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[25]~50_combout\ & ((\fd|BankRegister|add1to4|DOUT\(25)))) # (!\fd|BankRegister|muxA|selected[25]~50_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(25))))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[25]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~11_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(25),
	datac => \fd|BankRegister|add1to4|DOUT\(25),
	datad => \fd|BankRegister|muxA|selected[25]~50_combout\,
	combout => \fd|BankRegister|muxA|selected[25]~51_combout\);

-- Location: FF_X62_Y24_N15
\fd|BankRegister|add1to8|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[24]~49_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(24));

-- Location: FF_X62_Y24_N9
\fd|BankRegister|add1to6|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~49_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(24));

-- Location: LCCOMB_X62_Y20_N16
\fd|BankRegister|add1to5|DOUT[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[24]~49_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[24]~feeder_combout\);

-- Location: FF_X62_Y20_N17
\fd|BankRegister|add1to5|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[24]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(24));

-- Location: FF_X62_Y20_N7
\fd|BankRegister|add1to7|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~49_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(24));

-- Location: LCCOMB_X62_Y20_N6
\fd|BankRegister|muxB|selected[24]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~160_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(24) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(24)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(24),
	datac => \fd|BankRegister|add1to7|DOUT\(24),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[24]~160_combout\);

-- Location: LCCOMB_X62_Y24_N8
\fd|BankRegister|muxB|selected[24]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~161_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[24]~160_combout\ & ((\fd|BankRegister|add1to6|DOUT\(24)))) # (!\fd|BankRegister|muxB|selected[24]~160_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(24))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[24]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(24),
	datac => \fd|BankRegister|add1to6|DOUT\(24),
	datad => \fd|BankRegister|muxB|selected[24]~160_combout\,
	combout => \fd|BankRegister|muxB|selected[24]~161_combout\);

-- Location: LCCOMB_X62_Y24_N20
\fd|MuxSaidaBankRegister|selected[24]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[24]~27_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[24]~161_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[24]~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[24]~161_combout\,
	datad => \fd|BankRegister|muxB|selected[24]~163_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[24]~27_combout\);

-- Location: FF_X59_Y22_N9
\fd|BankRegister|add1to3|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~49_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(24));

-- Location: FF_X59_Y22_N5
\fd|BankRegister|add1to4|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~49_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(24));

-- Location: FF_X62_Y22_N7
\fd|BankRegister|add1to2|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~49_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(24));

-- Location: LCCOMB_X62_Y22_N18
\fd|BankRegister|muxA|selected[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[24]~48_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|add1to2|DOUT\(24)) # ((\fd|Rom|content~8_combout\)))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|add1to1|DOUT\(24) & 
-- !\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(24),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(24),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[24]~48_combout\);

-- Location: LCCOMB_X59_Y22_N4
\fd|BankRegister|muxA|selected[24]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[24]~49_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[24]~48_combout\ & ((\fd|BankRegister|add1to4|DOUT\(24)))) # (!\fd|BankRegister|muxA|selected[24]~48_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(24))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[24]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(24),
	datac => \fd|BankRegister|add1to4|DOUT\(24),
	datad => \fd|BankRegister|muxA|selected[24]~48_combout\,
	combout => \fd|BankRegister|muxA|selected[24]~49_combout\);

-- Location: LCCOMB_X62_Y22_N4
\fd|BankRegister|add1to2|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[23]~47_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[23]~feeder_combout\);

-- Location: FF_X62_Y22_N5
\fd|BankRegister|add1to2|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[23]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(23));

-- Location: LCCOMB_X63_Y20_N24
\fd|BankRegister|add1to4|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[23]~47_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[23]~feeder_combout\);

-- Location: FF_X63_Y20_N25
\fd|BankRegister|add1to4|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[23]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(23));

-- Location: LCCOMB_X63_Y20_N28
\fd|BankRegister|add1to3|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[23]~47_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[23]~feeder_combout\);

-- Location: FF_X63_Y20_N29
\fd|BankRegister|add1to3|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[23]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(23));

-- Location: LCCOMB_X62_Y22_N28
\fd|BankRegister|add1to1|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[23]~47_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[23]~feeder_combout\);

-- Location: FF_X62_Y22_N29
\fd|BankRegister|add1to1|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[23]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(23));

-- Location: LCCOMB_X63_Y20_N8
\fd|BankRegister|muxA|selected[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[23]~46_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(23)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((!\fd|Rom|content~11_combout\ & 
-- \fd|BankRegister|add1to1|DOUT\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(23),
	datac => \fd|Rom|content~11_combout\,
	datad => \fd|BankRegister|add1to1|DOUT\(23),
	combout => \fd|BankRegister|muxA|selected[23]~46_combout\);

-- Location: LCCOMB_X63_Y20_N22
\fd|BankRegister|muxA|selected[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[23]~47_combout\ = (\fd|BankRegister|muxA|selected[23]~46_combout\ & (((\fd|BankRegister|add1to4|DOUT\(23)) # (!\fd|Rom|content~11_combout\)))) # (!\fd|BankRegister|muxA|selected[23]~46_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(23) & ((\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(23),
	datab => \fd|BankRegister|add1to4|DOUT\(23),
	datac => \fd|BankRegister|muxA|selected[23]~46_combout\,
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[23]~47_combout\);

-- Location: LCCOMB_X63_Y20_N16
\fd|BankRegister|muxB|selected[23]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~158_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(23)) # (!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to3|DOUT\(23) & 
-- (\fd|Rom|content~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(23),
	datac => \fd|Rom|content~17_combout\,
	datad => \fd|BankRegister|add1to4|DOUT\(23),
	combout => \fd|BankRegister|muxB|selected[23]~158_combout\);

-- Location: LCCOMB_X63_Y20_N2
\fd|BankRegister|muxB|selected[23]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~159_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[23]~158_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[23]~158_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(23))) # (!\fd|BankRegister|muxB|selected[23]~158_combout\ & ((\fd|BankRegister|add1to1|DOUT\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(23),
	datab => \fd|BankRegister|add1to1|DOUT\(23),
	datac => \fd|Rom|content~17_combout\,
	datad => \fd|BankRegister|muxB|selected[23]~158_combout\,
	combout => \fd|BankRegister|muxB|selected[23]~159_combout\);

-- Location: LCCOMB_X62_Y24_N12
\fd|MuxSaidaBankRegister|selected[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[23]~26_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[23]~157_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[23]~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[23]~157_combout\,
	datad => \fd|BankRegister|muxB|selected[23]~159_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[23]~26_combout\);

-- Location: FF_X62_Y24_N3
\fd|BankRegister|add1to8|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[22]~45_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(22));

-- Location: FF_X62_Y24_N5
\fd|BankRegister|add1to6|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~45_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(22));

-- Location: LCCOMB_X62_Y20_N4
\fd|BankRegister|add1to5|DOUT[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[22]~feeder_combout\ = \fd|MuxRegRam|selected[22]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[22]~45_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[22]~feeder_combout\);

-- Location: FF_X62_Y20_N5
\fd|BankRegister|add1to5|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[22]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(22));

-- Location: FF_X62_Y20_N23
\fd|BankRegister|add1to7|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~45_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(22));

-- Location: LCCOMB_X62_Y20_N22
\fd|BankRegister|muxB|selected[22]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~152_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(22) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(22)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(22),
	datac => \fd|BankRegister|add1to7|DOUT\(22),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[22]~152_combout\);

-- Location: LCCOMB_X62_Y24_N4
\fd|BankRegister|muxB|selected[22]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~153_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[22]~152_combout\ & ((\fd|BankRegister|add1to6|DOUT\(22)))) # (!\fd|BankRegister|muxB|selected[22]~152_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(22))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[22]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(22),
	datac => \fd|BankRegister|add1to6|DOUT\(22),
	datad => \fd|BankRegister|muxB|selected[22]~152_combout\,
	combout => \fd|BankRegister|muxB|selected[22]~153_combout\);

-- Location: LCCOMB_X62_Y24_N0
\fd|MuxSaidaBankRegister|selected[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[22]~25_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[22]~153_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[22]~155_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|muxB|selected[22]~153_combout\,
	datac => \fd|BankRegister|muxB|selected[22]~155_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[22]~25_combout\);

-- Location: FF_X59_Y22_N31
\fd|BankRegister|add1to3|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~45_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(22));

-- Location: FF_X62_Y22_N11
\fd|BankRegister|add1to2|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~45_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(22));

-- Location: LCCOMB_X62_Y22_N2
\fd|BankRegister|muxA|selected[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[22]~44_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|add1to2|DOUT\(22)) # ((\fd|Rom|content~8_combout\)))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|add1to1|DOUT\(22) & 
-- !\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(22),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(22),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[22]~44_combout\);

-- Location: FF_X59_Y22_N27
\fd|BankRegister|add1to4|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~45_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(22));

-- Location: LCCOMB_X59_Y22_N26
\fd|BankRegister|muxA|selected[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[22]~45_combout\ = (\fd|BankRegister|muxA|selected[22]~44_combout\ & (((\fd|BankRegister|add1to4|DOUT\(22)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[22]~44_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(22) & ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(22),
	datab => \fd|BankRegister|muxA|selected[22]~44_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(22),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[22]~45_combout\);

-- Location: LCCOMB_X61_Y20_N30
\fd|MuxSaidaBankRegister|selected[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[21]~24_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[21]~149_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[21]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[21]~151_combout\,
	datac => \fd|BankRegister|muxB|selected[21]~149_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[21]~24_combout\);

-- Location: FF_X62_Y22_N17
\fd|BankRegister|add1to1|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~41_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(20));

-- Location: FF_X62_Y22_N1
\fd|BankRegister|add1to2|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~41_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(20));

-- Location: FF_X59_Y22_N29
\fd|BankRegister|add1to3|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~41_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(20));

-- Location: FF_X59_Y22_N21
\fd|BankRegister|add1to4|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~41_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(20));

-- Location: LCCOMB_X59_Y22_N28
\fd|BankRegister|muxB|selected[20]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~146_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(20))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(20),
	datad => \fd|BankRegister|add1to4|DOUT\(20),
	combout => \fd|BankRegister|muxB|selected[20]~146_combout\);

-- Location: LCCOMB_X62_Y22_N0
\fd|BankRegister|muxB|selected[20]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~147_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[20]~146_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[20]~146_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(20)))) # (!\fd|BankRegister|muxB|selected[20]~146_combout\ & (\fd|BankRegister|add1to1|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(20),
	datac => \fd|BankRegister|add1to2|DOUT\(20),
	datad => \fd|BankRegister|muxB|selected[20]~146_combout\,
	combout => \fd|BankRegister|muxB|selected[20]~147_combout\);

-- Location: LCCOMB_X62_Y23_N2
\fd|MuxSaidaBankRegister|selected[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[20]~23_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[20]~145_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[20]~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[20]~145_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[20]~147_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[20]~23_combout\);

-- Location: LCCOMB_X62_Y22_N16
\fd|BankRegister|muxA|selected[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[20]~40_combout\ = (\fd|Rom|content~8_combout\ & (\fd|Rom|content~11_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & ((\fd|BankRegister|add1to2|DOUT\(20)))) # (!\fd|Rom|content~11_combout\ & 
-- (\fd|BankRegister|add1to1|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(20),
	datad => \fd|BankRegister|add1to2|DOUT\(20),
	combout => \fd|BankRegister|muxA|selected[20]~40_combout\);

-- Location: LCCOMB_X59_Y22_N20
\fd|BankRegister|muxA|selected[20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[20]~41_combout\ = (\fd|BankRegister|muxA|selected[20]~40_combout\ & (((\fd|BankRegister|add1to4|DOUT\(20)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[20]~40_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(20) & ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[20]~40_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(20),
	datac => \fd|BankRegister|add1to4|DOUT\(20),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[20]~41_combout\);

-- Location: LCCOMB_X59_Y20_N20
\fd|BankRegister|add1to4|DOUT[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[19]~feeder_combout\ = \fd|MuxRegRam|selected[19]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[19]~39_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[19]~feeder_combout\);

-- Location: FF_X59_Y20_N21
\fd|BankRegister|add1to4|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[19]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(19));

-- Location: FF_X59_Y20_N29
\fd|BankRegister|add1to3|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~39_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(19));

-- Location: LCCOMB_X62_Y22_N26
\fd|BankRegister|muxA|selected[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[19]~38_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\) # ((\fd|BankRegister|add1to3|DOUT\(19))))) # (!\fd|Rom|content~8_combout\ & (!\fd|Rom|content~11_combout\ & 
-- (\fd|BankRegister|add1to1|DOUT\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(19),
	datad => \fd|BankRegister|add1to3|DOUT\(19),
	combout => \fd|BankRegister|muxA|selected[19]~38_combout\);

-- Location: FF_X62_Y22_N31
\fd|BankRegister|add1to2|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~39_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(19));

-- Location: LCCOMB_X61_Y22_N0
\fd|BankRegister|muxA|selected[19]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[19]~39_combout\ = (\fd|BankRegister|muxA|selected[19]~38_combout\ & ((\fd|BankRegister|add1to4|DOUT\(19)) # ((!\fd|Rom|content~11_combout\)))) # (!\fd|BankRegister|muxA|selected[19]~38_combout\ & 
-- (((\fd|BankRegister|add1to2|DOUT\(19) & \fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(19),
	datab => \fd|BankRegister|muxA|selected[19]~38_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(19),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[19]~39_combout\);

-- Location: LCCOMB_X62_Y20_N18
\fd|BankRegister|add1to5|DOUT[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[19]~feeder_combout\ = \fd|MuxRegRam|selected[19]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[19]~39_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[19]~feeder_combout\);

-- Location: FF_X62_Y20_N19
\fd|BankRegister|add1to5|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[19]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(19));

-- Location: FF_X62_Y20_N13
\fd|BankRegister|add1to7|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~39_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(19));

-- Location: LCCOMB_X62_Y20_N12
\fd|BankRegister|muxB|selected[19]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~140_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(19) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(19)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(19),
	datac => \fd|BankRegister|add1to7|DOUT\(19),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[19]~140_combout\);

-- Location: FF_X61_Y20_N5
\fd|BankRegister|add1to6|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~39_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(19));

-- Location: FF_X61_Y20_N7
\fd|BankRegister|add1to8|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[19]~39_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(19));

-- Location: LCCOMB_X61_Y20_N4
\fd|BankRegister|muxB|selected[19]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~141_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[19]~140_combout\ & (\fd|BankRegister|add1to6|DOUT\(19))) # (!\fd|BankRegister|muxB|selected[19]~140_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(19)))))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|muxB|selected[19]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|muxB|selected[19]~140_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(19),
	datad => \fd|BankRegister|add1to8|DOUT\(19),
	combout => \fd|BankRegister|muxB|selected[19]~141_combout\);

-- Location: LCCOMB_X61_Y20_N0
\fd|MuxSaidaBankRegister|selected[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[19]~22_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[19]~141_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[19]~143_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|muxB|selected[19]~141_combout\,
	datad => \fd|BankRegister|muxB|selected[19]~143_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[19]~22_combout\);

-- Location: FF_X62_Y22_N21
\fd|BankRegister|add1to1|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(18));

-- Location: FF_X62_Y22_N25
\fd|BankRegister|add1to2|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(18));

-- Location: FF_X59_Y22_N15
\fd|BankRegister|add1to3|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(18));

-- Location: FF_X59_Y22_N3
\fd|BankRegister|add1to4|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(18));

-- Location: LCCOMB_X59_Y22_N14
\fd|BankRegister|muxB|selected[18]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~138_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(18))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(18),
	datad => \fd|BankRegister|add1to4|DOUT\(18),
	combout => \fd|BankRegister|muxB|selected[18]~138_combout\);

-- Location: LCCOMB_X62_Y22_N24
\fd|BankRegister|muxB|selected[18]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~139_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[18]~138_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[18]~138_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(18)))) # (!\fd|BankRegister|muxB|selected[18]~138_combout\ & (\fd|BankRegister|add1to1|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(18),
	datac => \fd|BankRegister|add1to2|DOUT\(18),
	datad => \fd|BankRegister|muxB|selected[18]~138_combout\,
	combout => \fd|BankRegister|muxB|selected[18]~139_combout\);

-- Location: LCCOMB_X60_Y22_N20
\fd|MuxSaidaBankRegister|selected[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[18]~21_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[18]~137_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[18]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[18]~139_combout\,
	datab => \fd|BankRegister|muxB|selected[18]~137_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[18]~21_combout\);

-- Location: LCCOMB_X62_Y22_N20
\fd|BankRegister|muxA|selected[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[18]~36_combout\ = (\fd|Rom|content~8_combout\ & (\fd|Rom|content~11_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & ((\fd|BankRegister|add1to2|DOUT\(18)))) # (!\fd|Rom|content~11_combout\ & 
-- (\fd|BankRegister|add1to1|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(18),
	datad => \fd|BankRegister|add1to2|DOUT\(18),
	combout => \fd|BankRegister|muxA|selected[18]~36_combout\);

-- Location: LCCOMB_X59_Y22_N2
\fd|BankRegister|muxA|selected[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[18]~37_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[18]~36_combout\ & ((\fd|BankRegister|add1to4|DOUT\(18)))) # (!\fd|BankRegister|muxA|selected[18]~36_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(18))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[18]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(18),
	datac => \fd|BankRegister|add1to4|DOUT\(18),
	datad => \fd|BankRegister|muxA|selected[18]~36_combout\,
	combout => \fd|BankRegister|muxA|selected[18]~37_combout\);

-- Location: FF_X57_Y21_N23
\fd|BankRegister|add1to3|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~35_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(17));

-- Location: LCCOMB_X58_Y21_N2
\fd|BankRegister|add1to1|DOUT[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[17]~35_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[17]~feeder_combout\);

-- Location: FF_X58_Y21_N3
\fd|BankRegister|add1to1|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[17]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(17));

-- Location: LCCOMB_X57_Y21_N10
\fd|BankRegister|muxA|selected[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[17]~34_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\) # ((\fd|BankRegister|add1to3|DOUT\(17))))) # (!\fd|Rom|content~8_combout\ & (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(17),
	datad => \fd|BankRegister|add1to1|DOUT\(17),
	combout => \fd|BankRegister|muxA|selected[17]~34_combout\);

-- Location: FF_X57_Y21_N1
\fd|BankRegister|add1to4|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~35_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(17));

-- Location: LCCOMB_X58_Y21_N24
\fd|BankRegister|add1to2|DOUT[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[17]~35_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[17]~feeder_combout\);

-- Location: FF_X58_Y21_N25
\fd|BankRegister|add1to2|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[17]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(17));

-- Location: LCCOMB_X57_Y21_N0
\fd|BankRegister|muxA|selected[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[17]~35_combout\ = (\fd|BankRegister|muxA|selected[17]~34_combout\ & (((\fd|BankRegister|add1to4|DOUT\(17))) # (!\fd|Rom|content~11_combout\))) # (!\fd|BankRegister|muxA|selected[17]~34_combout\ & (\fd|Rom|content~11_combout\ 
-- & ((\fd|BankRegister|add1to2|DOUT\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[17]~34_combout\,
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(17),
	datad => \fd|BankRegister|add1to2|DOUT\(17),
	combout => \fd|BankRegister|muxA|selected[17]~35_combout\);

-- Location: LCCOMB_X57_Y21_N22
\fd|BankRegister|muxB|selected[17]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~134_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(17)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(17) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(17),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[17]~134_combout\);

-- Location: LCCOMB_X57_Y21_N2
\fd|BankRegister|muxB|selected[17]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~135_combout\ = (\fd|BankRegister|muxB|selected[17]~134_combout\ & (((\fd|BankRegister|add1to2|DOUT\(17)) # (\fd|Rom|content~17_combout\)))) # (!\fd|BankRegister|muxB|selected[17]~134_combout\ & 
-- (\fd|BankRegister|add1to1|DOUT\(17) & ((!\fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(17),
	datab => \fd|BankRegister|add1to2|DOUT\(17),
	datac => \fd|BankRegister|muxB|selected[17]~134_combout\,
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[17]~135_combout\);

-- Location: LCCOMB_X60_Y22_N10
\fd|MuxSaidaBankRegister|selected[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[17]~20_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[17]~133_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[17]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[17]~135_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|muxB|selected[17]~133_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[17]~20_combout\);

-- Location: FF_X57_Y21_N9
\fd|BankRegister|add1to3|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~33_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(16));

-- Location: FF_X57_Y21_N19
\fd|BankRegister|add1to4|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~33_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(16));

-- Location: FF_X61_Y21_N3
\fd|BankRegister|add1to2|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~33_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(16));

-- Location: LCCOMB_X57_Y21_N16
\fd|BankRegister|muxA|selected[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[16]~32_combout\ = (\fd|Rom|content~11_combout\ & (((\fd|BankRegister|add1to2|DOUT\(16)) # (\fd|Rom|content~8_combout\)))) # (!\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to1|DOUT\(16) & 
-- ((!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(16),
	datab => \fd|BankRegister|add1to2|DOUT\(16),
	datac => \fd|Rom|content~11_combout\,
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[16]~32_combout\);

-- Location: LCCOMB_X57_Y21_N18
\fd|BankRegister|muxA|selected[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[16]~33_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[16]~32_combout\ & ((\fd|BankRegister|add1to4|DOUT\(16)))) # (!\fd|BankRegister|muxA|selected[16]~32_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(16))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(16),
	datac => \fd|BankRegister|add1to4|DOUT\(16),
	datad => \fd|BankRegister|muxA|selected[16]~32_combout\,
	combout => \fd|BankRegister|muxA|selected[16]~33_combout\);

-- Location: FF_X61_Y22_N31
\fd|BankRegister|add1to8|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[16]~33_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(16));

-- Location: FF_X62_Y21_N23
\fd|BankRegister|add1to6|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~33_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(16));

-- Location: FF_X61_Y22_N5
\fd|BankRegister|add1to7|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~33_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(16));

-- Location: FF_X62_Y21_N17
\fd|BankRegister|add1to5|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~33_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(16));

-- Location: LCCOMB_X62_Y21_N16
\fd|BankRegister|muxB|selected[16]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~128_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(16))) # (!\fd|Rom|content~17_combout\ & 
-- ((\fd|BankRegister|add1to5|DOUT\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to7|DOUT\(16),
	datac => \fd|BankRegister|add1to5|DOUT\(16),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~128_combout\);

-- Location: LCCOMB_X62_Y21_N22
\fd|BankRegister|muxB|selected[16]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~129_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[16]~128_combout\ & ((\fd|BankRegister|add1to6|DOUT\(16)))) # (!\fd|BankRegister|muxB|selected[16]~128_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(16))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[16]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(16),
	datad => \fd|BankRegister|muxB|selected[16]~128_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~129_combout\);

-- Location: LCCOMB_X62_Y21_N14
\fd|MuxSaidaBankRegister|selected[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[16]~19_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[16]~129_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[16]~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[16]~129_combout\,
	datad => \fd|BankRegister|muxB|selected[16]~131_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[16]~19_combout\);

-- Location: LCCOMB_X61_Y21_N22
\fd|BankRegister|add1to1|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[15]~31_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[15]~feeder_combout\);

-- Location: FF_X61_Y21_N23
\fd|BankRegister|add1to1|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[15]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(15));

-- Location: FF_X60_Y20_N29
\fd|BankRegister|add1to4|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(15));

-- Location: FF_X60_Y20_N31
\fd|BankRegister|add1to3|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(15));

-- Location: LCCOMB_X60_Y20_N12
\fd|BankRegister|muxB|selected[15]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~126_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to4|DOUT\(15))) # (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to3|DOUT\(15)))))) # 
-- (!\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(15),
	datac => \fd|BankRegister|add1to3|DOUT\(15),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[15]~126_combout\);

-- Location: FF_X61_Y21_N17
\fd|BankRegister|add1to2|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(15));

-- Location: LCCOMB_X61_Y21_N16
\fd|BankRegister|muxB|selected[15]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~127_combout\ = (\fd|BankRegister|muxB|selected[15]~126_combout\ & (((\fd|BankRegister|add1to2|DOUT\(15)) # (\fd|Rom|content~17_combout\)))) # (!\fd|BankRegister|muxB|selected[15]~126_combout\ & 
-- (\fd|BankRegister|add1to1|DOUT\(15) & ((!\fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(15),
	datab => \fd|BankRegister|muxB|selected[15]~126_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(15),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[15]~127_combout\);

-- Location: LCCOMB_X61_Y21_N8
\fd|MuxSaidaBankRegister|selected[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[15]~18_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[15]~125_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[15]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[15]~127_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|muxB|selected[15]~125_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[15]~18_combout\);

-- Location: LCCOMB_X60_Y20_N30
\fd|BankRegister|muxA|selected[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[15]~30_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to3|DOUT\(15)) # (\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|add1to1|DOUT\(15) & 
-- ((!\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(15),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(15),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[15]~30_combout\);

-- Location: LCCOMB_X60_Y20_N28
\fd|BankRegister|muxA|selected[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[15]~31_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[15]~30_combout\ & (\fd|BankRegister|add1to4|DOUT\(15))) # (!\fd|BankRegister|muxA|selected[15]~30_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(15)))))) # (!\fd|Rom|content~11_combout\ & (\fd|BankRegister|muxA|selected[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~11_combout\,
	datab => \fd|BankRegister|muxA|selected[15]~30_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(15),
	datad => \fd|BankRegister|add1to2|DOUT\(15),
	combout => \fd|BankRegister|muxA|selected[15]~31_combout\);

-- Location: FF_X57_Y21_N15
\fd|BankRegister|add1to3|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(14));

-- Location: FF_X57_Y21_N5
\fd|BankRegister|add1to4|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(14));

-- Location: FF_X61_Y21_N15
\fd|BankRegister|add1to2|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(14));

-- Location: LCCOMB_X61_Y21_N0
\fd|BankRegister|add1to1|DOUT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[14]~29_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[14]~feeder_combout\);

-- Location: FF_X61_Y21_N1
\fd|BankRegister|add1to1|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[14]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(14));

-- Location: LCCOMB_X57_Y21_N6
\fd|BankRegister|muxA|selected[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[14]~28_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|add1to2|DOUT\(14)) # ((\fd|Rom|content~8_combout\)))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|add1to1|DOUT\(14) & 
-- !\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(14),
	datab => \fd|BankRegister|add1to1|DOUT\(14),
	datac => \fd|Rom|content~11_combout\,
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[14]~28_combout\);

-- Location: LCCOMB_X57_Y21_N4
\fd|BankRegister|muxA|selected[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[14]~29_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[14]~28_combout\ & ((\fd|BankRegister|add1to4|DOUT\(14)))) # (!\fd|BankRegister|muxA|selected[14]~28_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(14))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(14),
	datac => \fd|BankRegister|add1to4|DOUT\(14),
	datad => \fd|BankRegister|muxA|selected[14]~28_combout\,
	combout => \fd|BankRegister|muxA|selected[14]~29_combout\);

-- Location: LCCOMB_X57_Y21_N14
\fd|BankRegister|muxB|selected[14]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~122_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(14)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(14) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(14),
	datac => \fd|BankRegister|add1to3|DOUT\(14),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[14]~122_combout\);

-- Location: LCCOMB_X61_Y21_N14
\fd|BankRegister|muxB|selected[14]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~123_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[14]~122_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[14]~122_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(14)))) # (!\fd|BankRegister|muxB|selected[14]~122_combout\ & (\fd|BankRegister|add1to1|DOUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(14),
	datac => \fd|BankRegister|add1to2|DOUT\(14),
	datad => \fd|BankRegister|muxB|selected[14]~122_combout\,
	combout => \fd|BankRegister|muxB|selected[14]~123_combout\);

-- Location: LCCOMB_X61_Y21_N6
\fd|MuxSaidaBankRegister|selected[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[14]~17_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[14]~121_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[14]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|muxB|selected[14]~123_combout\,
	datad => \fd|BankRegister|muxB|selected[14]~121_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[14]~17_combout\);

-- Location: FF_X58_Y21_N27
\fd|BankRegister|add1to2|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(13));

-- Location: FF_X59_Y20_N31
\fd|BankRegister|add1to4|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(13));

-- Location: FF_X59_Y20_N3
\fd|BankRegister|add1to3|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(13));

-- Location: LCCOMB_X58_Y21_N20
\fd|BankRegister|muxA|selected[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[13]~26_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(13)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(13) & 
-- !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(13),
	datac => \fd|BankRegister|add1to1|DOUT\(13),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[13]~26_combout\);

-- Location: LCCOMB_X59_Y20_N30
\fd|BankRegister|muxA|selected[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[13]~27_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[13]~26_combout\ & ((\fd|BankRegister|add1to4|DOUT\(13)))) # (!\fd|BankRegister|muxA|selected[13]~26_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(13))))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(13),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(13),
	datad => \fd|BankRegister|muxA|selected[13]~26_combout\,
	combout => \fd|BankRegister|muxA|selected[13]~27_combout\);

-- Location: LCCOMB_X61_Y21_N12
\fd|MuxSaidaBankRegister|selected[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[13]~16_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|Rom|content~31_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|BankRegister|muxB|selected[13]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|content~31_combout\,
	datad => \fd|BankRegister|muxB|selected[13]~198_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[13]~16_combout\);

-- Location: FF_X57_Y21_N13
\fd|BankRegister|add1to3|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(12));

-- Location: FF_X58_Y21_N13
\fd|BankRegister|add1to2|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(12));

-- Location: FF_X58_Y21_N23
\fd|BankRegister|add1to1|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(12));

-- Location: LCCOMB_X58_Y21_N22
\fd|BankRegister|muxA|selected[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[12]~24_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to2|DOUT\(12))) # (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(12),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(12),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[12]~24_combout\);

-- Location: FF_X57_Y21_N27
\fd|BankRegister|add1to4|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(12));

-- Location: LCCOMB_X57_Y21_N26
\fd|BankRegister|muxA|selected[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[12]~25_combout\ = (\fd|BankRegister|muxA|selected[12]~24_combout\ & (((\fd|BankRegister|add1to4|DOUT\(12)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[12]~24_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(12) & ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(12),
	datab => \fd|BankRegister|muxA|selected[12]~24_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(12),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[12]~25_combout\);

-- Location: LCCOMB_X59_Y24_N0
\fd|Rom|content~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~27_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~3_combout\ & (\fd|Rom|content~26_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~3_combout\,
	datac => \fd|Rom|content~26_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~27_combout\);

-- Location: LCCOMB_X60_Y21_N16
\fd|MuxSaidaBankRegister|selected[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[11]~14_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|Rom|content~27_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|BankRegister|muxB|selected[11]~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|content~27_combout\,
	datad => \fd|BankRegister|muxB|selected[11]~196_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[11]~14_combout\);

-- Location: LCCOMB_X57_Y21_N30
\fd|BankRegister|add1to3|DOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[11]~23_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[11]~feeder_combout\);

-- Location: FF_X57_Y21_N31
\fd|BankRegister|add1to3|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[11]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(11));

-- Location: FF_X58_Y20_N5
\fd|BankRegister|add1to1|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(11));

-- Location: LCCOMB_X58_Y20_N4
\fd|BankRegister|muxA|selected[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[11]~22_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(11)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(11) & 
-- !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(11),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(11),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[11]~22_combout\);

-- Location: FF_X58_Y20_N7
\fd|BankRegister|add1to4|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(11));

-- Location: LCCOMB_X58_Y20_N6
\fd|BankRegister|muxA|selected[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[11]~23_combout\ = (\fd|BankRegister|muxA|selected[11]~22_combout\ & (((\fd|BankRegister|add1to4|DOUT\(11)) # (!\fd|Rom|content~11_combout\)))) # (!\fd|BankRegister|muxA|selected[11]~22_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(11) & ((\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(11),
	datab => \fd|BankRegister|muxA|selected[11]~22_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(11),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[11]~23_combout\);

-- Location: FF_X58_Y20_N3
\fd|BankRegister|add1to1|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(10));

-- Location: FF_X59_Y21_N23
\fd|BankRegister|add1to2|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(10));

-- Location: FF_X59_Y20_N1
\fd|BankRegister|add1to4|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(10));

-- Location: LCCOMB_X59_Y20_N4
\fd|BankRegister|add1to3|DOUT[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[10]~21_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[10]~feeder_combout\);

-- Location: FF_X59_Y20_N5
\fd|BankRegister|add1to3|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[10]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(10));

-- Location: LCCOMB_X59_Y21_N2
\fd|BankRegister|muxB|selected[10]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~106_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(10)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(10) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(10),
	datac => \fd|BankRegister|add1to3|DOUT\(10),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~106_combout\);

-- Location: LCCOMB_X59_Y21_N22
\fd|BankRegister|muxB|selected[10]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~107_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[10]~106_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[10]~106_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(10)))) # (!\fd|BankRegister|muxB|selected[10]~106_combout\ & (\fd|BankRegister|add1to1|DOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(10),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(10),
	datad => \fd|BankRegister|muxB|selected[10]~106_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~107_combout\);

-- Location: LCCOMB_X60_Y22_N0
\fd|MuxSaidaBankRegister|selected[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[10]~13_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[10]~105_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[10]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[10]~105_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|muxB|selected[10]~107_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[10]~13_combout\);

-- Location: LCCOMB_X58_Y20_N2
\fd|BankRegister|muxA|selected[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[10]~20_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to2|DOUT\(10))) # (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(10),
	datac => \fd|BankRegister|add1to1|DOUT\(10),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[10]~20_combout\);

-- Location: LCCOMB_X59_Y20_N0
\fd|BankRegister|muxA|selected[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[10]~21_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[10]~20_combout\ & ((\fd|BankRegister|add1to4|DOUT\(10)))) # (!\fd|BankRegister|muxA|selected[10]~20_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(10))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(10),
	datac => \fd|BankRegister|add1to4|DOUT\(10),
	datad => \fd|BankRegister|muxA|selected[10]~20_combout\,
	combout => \fd|BankRegister|muxA|selected[10]~21_combout\);

-- Location: LCCOMB_X57_Y21_N20
\fd|BankRegister|add1to3|DOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[9]~19_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[9]~feeder_combout\);

-- Location: FF_X57_Y21_N21
\fd|BankRegister|add1to3|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[9]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(9));

-- Location: LCCOMB_X58_Y20_N12
\fd|BankRegister|muxA|selected[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[9]~18_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(9)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(9) & !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(9),
	datac => \fd|BankRegister|add1to1|DOUT\(9),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[9]~18_combout\);

-- Location: FF_X59_Y20_N15
\fd|BankRegister|add1to4|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(9));

-- Location: FF_X59_Y21_N9
\fd|BankRegister|add1to2|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(9));

-- Location: LCCOMB_X59_Y20_N14
\fd|BankRegister|muxA|selected[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[9]~19_combout\ = (\fd|BankRegister|muxA|selected[9]~18_combout\ & (((\fd|BankRegister|add1to4|DOUT\(9))) # (!\fd|Rom|content~11_combout\))) # (!\fd|BankRegister|muxA|selected[9]~18_combout\ & (\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[9]~18_combout\,
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(9),
	datad => \fd|BankRegister|add1to2|DOUT\(9),
	combout => \fd|BankRegister|muxA|selected[9]~19_combout\);

-- Location: FF_X56_Y23_N15
\fd|BankRegister|add1to8|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[8]~17_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(8));

-- Location: FF_X56_Y23_N7
\fd|BankRegister|add1to5|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(8));

-- Location: FF_X57_Y23_N17
\fd|BankRegister|add1to7|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(8));

-- Location: LCCOMB_X57_Y23_N16
\fd|BankRegister|muxB|selected[8]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~96_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(8) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(8)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(8),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(8),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[8]~96_combout\);

-- Location: FF_X57_Y23_N7
\fd|BankRegister|add1to6|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(8));

-- Location: LCCOMB_X57_Y23_N6
\fd|BankRegister|muxB|selected[8]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~97_combout\ = (\fd|BankRegister|muxB|selected[8]~96_combout\ & (((\fd|BankRegister|add1to6|DOUT\(8)) # (!\fd|Rom|content~15_combout\)))) # (!\fd|BankRegister|muxB|selected[8]~96_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(8) & ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(8),
	datab => \fd|BankRegister|muxB|selected[8]~96_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(8),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[8]~97_combout\);

-- Location: LCCOMB_X57_Y23_N4
\fd|MuxSaidaBankRegister|selected[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[8]~11_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[8]~97_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[8]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[8]~97_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[8]~99_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[8]~11_combout\);

-- Location: LCCOMB_X60_Y23_N22
\fd|ALU|adder|addsloop:7:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ = (\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ & ((\fd|BankRegister|muxA|selected[7]~15_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~10_combout\)))) # 
-- (!\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ & (\fd|BankRegister|muxA|selected[7]~15_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[7]~10_combout\,
	datac => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\,
	datad => \fd|BankRegister|muxA|selected[7]~15_combout\,
	combout => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\);

-- Location: FF_X59_Y22_N25
\fd|BankRegister|add1to3|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(8));

-- Location: FF_X59_Y22_N1
\fd|BankRegister|add1to4|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(8));

-- Location: LCCOMB_X58_Y22_N14
\fd|BankRegister|add1to1|DOUT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[8]~feeder_combout\ = \fd|MuxRegRam|selected[8]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[8]~17_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[8]~feeder_combout\);

-- Location: FF_X58_Y22_N15
\fd|BankRegister|add1to1|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[8]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(8));

-- Location: LCCOMB_X58_Y22_N8
\fd|BankRegister|muxA|selected[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[8]~16_combout\ = (\fd|Rom|content~11_combout\ & (((\fd|Rom|content~8_combout\) # (\fd|BankRegister|add1to2|DOUT\(8))))) # (!\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to1|DOUT\(8) & (!\fd|Rom|content~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~11_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(8),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|add1to2|DOUT\(8),
	combout => \fd|BankRegister|muxA|selected[8]~16_combout\);

-- Location: LCCOMB_X59_Y22_N0
\fd|BankRegister|muxA|selected[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[8]~17_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[8]~16_combout\ & ((\fd|BankRegister|add1to4|DOUT\(8)))) # (!\fd|BankRegister|muxA|selected[8]~16_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(8))))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(8),
	datac => \fd|BankRegister|add1to4|DOUT\(8),
	datad => \fd|BankRegister|muxA|selected[8]~16_combout\,
	combout => \fd|BankRegister|muxA|selected[8]~17_combout\);

-- Location: LCCOMB_X60_Y23_N4
\fd|ALU|adder|addsloop:8:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ = (\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ & ((\fd|BankRegister|muxA|selected[8]~17_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[8]~11_combout\)))) # 
-- (!\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ & (\fd|BankRegister|muxA|selected[8]~17_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[8]~11_combout\,
	datac => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\,
	datad => \fd|BankRegister|muxA|selected[8]~17_combout\,
	combout => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\);

-- Location: FF_X56_Y23_N9
\fd|BankRegister|add1to8|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[9]~19_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(9));

-- Location: LCCOMB_X56_Y23_N0
\fd|BankRegister|add1to5|DOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[9]~19_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[9]~feeder_combout\);

-- Location: FF_X56_Y23_N1
\fd|BankRegister|add1to5|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[9]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(9));

-- Location: FF_X57_Y23_N15
\fd|BankRegister|add1to7|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(9));

-- Location: LCCOMB_X57_Y23_N14
\fd|BankRegister|muxB|selected[9]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~100_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(9)))) # (!\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to5|DOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(9),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(9),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[9]~100_combout\);

-- Location: FF_X57_Y23_N25
\fd|BankRegister|add1to6|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(9));

-- Location: LCCOMB_X57_Y23_N24
\fd|BankRegister|muxB|selected[9]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~101_combout\ = (\fd|BankRegister|muxB|selected[9]~100_combout\ & (((\fd|BankRegister|add1to6|DOUT\(9)) # (!\fd|Rom|content~15_combout\)))) # (!\fd|BankRegister|muxB|selected[9]~100_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(9) & ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(9),
	datab => \fd|BankRegister|muxB|selected[9]~100_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(9),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[9]~101_combout\);

-- Location: LCCOMB_X59_Y21_N0
\fd|MuxSaidaBankRegister|selected[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[9]~12_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[9]~101_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[9]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[9]~103_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|muxB|selected[9]~101_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[9]~12_combout\);

-- Location: LCCOMB_X60_Y23_N18
\fd|ALU|adder|addsloop:9:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[9]~19_combout\ & ((\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~12_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[9]~19_combout\ & (\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[9]~19_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[9]~12_combout\,
	combout => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N28
\fd|ALU|adder|addsloop:10:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[10]~21_combout\ & ((\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~13_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[10]~21_combout\ & (\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[10]~13_combout\,
	datac => \fd|BankRegister|muxA|selected[10]~21_combout\,
	datad => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N30
\fd|ALU|adder|addsloop:11:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[11]~23_combout\ & ((\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[11]~14_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[11]~23_combout\ & (\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[11]~14_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[11]~14_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|muxA|selected[11]~23_combout\,
	datad => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y25_N8
\fd|Rom|content~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~29_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~3_combout\ & (\fd|Rom|content~28_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~3_combout\,
	datac => \fd|Rom|content~28_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~29_combout\);

-- Location: LCCOMB_X59_Y21_N28
\fd|MuxSaidaBankRegister|selected[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[12]~15_combout\ = (\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~29_combout\))) # (!\ucfd|Equal1~0_combout\ & (\fd|BankRegister|muxB|selected[12]~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[12]~197_combout\,
	datad => \fd|Rom|content~29_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[12]~15_combout\);

-- Location: LCCOMB_X60_Y23_N12
\fd|ALU|adder|addsloop:12:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[12]~25_combout\ & ((\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[12]~15_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[12]~25_combout\ & (\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[12]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[12]~25_combout\,
	datac => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[12]~15_combout\,
	combout => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N2
\fd|ALU|adder|addsloop:13:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[13]~27_combout\ & ((\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[13]~16_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[13]~27_combout\ & (\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[13]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[13]~27_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[13]~16_combout\,
	datad => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N20
\fd|ALU|adder|addsloop:14:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[14]~29_combout\ & ((\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~17_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[14]~29_combout\ & (\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[14]~29_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[14]~17_combout\,
	datad => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y23_N14
\fd|ALU|adder|addsloop:15:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[15]~31_combout\ & ((\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[15]~18_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[15]~31_combout\ & (\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[15]~18_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|muxA|selected[15]~31_combout\,
	datad => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N24
\fd|ALU|adder|addsloop:16:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[16]~33_combout\ & ((\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~19_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[16]~33_combout\ & (\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[16]~33_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[16]~19_combout\,
	datad => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N2
\fd|ALU|adder|addsloop:17:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[17]~35_combout\ & ((\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[17]~20_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[17]~35_combout\ & (\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[17]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[17]~35_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[17]~20_combout\,
	datad => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N12
\fd|ALU|adder|addsloop:18:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[18]~37_combout\ & ((\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~21_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[18]~37_combout\ & (\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[18]~21_combout\,
	datac => \fd|BankRegister|muxA|selected[18]~37_combout\,
	datad => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N14
\fd|ALU|adder|addsloop:19:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[19]~39_combout\ & ((\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~22_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[19]~39_combout\ & (\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[19]~39_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[19]~22_combout\,
	datad => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N20
\fd|ALU|adder|addsloop:20:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[20]~41_combout\ & ((\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[20]~23_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[20]~41_combout\ & (\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[20]~23_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[20]~23_combout\,
	datab => \fd|BankRegister|muxA|selected[20]~41_combout\,
	datac => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N6
\fd|ALU|adder|addsloop:21:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[21]~43_combout\ & ((\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~24_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[21]~43_combout\ & (\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[21]~43_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[21]~24_combout\,
	datad => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N16
\fd|ALU|adder|addsloop:22:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[22]~45_combout\ & ((\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~25_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[22]~45_combout\ & (\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[22]~25_combout\,
	datac => \fd|BankRegister|muxA|selected[22]~45_combout\,
	datad => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N10
\fd|ALU|adder|addsloop:23:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[23]~47_combout\ & ((\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[23]~26_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[23]~47_combout\ & (\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[23]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[23]~47_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[23]~26_combout\,
	datad => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N28
\fd|ALU|adder|addsloop:24:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[24]~49_combout\ & ((\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[24]~27_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[24]~49_combout\ & (\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[24]~27_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[24]~27_combout\,
	datab => \fd|BankRegister|muxA|selected[24]~49_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N18
\fd|ALU|adder|addsloop:25:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[25]~51_combout\ & ((\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[25]~28_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[25]~51_combout\ & (\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[25]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[25]~28_combout\,
	datac => \fd|BankRegister|muxA|selected[25]~51_combout\,
	datad => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y23_N30
\fd|ALU|final|selected[26]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[26]~74_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[26]~29_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[26]~29_combout\,
	datad => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[26]~74_combout\);

-- Location: LCCOMB_X61_Y24_N14
\fd|ALU|final|selected[26]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[26]~75_combout\ = (\fd|BankRegister|muxA|selected[26]~53_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[26]~74_combout\))))) # (!\fd|BankRegister|muxA|selected[26]~53_combout\ & 
-- (\fd|ALU|final|selected[26]~74_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected[26]~53_combout\,
	datad => \fd|ALU|final|selected[26]~74_combout\,
	combout => \fd|ALU|final|selected[26]~75_combout\);

-- Location: FF_X63_Y24_N23
\fd|Ram|ram_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[26]~218_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(63));

-- Location: LCCOMB_X62_Y25_N16
\fd|Ram|ram_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X62_Y25_N17
\fd|Ram|ram_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(64));

-- Location: FF_X61_Y25_N13
\fd|Ram|ram_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[28]~220_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(67));

-- Location: LCCOMB_X61_Y25_N18
\fd|Ram|ram_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X61_Y25_N19
\fd|Ram|ram_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(68));

-- Location: LCCOMB_X63_Y25_N4
\fd|Ram|ram_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X63_Y25_N5
\fd|Ram|ram_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(70));

-- Location: FF_X63_Y22_N31
\fd|Ram|ram_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[30]~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(71));

-- Location: LCCOMB_X57_Y21_N28
\fd|BankRegister|add1to3|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[31]~63_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\);

-- Location: FF_X57_Y21_N29
\fd|BankRegister|add1to3|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(31));

-- Location: FF_X59_Y20_N7
\fd|BankRegister|add1to4|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(31));

-- Location: LCCOMB_X59_Y20_N6
\fd|BankRegister|muxB|selected[31]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~190_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(31)))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to3|DOUT\(31))))) # 
-- (!\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(31),
	datac => \fd|BankRegister|add1to4|DOUT\(31),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[31]~190_combout\);

-- Location: LCCOMB_X61_Y21_N28
\fd|BankRegister|add1to1|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[31]~63_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\);

-- Location: FF_X61_Y21_N29
\fd|BankRegister|add1to1|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(31));

-- Location: LCCOMB_X58_Y20_N26
\fd|BankRegister|muxB|selected[31]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~191_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[31]~190_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[31]~190_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(31))) # (!\fd|BankRegister|muxB|selected[31]~190_combout\ & ((\fd|BankRegister|add1to1|DOUT\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(31),
	datac => \fd|BankRegister|muxB|selected[31]~190_combout\,
	datad => \fd|BankRegister|add1to1|DOUT\(31),
	combout => \fd|BankRegister|muxB|selected[31]~191_combout\);

-- Location: FF_X60_Y21_N31
\fd|BankRegister|add1to8|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[31]~63_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(31));

-- Location: FF_X62_Y21_N1
\fd|BankRegister|add1to6|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(31));

-- Location: FF_X60_Y21_N21
\fd|BankRegister|add1to7|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(31));

-- Location: LCCOMB_X62_Y21_N30
\fd|BankRegister|add1to5|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[31]~63_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[31]~feeder_combout\);

-- Location: FF_X62_Y21_N31
\fd|BankRegister|add1to5|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[31]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(31));

-- Location: LCCOMB_X60_Y21_N20
\fd|BankRegister|muxB|selected[31]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~188_combout\ = (\fd|Rom|content~15_combout\ & (!\fd|Rom|content~17_combout\)) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(31))) # (!\fd|Rom|content~17_combout\ & 
-- ((\fd|BankRegister|add1to5|DOUT\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(31),
	datad => \fd|BankRegister|add1to5|DOUT\(31),
	combout => \fd|BankRegister|muxB|selected[31]~188_combout\);

-- Location: LCCOMB_X62_Y21_N0
\fd|BankRegister|muxB|selected[31]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~189_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[31]~188_combout\ & ((\fd|BankRegister|add1to6|DOUT\(31)))) # (!\fd|BankRegister|muxB|selected[31]~188_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(31))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[31]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(31),
	datac => \fd|BankRegister|add1to6|DOUT\(31),
	datad => \fd|BankRegister|muxB|selected[31]~188_combout\,
	combout => \fd|BankRegister|muxB|selected[31]~189_combout\);

-- Location: LCCOMB_X63_Y21_N8
\fd|BankRegister|muxB|selected[31]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~223_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[31]~189_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[31]~191_combout\)))) # 
-- (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[31]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[31]~191_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[31]~189_combout\,
	combout => \fd|BankRegister|muxB|selected[31]~223_combout\);

-- Location: M9K_X64_Y24_N0
\fd|Ram|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000005000000004000000003000000002000000001000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initRAM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "FluxoDeDados:fd|ram:Ram|altsyncram:ram_rtl_0|altsyncram_jcf1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	portbaddrstall => \ucfd|ALT_INV_Equal1~0_combout\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y22_N28
\fd|Ram|ram_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X63_Y22_N29
\fd|Ram|ram_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(72));

-- Location: LCCOMB_X63_Y22_N18
\fd|MuxRegRam|selected[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[30]~60_combout\ = (\fd|Ram|ram_rtl_0_bypass\(72) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a30\))) # (!\fd|Ram|ram_rtl_0_bypass\(72) & (\fd|Ram|ram_rtl_0_bypass\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(71),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a30\,
	datad => \fd|Ram|ram_rtl_0_bypass\(72),
	combout => \fd|MuxRegRam|selected[30]~60_combout\);

-- Location: FF_X59_Y22_N11
\fd|BankRegister|add1to3|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~61_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(30));

-- Location: FF_X62_Y22_N23
\fd|BankRegister|add1to2|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~61_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(30));

-- Location: FF_X62_Y22_N15
\fd|BankRegister|add1to1|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~61_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(30));

-- Location: LCCOMB_X62_Y22_N14
\fd|BankRegister|muxA|selected[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[30]~60_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|add1to2|DOUT\(30)) # ((\fd|Rom|content~8_combout\)))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|add1to1|DOUT\(30) & 
-- !\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(30),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(30),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[30]~60_combout\);

-- Location: FF_X59_Y22_N7
\fd|BankRegister|add1to4|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~61_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(30));

-- Location: LCCOMB_X59_Y22_N6
\fd|BankRegister|muxA|selected[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[30]~61_combout\ = (\fd|BankRegister|muxA|selected[30]~60_combout\ & (((\fd|BankRegister|add1to4|DOUT\(30)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[30]~60_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(30) & ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(30),
	datab => \fd|BankRegister|muxA|selected[30]~60_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(30),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[30]~61_combout\);

-- Location: LCCOMB_X59_Y22_N10
\fd|BankRegister|muxB|selected[30]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~186_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(30))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(30),
	datad => \fd|BankRegister|add1to4|DOUT\(30),
	combout => \fd|BankRegister|muxB|selected[30]~186_combout\);

-- Location: LCCOMB_X62_Y22_N22
\fd|BankRegister|muxB|selected[30]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~187_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[30]~186_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[30]~186_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(30)))) # (!\fd|BankRegister|muxB|selected[30]~186_combout\ & (\fd|BankRegister|add1to1|DOUT\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(30),
	datac => \fd|BankRegister|add1to2|DOUT\(30),
	datad => \fd|BankRegister|muxB|selected[30]~186_combout\,
	combout => \fd|BankRegister|muxB|selected[30]~187_combout\);

-- Location: LCCOMB_X60_Y22_N26
\fd|MuxSaidaBankRegister|selected[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[30]~33_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[30]~185_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[30]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[30]~187_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|muxB|selected[30]~185_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[30]~33_combout\);

-- Location: LCCOMB_X60_Y20_N26
\fd|BankRegister|add1to4|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[29]~59_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\);

-- Location: FF_X60_Y20_N27
\fd|BankRegister|add1to4|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(29));

-- Location: LCCOMB_X62_Y22_N8
\fd|BankRegister|add1to1|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~59_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[29]~feeder_combout\);

-- Location: FF_X62_Y22_N9
\fd|BankRegister|add1to1|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(29));

-- Location: FF_X60_Y20_N1
\fd|BankRegister|add1to3|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~59_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(29));

-- Location: LCCOMB_X58_Y21_N16
\fd|BankRegister|muxA|selected[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[29]~58_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to3|DOUT\(29)) # (\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|add1to1|DOUT\(29) & 
-- ((!\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(29),
	datab => \fd|BankRegister|add1to3|DOUT\(29),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[29]~58_combout\);

-- Location: LCCOMB_X62_Y22_N12
\fd|BankRegister|add1to2|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~59_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[29]~feeder_combout\);

-- Location: FF_X62_Y22_N13
\fd|BankRegister|add1to2|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(29));

-- Location: LCCOMB_X58_Y21_N6
\fd|BankRegister|muxA|selected[29]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[29]~59_combout\ = (\fd|BankRegister|muxA|selected[29]~58_combout\ & ((\fd|BankRegister|add1to4|DOUT\(29)) # ((!\fd|Rom|content~11_combout\)))) # (!\fd|BankRegister|muxA|selected[29]~58_combout\ & 
-- (((\fd|BankRegister|add1to2|DOUT\(29) & \fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(29),
	datab => \fd|BankRegister|muxA|selected[29]~58_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(29),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[29]~59_combout\);

-- Location: LCCOMB_X60_Y20_N0
\fd|BankRegister|muxB|selected[29]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~182_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(29)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(29) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(29),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(29),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[29]~182_combout\);

-- Location: LCCOMB_X58_Y21_N10
\fd|BankRegister|muxB|selected[29]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~183_combout\ = (\fd|BankRegister|muxB|selected[29]~182_combout\ & ((\fd|BankRegister|add1to2|DOUT\(29)) # ((\fd|Rom|content~17_combout\)))) # (!\fd|BankRegister|muxB|selected[29]~182_combout\ & 
-- (((!\fd|Rom|content~17_combout\ & \fd|BankRegister|add1to1|DOUT\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(29),
	datab => \fd|BankRegister|muxB|selected[29]~182_combout\,
	datac => \fd|Rom|content~17_combout\,
	datad => \fd|BankRegister|add1to1|DOUT\(29),
	combout => \fd|BankRegister|muxB|selected[29]~183_combout\);

-- Location: LCCOMB_X61_Y24_N12
\fd|MuxSaidaBankRegister|selected[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[29]~32_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[29]~181_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[29]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|muxB|selected[29]~183_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[29]~181_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[29]~32_combout\);

-- Location: FF_X61_Y24_N23
\fd|BankRegister|add1to8|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[28]~57_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(28));

-- Location: FF_X61_Y24_N27
\fd|BankRegister|add1to6|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~57_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(28));

-- Location: LCCOMB_X62_Y21_N12
\fd|BankRegister|add1to5|DOUT[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[28]~57_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[28]~feeder_combout\);

-- Location: FF_X62_Y21_N13
\fd|BankRegister|add1to5|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[28]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(28));

-- Location: FF_X63_Y24_N19
\fd|BankRegister|add1to7|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~57_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(28));

-- Location: LCCOMB_X63_Y24_N18
\fd|BankRegister|muxB|selected[28]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~176_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(28)))) # (!\fd|Rom|content~17_combout\ 
-- & (\fd|BankRegister|add1to5|DOUT\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(28),
	datac => \fd|BankRegister|add1to7|DOUT\(28),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[28]~176_combout\);

-- Location: LCCOMB_X61_Y24_N26
\fd|BankRegister|muxB|selected[28]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~177_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[28]~176_combout\ & ((\fd|BankRegister|add1to6|DOUT\(28)))) # (!\fd|BankRegister|muxB|selected[28]~176_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(28))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[28]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(28),
	datac => \fd|BankRegister|add1to6|DOUT\(28),
	datad => \fd|BankRegister|muxB|selected[28]~176_combout\,
	combout => \fd|BankRegister|muxB|selected[28]~177_combout\);

-- Location: LCCOMB_X61_Y24_N4
\fd|MuxSaidaBankRegister|selected[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[28]~31_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[28]~177_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[28]~179_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|muxB|selected[28]~177_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[28]~179_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[28]~31_combout\);

-- Location: FF_X60_Y20_N23
\fd|BankRegister|add1to3|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~57_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(28));

-- Location: LCCOMB_X58_Y21_N18
\fd|BankRegister|add1to2|DOUT[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[28]~57_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\);

-- Location: FF_X58_Y21_N19
\fd|BankRegister|add1to2|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(28));

-- Location: LCCOMB_X58_Y21_N30
\fd|BankRegister|muxA|selected[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[28]~56_combout\ = (\fd|Rom|content~11_combout\ & (((\fd|Rom|content~8_combout\) # (\fd|BankRegister|add1to2|DOUT\(28))))) # (!\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to1|DOUT\(28) & 
-- (!\fd|Rom|content~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~11_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(28),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|add1to2|DOUT\(28),
	combout => \fd|BankRegister|muxA|selected[28]~56_combout\);

-- Location: FF_X60_Y20_N21
\fd|BankRegister|add1to4|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~57_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(28));

-- Location: LCCOMB_X60_Y20_N20
\fd|BankRegister|muxA|selected[28]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[28]~57_combout\ = (\fd|BankRegister|muxA|selected[28]~56_combout\ & (((\fd|BankRegister|add1to4|DOUT\(28)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[28]~56_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(28) & ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(28),
	datab => \fd|BankRegister|muxA|selected[28]~56_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(28),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[28]~57_combout\);

-- Location: LCCOMB_X63_Y23_N10
\fd|BankRegister|add1to5|DOUT[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[27]~feeder_combout\ = \fd|MuxRegRam|selected[27]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[27]~55_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[27]~feeder_combout\);

-- Location: FF_X63_Y23_N11
\fd|BankRegister|add1to5|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[27]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(27));

-- Location: FF_X63_Y23_N19
\fd|BankRegister|add1to7|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~55_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(27));

-- Location: LCCOMB_X63_Y23_N18
\fd|BankRegister|muxB|selected[27]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~172_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(27)))) # (!\fd|Rom|content~17_combout\ 
-- & (\fd|BankRegister|add1to5|DOUT\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(27),
	datac => \fd|BankRegister|add1to7|DOUT\(27),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[27]~172_combout\);

-- Location: FF_X62_Y23_N11
\fd|BankRegister|add1to6|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~55_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(27));

-- Location: FF_X62_Y23_N29
\fd|BankRegister|add1to8|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[27]~55_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(27));

-- Location: LCCOMB_X62_Y23_N10
\fd|BankRegister|muxB|selected[27]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~173_combout\ = (\fd|BankRegister|muxB|selected[27]~172_combout\ & (((\fd|BankRegister|add1to6|DOUT\(27))) # (!\fd|Rom|content~15_combout\))) # (!\fd|BankRegister|muxB|selected[27]~172_combout\ & 
-- (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to8|DOUT\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[27]~172_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(27),
	datad => \fd|BankRegister|add1to8|DOUT\(27),
	combout => \fd|BankRegister|muxB|selected[27]~173_combout\);

-- Location: LCCOMB_X62_Y23_N26
\fd|MuxSaidaBankRegister|selected[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[27]~30_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[27]~173_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[27]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[27]~175_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[27]~173_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[27]~30_combout\);

-- Location: FF_X60_Y20_N25
\fd|BankRegister|add1to3|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~55_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(27));

-- Location: FF_X58_Y20_N31
\fd|BankRegister|add1to1|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~55_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(27));

-- Location: LCCOMB_X58_Y20_N30
\fd|BankRegister|muxA|selected[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[27]~54_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(27)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(27) & 
-- !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(27),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|add1to1|DOUT\(27),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[27]~54_combout\);

-- Location: FF_X60_Y20_N11
\fd|BankRegister|add1to4|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~55_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(27));

-- Location: LCCOMB_X60_Y20_N10
\fd|BankRegister|muxA|selected[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[27]~55_combout\ = (\fd|BankRegister|muxA|selected[27]~54_combout\ & (((\fd|BankRegister|add1to4|DOUT\(27)) # (!\fd|Rom|content~11_combout\)))) # (!\fd|BankRegister|muxA|selected[27]~54_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(27) & ((\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[27]~54_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(27),
	datac => \fd|BankRegister|add1to4|DOUT\(27),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[27]~55_combout\);

-- Location: LCCOMB_X61_Y23_N0
\fd|ALU|adder|addsloop:26:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[26]~53_combout\ & ((\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[26]~29_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[26]~53_combout\ & (\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[26]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[26]~53_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[26]~29_combout\,
	datad => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y24_N24
\fd|ALU|adder|addsloop:27:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[27]~55_combout\ & ((\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[27]~30_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[27]~55_combout\ & (\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[27]~30_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[27]~30_combout\,
	datab => \fd|BankRegister|muxA|selected[27]~55_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y24_N2
\fd|ALU|adder|addsloop:28:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[28]~57_combout\ & ((\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[28]~31_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[28]~57_combout\ & (\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[28]~31_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[28]~31_combout\,
	datab => \fd|BankRegister|muxA|selected[28]~57_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y24_N20
\fd|ALU|adder|addsloop:29:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[29]~59_combout\ & ((\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[29]~32_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected[29]~59_combout\ & (\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[29]~32_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[29]~59_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[29]~32_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y24_N28
\fd|ALU|final|selected[30]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[30]~66_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~33_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[30]~33_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[30]~66_combout\);

-- Location: LCCOMB_X60_Y24_N26
\fd|ALU|final|selected[30]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[30]~67_combout\ = (\fd|BankRegister|muxA|selected[30]~61_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[30]~66_combout\))))) # (!\fd|BankRegister|muxA|selected[30]~61_combout\ & 
-- (\fd|ALU|final|selected[30]~66_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected[30]~61_combout\,
	datad => \fd|ALU|final|selected[30]~66_combout\,
	combout => \fd|ALU|final|selected[30]~67_combout\);

-- Location: LCCOMB_X61_Y22_N6
\fd|MuxRegRam|selected[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[30]~61_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[30]~60_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[30]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxRegRam|selected[30]~60_combout\,
	datad => \fd|ALU|final|selected[30]~67_combout\,
	combout => \fd|MuxRegRam|selected[30]~61_combout\);

-- Location: LCCOMB_X60_Y22_N4
\fd|BankRegister|add1to5|DOUT[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[30]~feeder_combout\ = \fd|MuxRegRam|selected[30]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[30]~61_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[30]~feeder_combout\);

-- Location: FF_X60_Y22_N5
\fd|BankRegister|add1to5|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[30]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(30));

-- Location: FF_X61_Y22_N23
\fd|BankRegister|add1to7|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~61_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(30));

-- Location: LCCOMB_X61_Y22_N22
\fd|BankRegister|muxB|selected[30]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~184_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(30) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(30)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(30),
	datac => \fd|BankRegister|add1to7|DOUT\(30),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[30]~184_combout\);

-- Location: FF_X60_Y22_N23
\fd|BankRegister|add1to6|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~61_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(30));

-- Location: FF_X61_Y22_N7
\fd|BankRegister|add1to8|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[30]~61_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(30));

-- Location: LCCOMB_X60_Y22_N22
\fd|BankRegister|muxB|selected[30]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~185_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[30]~184_combout\ & (\fd|BankRegister|add1to6|DOUT\(30))) # (!\fd|BankRegister|muxB|selected[30]~184_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(30)))))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|muxB|selected[30]~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|muxB|selected[30]~184_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(30),
	datad => \fd|BankRegister|add1to8|DOUT\(30),
	combout => \fd|BankRegister|muxB|selected[30]~185_combout\);

-- Location: LCCOMB_X63_Y22_N30
\fd|BankRegister|muxB|selected[30]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~222_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[30]~185_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[30]~187_combout\))))) # 
-- (!\fd|PC|DOUT\(0) & (((\fd|BankRegister|muxB|selected[30]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[30]~185_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|muxB|selected[30]~187_combout\,
	combout => \fd|BankRegister|muxB|selected[30]~222_combout\);

-- Location: FF_X63_Y24_N3
\fd|Ram|ram_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[29]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(69));

-- Location: LCCOMB_X61_Y24_N2
\fd|MuxRegRam|selected[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[29]~58_combout\ = (\fd|Ram|ram_rtl_0_bypass\(70) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a29\)) # (!\fd|Ram|ram_rtl_0_bypass\(70) & ((\fd|Ram|ram_rtl_0_bypass\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(70),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a29\,
	datad => \fd|Ram|ram_rtl_0_bypass\(69),
	combout => \fd|MuxRegRam|selected[29]~58_combout\);

-- Location: LCCOMB_X61_Y24_N6
\fd|ALU|final|selected[29]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[29]~68_combout\ = \fd|MuxSaidaBankRegister|selected[29]~32_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[29]~32_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[29]~68_combout\);

-- Location: LCCOMB_X61_Y24_N24
\fd|ALU|final|selected[29]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[29]~69_combout\ = (\fd|BankRegister|muxA|selected[29]~59_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[29]~68_combout\))))) # (!\fd|BankRegister|muxA|selected[29]~59_combout\ & 
-- (\fd|ALU|final|selected[29]~68_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[29]~59_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[29]~68_combout\,
	combout => \fd|ALU|final|selected[29]~69_combout\);

-- Location: LCCOMB_X61_Y24_N30
\fd|MuxRegRam|selected[29]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[29]~59_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[29]~58_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[29]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|MuxRegRam|selected[29]~58_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[29]~69_combout\,
	combout => \fd|MuxRegRam|selected[29]~59_combout\);

-- Location: LCCOMB_X62_Y20_N30
\fd|BankRegister|add1to5|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~59_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[29]~feeder_combout\);

-- Location: FF_X62_Y20_N31
\fd|BankRegister|add1to5|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(29));

-- Location: FF_X62_Y20_N9
\fd|BankRegister|add1to7|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~59_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(29));

-- Location: LCCOMB_X62_Y20_N8
\fd|BankRegister|muxB|selected[29]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~180_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(29) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(29)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(29),
	datac => \fd|BankRegister|add1to7|DOUT\(29),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[29]~180_combout\);

-- Location: FF_X61_Y24_N1
\fd|BankRegister|add1to6|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~59_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(29));

-- Location: FF_X61_Y24_N31
\fd|BankRegister|add1to8|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[29]~59_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(29));

-- Location: LCCOMB_X61_Y24_N0
\fd|BankRegister|muxB|selected[29]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~181_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[29]~180_combout\ & (\fd|BankRegister|add1to6|DOUT\(29))) # (!\fd|BankRegister|muxB|selected[29]~180_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(29)))))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|muxB|selected[29]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|muxB|selected[29]~180_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(29),
	datad => \fd|BankRegister|add1to8|DOUT\(29),
	combout => \fd|BankRegister|muxB|selected[29]~181_combout\);

-- Location: LCCOMB_X63_Y24_N2
\fd|BankRegister|muxB|selected[29]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~221_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[29]~181_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[29]~183_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[29]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[29]~181_combout\,
	datad => \fd|BankRegister|muxB|selected[29]~183_combout\,
	combout => \fd|BankRegister|muxB|selected[29]~221_combout\);

-- Location: LCCOMB_X61_Y25_N28
\fd|MuxRegRam|selected[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[28]~56_combout\ = (\fd|Ram|ram_rtl_0_bypass\(68) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a28\))) # (!\fd|Ram|ram_rtl_0_bypass\(68) & (\fd|Ram|ram_rtl_0_bypass\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(67),
	datab => \fd|Ram|ram_rtl_0_bypass\(68),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a28\,
	combout => \fd|MuxRegRam|selected[28]~56_combout\);

-- Location: LCCOMB_X61_Y24_N18
\fd|ALU|final|selected[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[28]~70_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~31_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[28]~31_combout\,
	datad => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[28]~70_combout\);

-- Location: LCCOMB_X61_Y24_N28
\fd|ALU|final|selected[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[28]~71_combout\ = (\fd|BankRegister|muxA|selected[28]~57_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[28]~70_combout\))))) # (!\fd|BankRegister|muxA|selected[28]~57_combout\ & 
-- (\fd|ALU|final|selected[28]~70_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[28]~57_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[28]~70_combout\,
	combout => \fd|ALU|final|selected[28]~71_combout\);

-- Location: LCCOMB_X61_Y24_N22
\fd|MuxRegRam|selected[28]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[28]~57_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[28]~56_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[28]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[28]~56_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[28]~71_combout\,
	combout => \fd|MuxRegRam|selected[28]~57_combout\);

-- Location: LCCOMB_X61_Y21_N10
\fd|BankRegister|add1to1|DOUT[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[28]~57_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[28]~feeder_combout\);

-- Location: FF_X61_Y21_N11
\fd|BankRegister|add1to1|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[28]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(28));

-- Location: LCCOMB_X60_Y20_N22
\fd|BankRegister|muxB|selected[28]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~178_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to4|DOUT\(28))) # (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to3|DOUT\(28)))))) # 
-- (!\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(28),
	datac => \fd|BankRegister|add1to3|DOUT\(28),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[28]~178_combout\);

-- Location: LCCOMB_X58_Y21_N8
\fd|BankRegister|muxB|selected[28]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~179_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[28]~178_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[28]~178_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(28)))) # (!\fd|BankRegister|muxB|selected[28]~178_combout\ & (\fd|BankRegister|add1to1|DOUT\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(28),
	datac => \fd|BankRegister|muxB|selected[28]~178_combout\,
	datad => \fd|BankRegister|add1to2|DOUT\(28),
	combout => \fd|BankRegister|muxB|selected[28]~179_combout\);

-- Location: LCCOMB_X61_Y25_N12
\fd|BankRegister|muxB|selected[28]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~220_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[28]~177_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[28]~179_combout\)))) # 
-- (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[28]~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|muxB|selected[28]~179_combout\,
	datac => \fd|BankRegister|muxB|selected[28]~177_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[28]~220_combout\);

-- Location: FF_X63_Y24_N1
\fd|Ram|ram_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[27]~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(65));

-- Location: LCCOMB_X66_Y24_N28
\fd|Ram|ram_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X66_Y24_N29
\fd|Ram|ram_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(66));

-- Location: LCCOMB_X66_Y24_N30
\fd|MuxRegRam|selected[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[27]~54_combout\ = (\fd|Ram|ram_rtl_0_bypass\(66) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a27\)) # (!\fd|Ram|ram_rtl_0_bypass\(66) & ((\fd|Ram|ram_rtl_0_bypass\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a27\,
	datac => \fd|Ram|ram_rtl_0_bypass\(65),
	datad => \fd|Ram|ram_rtl_0_bypass\(66),
	combout => \fd|MuxRegRam|selected[27]~54_combout\);

-- Location: LCCOMB_X61_Y23_N26
\fd|ALU|final|selected[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[27]~72_combout\ = \fd|MuxSaidaBankRegister|selected[27]~30_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[27]~30_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[27]~72_combout\);

-- Location: LCCOMB_X61_Y23_N4
\fd|ALU|final|selected[27]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[27]~73_combout\ = (\fd|BankRegister|muxA|selected[27]~55_combout\ & (\fd|UCalu|output\(1) $ (((\fd|ALU|final|selected[27]~72_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|BankRegister|muxA|selected[27]~55_combout\ & 
-- (\fd|ALU|final|selected[27]~72_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[27]~55_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[27]~72_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[27]~73_combout\);

-- Location: LCCOMB_X62_Y23_N28
\fd|MuxRegRam|selected[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[27]~55_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[27]~54_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[27]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[27]~54_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|ALU|final|selected[27]~73_combout\,
	combout => \fd|MuxRegRam|selected[27]~55_combout\);

-- Location: FF_X59_Y23_N27
\fd|BankRegister|add1to2|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~55_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(27));

-- Location: LCCOMB_X60_Y20_N24
\fd|BankRegister|muxB|selected[27]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~174_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(27)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(27) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(27),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(27),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[27]~174_combout\);

-- Location: LCCOMB_X58_Y20_N16
\fd|BankRegister|muxB|selected[27]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~175_combout\ = (\fd|BankRegister|muxB|selected[27]~174_combout\ & ((\fd|BankRegister|add1to2|DOUT\(27)) # ((\fd|Rom|content~17_combout\)))) # (!\fd|BankRegister|muxB|selected[27]~174_combout\ & 
-- (((\fd|BankRegister|add1to1|DOUT\(27) & !\fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(27),
	datab => \fd|BankRegister|add1to1|DOUT\(27),
	datac => \fd|BankRegister|muxB|selected[27]~174_combout\,
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[27]~175_combout\);

-- Location: LCCOMB_X63_Y24_N0
\fd|BankRegister|muxB|selected[27]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~219_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[27]~173_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[27]~175_combout\)))) # 
-- (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[27]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[27]~175_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|muxB|selected[27]~173_combout\,
	combout => \fd|BankRegister|muxB|selected[27]~219_combout\);

-- Location: LCCOMB_X62_Y24_N22
\fd|MuxRegRam|selected[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[26]~52_combout\ = (\fd|Ram|ram_rtl_0_bypass\(64) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a26\))) # (!\fd|Ram|ram_rtl_0_bypass\(64) & (\fd|Ram|ram_rtl_0_bypass\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0_bypass\(63),
	datac => \fd|Ram|ram_rtl_0_bypass\(64),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a26\,
	combout => \fd|MuxRegRam|selected[26]~52_combout\);

-- Location: LCCOMB_X61_Y24_N10
\fd|MuxRegRam|selected[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[26]~53_combout\ = (\ucfd|Equal1~0_combout\ & ((\fd|MuxRegRam|selected[26]~52_combout\))) # (!\ucfd|Equal1~0_combout\ & (\fd|ALU|final|selected[26]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datac => \fd|ALU|final|selected[26]~75_combout\,
	datad => \fd|MuxRegRam|selected[26]~52_combout\,
	combout => \fd|MuxRegRam|selected[26]~53_combout\);

-- Location: FF_X61_Y21_N5
\fd|BankRegister|add1to1|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~53_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(26));

-- Location: LCCOMB_X60_Y20_N14
\fd|BankRegister|muxB|selected[26]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~170_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(26)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(26) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(26),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(26),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~170_combout\);

-- Location: LCCOMB_X61_Y21_N24
\fd|BankRegister|muxB|selected[26]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~171_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[26]~170_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[26]~170_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(26)))) # (!\fd|BankRegister|muxB|selected[26]~170_combout\ & (\fd|BankRegister|add1to1|DOUT\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(26),
	datac => \fd|BankRegister|add1to2|DOUT\(26),
	datad => \fd|BankRegister|muxB|selected[26]~170_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~171_combout\);

-- Location: LCCOMB_X61_Y24_N16
\fd|BankRegister|muxB|selected[26]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~218_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[26]~169_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[26]~171_combout\)))) # 
-- (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[26]~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|BankRegister|muxB|selected[26]~171_combout\,
	datac => \fd|BankRegister|muxB|selected[26]~169_combout\,
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~218_combout\);

-- Location: FF_X66_Y24_N21
\fd|Ram|ram_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[25]~217_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(61));

-- Location: LCCOMB_X66_Y24_N18
\fd|Ram|ram_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X66_Y24_N19
\fd|Ram|ram_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(62));

-- Location: LCCOMB_X66_Y24_N20
\fd|MuxRegRam|selected[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[25]~50_combout\ = (\fd|Ram|ram_rtl_0_bypass\(62) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a25\)) # (!\fd|Ram|ram_rtl_0_bypass\(62) & ((\fd|Ram|ram_rtl_0_bypass\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a25\,
	datac => \fd|Ram|ram_rtl_0_bypass\(61),
	datad => \fd|Ram|ram_rtl_0_bypass\(62),
	combout => \fd|MuxRegRam|selected[25]~50_combout\);

-- Location: LCCOMB_X61_Y23_N8
\fd|ALU|final|selected[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[25]~76_combout\ = \fd|MuxSaidaBankRegister|selected[25]~28_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[25]~28_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[25]~76_combout\);

-- Location: LCCOMB_X61_Y23_N22
\fd|ALU|final|selected[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[25]~77_combout\ = (\fd|ALU|final|selected[25]~76_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|BankRegister|muxA|selected[25]~51_combout\))))) # (!\fd|ALU|final|selected[25]~76_combout\ & 
-- (\fd|BankRegister|muxA|selected[25]~51_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[25]~76_combout\,
	datad => \fd|BankRegister|muxA|selected[25]~51_combout\,
	combout => \fd|ALU|final|selected[25]~77_combout\);

-- Location: LCCOMB_X62_Y23_N0
\fd|MuxRegRam|selected[25]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[25]~51_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[25]~50_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[25]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|MuxRegRam|selected[25]~50_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[25]~77_combout\,
	combout => \fd|MuxRegRam|selected[25]~51_combout\);

-- Location: LCCOMB_X63_Y23_N28
\fd|BankRegister|add1to5|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[25]~51_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[25]~feeder_combout\);

-- Location: FF_X63_Y23_N29
\fd|BankRegister|add1to5|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(25));

-- Location: FF_X63_Y23_N25
\fd|BankRegister|add1to7|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~51_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(25));

-- Location: LCCOMB_X63_Y23_N24
\fd|BankRegister|muxB|selected[25]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~164_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(25)))) # (!\fd|Rom|content~17_combout\ 
-- & (\fd|BankRegister|add1to5|DOUT\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(25),
	datac => \fd|BankRegister|add1to7|DOUT\(25),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[25]~164_combout\);

-- Location: FF_X62_Y23_N17
\fd|BankRegister|add1to6|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~51_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(25));

-- Location: FF_X62_Y23_N1
\fd|BankRegister|add1to8|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[25]~51_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(25));

-- Location: LCCOMB_X62_Y23_N16
\fd|BankRegister|muxB|selected[25]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~165_combout\ = (\fd|BankRegister|muxB|selected[25]~164_combout\ & (((\fd|BankRegister|add1to6|DOUT\(25))) # (!\fd|Rom|content~15_combout\))) # (!\fd|BankRegister|muxB|selected[25]~164_combout\ & 
-- (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to8|DOUT\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[25]~164_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(25),
	datad => \fd|BankRegister|add1to8|DOUT\(25),
	combout => \fd|BankRegister|muxB|selected[25]~165_combout\);

-- Location: LCCOMB_X62_Y23_N12
\fd|BankRegister|muxB|selected[25]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~217_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[25]~165_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[25]~167_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[25]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|muxB|selected[25]~165_combout\,
	datac => \fd|BankRegister|muxB|selected[25]~167_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[25]~217_combout\);

-- Location: LCCOMB_X63_Y24_N16
\fd|Ram|ram_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X63_Y24_N17
\fd|Ram|ram_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(60));

-- Location: LCCOMB_X63_Y24_N22
\fd|MuxRegRam|selected[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[24]~48_combout\ = (\fd|Ram|ram_rtl_0_bypass\(60) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a24\))) # (!\fd|Ram|ram_rtl_0_bypass\(60) & (\fd|Ram|ram_rtl_0_bypass\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(59),
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a24\,
	datad => \fd|Ram|ram_rtl_0_bypass\(60),
	combout => \fd|MuxRegRam|selected[24]~48_combout\);

-- Location: LCCOMB_X62_Y24_N24
\fd|ALU|final|selected[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[24]~78_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[24]~27_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[24]~27_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[24]~78_combout\);

-- Location: LCCOMB_X62_Y24_N10
\fd|ALU|final|selected[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[24]~79_combout\ = (\fd|BankRegister|muxA|selected[24]~49_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[24]~78_combout\))))) # (!\fd|BankRegister|muxA|selected[24]~49_combout\ & 
-- (\fd|ALU|final|selected[24]~78_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[24]~49_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[24]~78_combout\,
	combout => \fd|ALU|final|selected[24]~79_combout\);

-- Location: LCCOMB_X62_Y24_N14
\fd|MuxRegRam|selected[24]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[24]~49_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[24]~48_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[24]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[24]~48_combout\,
	datad => \fd|ALU|final|selected[24]~79_combout\,
	combout => \fd|MuxRegRam|selected[24]~49_combout\);

-- Location: FF_X62_Y22_N19
\fd|BankRegister|add1to1|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~49_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(24));

-- Location: LCCOMB_X59_Y22_N8
\fd|BankRegister|muxB|selected[24]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~162_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(24))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(24),
	datad => \fd|BankRegister|add1to4|DOUT\(24),
	combout => \fd|BankRegister|muxB|selected[24]~162_combout\);

-- Location: LCCOMB_X62_Y22_N6
\fd|BankRegister|muxB|selected[24]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~163_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[24]~162_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[24]~162_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(24)))) # (!\fd|BankRegister|muxB|selected[24]~162_combout\ & (\fd|BankRegister|add1to1|DOUT\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(24),
	datac => \fd|BankRegister|add1to2|DOUT\(24),
	datad => \fd|BankRegister|muxB|selected[24]~162_combout\,
	combout => \fd|BankRegister|muxB|selected[24]~163_combout\);

-- Location: LCCOMB_X63_Y24_N6
\fd|BankRegister|muxB|selected[24]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~216_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[24]~161_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[24]~163_combout\)))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[24]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[24]~163_combout\,
	datad => \fd|BankRegister|muxB|selected[24]~161_combout\,
	combout => \fd|BankRegister|muxB|selected[24]~216_combout\);

-- Location: FF_X63_Y24_N27
\fd|Ram|ram_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[23]~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(57));

-- Location: LCCOMB_X66_Y24_N22
\fd|Ram|ram_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X66_Y24_N23
\fd|Ram|ram_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(58));

-- Location: LCCOMB_X63_Y24_N12
\fd|MuxRegRam|selected[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[23]~46_combout\ = (\fd|Ram|ram_rtl_0_bypass\(58) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a23\)) # (!\fd|Ram|ram_rtl_0_bypass\(58) & ((\fd|Ram|ram_rtl_0_bypass\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a23\,
	datac => \fd|Ram|ram_rtl_0_bypass\(57),
	datad => \fd|Ram|ram_rtl_0_bypass\(58),
	combout => \fd|MuxRegRam|selected[23]~46_combout\);

-- Location: LCCOMB_X62_Y24_N16
\fd|ALU|final|selected[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[23]~80_combout\ = \fd|MuxSaidaBankRegister|selected[23]~26_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[23]~26_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[23]~80_combout\);

-- Location: LCCOMB_X62_Y24_N6
\fd|ALU|final|selected[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[23]~81_combout\ = (\fd|BankRegister|muxA|selected[23]~47_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[23]~80_combout\))))) # (!\fd|BankRegister|muxA|selected[23]~47_combout\ & 
-- (\fd|ALU|final|selected[23]~80_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[23]~47_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[23]~80_combout\,
	combout => \fd|ALU|final|selected[23]~81_combout\);

-- Location: LCCOMB_X62_Y24_N30
\fd|MuxRegRam|selected[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[23]~47_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[23]~46_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[23]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[23]~46_combout\,
	datad => \fd|ALU|final|selected[23]~81_combout\,
	combout => \fd|MuxRegRam|selected[23]~47_combout\);

-- Location: FF_X62_Y24_N31
\fd|BankRegister|add1to8|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[23]~47_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(23));

-- Location: FF_X62_Y24_N27
\fd|BankRegister|add1to6|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~47_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(23));

-- Location: LCCOMB_X62_Y20_N2
\fd|BankRegister|add1to5|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[23]~47_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[23]~feeder_combout\);

-- Location: FF_X62_Y20_N3
\fd|BankRegister|add1to5|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[23]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(23));

-- Location: FF_X62_Y20_N21
\fd|BankRegister|add1to7|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~47_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(23));

-- Location: LCCOMB_X62_Y20_N20
\fd|BankRegister|muxB|selected[23]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~156_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(23) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(23)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(23),
	datac => \fd|BankRegister|add1to7|DOUT\(23),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[23]~156_combout\);

-- Location: LCCOMB_X62_Y24_N26
\fd|BankRegister|muxB|selected[23]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~157_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[23]~156_combout\ & ((\fd|BankRegister|add1to6|DOUT\(23)))) # (!\fd|BankRegister|muxB|selected[23]~156_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(23))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[23]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(23),
	datac => \fd|BankRegister|add1to6|DOUT\(23),
	datad => \fd|BankRegister|muxB|selected[23]~156_combout\,
	combout => \fd|BankRegister|muxB|selected[23]~157_combout\);

-- Location: LCCOMB_X63_Y24_N26
\fd|BankRegister|muxB|selected[23]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~215_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[23]~157_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[23]~159_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[23]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[23]~157_combout\,
	datad => \fd|BankRegister|muxB|selected[23]~159_combout\,
	combout => \fd|BankRegister|muxB|selected[23]~215_combout\);

-- Location: LCCOMB_X63_Y26_N22
\fd|MuxRegRam|selected[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[22]~44_combout\ = (\fd|Ram|ram_rtl_0_bypass\(56) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a22\))) # (!\fd|Ram|ram_rtl_0_bypass\(56) & (\fd|Ram|ram_rtl_0_bypass\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0_bypass\(56),
	datac => \fd|Ram|ram_rtl_0_bypass\(55),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \fd|MuxRegRam|selected[22]~44_combout\);

-- Location: LCCOMB_X62_Y24_N28
\fd|ALU|final|selected[22]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[22]~82_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~25_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[22]~25_combout\,
	combout => \fd|ALU|final|selected[22]~82_combout\);

-- Location: LCCOMB_X62_Y24_N18
\fd|ALU|final|selected[22]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[22]~83_combout\ = (\fd|BankRegister|muxA|selected[22]~45_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[22]~82_combout\))))) # (!\fd|BankRegister|muxA|selected[22]~45_combout\ & 
-- (\fd|ALU|final|selected[22]~82_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[22]~45_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[22]~82_combout\,
	combout => \fd|ALU|final|selected[22]~83_combout\);

-- Location: LCCOMB_X62_Y24_N2
\fd|MuxRegRam|selected[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[22]~45_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[22]~44_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[22]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[22]~44_combout\,
	datad => \fd|ALU|final|selected[22]~83_combout\,
	combout => \fd|MuxRegRam|selected[22]~45_combout\);

-- Location: FF_X62_Y22_N3
\fd|BankRegister|add1to1|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~45_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(22));

-- Location: LCCOMB_X59_Y22_N30
\fd|BankRegister|muxB|selected[22]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~154_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(22))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to3|DOUT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(22),
	datad => \fd|BankRegister|add1to4|DOUT\(22),
	combout => \fd|BankRegister|muxB|selected[22]~154_combout\);

-- Location: LCCOMB_X62_Y22_N10
\fd|BankRegister|muxB|selected[22]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~155_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[22]~154_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[22]~154_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(22)))) # (!\fd|BankRegister|muxB|selected[22]~154_combout\ & (\fd|BankRegister|add1to1|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(22),
	datad => \fd|BankRegister|muxB|selected[22]~154_combout\,
	combout => \fd|BankRegister|muxB|selected[22]~155_combout\);

-- Location: LCCOMB_X63_Y24_N24
\fd|BankRegister|muxB|selected[22]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~214_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[22]~153_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[22]~155_combout\)))) # 
-- (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[22]~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|muxB|selected[22]~155_combout\,
	datac => \fd|BankRegister|muxB|selected[22]~153_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[22]~214_combout\);

-- Location: FF_X65_Y23_N23
\fd|Ram|ram_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[20]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(51));

-- Location: LCCOMB_X63_Y23_N12
\fd|MuxRegRam|selected[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[20]~40_combout\ = (\fd|Ram|ram_rtl_0_bypass\(52) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a20\)) # (!\fd|Ram|ram_rtl_0_bypass\(52) & ((\fd|Ram|ram_rtl_0_bypass\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0_bypass\(52),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a20\,
	datad => \fd|Ram|ram_rtl_0_bypass\(51),
	combout => \fd|MuxRegRam|selected[20]~40_combout\);

-- Location: LCCOMB_X61_Y20_N28
\fd|ALU|final|selected[20]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[20]~86_combout\ = \fd|MuxSaidaBankRegister|selected[20]~23_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[20]~23_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[20]~86_combout\);

-- Location: LCCOMB_X61_Y20_N26
\fd|ALU|final|selected[20]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[20]~87_combout\ = (\fd|BankRegister|muxA|selected[20]~41_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[20]~86_combout\))))) # (!\fd|BankRegister|muxA|selected[20]~41_combout\ & 
-- (\fd|ALU|final|selected[20]~86_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected[20]~41_combout\,
	datad => \fd|ALU|final|selected[20]~86_combout\,
	combout => \fd|ALU|final|selected[20]~87_combout\);

-- Location: LCCOMB_X62_Y23_N8
\fd|MuxRegRam|selected[20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[20]~41_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[20]~40_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[20]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[20]~40_combout\,
	datad => \fd|ALU|final|selected[20]~87_combout\,
	combout => \fd|MuxRegRam|selected[20]~41_combout\);

-- Location: LCCOMB_X62_Y20_N0
\fd|BankRegister|add1to5|DOUT[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\ = \fd|MuxRegRam|selected[20]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[20]~41_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\);

-- Location: FF_X62_Y20_N1
\fd|BankRegister|add1to5|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(20));

-- Location: FF_X62_Y20_N27
\fd|BankRegister|add1to7|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~41_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(20));

-- Location: LCCOMB_X62_Y20_N26
\fd|BankRegister|muxB|selected[20]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~144_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(20) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(20)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to5|DOUT\(20),
	datac => \fd|BankRegister|add1to7|DOUT\(20),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[20]~144_combout\);

-- Location: FF_X62_Y23_N7
\fd|BankRegister|add1to6|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~41_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(20));

-- Location: FF_X62_Y23_N9
\fd|BankRegister|add1to8|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[20]~41_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(20));

-- Location: LCCOMB_X62_Y23_N6
\fd|BankRegister|muxB|selected[20]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~145_combout\ = (\fd|BankRegister|muxB|selected[20]~144_combout\ & (((\fd|BankRegister|add1to6|DOUT\(20))) # (!\fd|Rom|content~15_combout\))) # (!\fd|BankRegister|muxB|selected[20]~144_combout\ & 
-- (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to8|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[20]~144_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(20),
	datad => \fd|BankRegister|add1to8|DOUT\(20),
	combout => \fd|BankRegister|muxB|selected[20]~145_combout\);

-- Location: LCCOMB_X65_Y23_N22
\fd|BankRegister|muxB|selected[20]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~212_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[20]~145_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[20]~147_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[20]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[20]~145_combout\,
	datad => \fd|BankRegister|muxB|selected[20]~147_combout\,
	combout => \fd|BankRegister|muxB|selected[20]~212_combout\);

-- Location: LCCOMB_X63_Y24_N14
\fd|MuxRegRam|selected[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[19]~38_combout\ = (\fd|Ram|ram_rtl_0_bypass\(50) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a19\))) # (!\fd|Ram|ram_rtl_0_bypass\(50) & (\fd|Ram|ram_rtl_0_bypass\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0_bypass\(50),
	datac => \fd|Ram|ram_rtl_0_bypass\(49),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a19\,
	combout => \fd|MuxRegRam|selected[19]~38_combout\);

-- Location: LCCOMB_X61_Y20_N20
\fd|ALU|final|selected[19]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[19]~88_combout\ = \fd|MuxSaidaBankRegister|selected[19]~22_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[19]~22_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[19]~88_combout\);

-- Location: LCCOMB_X61_Y20_N18
\fd|ALU|final|selected[19]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[19]~89_combout\ = (\fd|BankRegister|muxA|selected[19]~39_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[19]~88_combout\))))) # (!\fd|BankRegister|muxA|selected[19]~39_combout\ & 
-- (\fd|ALU|final|selected[19]~88_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected[19]~39_combout\,
	datad => \fd|ALU|final|selected[19]~88_combout\,
	combout => \fd|ALU|final|selected[19]~89_combout\);

-- Location: LCCOMB_X61_Y20_N6
\fd|MuxRegRam|selected[19]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[19]~39_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[19]~38_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[19]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[19]~38_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[19]~89_combout\,
	combout => \fd|MuxRegRam|selected[19]~39_combout\);

-- Location: FF_X62_Y22_N27
\fd|BankRegister|add1to1|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~39_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(19));

-- Location: LCCOMB_X59_Y20_N28
\fd|BankRegister|muxB|selected[19]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~142_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to4|DOUT\(19))) # (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to3|DOUT\(19)))))) # 
-- (!\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(19),
	datac => \fd|BankRegister|add1to3|DOUT\(19),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[19]~142_combout\);

-- Location: LCCOMB_X62_Y22_N30
\fd|BankRegister|muxB|selected[19]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~143_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[19]~142_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[19]~142_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(19)))) # (!\fd|BankRegister|muxB|selected[19]~142_combout\ & (\fd|BankRegister|add1to1|DOUT\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(19),
	datac => \fd|BankRegister|add1to2|DOUT\(19),
	datad => \fd|BankRegister|muxB|selected[19]~142_combout\,
	combout => \fd|BankRegister|muxB|selected[19]~143_combout\);

-- Location: LCCOMB_X63_Y24_N30
\fd|BankRegister|muxB|selected[19]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~211_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[19]~141_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[19]~143_combout\)))) # 
-- (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[19]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[19]~143_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|muxB|selected[19]~141_combout\,
	combout => \fd|BankRegister|muxB|selected[19]~211_combout\);

-- Location: LCCOMB_X65_Y23_N28
\fd|Ram|ram_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X65_Y23_N29
\fd|Ram|ram_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(48));

-- Location: LCCOMB_X63_Y23_N30
\fd|MuxRegRam|selected[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[18]~36_combout\ = (\fd|Ram|ram_rtl_0_bypass\(48) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a18\))) # (!\fd|Ram|ram_rtl_0_bypass\(48) & (\fd|Ram|ram_rtl_0_bypass\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(47),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \fd|Ram|ram_rtl_0_bypass\(48),
	combout => \fd|MuxRegRam|selected[18]~36_combout\);

-- Location: LCCOMB_X60_Y22_N2
\fd|ALU|final|selected[18]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[18]~90_combout\ = \fd|MuxSaidaBankRegister|selected[18]~21_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[18]~21_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[18]~90_combout\);

-- Location: LCCOMB_X60_Y22_N28
\fd|ALU|final|selected[18]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[18]~91_combout\ = (\fd|BankRegister|muxA|selected[18]~37_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[18]~90_combout\))))) # (!\fd|BankRegister|muxA|selected[18]~37_combout\ & 
-- (\fd|ALU|final|selected[18]~90_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[18]~37_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[18]~90_combout\,
	combout => \fd|ALU|final|selected[18]~91_combout\);

-- Location: LCCOMB_X60_Y22_N14
\fd|MuxRegRam|selected[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[18]~37_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[18]~36_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[18]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[18]~36_combout\,
	datad => \fd|ALU|final|selected[18]~91_combout\,
	combout => \fd|MuxRegRam|selected[18]~37_combout\);

-- Location: FF_X60_Y22_N15
\fd|BankRegister|add1to5|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[18]~37_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(18));

-- Location: FF_X61_Y22_N9
\fd|BankRegister|add1to7|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(18));

-- Location: LCCOMB_X61_Y22_N8
\fd|BankRegister|muxB|selected[18]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~136_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(18) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(18)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(18),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(18),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[18]~136_combout\);

-- Location: FF_X60_Y22_N25
\fd|BankRegister|add1to6|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(18));

-- Location: FF_X61_Y22_N29
\fd|BankRegister|add1to8|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~37_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(18));

-- Location: LCCOMB_X60_Y22_N24
\fd|BankRegister|muxB|selected[18]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~137_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[18]~136_combout\ & (\fd|BankRegister|add1to6|DOUT\(18))) # (!\fd|BankRegister|muxB|selected[18]~136_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(18)))))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|muxB|selected[18]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|muxB|selected[18]~136_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(18),
	datad => \fd|BankRegister|add1to8|DOUT\(18),
	combout => \fd|BankRegister|muxB|selected[18]~137_combout\);

-- Location: LCCOMB_X63_Y22_N10
\fd|BankRegister|muxB|selected[18]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~210_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[18]~137_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[18]~139_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[18]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[18]~137_combout\,
	datad => \fd|BankRegister|muxB|selected[18]~139_combout\,
	combout => \fd|BankRegister|muxB|selected[18]~210_combout\);

-- Location: LCCOMB_X63_Y22_N14
\fd|Ram|ram_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X63_Y22_N15
\fd|Ram|ram_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(46));

-- Location: FF_X63_Y22_N5
\fd|Ram|ram_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[17]~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(45));

-- Location: LCCOMB_X63_Y22_N24
\fd|MuxRegRam|selected[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[17]~34_combout\ = (\fd|Ram|ram_rtl_0_bypass\(46) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a17\)) # (!\fd|Ram|ram_rtl_0_bypass\(46) & ((\fd|Ram|ram_rtl_0_bypass\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a17\,
	datac => \fd|Ram|ram_rtl_0_bypass\(46),
	datad => \fd|Ram|ram_rtl_0_bypass\(45),
	combout => \fd|MuxRegRam|selected[17]~34_combout\);

-- Location: LCCOMB_X60_Y25_N18
\fd|ALU|final|selected[17]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[17]~92_combout\ = \fd|MuxSaidaBankRegister|selected[17]~20_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[17]~20_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[17]~92_combout\);

-- Location: LCCOMB_X60_Y25_N0
\fd|ALU|final|selected[17]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[17]~93_combout\ = (\fd|BankRegister|muxA|selected[17]~35_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[17]~92_combout\))))) # (!\fd|BankRegister|muxA|selected[17]~35_combout\ & 
-- (\fd|ALU|final|selected[17]~92_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[17]~35_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[17]~92_combout\,
	combout => \fd|ALU|final|selected[17]~93_combout\);

-- Location: LCCOMB_X60_Y25_N28
\fd|MuxRegRam|selected[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[17]~35_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[17]~34_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[17]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[17]~34_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[17]~93_combout\,
	combout => \fd|MuxRegRam|selected[17]~35_combout\);

-- Location: FF_X60_Y25_N29
\fd|BankRegister|add1to8|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[17]~35_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(17));

-- Location: FF_X60_Y22_N7
\fd|BankRegister|add1to6|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~35_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(17));

-- Location: FF_X61_Y22_N19
\fd|BankRegister|add1to7|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~35_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(17));

-- Location: LCCOMB_X60_Y22_N12
\fd|BankRegister|add1to5|DOUT[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[17]~35_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[17]~feeder_combout\);

-- Location: FF_X60_Y22_N13
\fd|BankRegister|add1to5|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[17]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(17));

-- Location: LCCOMB_X61_Y22_N18
\fd|BankRegister|muxB|selected[17]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~132_combout\ = (\fd|Rom|content~17_combout\ & (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to7|DOUT\(17)))) # (!\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\) # 
-- ((\fd|BankRegister|add1to5|DOUT\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(17),
	datad => \fd|BankRegister|add1to5|DOUT\(17),
	combout => \fd|BankRegister|muxB|selected[17]~132_combout\);

-- Location: LCCOMB_X60_Y22_N6
\fd|BankRegister|muxB|selected[17]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~133_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[17]~132_combout\ & ((\fd|BankRegister|add1to6|DOUT\(17)))) # (!\fd|BankRegister|muxB|selected[17]~132_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(17))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[17]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(17),
	datac => \fd|BankRegister|add1to6|DOUT\(17),
	datad => \fd|BankRegister|muxB|selected[17]~132_combout\,
	combout => \fd|BankRegister|muxB|selected[17]~133_combout\);

-- Location: LCCOMB_X63_Y22_N4
\fd|BankRegister|muxB|selected[17]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~209_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[17]~133_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[17]~135_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[17]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[17]~133_combout\,
	datad => \fd|BankRegister|muxB|selected[17]~135_combout\,
	combout => \fd|BankRegister|muxB|selected[17]~209_combout\);

-- Location: LCCOMB_X65_Y22_N28
\fd|Ram|ram_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X65_Y22_N29
\fd|Ram|ram_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(44));

-- Location: LCCOMB_X65_Y22_N10
\fd|MuxRegRam|selected[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[16]~32_combout\ = (\fd|Ram|ram_rtl_0_bypass\(44) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a16\))) # (!\fd|Ram|ram_rtl_0_bypass\(44) & (\fd|Ram|ram_rtl_0_bypass\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(43),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a16\,
	datad => \fd|Ram|ram_rtl_0_bypass\(44),
	combout => \fd|MuxRegRam|selected[16]~32_combout\);

-- Location: LCCOMB_X60_Y25_N26
\fd|ALU|final|selected[16]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[16]~94_combout\ = \fd|MuxSaidaBankRegister|selected[16]~19_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[16]~19_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[16]~94_combout\);

-- Location: LCCOMB_X60_Y25_N12
\fd|ALU|final|selected[16]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[16]~95_combout\ = (\fd|BankRegister|muxA|selected[16]~33_combout\ & (\fd|UCalu|output\(1) $ (((\fd|ALU|final|selected[16]~94_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|BankRegister|muxA|selected[16]~33_combout\ & 
-- (\fd|ALU|final|selected[16]~94_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[16]~33_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[16]~94_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[16]~95_combout\);

-- Location: LCCOMB_X61_Y22_N30
\fd|MuxRegRam|selected[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[16]~33_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[16]~32_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[16]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxRegRam|selected[16]~32_combout\,
	datad => \fd|ALU|final|selected[16]~95_combout\,
	combout => \fd|MuxRegRam|selected[16]~33_combout\);

-- Location: LCCOMB_X61_Y21_N20
\fd|BankRegister|add1to1|DOUT[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[16]~33_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[16]~feeder_combout\);

-- Location: FF_X61_Y21_N21
\fd|BankRegister|add1to1|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[16]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(16));

-- Location: LCCOMB_X57_Y21_N8
\fd|BankRegister|muxB|selected[16]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~130_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(16)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(16) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(16),
	datac => \fd|BankRegister|add1to3|DOUT\(16),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~130_combout\);

-- Location: LCCOMB_X61_Y21_N2
\fd|BankRegister|muxB|selected[16]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~131_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[16]~130_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[16]~130_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(16)))) # (!\fd|BankRegister|muxB|selected[16]~130_combout\ & (\fd|BankRegister|add1to1|DOUT\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(16),
	datac => \fd|BankRegister|add1to2|DOUT\(16),
	datad => \fd|BankRegister|muxB|selected[16]~130_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~131_combout\);

-- Location: LCCOMB_X63_Y21_N2
\fd|BankRegister|muxB|selected[16]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~208_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[16]~129_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[16]~131_combout\)))) # 
-- (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[16]~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[16]~131_combout\,
	datab => \fd|BankRegister|muxB|selected[16]~129_combout\,
	datac => \fd|PC|DOUT\(0),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~208_combout\);

-- Location: FF_X63_Y21_N17
\fd|Ram|ram_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[15]~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(41));

-- Location: LCCOMB_X63_Y21_N0
\fd|MuxRegRam|selected[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[15]~30_combout\ = (\fd|Ram|ram_rtl_0_bypass\(42) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a15\)) # (!\fd|Ram|ram_rtl_0_bypass\(42) & ((\fd|Ram|ram_rtl_0_bypass\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(42),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \fd|Ram|ram_rtl_0_bypass\(41),
	combout => \fd|MuxRegRam|selected[15]~30_combout\);

-- Location: LCCOMB_X60_Y25_N2
\fd|ALU|final|selected[15]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[15]~96_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\ $ (((\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[15]~96_combout\);

-- Location: LCCOMB_X60_Y25_N16
\fd|ALU|final|selected[15]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[15]~97_combout\ = (\fd|BankRegister|muxA|selected[15]~31_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[15]~96_combout\))))) # (!\fd|BankRegister|muxA|selected[15]~31_combout\ & 
-- (\fd|ALU|final|selected[15]~96_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected[15]~31_combout\,
	datad => \fd|ALU|final|selected[15]~96_combout\,
	combout => \fd|ALU|final|selected[15]~97_combout\);

-- Location: LCCOMB_X61_Y22_N28
\fd|MuxRegRam|selected[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[15]~31_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[15]~30_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[15]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxRegRam|selected[15]~30_combout\,
	datad => \fd|ALU|final|selected[15]~97_combout\,
	combout => \fd|MuxRegRam|selected[15]~31_combout\);

-- Location: FF_X62_Y21_N3
\fd|BankRegister|add1to5|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(15));

-- Location: LCCOMB_X61_Y22_N2
\fd|BankRegister|add1to7|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~31_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\);

-- Location: FF_X61_Y22_N3
\fd|BankRegister|add1to7|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(15));

-- Location: LCCOMB_X62_Y21_N2
\fd|BankRegister|muxB|selected[15]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~124_combout\ = (\fd|Rom|content~15_combout\ & (!\fd|Rom|content~17_combout\)) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(15)))) # (!\fd|Rom|content~17_combout\ & 
-- (\fd|BankRegister|add1to5|DOUT\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(15),
	datad => \fd|BankRegister|add1to7|DOUT\(15),
	combout => \fd|BankRegister|muxB|selected[15]~124_combout\);

-- Location: FF_X62_Y21_N5
\fd|BankRegister|add1to6|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(15));

-- Location: LCCOMB_X61_Y22_N16
\fd|BankRegister|add1to8|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~31_combout\,
	combout => \fd|BankRegister|add1to8|DOUT[15]~feeder_combout\);

-- Location: FF_X61_Y22_N17
\fd|BankRegister|add1to8|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to8|DOUT[15]~feeder_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(15));

-- Location: LCCOMB_X62_Y21_N4
\fd|BankRegister|muxB|selected[15]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~125_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[15]~124_combout\ & (\fd|BankRegister|add1to6|DOUT\(15))) # (!\fd|BankRegister|muxB|selected[15]~124_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(15)))))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|muxB|selected[15]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|muxB|selected[15]~124_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(15),
	datad => \fd|BankRegister|add1to8|DOUT\(15),
	combout => \fd|BankRegister|muxB|selected[15]~125_combout\);

-- Location: LCCOMB_X63_Y21_N16
\fd|BankRegister|muxB|selected[15]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~207_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[15]~125_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[15]~127_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[15]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[15]~125_combout\,
	datad => \fd|BankRegister|muxB|selected[15]~127_combout\,
	combout => \fd|BankRegister|muxB|selected[15]~207_combout\);

-- Location: LCCOMB_X63_Y22_N22
\fd|MuxRegRam|selected[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[14]~28_combout\ = (\fd|Ram|ram_rtl_0_bypass\(40) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a14\))) # (!\fd|Ram|ram_rtl_0_bypass\(40) & (\fd|Ram|ram_rtl_0_bypass\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(40),
	datab => \fd|Ram|ram_rtl_0_bypass\(39),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \fd|MuxRegRam|selected[14]~28_combout\);

-- Location: LCCOMB_X61_Y22_N24
\fd|ALU|final|selected[14]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[14]~98_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~17_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[14]~17_combout\,
	datad => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[14]~98_combout\);

-- Location: LCCOMB_X61_Y22_N10
\fd|ALU|final|selected[14]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[14]~99_combout\ = (\fd|BankRegister|muxA|selected[14]~29_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[14]~98_combout\))))) # (!\fd|BankRegister|muxA|selected[14]~29_combout\ & 
-- (\fd|ALU|final|selected[14]~98_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[14]~29_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[14]~98_combout\,
	combout => \fd|ALU|final|selected[14]~99_combout\);

-- Location: LCCOMB_X61_Y22_N4
\fd|MuxRegRam|selected[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[14]~29_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[14]~28_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[14]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxRegRam|selected[14]~28_combout\,
	datad => \fd|ALU|final|selected[14]~99_combout\,
	combout => \fd|MuxRegRam|selected[14]~29_combout\);

-- Location: LCCOMB_X61_Y22_N12
\fd|BankRegister|add1to8|DOUT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|DOUT[14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[14]~29_combout\,
	combout => \fd|BankRegister|add1to8|DOUT[14]~feeder_combout\);

-- Location: FF_X61_Y22_N13
\fd|BankRegister|add1to8|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to8|DOUT[14]~feeder_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(14));

-- Location: FF_X62_Y21_N27
\fd|BankRegister|add1to6|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(14));

-- Location: LCCOMB_X62_Y20_N28
\fd|BankRegister|add1to5|DOUT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[14]~29_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[14]~feeder_combout\);

-- Location: FF_X62_Y20_N29
\fd|BankRegister|add1to5|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[14]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(14));

-- Location: LCCOMB_X61_Y22_N20
\fd|BankRegister|add1to7|DOUT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[14]~29_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\);

-- Location: FF_X61_Y22_N21
\fd|BankRegister|add1to7|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(14));

-- Location: LCCOMB_X61_Y22_N14
\fd|BankRegister|muxB|selected[14]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~120_combout\ = (\fd|Rom|content~15_combout\ & (((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & ((\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to7|DOUT\(14)))) # (!\fd|Rom|content~17_combout\ 
-- & (\fd|BankRegister|add1to5|DOUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(14),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|Rom|content~17_combout\,
	datad => \fd|BankRegister|add1to7|DOUT\(14),
	combout => \fd|BankRegister|muxB|selected[14]~120_combout\);

-- Location: LCCOMB_X62_Y21_N26
\fd|BankRegister|muxB|selected[14]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~121_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[14]~120_combout\ & ((\fd|BankRegister|add1to6|DOUT\(14)))) # (!\fd|BankRegister|muxB|selected[14]~120_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(14))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[14]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(14),
	datac => \fd|BankRegister|add1to6|DOUT\(14),
	datad => \fd|BankRegister|muxB|selected[14]~120_combout\,
	combout => \fd|BankRegister|muxB|selected[14]~121_combout\);

-- Location: LCCOMB_X63_Y21_N26
\fd|BankRegister|muxB|selected[14]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~206_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[14]~121_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[14]~123_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[14]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[14]~121_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[14]~123_combout\,
	combout => \fd|BankRegister|muxB|selected[14]~206_combout\);

-- Location: FF_X63_Y21_N11
\fd|Ram|ram_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[13]~198_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(37));

-- Location: LCCOMB_X63_Y21_N20
\fd|Ram|ram_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X63_Y21_N21
\fd|Ram|ram_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(38));

-- Location: LCCOMB_X63_Y21_N10
\fd|MuxRegRam|selected[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[13]~26_combout\ = (\fd|Ram|ram_rtl_0_bypass\(38) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a13\)) # (!\fd|Ram|ram_rtl_0_bypass\(38) & ((\fd|Ram|ram_rtl_0_bypass\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a13\,
	datac => \fd|Ram|ram_rtl_0_bypass\(37),
	datad => \fd|Ram|ram_rtl_0_bypass\(38),
	combout => \fd|MuxRegRam|selected[13]~26_combout\);

-- Location: LCCOMB_X60_Y21_N10
\fd|ALU|final|selected[13]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[13]~100_combout\ = \fd|MuxSaidaBankRegister|selected[13]~16_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[13]~16_combout\,
	datac => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[13]~100_combout\);

-- Location: LCCOMB_X60_Y21_N28
\fd|ALU|final|selected[13]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[13]~101_combout\ = (\fd|BankRegister|muxA|selected[13]~27_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[13]~100_combout\))))) # (!\fd|BankRegister|muxA|selected[13]~27_combout\ & 
-- (\fd|ALU|final|selected[13]~100_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected[13]~27_combout\,
	datad => \fd|ALU|final|selected[13]~100_combout\,
	combout => \fd|ALU|final|selected[13]~101_combout\);

-- Location: LCCOMB_X60_Y21_N4
\fd|MuxRegRam|selected[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[13]~27_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[13]~26_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[13]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[13]~26_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[13]~101_combout\,
	combout => \fd|MuxRegRam|selected[13]~27_combout\);

-- Location: FF_X58_Y21_N21
\fd|BankRegister|add1to1|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(13));

-- Location: LCCOMB_X59_Y20_N2
\fd|BankRegister|muxB|selected[13]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~118_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(13)))) # (!\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to3|DOUT\(13))))) # 
-- (!\fd|Rom|content~17_combout\ & (\fd|Rom|content~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(13),
	datad => \fd|BankRegister|add1to4|DOUT\(13),
	combout => \fd|BankRegister|muxB|selected[13]~118_combout\);

-- Location: LCCOMB_X58_Y21_N26
\fd|BankRegister|muxB|selected[13]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~119_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[13]~118_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[13]~118_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(13)))) # (!\fd|BankRegister|muxB|selected[13]~118_combout\ & (\fd|BankRegister|add1to1|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(13),
	datac => \fd|BankRegister|add1to2|DOUT\(13),
	datad => \fd|BankRegister|muxB|selected[13]~118_combout\,
	combout => \fd|BankRegister|muxB|selected[13]~119_combout\);

-- Location: FF_X60_Y21_N5
\fd|BankRegister|add1to8|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[13]~27_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(13));

-- Location: FF_X62_Y21_N29
\fd|BankRegister|add1to6|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(13));

-- Location: FF_X63_Y21_N5
\fd|BankRegister|add1to7|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(13));

-- Location: LCCOMB_X62_Y21_N24
\fd|BankRegister|add1to5|DOUT[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[13]~27_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[13]~feeder_combout\);

-- Location: FF_X62_Y21_N25
\fd|BankRegister|add1to5|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[13]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(13));

-- Location: LCCOMB_X63_Y21_N6
\fd|BankRegister|muxB|selected[13]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~116_combout\ = (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(13) & (!\fd|Rom|content~15_combout\))) # (!\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\) # 
-- (\fd|BankRegister|add1to5|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to7|DOUT\(13),
	datac => \fd|Rom|content~15_combout\,
	datad => \fd|BankRegister|add1to5|DOUT\(13),
	combout => \fd|BankRegister|muxB|selected[13]~116_combout\);

-- Location: LCCOMB_X62_Y21_N28
\fd|BankRegister|muxB|selected[13]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~117_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[13]~116_combout\ & ((\fd|BankRegister|add1to6|DOUT\(13)))) # (!\fd|BankRegister|muxB|selected[13]~116_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(13))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[13]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(13),
	datac => \fd|BankRegister|add1to6|DOUT\(13),
	datad => \fd|BankRegister|muxB|selected[13]~116_combout\,
	combout => \fd|BankRegister|muxB|selected[13]~117_combout\);

-- Location: LCCOMB_X61_Y21_N18
\fd|BankRegister|muxB|selected[13]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~198_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[13]~117_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[13]~119_combout\)))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[13]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[13]~119_combout\,
	datad => \fd|BankRegister|muxB|selected[13]~117_combout\,
	combout => \fd|BankRegister|muxB|selected[13]~198_combout\);

-- Location: FF_X59_Y21_N5
\fd|Ram|ram_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[12]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(35));

-- Location: LCCOMB_X63_Y21_N28
\fd|Ram|ram_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X63_Y21_N29
\fd|Ram|ram_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(36));

-- Location: LCCOMB_X60_Y21_N26
\fd|MuxRegRam|selected[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[12]~24_combout\ = (\fd|Ram|ram_rtl_0_bypass\(36) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a12\)) # (!\fd|Ram|ram_rtl_0_bypass\(36) & ((\fd|Ram|ram_rtl_0_bypass\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a12\,
	datab => \fd|Ram|ram_rtl_0_bypass\(35),
	datad => \fd|Ram|ram_rtl_0_bypass\(36),
	combout => \fd|MuxRegRam|selected[12]~24_combout\);

-- Location: LCCOMB_X59_Y21_N14
\fd|ALU|final|selected[12]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[12]~102_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[12]~15_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[12]~15_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[12]~102_combout\);

-- Location: LCCOMB_X60_Y21_N18
\fd|ALU|final|selected[12]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[12]~103_combout\ = (\fd|BankRegister|muxA|selected[12]~25_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[12]~102_combout\))))) # (!\fd|BankRegister|muxA|selected[12]~25_combout\ & 
-- (\fd|ALU|final|selected[12]~102_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[12]~25_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[12]~102_combout\,
	combout => \fd|ALU|final|selected[12]~103_combout\);

-- Location: LCCOMB_X60_Y21_N14
\fd|MuxRegRam|selected[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[12]~25_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[12]~24_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[12]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[12]~24_combout\,
	datad => \fd|ALU|final|selected[12]~103_combout\,
	combout => \fd|MuxRegRam|selected[12]~25_combout\);

-- Location: FF_X60_Y21_N15
\fd|BankRegister|add1to8|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[12]~25_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(12));

-- Location: FF_X62_Y21_N11
\fd|BankRegister|add1to6|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(12));

-- Location: FF_X62_Y21_N7
\fd|BankRegister|add1to5|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(12));

-- Location: FF_X60_Y21_N27
\fd|BankRegister|add1to7|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(12));

-- Location: LCCOMB_X62_Y21_N6
\fd|BankRegister|muxB|selected[12]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~112_combout\ = (\fd|Rom|content~17_combout\ & (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to7|DOUT\(12))))) # (!\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\) # 
-- ((\fd|BankRegister|add1to5|DOUT\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(12),
	datad => \fd|BankRegister|add1to7|DOUT\(12),
	combout => \fd|BankRegister|muxB|selected[12]~112_combout\);

-- Location: LCCOMB_X62_Y21_N10
\fd|BankRegister|muxB|selected[12]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~113_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[12]~112_combout\ & ((\fd|BankRegister|add1to6|DOUT\(12)))) # (!\fd|BankRegister|muxB|selected[12]~112_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(12))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[12]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(12),
	datac => \fd|BankRegister|add1to6|DOUT\(12),
	datad => \fd|BankRegister|muxB|selected[12]~112_combout\,
	combout => \fd|BankRegister|muxB|selected[12]~113_combout\);

-- Location: LCCOMB_X57_Y21_N12
\fd|BankRegister|muxB|selected[12]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~114_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(12)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(12) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(12),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(12),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[12]~114_combout\);

-- Location: LCCOMB_X58_Y21_N12
\fd|BankRegister|muxB|selected[12]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~115_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[12]~114_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[12]~114_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(12)))) # (!\fd|BankRegister|muxB|selected[12]~114_combout\ & (\fd|BankRegister|add1to1|DOUT\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(12),
	datac => \fd|BankRegister|add1to2|DOUT\(12),
	datad => \fd|BankRegister|muxB|selected[12]~114_combout\,
	combout => \fd|BankRegister|muxB|selected[12]~115_combout\);

-- Location: LCCOMB_X59_Y21_N4
\fd|BankRegister|muxB|selected[12]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~197_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[12]~113_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[12]~115_combout\))))) # 
-- (!\fd|PC|DOUT\(0) & (((\fd|BankRegister|muxB|selected[12]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[12]~113_combout\,
	datad => \fd|BankRegister|muxB|selected[12]~115_combout\,
	combout => \fd|BankRegister|muxB|selected[12]~197_combout\);

-- Location: FF_X59_Y21_N19
\fd|Ram|ram_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[11]~196_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(33));

-- Location: LCCOMB_X62_Y21_N18
\fd|MuxRegRam|selected[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[11]~22_combout\ = (\fd|Ram|ram_rtl_0_bypass\(34) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a11\)) # (!\fd|Ram|ram_rtl_0_bypass\(34) & ((\fd|Ram|ram_rtl_0_bypass\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(34),
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \fd|Ram|ram_rtl_0_bypass\(33),
	combout => \fd|MuxRegRam|selected[11]~22_combout\);

-- Location: LCCOMB_X60_Y21_N8
\fd|ALU|final|selected[11]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[11]~104_combout\ = \fd|MuxSaidaBankRegister|selected[11]~14_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[11]~14_combout\,
	datac => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[11]~104_combout\);

-- Location: LCCOMB_X60_Y21_N2
\fd|ALU|final|selected[11]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[11]~105_combout\ = (\fd|ALU|final|selected[11]~104_combout\ & (\fd|UCalu|output\(1) $ (((\fd|BankRegister|muxA|selected[11]~23_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|ALU|final|selected[11]~104_combout\ & 
-- (\fd|BankRegister|muxA|selected[11]~23_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|final|selected[11]~104_combout\,
	datac => \fd|BankRegister|muxA|selected[11]~23_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[11]~105_combout\);

-- Location: LCCOMB_X60_Y21_N0
\fd|MuxRegRam|selected[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[11]~23_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[11]~22_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[11]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|MuxRegRam|selected[11]~22_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[11]~105_combout\,
	combout => \fd|MuxRegRam|selected[11]~23_combout\);

-- Location: FF_X59_Y21_N21
\fd|BankRegister|add1to2|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(11));

-- Location: LCCOMB_X57_Y21_N24
\fd|BankRegister|muxB|selected[11]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~110_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(11)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(11) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(11),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(11),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[11]~110_combout\);

-- Location: LCCOMB_X60_Y21_N22
\fd|BankRegister|muxB|selected[11]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~111_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[11]~110_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[11]~110_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(11))) # (!\fd|BankRegister|muxB|selected[11]~110_combout\ & ((\fd|BankRegister|add1to1|DOUT\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(11),
	datac => \fd|BankRegister|add1to1|DOUT\(11),
	datad => \fd|BankRegister|muxB|selected[11]~110_combout\,
	combout => \fd|BankRegister|muxB|selected[11]~111_combout\);

-- Location: LCCOMB_X62_Y21_N20
\fd|BankRegister|add1to6|DOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[11]~23_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[11]~feeder_combout\);

-- Location: FF_X62_Y21_N21
\fd|BankRegister|add1to6|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[11]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(11));

-- Location: FF_X60_Y21_N7
\fd|BankRegister|add1to8|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(11));

-- Location: FF_X60_Y21_N1
\fd|BankRegister|add1to7|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[11]~23_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(11));

-- Location: LCCOMB_X62_Y21_N8
\fd|BankRegister|add1to5|DOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[11]~23_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[11]~feeder_combout\);

-- Location: FF_X62_Y21_N9
\fd|BankRegister|add1to5|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[11]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(11));

-- Location: LCCOMB_X60_Y21_N24
\fd|BankRegister|muxB|selected[11]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~108_combout\ = (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(11) & (!\fd|Rom|content~15_combout\))) # (!\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\) # 
-- (\fd|BankRegister|add1to5|DOUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to7|DOUT\(11),
	datac => \fd|Rom|content~15_combout\,
	datad => \fd|BankRegister|add1to5|DOUT\(11),
	combout => \fd|BankRegister|muxB|selected[11]~108_combout\);

-- Location: LCCOMB_X60_Y21_N6
\fd|BankRegister|muxB|selected[11]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~109_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|muxB|selected[11]~108_combout\ & (\fd|BankRegister|add1to6|DOUT\(11))) # (!\fd|BankRegister|muxB|selected[11]~108_combout\ & 
-- ((\fd|BankRegister|add1to8|DOUT\(11)))))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|muxB|selected[11]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|BankRegister|add1to6|DOUT\(11),
	datac => \fd|BankRegister|add1to8|DOUT\(11),
	datad => \fd|BankRegister|muxB|selected[11]~108_combout\,
	combout => \fd|BankRegister|muxB|selected[11]~109_combout\);

-- Location: LCCOMB_X60_Y21_N12
\fd|BankRegister|muxB|selected[11]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~196_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[11]~109_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[11]~111_combout\)))) # 
-- (!\fd|PC|DOUT\(0) & (((\fd|BankRegister|muxB|selected[11]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[11]~111_combout\,
	datad => \fd|BankRegister|muxB|selected[11]~109_combout\,
	combout => \fd|BankRegister|muxB|selected[11]~196_combout\);

-- Location: LCCOMB_X63_Y22_N8
\fd|Ram|ram_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X63_Y22_N9
\fd|Ram|ram_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(32));

-- Location: FF_X63_Y22_N7
\fd|Ram|ram_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[10]~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(31));

-- Location: LCCOMB_X63_Y22_N2
\fd|MuxRegRam|selected[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[10]~20_combout\ = (\fd|Ram|ram_rtl_0_bypass\(32) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a10\)) # (!\fd|Ram|ram_rtl_0_bypass\(32) & ((\fd|Ram|ram_rtl_0_bypass\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \fd|Ram|ram_rtl_0_bypass\(32),
	datad => \fd|Ram|ram_rtl_0_bypass\(31),
	combout => \fd|MuxRegRam|selected[10]~20_combout\);

-- Location: LCCOMB_X60_Y22_N18
\fd|ALU|final|selected[10]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[10]~106_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~13_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[10]~13_combout\,
	combout => \fd|ALU|final|selected[10]~106_combout\);

-- Location: LCCOMB_X60_Y22_N16
\fd|ALU|final|selected[10]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[10]~107_combout\ = (\fd|BankRegister|muxA|selected[10]~21_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[10]~106_combout\))))) # (!\fd|BankRegister|muxA|selected[10]~21_combout\ & 
-- (\fd|ALU|final|selected[10]~106_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|BankRegister|muxA|selected[10]~21_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[10]~106_combout\,
	combout => \fd|ALU|final|selected[10]~107_combout\);

-- Location: LCCOMB_X61_Y22_N26
\fd|MuxRegRam|selected[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[10]~21_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[10]~20_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[10]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[10]~20_combout\,
	datac => \fd|ALU|final|selected[10]~107_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxRegRam|selected[10]~21_combout\);

-- Location: FF_X61_Y22_N27
\fd|BankRegister|add1to8|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[10]~21_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(10));

-- Location: LCCOMB_X57_Y22_N0
\fd|BankRegister|add1to5|DOUT[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[10]~21_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\);

-- Location: FF_X57_Y22_N1
\fd|BankRegister|add1to5|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(10));

-- Location: FF_X57_Y23_N21
\fd|BankRegister|add1to7|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(10));

-- Location: LCCOMB_X57_Y23_N20
\fd|BankRegister|muxB|selected[10]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~104_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to7|DOUT\(10) & !\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|add1to5|DOUT\(10)) # 
-- ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(10),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to7|DOUT\(10),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~104_combout\);

-- Location: FF_X57_Y23_N31
\fd|BankRegister|add1to6|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(10));

-- Location: LCCOMB_X57_Y23_N30
\fd|BankRegister|muxB|selected[10]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~105_combout\ = (\fd|BankRegister|muxB|selected[10]~104_combout\ & (((\fd|BankRegister|add1to6|DOUT\(10)) # (!\fd|Rom|content~15_combout\)))) # (!\fd|BankRegister|muxB|selected[10]~104_combout\ & 
-- (\fd|BankRegister|add1to8|DOUT\(10) & ((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(10),
	datab => \fd|BankRegister|muxB|selected[10]~104_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(10),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~105_combout\);

-- Location: LCCOMB_X63_Y22_N6
\fd|BankRegister|muxB|selected[10]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~205_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[10]~105_combout\)) # (!\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[10]~107_combout\))))) # 
-- (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxB|selected[10]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[10]~105_combout\,
	datad => \fd|BankRegister|muxB|selected[10]~107_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~205_combout\);

-- Location: LCCOMB_X59_Y21_N20
\fd|MuxRegRam|selected[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[9]~18_combout\ = (\fd|Ram|ram_rtl_0_bypass\(30) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\fd|Ram|ram_rtl_0_bypass\(30) & (\fd|Ram|ram_rtl_0_bypass\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(30),
	datab => \fd|Ram|ram_rtl_0_bypass\(29),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \fd|MuxRegRam|selected[9]~18_combout\);

-- Location: LCCOMB_X56_Y23_N22
\fd|ALU|final|selected[9]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[9]~108_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~12_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[9]~12_combout\,
	datad => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[9]~108_combout\);

-- Location: LCCOMB_X56_Y23_N20
\fd|ALU|final|selected[9]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[9]~109_combout\ = (\fd|BankRegister|muxA|selected[9]~19_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[9]~108_combout\))))) # (!\fd|BankRegister|muxA|selected[9]~19_combout\ & 
-- (\fd|ALU|final|selected[9]~108_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[9]~19_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[9]~108_combout\,
	combout => \fd|ALU|final|selected[9]~109_combout\);

-- Location: LCCOMB_X56_Y23_N8
\fd|MuxRegRam|selected[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[9]~19_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[9]~18_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[9]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[9]~18_combout\,
	datad => \fd|ALU|final|selected[9]~109_combout\,
	combout => \fd|MuxRegRam|selected[9]~19_combout\);

-- Location: FF_X58_Y20_N13
\fd|BankRegister|add1to1|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(9));

-- Location: LCCOMB_X59_Y21_N12
\fd|BankRegister|muxB|selected[9]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~102_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(9)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(9) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(9),
	datab => \fd|BankRegister|add1to3|DOUT\(9),
	datac => \fd|Rom|content~15_combout\,
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[9]~102_combout\);

-- Location: LCCOMB_X59_Y21_N26
\fd|BankRegister|muxB|selected[9]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~103_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[9]~102_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[9]~102_combout\ & 
-- ((\fd|BankRegister|add1to2|DOUT\(9)))) # (!\fd|BankRegister|muxB|selected[9]~102_combout\ & (\fd|BankRegister|add1to1|DOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(9),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(9),
	datad => \fd|BankRegister|muxB|selected[9]~102_combout\,
	combout => \fd|BankRegister|muxB|selected[9]~103_combout\);

-- Location: LCCOMB_X59_Y21_N16
\fd|BankRegister|muxB|selected[9]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~204_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[9]~101_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[9]~103_combout\)))) # (!\fd|Rom|content~8_combout\ 
-- & (\fd|BankRegister|muxB|selected[9]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[9]~103_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[9]~101_combout\,
	combout => \fd|BankRegister|muxB|selected[9]~204_combout\);

-- Location: LCCOMB_X63_Y21_N30
\fd|Ram|ram_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X63_Y21_N31
\fd|Ram|ram_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(28));

-- Location: FF_X63_Y21_N13
\fd|Ram|ram_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[8]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(27));

-- Location: LCCOMB_X63_Y21_N24
\fd|MuxRegRam|selected[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[8]~16_combout\ = (\fd|Ram|ram_rtl_0_bypass\(28) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a8\)) # (!\fd|Ram|ram_rtl_0_bypass\(28) & ((\fd|Ram|ram_rtl_0_bypass\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a8\,
	datac => \fd|Ram|ram_rtl_0_bypass\(28),
	datad => \fd|Ram|ram_rtl_0_bypass\(27),
	combout => \fd|MuxRegRam|selected[8]~16_combout\);

-- Location: LCCOMB_X56_Y23_N18
\fd|ALU|final|selected[8]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[8]~110_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[8]~11_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[8]~11_combout\,
	datad => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[8]~110_combout\);

-- Location: LCCOMB_X56_Y23_N4
\fd|ALU|final|selected[8]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[8]~111_combout\ = (\fd|BankRegister|muxA|selected[8]~17_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[8]~110_combout\))))) # (!\fd|BankRegister|muxA|selected[8]~17_combout\ & 
-- (\fd|ALU|final|selected[8]~110_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[8]~17_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[8]~110_combout\,
	combout => \fd|ALU|final|selected[8]~111_combout\);

-- Location: LCCOMB_X56_Y23_N14
\fd|MuxRegRam|selected[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[8]~17_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[8]~16_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[8]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[8]~16_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|ALU|final|selected[8]~111_combout\,
	combout => \fd|MuxRegRam|selected[8]~17_combout\);

-- Location: LCCOMB_X58_Y22_N24
\fd|BankRegister|add1to2|DOUT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[8]~feeder_combout\ = \fd|MuxRegRam|selected[8]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[8]~17_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[8]~feeder_combout\);

-- Location: FF_X58_Y22_N25
\fd|BankRegister|add1to2|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[8]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(8));

-- Location: LCCOMB_X59_Y22_N24
\fd|BankRegister|muxB|selected[8]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~98_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(8))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to3|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(8),
	datad => \fd|BankRegister|add1to4|DOUT\(8),
	combout => \fd|BankRegister|muxB|selected[8]~98_combout\);

-- Location: LCCOMB_X58_Y22_N22
\fd|BankRegister|muxB|selected[8]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~99_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[8]~98_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[8]~98_combout\ & (\fd|BankRegister|add1to2|DOUT\(8))) # 
-- (!\fd|BankRegister|muxB|selected[8]~98_combout\ & ((\fd|BankRegister|add1to1|DOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(8),
	datac => \fd|BankRegister|add1to1|DOUT\(8),
	datad => \fd|BankRegister|muxB|selected[8]~98_combout\,
	combout => \fd|BankRegister|muxB|selected[8]~99_combout\);

-- Location: LCCOMB_X63_Y21_N12
\fd|BankRegister|muxB|selected[8]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~203_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[8]~97_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[8]~99_combout\)))) # (!\fd|Rom|content~8_combout\ & 
-- (\fd|BankRegister|muxB|selected[8]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[8]~99_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[8]~97_combout\,
	combout => \fd|BankRegister|muxB|selected[8]~203_combout\);

-- Location: LCCOMB_X63_Y22_N20
\fd|MuxRegRam|selected[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[7]~14_combout\ = (\fd|Ram|ram_rtl_0_bypass\(26) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a7\))) # (!\fd|Ram|ram_rtl_0_bypass\(26) & (\fd|Ram|ram_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(26),
	datab => \fd|Ram|ram_rtl_0_bypass\(25),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \fd|MuxRegRam|selected[7]~14_combout\);

-- Location: LCCOMB_X56_Y23_N6
\fd|MuxRegRam|selected[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[7]~15_combout\ = (\ucfd|Equal1~0_combout\ & ((\fd|MuxRegRam|selected[7]~14_combout\))) # (!\ucfd|Equal1~0_combout\ & (\fd|ALU|final|selected[7]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[7]~113_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datad => \fd|MuxRegRam|selected[7]~14_combout\,
	combout => \fd|MuxRegRam|selected[7]~15_combout\);

-- Location: LCCOMB_X57_Y20_N24
\fd|BankRegister|add1to2|DOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[7]~feeder_combout\ = \fd|MuxRegRam|selected[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[7]~15_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[7]~feeder_combout\);

-- Location: FF_X57_Y20_N25
\fd|BankRegister|add1to2|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[7]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(7));

-- Location: LCCOMB_X59_Y20_N26
\fd|BankRegister|muxB|selected[7]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~94_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to4|DOUT\(7))) # (!\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to3|DOUT\(7)))))) # (!\fd|Rom|content~17_combout\ 
-- & (((\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(7),
	datac => \fd|BankRegister|add1to3|DOUT\(7),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[7]~94_combout\);

-- Location: LCCOMB_X57_Y20_N26
\fd|BankRegister|muxB|selected[7]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~95_combout\ = (\fd|BankRegister|muxB|selected[7]~94_combout\ & ((\fd|BankRegister|add1to2|DOUT\(7)) # ((\fd|Rom|content~17_combout\)))) # (!\fd|BankRegister|muxB|selected[7]~94_combout\ & 
-- (((\fd|BankRegister|add1to1|DOUT\(7) & !\fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(7),
	datab => \fd|BankRegister|add1to1|DOUT\(7),
	datac => \fd|BankRegister|muxB|selected[7]~94_combout\,
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[7]~95_combout\);

-- Location: LCCOMB_X63_Y22_N16
\fd|BankRegister|muxB|selected[7]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~202_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[7]~93_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[7]~95_combout\)))) # (!\fd|PC|DOUT\(0) & 
-- (\fd|BankRegister|muxB|selected[7]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[7]~95_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|BankRegister|muxB|selected[7]~93_combout\,
	combout => \fd|BankRegister|muxB|selected[7]~202_combout\);

-- Location: FF_X65_Y23_N19
\fd|Ram|ram_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[6]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(23));

-- Location: LCCOMB_X65_Y23_N14
\fd|MuxRegRam|selected[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[6]~12_combout\ = (\fd|Ram|ram_rtl_0_bypass\(24) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a6\)) # (!\fd|Ram|ram_rtl_0_bypass\(24) & ((\fd|Ram|ram_rtl_0_bypass\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(24),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \fd|Ram|ram_rtl_0_bypass\(23),
	combout => \fd|MuxRegRam|selected[6]~12_combout\);

-- Location: LCCOMB_X63_Y23_N4
\fd|MuxRegRam|selected[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[6]~13_combout\ = (\ucfd|Equal1~0_combout\ & ((\fd|MuxRegRam|selected[6]~12_combout\))) # (!\ucfd|Equal1~0_combout\ & (\fd|ALU|final|selected[6]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[6]~115_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|MuxRegRam|selected[6]~12_combout\,
	combout => \fd|MuxRegRam|selected[6]~13_combout\);

-- Location: LCCOMB_X58_Y22_N28
\fd|BankRegister|add1to1|DOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[6]~13_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[6]~feeder_combout\);

-- Location: FF_X58_Y22_N29
\fd|BankRegister|add1to1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[6]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(6));

-- Location: LCCOMB_X59_Y22_N22
\fd|BankRegister|muxB|selected[6]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~90_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(6))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to3|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(6),
	datad => \fd|BankRegister|add1to4|DOUT\(6),
	combout => \fd|BankRegister|muxB|selected[6]~90_combout\);

-- Location: LCCOMB_X59_Y23_N28
\fd|BankRegister|muxB|selected[6]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~91_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[6]~90_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[6]~90_combout\ & ((\fd|BankRegister|add1to2|DOUT\(6)))) 
-- # (!\fd|BankRegister|muxB|selected[6]~90_combout\ & (\fd|BankRegister|add1to1|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(6),
	datac => \fd|BankRegister|add1to2|DOUT\(6),
	datad => \fd|BankRegister|muxB|selected[6]~90_combout\,
	combout => \fd|BankRegister|muxB|selected[6]~91_combout\);

-- Location: LCCOMB_X65_Y23_N18
\fd|BankRegister|muxB|selected[6]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~201_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|PC|DOUT\(0) & ((\fd|BankRegister|muxB|selected[6]~89_combout\))) # (!\fd|PC|DOUT\(0) & (\fd|BankRegister|muxB|selected[6]~91_combout\)))) # (!\fd|Rom|content~8_combout\ & 
-- (((\fd|BankRegister|muxB|selected[6]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|BankRegister|muxB|selected[6]~91_combout\,
	datad => \fd|BankRegister|muxB|selected[6]~89_combout\,
	combout => \fd|BankRegister|muxB|selected[6]~201_combout\);

-- Location: FF_X59_Y23_N3
\fd|Ram|ram_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[5]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(21));

-- Location: LCCOMB_X63_Y23_N8
\fd|MuxRegRam|selected[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[5]~10_combout\ = (\fd|Ram|ram_rtl_0_bypass\(22) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\fd|Ram|ram_rtl_0_bypass\(22) & ((\fd|Ram|ram_rtl_0_bypass\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Ram|ram_rtl_0_bypass\(22),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \fd|Ram|ram_rtl_0_bypass\(21),
	combout => \fd|MuxRegRam|selected[5]~10_combout\);

-- Location: LCCOMB_X62_Y23_N14
\fd|ALU|final|selected[5]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[5]~116_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~8_combout\ $ (((\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|MuxSaidaBankRegister|selected[5]~8_combout\,
	combout => \fd|ALU|final|selected[5]~116_combout\);

-- Location: LCCOMB_X63_Y23_N6
\fd|ALU|final|selected[5]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[5]~117_combout\ = (\fd|BankRegister|muxA|selected[5]~11_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[5]~116_combout\))))) # (!\fd|BankRegister|muxA|selected[5]~11_combout\ & 
-- (\fd|ALU|final|selected[5]~116_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected[5]~11_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[5]~116_combout\,
	combout => \fd|ALU|final|selected[5]~117_combout\);

-- Location: LCCOMB_X63_Y23_N22
\fd|MuxRegRam|selected[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[5]~11_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[5]~10_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[5]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[5]~10_combout\,
	datad => \fd|ALU|final|selected[5]~117_combout\,
	combout => \fd|MuxRegRam|selected[5]~11_combout\);

-- Location: FF_X58_Y20_N25
\fd|BankRegister|add1to1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(5));

-- Location: LCCOMB_X59_Y20_N12
\fd|BankRegister|muxB|selected[5]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~86_combout\ = (\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to4|DOUT\(5))) # (!\fd|Rom|content~17_combout\))) # (!\fd|Rom|content~15_combout\ & (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to3|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(5),
	datad => \fd|BankRegister|add1to4|DOUT\(5),
	combout => \fd|BankRegister|muxB|selected[5]~86_combout\);

-- Location: LCCOMB_X59_Y23_N22
\fd|BankRegister|muxB|selected[5]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~87_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[5]~86_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[5]~86_combout\ & ((\fd|BankRegister|add1to2|DOUT\(5)))) 
-- # (!\fd|BankRegister|muxB|selected[5]~86_combout\ & (\fd|BankRegister|add1to1|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(5),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to2|DOUT\(5),
	datad => \fd|BankRegister|muxB|selected[5]~86_combout\,
	combout => \fd|BankRegister|muxB|selected[5]~87_combout\);

-- Location: LCCOMB_X63_Y23_N20
\fd|BankRegister|add1to7|DOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[5]~11_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[5]~feeder_combout\);

-- Location: FF_X63_Y23_N21
\fd|BankRegister|add1to7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[5]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(5));

-- Location: FF_X58_Y23_N27
\fd|BankRegister|add1to5|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(5));

-- Location: LCCOMB_X58_Y23_N26
\fd|BankRegister|muxB|selected[5]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~84_combout\ = (\fd|Rom|content~17_combout\ & (\fd|BankRegister|add1to7|DOUT\(5) & ((!\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & (((\fd|BankRegister|add1to5|DOUT\(5)) # 
-- (\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(5),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(5),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[5]~84_combout\);

-- Location: LCCOMB_X62_Y23_N30
\fd|BankRegister|add1to6|DOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[5]~11_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\);

-- Location: FF_X62_Y23_N31
\fd|BankRegister|add1to6|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(5));

-- Location: FF_X58_Y23_N9
\fd|BankRegister|add1to8|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(5));

-- Location: LCCOMB_X58_Y23_N8
\fd|BankRegister|muxB|selected[5]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~85_combout\ = (\fd|BankRegister|muxB|selected[5]~84_combout\ & ((\fd|BankRegister|add1to6|DOUT\(5)) # ((!\fd|Rom|content~15_combout\)))) # (!\fd|BankRegister|muxB|selected[5]~84_combout\ & 
-- (((\fd|BankRegister|add1to8|DOUT\(5) & \fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[5]~84_combout\,
	datab => \fd|BankRegister|add1to6|DOUT\(5),
	datac => \fd|BankRegister|add1to8|DOUT\(5),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[5]~85_combout\);

-- Location: LCCOMB_X59_Y23_N2
\fd|BankRegister|muxB|selected[5]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~195_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[5]~85_combout\))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[5]~87_combout\)))) # (!\fd|PC|DOUT\(0) & 
-- (((\fd|BankRegister|muxB|selected[5]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[5]~87_combout\,
	datad => \fd|BankRegister|muxB|selected[5]~85_combout\,
	combout => \fd|BankRegister|muxB|selected[5]~195_combout\);

-- Location: LCCOMB_X59_Y21_N24
\fd|Ram|ram_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X59_Y21_N25
\fd|Ram|ram_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(20));

-- Location: FF_X59_Y21_N7
\fd|Ram|ram_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[4]~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(19));

-- Location: LCCOMB_X59_Y21_N8
\fd|MuxRegRam|selected[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[4]~8_combout\ = (\fd|Ram|ram_rtl_0_bypass\(20) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a4\)) # (!\fd|Ram|ram_rtl_0_bypass\(20) & ((\fd|Ram|ram_rtl_0_bypass\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \fd|Ram|ram_rtl_0_bypass\(20),
	datad => \fd|Ram|ram_rtl_0_bypass\(19),
	combout => \fd|MuxRegRam|selected[4]~8_combout\);

-- Location: LCCOMB_X59_Y21_N18
\fd|MuxRegRam|selected[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[4]~9_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[4]~8_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[4]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[4]~8_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[4]~119_combout\,
	combout => \fd|MuxRegRam|selected[4]~9_combout\);

-- Location: FF_X59_Y22_N17
\fd|BankRegister|add1to3|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(4));

-- Location: LCCOMB_X58_Y21_N0
\fd|BankRegister|muxA|selected[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[4]~8_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to2|DOUT\(4))) # (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(4),
	datab => \fd|BankRegister|add1to1|DOUT\(4),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[4]~8_combout\);

-- Location: LCCOMB_X59_Y22_N12
\fd|BankRegister|muxA|selected[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[4]~9_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxA|selected[4]~8_combout\ & ((\fd|BankRegister|add1to4|DOUT\(4)))) # (!\fd|BankRegister|muxA|selected[4]~8_combout\ & (\fd|BankRegister|add1to3|DOUT\(4))))) 
-- # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|muxA|selected[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(4),
	datac => \fd|BankRegister|add1to4|DOUT\(4),
	datad => \fd|BankRegister|muxA|selected[4]~8_combout\,
	combout => \fd|BankRegister|muxA|selected[4]~9_combout\);

-- Location: LCCOMB_X60_Y25_N14
\fd|ALU|final|selected[4]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[4]~118_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[4]~7_combout\ $ (((\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|MuxSaidaBankRegister|selected[4]~7_combout\,
	combout => \fd|ALU|final|selected[4]~118_combout\);

-- Location: LCCOMB_X60_Y25_N24
\fd|ALU|final|selected[4]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[4]~119_combout\ = (\fd|BankRegister|muxA|selected[4]~9_combout\ & (\fd|UCalu|output\(1) $ (((\fd|ALU|final|selected[4]~118_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|BankRegister|muxA|selected[4]~9_combout\ & 
-- (\fd|ALU|final|selected[4]~118_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[4]~9_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[4]~118_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[4]~119_combout\);

-- Location: FF_X57_Y22_N17
\fd|Ram|ram_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[3]~194_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(17));

-- Location: LCCOMB_X57_Y22_N2
\fd|Ram|ram_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X57_Y22_N3
\fd|Ram|ram_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(18));

-- Location: LCCOMB_X57_Y22_N16
\fd|MuxRegRam|selected[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[3]~6_combout\ = (\fd|Ram|ram_rtl_0_bypass\(18) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a3\)) # (!\fd|Ram|ram_rtl_0_bypass\(18) & ((\fd|Ram|ram_rtl_0_bypass\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \fd|Ram|ram_rtl_0_bypass\(17),
	datad => \fd|Ram|ram_rtl_0_bypass\(18),
	combout => \fd|MuxRegRam|selected[3]~6_combout\);

-- Location: LCCOMB_X60_Y22_N8
\fd|MuxRegRam|selected[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[3]~7_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[3]~6_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[3]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxRegRam|selected[3]~6_combout\,
	datad => \fd|ALU|final|selected[3]~121_combout\,
	combout => \fd|MuxRegRam|selected[3]~7_combout\);

-- Location: FF_X59_Y23_N21
\fd|BankRegister|add1to2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(3));

-- Location: LCCOMB_X58_Y20_N14
\fd|BankRegister|muxA|selected[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[3]~6_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(3)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to1|DOUT\(3) & !\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(3),
	datac => \fd|BankRegister|add1to1|DOUT\(3),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[3]~6_combout\);

-- Location: LCCOMB_X59_Y20_N8
\fd|BankRegister|muxA|selected[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[3]~7_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[3]~6_combout\ & ((\fd|BankRegister|add1to4|DOUT\(3)))) # (!\fd|BankRegister|muxA|selected[3]~6_combout\ & (\fd|BankRegister|add1to2|DOUT\(3))))) 
-- # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(3),
	datab => \fd|Rom|content~11_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(3),
	datad => \fd|BankRegister|muxA|selected[3]~6_combout\,
	combout => \fd|BankRegister|muxA|selected[3]~7_combout\);

-- Location: LCCOMB_X61_Y25_N26
\fd|ALU|final|selected[3]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[3]~120_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[3]~6_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|MuxSaidaBankRegister|selected[3]~6_combout\,
	combout => \fd|ALU|final|selected[3]~120_combout\);

-- Location: LCCOMB_X60_Y25_N10
\fd|ALU|final|selected[3]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[3]~121_combout\ = (\fd|BankRegister|muxA|selected[3]~7_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[3]~120_combout\))))) # (!\fd|BankRegister|muxA|selected[3]~7_combout\ & 
-- (\fd|ALU|final|selected[3]~120_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected[3]~7_combout\,
	datad => \fd|ALU|final|selected[3]~120_combout\,
	combout => \fd|ALU|final|selected[3]~121_combout\);

-- Location: FF_X59_Y23_N25
\fd|Ram|ram_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[2]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(15));

-- Location: LCCOMB_X58_Y23_N2
\fd|MuxRegRam|selected[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[2]~4_combout\ = (\fd|Ram|ram_rtl_0_bypass\(16) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a2\)) # (!\fd|Ram|ram_rtl_0_bypass\(16) & ((\fd|Ram|ram_rtl_0_bypass\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(16),
	datab => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \fd|Ram|ram_rtl_0_bypass\(15),
	combout => \fd|MuxRegRam|selected[2]~4_combout\);

-- Location: LCCOMB_X58_Y23_N12
\fd|MuxRegRam|selected[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[2]~5_combout\ = (\ucfd|Equal1~0_combout\ & ((\fd|MuxRegRam|selected[2]~4_combout\))) # (!\ucfd|Equal1~0_combout\ & (\fd|ALU|final|selected[2]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|ALU|final|selected[2]~123_combout\,
	datad => \fd|MuxRegRam|selected[2]~4_combout\,
	combout => \fd|MuxRegRam|selected[2]~5_combout\);

-- Location: FF_X59_Y23_N11
\fd|BankRegister|add1to2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(2));

-- Location: LCCOMB_X58_Y20_N20
\fd|BankRegister|muxA|selected[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[2]~4_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & ((\fd|Rom|content~11_combout\ & (\fd|BankRegister|add1to2|DOUT\(2))) # (!\fd|Rom|content~11_combout\ & 
-- ((\fd|BankRegister|add1to1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(2),
	datac => \fd|BankRegister|add1to1|DOUT\(2),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[2]~4_combout\);

-- Location: LCCOMB_X60_Y20_N18
\fd|BankRegister|muxA|selected[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[2]~5_combout\ = (\fd|BankRegister|muxA|selected[2]~4_combout\ & (((\fd|BankRegister|add1to4|DOUT\(2)) # (!\fd|Rom|content~8_combout\)))) # (!\fd|BankRegister|muxA|selected[2]~4_combout\ & (\fd|BankRegister|add1to3|DOUT\(2) & 
-- ((\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[2]~4_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(2),
	datac => \fd|BankRegister|add1to4|DOUT\(2),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|BankRegister|muxA|selected[2]~5_combout\);

-- Location: LCCOMB_X60_Y25_N8
\fd|ALU|final|selected[2]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[2]~122_combout\ = \fd|MuxSaidaBankRegister|selected[2]~5_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[2]~5_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[2]~122_combout\);

-- Location: LCCOMB_X60_Y25_N22
\fd|ALU|final|selected[2]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[2]~123_combout\ = (\fd|BankRegister|muxA|selected[2]~5_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[2]~122_combout\))))) # (!\fd|BankRegister|muxA|selected[2]~5_combout\ & 
-- (\fd|ALU|final|selected[2]~122_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[2]~5_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[2]~122_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[2]~123_combout\);

-- Location: LCCOMB_X59_Y23_N4
\fd|MuxRegRam|selected[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[1]~2_combout\ = (\fd|Ram|ram_rtl_0_bypass\(14) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a1\))) # (!\fd|Ram|ram_rtl_0_bypass\(14) & (\fd|Ram|ram_rtl_0_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(14),
	datac => \fd|Ram|ram_rtl_0_bypass\(13),
	datad => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \fd|MuxRegRam|selected[1]~2_combout\);

-- Location: LCCOMB_X56_Y23_N2
\fd|MuxRegRam|selected[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[1]~3_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[1]~2_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[1]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[1]~2_combout\,
	datac => \fd|ALU|final|selected[1]~125_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxRegRam|selected[1]~3_combout\);

-- Location: LCCOMB_X57_Y23_N22
\fd|BankRegister|add1to7|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[1]~feeder_combout\ = \fd|MuxRegRam|selected[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[1]~3_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[1]~feeder_combout\);

-- Location: FF_X57_Y23_N23
\fd|BankRegister|add1to7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[1]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(1));

-- Location: FF_X58_Y23_N5
\fd|BankRegister|add1to8|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(1));

-- Location: LCCOMB_X62_Y23_N4
\fd|BankRegister|add1to6|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\ = \fd|MuxRegRam|selected[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[1]~3_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\);

-- Location: FF_X62_Y23_N5
\fd|BankRegister|add1to6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(1));

-- Location: FF_X58_Y23_N11
\fd|BankRegister|add1to5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(1));

-- Location: LCCOMB_X58_Y23_N10
\fd|BankRegister|muxB|selected[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~68_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|Rom|content~15_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|Rom|content~15_combout\ & (\fd|BankRegister|add1to6|DOUT\(1))) # (!\fd|Rom|content~15_combout\ & 
-- ((\fd|BankRegister|add1to5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(1),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to5|DOUT\(1),
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~68_combout\);

-- Location: LCCOMB_X58_Y23_N4
\fd|BankRegister|muxB|selected[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~69_combout\ = (\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[1]~68_combout\ & ((\fd|BankRegister|add1to8|DOUT\(1)))) # (!\fd|BankRegister|muxB|selected[1]~68_combout\ & 
-- (\fd|BankRegister|add1to7|DOUT\(1))))) # (!\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[1]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(1),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|BankRegister|add1to8|DOUT\(1),
	datad => \fd|BankRegister|muxB|selected[1]~68_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~69_combout\);

-- Location: LCCOMB_X59_Y20_N16
\fd|BankRegister|muxB|selected[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~70_combout\ = (\fd|Rom|content~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(1)) # ((!\fd|Rom|content~17_combout\)))) # (!\fd|Rom|content~15_combout\ & (((\fd|BankRegister|add1to3|DOUT\(1) & 
-- \fd|Rom|content~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(1),
	datab => \fd|Rom|content~15_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(1),
	datad => \fd|Rom|content~17_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~70_combout\);

-- Location: LCCOMB_X59_Y23_N12
\fd|BankRegister|muxB|selected[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~71_combout\ = (\fd|Rom|content~17_combout\ & (((\fd|BankRegister|muxB|selected[1]~70_combout\)))) # (!\fd|Rom|content~17_combout\ & ((\fd|BankRegister|muxB|selected[1]~70_combout\ & ((\fd|BankRegister|add1to2|DOUT\(1)))) 
-- # (!\fd|BankRegister|muxB|selected[1]~70_combout\ & (\fd|BankRegister|add1to1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|BankRegister|add1to1|DOUT\(1),
	datac => \fd|BankRegister|add1to2|DOUT\(1),
	datad => \fd|BankRegister|muxB|selected[1]~70_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~71_combout\);

-- Location: LCCOMB_X59_Y23_N0
\fd|BankRegister|muxB|selected[1]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~192_combout\ = (\fd|PC|DOUT\(0) & ((\fd|Rom|content~8_combout\ & (\fd|BankRegister|muxB|selected[1]~69_combout\)) # (!\fd|Rom|content~8_combout\ & ((\fd|BankRegister|muxB|selected[1]~71_combout\))))) # (!\fd|PC|DOUT\(0) & 
-- (((\fd|BankRegister|muxB|selected[1]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|BankRegister|muxB|selected[1]~69_combout\,
	datad => \fd|BankRegister|muxB|selected[1]~71_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~192_combout\);

-- Location: LCCOMB_X59_Y23_N16
\fd|MuxSaidaBankRegister|selected[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[1]~4_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|Rom|content~19_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|BankRegister|muxB|selected[1]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|BankRegister|muxB|selected[1]~192_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[1]~4_combout\);

-- Location: LCCOMB_X56_Y23_N16
\fd|ALU|final|selected[1]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[1]~124_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~4_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|a0|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|a0|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[1]~4_combout\,
	combout => \fd|ALU|final|selected[1]~124_combout\);

-- Location: LCCOMB_X56_Y23_N10
\fd|ALU|final|selected[1]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[1]~125_combout\ = (\fd|ALU|final|selected[1]~124_combout\ & (\fd|UCalu|output\(1) $ (((\fd|BankRegister|muxA|selected[1]~3_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|ALU|final|selected[1]~124_combout\ & 
-- (\fd|BankRegister|muxA|selected[1]~3_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|final|selected[1]~124_combout\,
	datac => \fd|BankRegister|muxA|selected[1]~3_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[1]~125_combout\);

-- Location: LCCOMB_X63_Y21_N14
\fd|Ram|ram_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X63_Y21_N15
\fd|Ram|ram_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(74));

-- Location: FF_X63_Y21_N9
\fd|Ram|ram_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[31]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(73));

-- Location: LCCOMB_X63_Y21_N4
\fd|MuxRegRam|selected[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[31]~62_combout\ = (\fd|Ram|ram_rtl_0_bypass\(74) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a31\)) # (!\fd|Ram|ram_rtl_0_bypass\(74) & ((\fd|Ram|ram_rtl_0_bypass\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a31\,
	datab => \fd|Ram|ram_rtl_0_bypass\(74),
	datad => \fd|Ram|ram_rtl_0_bypass\(73),
	combout => \fd|MuxRegRam|selected[31]~62_combout\);

-- Location: LCCOMB_X59_Y24_N26
\fd|MuxSaidaBankRegister|selected[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[31]~34_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|muxB|selected[31]~189_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|muxB|selected[31]~191_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[31]~189_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[31]~191_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[31]~34_combout\);

-- Location: LCCOMB_X59_Y24_N22
\fd|ALU|final|selected[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~62_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|muxA|selected[31]~63_combout\) # (\fd|MuxSaidaBankRegister|selected[31]~34_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|muxA|selected[31]~63_combout\ & (\fd|MuxSaidaBankRegister|selected[31]~34_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[31]~34_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|UCalu|output\(0),
	datad => \fd|BankRegister|muxA|selected[31]~63_combout\,
	combout => \fd|ALU|final|selected[31]~62_combout\);

-- Location: LCCOMB_X60_Y24_N22
\fd|ALU|adder|addsloop:30:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected[30]~61_combout\ & ((\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~33_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected[30]~61_combout\ & (\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[30]~33_combout\,
	datac => \fd|BankRegister|muxA|selected[30]~61_combout\,
	datad => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y24_N28
\fd|ALU|final|selected[31]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~64_combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|muxA|selected[31]~63_combout\ $ (\fd|MuxSaidaBankRegister|selected[31]~34_combout\ $ (\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[31]~63_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[31]~34_combout\,
	datad => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[31]~64_combout\);

-- Location: LCCOMB_X59_Y24_N2
\fd|ALU|final|selected[31]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~65_combout\ = (!\fd|UCalu|output\(0) & (\fd|UCalu|output\(1) & \fd|ALU|final|selected[31]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[31]~64_combout\,
	combout => \fd|ALU|final|selected[31]~65_combout\);

-- Location: LCCOMB_X59_Y24_N8
\fd|ALU|final|selected[31]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~63_combout\ = (\fd|ALU|final|selected[31]~65_combout\) # ((\fd|ALU|final|selected[31]~62_combout\ & !\fd|UCalu|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[31]~62_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[31]~65_combout\,
	combout => \fd|ALU|final|selected[31]~63_combout\);

-- Location: LCCOMB_X60_Y21_N30
\fd|MuxRegRam|selected[31]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[31]~63_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[31]~62_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[31]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRegRam|selected[31]~62_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|ALU|final|selected[31]~63_combout\,
	combout => \fd|MuxRegRam|selected[31]~63_combout\);

-- Location: LCCOMB_X59_Y21_N10
\fd|BankRegister|add1to2|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[31]~63_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[31]~feeder_combout\);

-- Location: FF_X59_Y21_N11
\fd|BankRegister|add1to2|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[31]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(31));

-- Location: LCCOMB_X58_Y20_N8
\fd|BankRegister|muxA|selected[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[31]~62_combout\ = (\fd|Rom|content~8_combout\ & (((\fd|BankRegister|add1to3|DOUT\(31)) # (\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (\fd|BankRegister|add1to1|DOUT\(31) & 
-- ((!\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(31),
	datab => \fd|BankRegister|add1to3|DOUT\(31),
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[31]~62_combout\);

-- Location: LCCOMB_X58_Y20_N18
\fd|BankRegister|muxA|selected[31]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[31]~63_combout\ = (\fd|Rom|content~11_combout\ & ((\fd|BankRegister|muxA|selected[31]~62_combout\ & ((\fd|BankRegister|add1to4|DOUT\(31)))) # (!\fd|BankRegister|muxA|selected[31]~62_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(31))))) # (!\fd|Rom|content~11_combout\ & (((\fd|BankRegister|muxA|selected[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~11_combout\,
	datab => \fd|BankRegister|add1to2|DOUT\(31),
	datac => \fd|BankRegister|muxA|selected[31]~62_combout\,
	datad => \fd|BankRegister|add1to4|DOUT\(31),
	combout => \fd|BankRegister|muxA|selected[31]~63_combout\);

-- Location: LCCOMB_X59_Y24_N10
\fd|ALU|out4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|out4[0]~0_combout\ = (\fd|BankRegister|muxA|selected[31]~63_combout\ & ((\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & ((!\fd|MuxSaidaBankRegister|selected[31]~34_combout\))) # (!\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & 
-- (!\fd|UCalu|output\(2))))) # (!\fd|BankRegister|muxA|selected[31]~63_combout\ & ((\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & (!\fd|UCalu|output\(2))) # (!\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & 
-- ((\fd|MuxSaidaBankRegister|selected[31]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected[31]~63_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[31]~34_combout\,
	datad => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	combout => \fd|ALU|out4[0]~0_combout\);

-- Location: LCCOMB_X59_Y24_N16
\fd|ALU|final|selected[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[0]~61_combout\ = (\fd|ALU|final|selected[0]~60_combout\ & (((\fd|ALU|out4[0]~0_combout\) # (!\fd|UCalu|output\(1))))) # (!\fd|ALU|final|selected[0]~60_combout\ & (\fd|ALU|adder|a0|soma~2_combout\ & (\fd|UCalu|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[0]~60_combout\,
	datab => \fd|ALU|adder|a0|soma~2_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|out4[0]~0_combout\,
	combout => \fd|ALU|final|selected[0]~61_combout\);

-- Location: FF_X65_Y24_N23
\fd|Ram|ram_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|BankRegister|muxB|selected[21]~213_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(53));

-- Location: LCCOMB_X66_Y24_N24
\fd|Ram|ram_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X66_Y24_N25
\fd|Ram|ram_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(54));

-- Location: LCCOMB_X65_Y24_N22
\fd|MuxRegRam|selected[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[21]~42_combout\ = (\fd|Ram|ram_rtl_0_bypass\(54) & (\fd|Ram|ram_rtl_0|auto_generated|ram_block1a21\)) # (!\fd|Ram|ram_rtl_0_bypass\(54) & ((\fd|Ram|ram_rtl_0_bypass\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a21\,
	datac => \fd|Ram|ram_rtl_0_bypass\(53),
	datad => \fd|Ram|ram_rtl_0_bypass\(54),
	combout => \fd|MuxRegRam|selected[21]~42_combout\);

-- Location: LCCOMB_X61_Y20_N22
\fd|MuxRegRam|selected[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[21]~43_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[21]~42_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[21]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datac => \fd|MuxRegRam|selected[21]~42_combout\,
	datad => \fd|ALU|final|selected[21]~85_combout\,
	combout => \fd|MuxRegRam|selected[21]~43_combout\);

-- Location: FF_X61_Y21_N13
\fd|BankRegister|add1to2|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~43_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(21));

-- Location: LCCOMB_X61_Y20_N24
\fd|BankRegister|muxA|selected[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[21]~42_combout\ = (\fd|Rom|content~8_combout\ & ((\fd|BankRegister|add1to3|DOUT\(21)) # ((\fd|Rom|content~11_combout\)))) # (!\fd|Rom|content~8_combout\ & (((!\fd|Rom|content~11_combout\ & 
-- \fd|BankRegister|add1to1|DOUT\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(21),
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|Rom|content~11_combout\,
	datad => \fd|BankRegister|add1to1|DOUT\(21),
	combout => \fd|BankRegister|muxA|selected[21]~42_combout\);

-- Location: LCCOMB_X60_Y20_N6
\fd|BankRegister|muxA|selected[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[21]~43_combout\ = (\fd|BankRegister|muxA|selected[21]~42_combout\ & (((\fd|BankRegister|add1to4|DOUT\(21)) # (!\fd|Rom|content~11_combout\)))) # (!\fd|BankRegister|muxA|selected[21]~42_combout\ & 
-- (\fd|BankRegister|add1to2|DOUT\(21) & ((\fd|Rom|content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(21),
	datab => \fd|BankRegister|muxA|selected[21]~42_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(21),
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|BankRegister|muxA|selected[21]~43_combout\);

-- Location: LCCOMB_X61_Y20_N12
\fd|ALU|final|selected[21]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[21]~84_combout\ = \fd|MuxSaidaBankRegister|selected[21]~24_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[21]~24_combout\,
	datab => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[21]~84_combout\);

-- Location: LCCOMB_X61_Y20_N10
\fd|ALU|final|selected[21]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[21]~85_combout\ = (\fd|BankRegister|muxA|selected[21]~43_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[21]~84_combout\))))) # (!\fd|BankRegister|muxA|selected[21]~43_combout\ & 
-- (\fd|ALU|final|selected[21]~84_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[21]~43_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[21]~84_combout\,
	combout => \fd|ALU|final|selected[21]~85_combout\);

-- Location: LCCOMB_X61_Y20_N8
\fd|beqAnd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~5_combout\ = (!\fd|ALU|final|selected[21]~85_combout\ & (!\fd|ALU|final|selected[18]~91_combout\ & (!\fd|ALU|final|selected[20]~87_combout\ & !\fd|ALU|final|selected[19]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[21]~85_combout\,
	datab => \fd|ALU|final|selected[18]~91_combout\,
	datac => \fd|ALU|final|selected[20]~87_combout\,
	datad => \fd|ALU|final|selected[19]~89_combout\,
	combout => \fd|beqAnd~5_combout\);

-- Location: LCCOMB_X60_Y24_N16
\fd|beqAnd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~6_combout\ = (!\fd|ALU|final|selected[22]~83_combout\ & (!\fd|ALU|final|selected[23]~81_combout\ & (!\fd|ALU|final|selected[25]~77_combout\ & !\fd|ALU|final|selected[24]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[22]~83_combout\,
	datab => \fd|ALU|final|selected[23]~81_combout\,
	datac => \fd|ALU|final|selected[25]~77_combout\,
	datad => \fd|ALU|final|selected[24]~79_combout\,
	combout => \fd|beqAnd~6_combout\);

-- Location: LCCOMB_X60_Y24_N30
\fd|beqAnd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~7_combout\ = (\fd|beqAnd~5_combout\ & \fd|beqAnd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|beqAnd~5_combout\,
	datad => \fd|beqAnd~6_combout\,
	combout => \fd|beqAnd~7_combout\);

-- Location: LCCOMB_X56_Y23_N28
\fd|beqAnd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~1_combout\ = (!\fd|ALU|final|selected[6]~115_combout\ & (!\fd|ALU|final|selected[8]~111_combout\ & (!\fd|ALU|final|selected[7]~113_combout\ & !\fd|ALU|final|selected[9]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[6]~115_combout\,
	datab => \fd|ALU|final|selected[8]~111_combout\,
	datac => \fd|ALU|final|selected[7]~113_combout\,
	datad => \fd|ALU|final|selected[9]~109_combout\,
	combout => \fd|beqAnd~1_combout\);

-- Location: LCCOMB_X60_Y25_N4
\fd|beqAnd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~2_combout\ = (!\fd|ALU|final|selected[13]~101_combout\ & (!\fd|ALU|final|selected[10]~107_combout\ & (!\fd|ALU|final|selected[11]~105_combout\ & !\fd|ALU|final|selected[12]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[13]~101_combout\,
	datab => \fd|ALU|final|selected[10]~107_combout\,
	datac => \fd|ALU|final|selected[11]~105_combout\,
	datad => \fd|ALU|final|selected[12]~103_combout\,
	combout => \fd|beqAnd~2_combout\);

-- Location: LCCOMB_X60_Y25_N30
\fd|beqAnd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~0_combout\ = (!\fd|ALU|final|selected[4]~119_combout\ & (!\fd|ALU|final|selected[5]~117_combout\ & (!\fd|ALU|final|selected[2]~123_combout\ & !\fd|ALU|final|selected[3]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[4]~119_combout\,
	datab => \fd|ALU|final|selected[5]~117_combout\,
	datac => \fd|ALU|final|selected[2]~123_combout\,
	datad => \fd|ALU|final|selected[3]~121_combout\,
	combout => \fd|beqAnd~0_combout\);

-- Location: LCCOMB_X60_Y25_N6
\fd|beqAnd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~3_combout\ = (!\fd|ALU|final|selected[16]~95_combout\ & (!\fd|ALU|final|selected[15]~97_combout\ & (!\fd|ALU|final|selected[14]~99_combout\ & !\fd|ALU|final|selected[17]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[16]~95_combout\,
	datab => \fd|ALU|final|selected[15]~97_combout\,
	datac => \fd|ALU|final|selected[14]~99_combout\,
	datad => \fd|ALU|final|selected[17]~93_combout\,
	combout => \fd|beqAnd~3_combout\);

-- Location: LCCOMB_X60_Y25_N20
\fd|beqAnd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~4_combout\ = (\fd|beqAnd~1_combout\ & (\fd|beqAnd~2_combout\ & (\fd|beqAnd~0_combout\ & \fd|beqAnd~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~1_combout\,
	datab => \fd|beqAnd~2_combout\,
	datac => \fd|beqAnd~0_combout\,
	datad => \fd|beqAnd~3_combout\,
	combout => \fd|beqAnd~4_combout\);

-- Location: LCCOMB_X60_Y24_N4
\fd|beqAnd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~8_combout\ = (!\fd|ALU|final|selected[27]~73_combout\ & (!\fd|ALU|final|selected[28]~71_combout\ & (!\fd|ALU|final|selected[26]~75_combout\ & !\fd|ALU|final|selected[29]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[27]~73_combout\,
	datab => \fd|ALU|final|selected[28]~71_combout\,
	datac => \fd|ALU|final|selected[26]~75_combout\,
	datad => \fd|ALU|final|selected[29]~69_combout\,
	combout => \fd|beqAnd~8_combout\);

-- Location: LCCOMB_X60_Y24_N10
\fd|beqAnd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~9_combout\ = (!\fd|ALU|final|selected[30]~67_combout\ & (!\fd|ALU|final|selected[31]~65_combout\ & ((\fd|UCalu|output\(1)) # (!\fd|ALU|final|selected[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|final|selected[31]~62_combout\,
	datac => \fd|ALU|final|selected[30]~67_combout\,
	datad => \fd|ALU|final|selected[31]~65_combout\,
	combout => \fd|beqAnd~9_combout\);

-- Location: LCCOMB_X60_Y24_N0
\fd|beqAnd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~10_combout\ = (!\fd|ALU|final|selected[1]~125_combout\ & (\ucfd|BEQ~0_combout\ & (!\fd|ALU|final|selected[0]~61_combout\ & \fd|beqAnd~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[1]~125_combout\,
	datab => \ucfd|BEQ~0_combout\,
	datac => \fd|ALU|final|selected[0]~61_combout\,
	datad => \fd|beqAnd~9_combout\,
	combout => \fd|beqAnd~10_combout\);

-- Location: LCCOMB_X60_Y24_N6
\fd|beqAnd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~11_combout\ = (\fd|beqAnd~7_combout\ & (\fd|beqAnd~4_combout\ & (\fd|beqAnd~8_combout\ & \fd|beqAnd~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~7_combout\,
	datab => \fd|beqAnd~4_combout\,
	datac => \fd|beqAnd~8_combout\,
	datad => \fd|beqAnd~10_combout\,
	combout => \fd|beqAnd~11_combout\);

-- Location: LCCOMB_X58_Y24_N18
\fd|MuxPC|selected[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[3]~3_combout\ = (!\ucfd|Equal4~0_combout\ & ((\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:3:add1to31|soma~0_combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:3:add1to31|soma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:3:add1to31|soma~0_combout\,
	datab => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datac => \ucfd|Equal4~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[3]~3_combout\);

-- Location: FF_X58_Y24_N19
\fd|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(3));

-- Location: LCCOMB_X59_Y25_N12
\fd|Rom|content~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~12_combout\ = (\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(2) $ ((!\fd|PC|DOUT\(3))))) # (!\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(2)) # ((\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~12_combout\);

-- Location: LCCOMB_X59_Y25_N10
\fd|Rom|content~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~13_combout\ = (!\fd|Rom|content~12_combout\ & (\fd|Rom|content~3_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|Rom|content~3_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~13_combout\);

-- Location: LCCOMB_X58_Y24_N24
\fd|MuxPC|selected[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[2]~2_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:2:add1to31|soma~combout\ $ (((\fd|Rom|content~13_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~13_combout\,
	datab => \fd|adder|addsloop:2:add1to31|soma~combout\,
	datac => \ucfd|Equal4~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[2]~2_combout\);

-- Location: FF_X58_Y24_N25
\fd|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(2));

-- Location: LCCOMB_X59_Y25_N14
\fd|Rom|content~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~20_combout\ = (!\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(3) $ (((\fd|PC|DOUT\(2)) # (\fd|PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~20_combout\);

-- Location: LCCOMB_X59_Y25_N28
\fd|Rom|content~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~21_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~3_combout\ & (\fd|Rom|content~20_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~3_combout\,
	datac => \fd|Rom|content~20_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~21_combout\);

-- Location: LCCOMB_X57_Y25_N28
\fd|adder2|addsloop:3:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:3:add1to31|vaium~0_combout\ = (\fd|adder|addsloop:3:add1to31|soma~combout\ & ((\fd|Rom|content~19_combout\) # ((\fd|Rom|content~13_combout\ & \fd|adder|addsloop:2:add1to31|soma~combout\)))) # 
-- (!\fd|adder|addsloop:3:add1to31|soma~combout\ & (\fd|Rom|content~13_combout\ & (\fd|Rom|content~19_combout\ & \fd|adder|addsloop:2:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~13_combout\,
	datab => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|adder|addsloop:2:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y25_N28
\fd|adder|addsloop:3:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:3:add1to31|w3~combout\ = (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(3) & (\fd|PC|DOUT\(2) & \fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|adder|addsloop:3:add1to31|w3~combout\);

-- Location: LCCOMB_X57_Y24_N30
\fd|adder2|addsloop:4:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:4:add1to31|soma~combout\ = \fd|PC|DOUT\(4) $ (\fd|Rom|content~21_combout\ $ (\fd|adder2|addsloop:3:add1to31|vaium~0_combout\ $ (\fd|adder|addsloop:3:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|Rom|content~21_combout\,
	datac => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:4:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N28
\fd|adder|addsloop:4:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:4:add1to31|soma~combout\ = \fd|PC|DOUT\(4) $ (\fd|adder|addsloop:3:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:4:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N6
\fd|PC|DOUT[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[4]~5_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:4:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:4:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:4:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:4:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[4]~5_combout\);

-- Location: FF_X57_Y24_N7
\fd|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[4]~5_combout\,
	asdata => \fd|Rom|content~13_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(4));

-- Location: LCCOMB_X57_Y24_N0
\fd|adder2|addsloop:4:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:4:add1to31|vaium~0_combout\ = (\fd|Rom|content~21_combout\ & ((\fd|adder2|addsloop:3:add1to31|vaium~0_combout\) # (\fd|PC|DOUT\(4) $ (\fd|adder|addsloop:3:add1to31|w3~combout\)))) # (!\fd|Rom|content~21_combout\ & 
-- (\fd|adder2|addsloop:3:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(4) $ (\fd|adder|addsloop:3:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|Rom|content~21_combout\,
	datac => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y24_N20
\fd|adder|addsloop:4:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:4:add1to31|w3~combout\ = (\fd|PC|DOUT\(4) & \fd|adder|addsloop:3:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:4:add1to31|w3~combout\);

-- Location: LCCOMB_X57_Y24_N10
\fd|adder2|addsloop:5:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:5:add1to31|soma~combout\ = \fd|Rom|content~23_combout\ $ (\fd|adder2|addsloop:4:add1to31|vaium~0_combout\ $ (\fd|PC|DOUT\(5) $ (\fd|adder|addsloop:4:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~23_combout\,
	datab => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:5:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N8
\fd|adder|addsloop:5:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:5:add1to31|soma~combout\ = \fd|PC|DOUT\(5) $ (((\fd|PC|DOUT\(4) & \fd|adder|addsloop:3:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:5:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N4
\fd|PC|DOUT[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[5]~4_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:5:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:5:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:5:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:5:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[5]~4_combout\);

-- Location: FF_X57_Y24_N5
\fd|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[5]~4_combout\,
	asdata => \fd|Rom|content~19_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(5));

-- Location: LCCOMB_X57_Y24_N2
\fd|adder|addsloop:6:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:6:add1to31|w3~combout\ = (\fd|PC|DOUT\(4) & (\fd|PC|DOUT\(6) & (\fd|PC|DOUT\(5) & \fd|adder|addsloop:3:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|PC|DOUT\(6),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:6:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y24_N18
\fd|adder2|addsloop:6:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:6:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:5:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(6) $ (((\fd|adder|addsloop:4:add1to31|w3~combout\ & \fd|PC|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:4:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(5),
	datac => \fd|PC|DOUT\(6),
	datad => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:6:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y24_N12
\fd|adder2|addsloop:7:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:7:add1to31|soma~0_combout\ = \fd|Rom|content~25_combout\ $ (\fd|PC|DOUT\(7) $ (\fd|adder|addsloop:6:add1to31|w3~combout\ $ (\fd|adder2|addsloop:6:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~25_combout\,
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:6:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:7:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y24_N6
\fd|adder|addsloop:7:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:7:add1to31|soma~combout\ = \fd|adder|addsloop:6:add1to31|w3~combout\ $ (\fd|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(7),
	combout => \fd|adder|addsloop:7:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N12
\fd|PC|DOUT[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[7]~2_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:7:add1to31|soma~0_combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:7:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:7:add1to31|soma~0_combout\,
	datab => \fd|adder|addsloop:7:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[7]~2_combout\);

-- Location: FF_X57_Y24_N13
\fd|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[7]~2_combout\,
	asdata => \fd|Rom|content~23_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(7));

-- Location: LCCOMB_X54_Y24_N24
\fd|adder|addsloop:8:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:8:add1to31|soma~combout\ = \fd|PC|DOUT\(8) $ (((\fd|adder|addsloop:6:add1to31|w3~combout\ & \fd|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(7),
	combout => \fd|adder|addsloop:8:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y24_N12
\fd|adder2|addsloop:7:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:7:add1to31|vaium~0_combout\ = (\fd|Rom|content~25_combout\ & ((\fd|adder2|addsloop:6:add1to31|vaium~0_combout\) # (\fd|PC|DOUT\(7) $ (\fd|adder|addsloop:6:add1to31|w3~combout\)))) # (!\fd|Rom|content~25_combout\ & 
-- (\fd|adder2|addsloop:6:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(7) $ (\fd|adder|addsloop:6:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~25_combout\,
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:6:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y24_N22
\fd|MuxPC|selected[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[8]~10_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:8:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:8:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	datac => \ucfd|Equal4~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[8]~10_combout\);

-- Location: FF_X58_Y24_N23
\fd|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(8));

-- Location: LCCOMB_X55_Y24_N26
\fd|adder2|addsloop:8:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:8:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(8) $ (((\fd|PC|DOUT\(7) & \fd|adder|addsloop:6:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:8:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y24_N0
\fd|adder|addsloop:8:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:8:add1to31|w3~combout\ = (\fd|PC|DOUT\(8) & (\fd|PC|DOUT\(7) & \fd|adder|addsloop:6:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:6:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:8:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y24_N6
\fd|adder2|addsloop:9:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:9:add1to31|soma~combout\ = \fd|PC|DOUT\(9) $ (\fd|adder2|addsloop:8:add1to31|vaium~0_combout\ $ (\fd|adder|addsloop:8:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datac => \fd|adder2|addsloop:8:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:8:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:9:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y24_N28
\fd|adder|addsloop:9:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:9:add1to31|soma~combout\ = \fd|PC|DOUT\(9) $ (((\fd|PC|DOUT\(8) & (\fd|adder|addsloop:6:add1to31|w3~combout\ & \fd|PC|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(7),
	datad => \fd|PC|DOUT\(9),
	combout => \fd|adder|addsloop:9:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N18
\fd|PC|DOUT[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[9]~1_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:9:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:9:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:9:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:9:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[9]~1_combout\);

-- Location: FF_X57_Y24_N19
\fd|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[9]~1_combout\,
	asdata => \fd|Rom|content~25_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(9));

-- Location: LCCOMB_X55_Y24_N20
\fd|adder|addsloop:7:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:7:add1to31|w3~combout\ = (\fd|adder|addsloop:4:add1to31|w3~combout\ & (\fd|PC|DOUT\(5) & (\fd|PC|DOUT\(7) & \fd|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:4:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(5),
	datac => \fd|PC|DOUT\(7),
	datad => \fd|PC|DOUT\(6),
	combout => \fd|adder|addsloop:7:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y24_N4
\fd|adder2|addsloop:9:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:9:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:8:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(9) $ (((\fd|PC|DOUT\(8) & \fd|adder|addsloop:7:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|PC|DOUT\(9),
	datac => \fd|adder2|addsloop:8:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:9:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y24_N8
\fd|adder|addsloop:9:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:9:add1to31|w3~combout\ = (\fd|PC|DOUT\(8) & (\fd|PC|DOUT\(7) & (\fd|adder|addsloop:6:add1to31|w3~combout\ & \fd|PC|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:6:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(9),
	combout => \fd|adder|addsloop:9:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y24_N22
\fd|adder|addsloop:10:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:10:add1to31|soma~combout\ = \fd|adder|addsloop:9:add1to31|w3~combout\ $ (\fd|PC|DOUT\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|adder|addsloop:9:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(10),
	combout => \fd|adder|addsloop:10:add1to31|soma~combout\);

-- Location: LCCOMB_X58_Y24_N4
\fd|MuxPC|selected[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[10]~9_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:10:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:9:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:9:add1to31|vaium~0_combout\,
	datab => \fd|adder|addsloop:10:add1to31|soma~combout\,
	datac => \ucfd|Equal4~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[10]~9_combout\);

-- Location: FF_X58_Y24_N5
\fd|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(10));

-- Location: LCCOMB_X55_Y24_N10
\fd|adder2|addsloop:10:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:10:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:9:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(10) $ (((\fd|PC|DOUT\(9) & \fd|adder|addsloop:8:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|PC|DOUT\(9),
	datac => \fd|adder2|addsloop:9:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:8:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:10:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y24_N16
\fd|adder|addsloop:11:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:11:add1to31|soma~combout\ = \fd|PC|DOUT\(11) $ (((\fd|adder|addsloop:9:add1to31|w3~combout\ & \fd|PC|DOUT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(11),
	datab => \fd|adder|addsloop:9:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(10),
	combout => \fd|adder|addsloop:11:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y24_N8
\fd|MuxPC|selected[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[11]~8_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:11:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:10:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:10:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:11:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[11]~8_combout\);

-- Location: FF_X60_Y24_N9
\fd|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(11));

-- Location: LCCOMB_X55_Y24_N14
\fd|adder|addsloop:12:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:12:add1to31|soma~combout\ = \fd|PC|DOUT\(12) $ (((\fd|PC|DOUT\(10) & (\fd|adder|addsloop:9:add1to31|w3~combout\ & \fd|PC|DOUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|adder|addsloop:9:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(12),
	datad => \fd|PC|DOUT\(11),
	combout => \fd|adder|addsloop:12:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y24_N24
\fd|adder2|addsloop:11:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:11:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:10:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(11) $ (((\fd|PC|DOUT\(10) & \fd|adder|addsloop:9:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|PC|DOUT\(11),
	datac => \fd|adder|addsloop:9:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:10:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:11:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y24_N6
\fd|MuxPC|selected[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[12]~7_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:12:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:11:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:12:add1to31|soma~combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder2|addsloop:11:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[12]~7_combout\);

-- Location: FF_X56_Y24_N7
\fd|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(12));

-- Location: LCCOMB_X55_Y24_N30
\fd|adder|addsloop:12:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:12:add1to31|w3~combout\ = (\fd|PC|DOUT\(10) & (\fd|adder|addsloop:9:add1to31|w3~combout\ & (\fd|PC|DOUT\(12) & \fd|PC|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|adder|addsloop:9:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(12),
	datad => \fd|PC|DOUT\(11),
	combout => \fd|adder|addsloop:12:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y24_N2
\fd|adder|addsloop:10:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:10:add1to31|w3~combout\ = (\fd|PC|DOUT\(8) & (\fd|adder|addsloop:7:add1to31|w3~combout\ & (\fd|PC|DOUT\(9) & \fd|PC|DOUT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|adder|addsloop:7:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(9),
	datad => \fd|PC|DOUT\(10),
	combout => \fd|adder|addsloop:10:add1to31|w3~combout\);

-- Location: LCCOMB_X56_Y24_N10
\fd|adder2|addsloop:12:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:12:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:11:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(12) $ (((\fd|PC|DOUT\(11) & \fd|adder|addsloop:10:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(12),
	datab => \fd|adder2|addsloop:11:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(11),
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:12:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y24_N14
\fd|MuxPC|selected[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[13]~5_combout\ = (\fd|beqAnd~11_combout\ & (\fd|Rom|content~27_combout\ $ (\fd|adder2|addsloop:12:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~27_combout\,
	datac => \fd|adder2|addsloop:12:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[13]~5_combout\);

-- Location: LCCOMB_X60_Y24_N14
\fd|MuxPC|selected[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[13]~6_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:12:add1to31|w3~combout\ $ (\fd|PC|DOUT\(13) $ (\fd|MuxPC|selected[13]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(13),
	datad => \fd|MuxPC|selected[13]~5_combout\,
	combout => \fd|MuxPC|selected[13]~6_combout\);

-- Location: FF_X60_Y24_N15
\fd|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(13));

-- Location: LCCOMB_X56_Y24_N14
\fd|adder|addsloop:15:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:15:add1to31|soma~combout\ = \fd|PC|DOUT\(15) $ (((\fd|PC|DOUT\(14) & (\fd|adder|addsloop:12:add1to31|w3~combout\ & \fd|PC|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|PC|DOUT\(15),
	datac => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(13),
	combout => \fd|adder|addsloop:15:add1to31|soma~combout\);

-- Location: LCCOMB_X56_Y24_N16
\fd|adder|addsloop:13:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:13:add1to31|w3~combout\ = (\fd|PC|DOUT\(12) & (\fd|PC|DOUT\(13) & (\fd|PC|DOUT\(11) & \fd|adder|addsloop:10:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(12),
	datab => \fd|PC|DOUT\(13),
	datac => \fd|PC|DOUT\(11),
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:13:add1to31|w3~combout\);

-- Location: LCCOMB_X56_Y24_N20
\fd|adder2|addsloop:13:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:13:add1to31|vaium~0_combout\ = (\fd|Rom|content~27_combout\ & ((\fd|adder2|addsloop:12:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:12:add1to31|w3~combout\ $ (\fd|PC|DOUT\(13))))) # (!\fd|Rom|content~27_combout\ & 
-- (\fd|adder2|addsloop:12:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:12:add1to31|w3~combout\ $ (\fd|PC|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~27_combout\,
	datab => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(13),
	datad => \fd|adder2|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y24_N30
\fd|adder2|addsloop:14:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ = (\fd|Rom|content~29_combout\ & ((\fd|adder2|addsloop:13:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:13:add1to31|w3~combout\ $ (\fd|PC|DOUT\(14))))) # (!\fd|Rom|content~29_combout\ & 
-- (\fd|adder2|addsloop:13:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:13:add1to31|w3~combout\ $ (\fd|PC|DOUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~29_combout\,
	datab => \fd|adder|addsloop:13:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(14),
	datad => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y24_N24
\fd|adder|addsloop:14:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:14:add1to31|w3~combout\ = (\fd|adder|addsloop:12:add1to31|w3~combout\ & (\fd|PC|DOUT\(14) & \fd|PC|DOUT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(14),
	datad => \fd|PC|DOUT\(13),
	combout => \fd|adder|addsloop:14:add1to31|w3~combout\);

-- Location: LCCOMB_X56_Y24_N28
\fd|adder2|addsloop:15:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:15:add1to31|soma~combout\ = \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ $ (\fd|PC|DOUT\(15) $ (\fd|Rom|content~31_combout\ $ (\fd|adder|addsloop:14:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\,
	datab => \fd|PC|DOUT\(15),
	datac => \fd|Rom|content~31_combout\,
	datad => \fd|adder|addsloop:14:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:15:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N16
\fd|PC|DOUT[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[15]~0_combout\ = (\fd|beqAnd~11_combout\ & ((\fd|adder2|addsloop:15:add1to31|soma~combout\))) # (!\fd|beqAnd~11_combout\ & (\fd|adder|addsloop:15:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:15:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[15]~0_combout\);

-- Location: FF_X57_Y24_N17
\fd|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[15]~0_combout\,
	asdata => \fd|Rom|content~27_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(15));

-- Location: LCCOMB_X58_Y24_N0
\fd|Rom|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~2_combout\ = (!\fd|PC|DOUT\(8) & (!\fd|PC|DOUT\(10) & (!\fd|PC|DOUT\(15) & !\fd|PC|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|PC|DOUT\(10),
	datac => \fd|PC|DOUT\(15),
	datad => \fd|PC|DOUT\(9),
	combout => \fd|Rom|content~2_combout\);

-- Location: LCCOMB_X59_Y25_N18
\fd|Rom|content~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~22_combout\ = (\fd|PC|DOUT\(0) & (((!\fd|PC|DOUT\(2) & \fd|PC|DOUT\(3))))) # (!\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) & !\fd|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~22_combout\);

-- Location: LCCOMB_X59_Y25_N20
\fd|Rom|content~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~23_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~3_combout\ & \fd|Rom|content~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~3_combout\,
	datad => \fd|Rom|content~22_combout\,
	combout => \fd|Rom|content~23_combout\);

-- Location: LCCOMB_X57_Y24_N26
\fd|adder2|addsloop:5:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ = (\fd|Rom|content~23_combout\ & ((\fd|adder2|addsloop:4:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:4:add1to31|w3~combout\ $ (\fd|PC|DOUT\(5))))) # (!\fd|Rom|content~23_combout\ & 
-- (\fd|adder2|addsloop:4:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:4:add1to31|w3~combout\ $ (\fd|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~23_combout\,
	datab => \fd|adder|addsloop:4:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y24_N22
\fd|adder2|addsloop:6:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:6:add1to31|soma~combout\ = \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ $ (\fd|PC|DOUT\(6) $ (((\fd|PC|DOUT\(5) & \fd|adder|addsloop:4:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	datab => \fd|PC|DOUT\(6),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:6:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N24
\fd|adder|addsloop:6:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:6:add1to31|soma~combout\ = \fd|PC|DOUT\(6) $ (((\fd|PC|DOUT\(4) & (\fd|PC|DOUT\(5) & \fd|adder|addsloop:3:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|PC|DOUT\(5),
	datac => \fd|PC|DOUT\(6),
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:6:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y24_N14
\fd|PC|DOUT[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[6]~3_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:6:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:6:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:6:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:6:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[6]~3_combout\);

-- Location: FF_X57_Y24_N15
\fd|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[6]~3_combout\,
	asdata => \fd|Rom|content~21_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(6));

-- Location: LCCOMB_X58_Y24_N10
\fd|Rom|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~3_combout\ = (!\fd|PC|DOUT\(6) & (!\fd|PC|DOUT\(5) & (!\fd|PC|DOUT\(4) & !\fd|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(6),
	datab => \fd|PC|DOUT\(5),
	datac => \fd|PC|DOUT\(4),
	datad => \fd|PC|DOUT\(7),
	combout => \fd|Rom|content~3_combout\);

-- Location: LCCOMB_X58_Y24_N2
\fd|Rom|content~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~6_combout\ = (((\fd|Rom|content~5_combout\) # (!\fd|Rom|content~1_combout\)) # (!\fd|Rom|content~2_combout\)) # (!\fd|Rom|content~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~3_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~5_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~6_combout\);

-- Location: LCCOMB_X58_Y25_N0
\ucfd|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal4~0_combout\ = (\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & ((!\fd|PC|DOUT\(0)) # (!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \ucfd|Equal4~0_combout\);

-- Location: LCCOMB_X56_Y24_N8
\fd|adder|addsloop:14:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:14:add1to31|soma~combout\ = \fd|PC|DOUT\(14) $ (((\fd|adder|addsloop:12:add1to31|w3~combout\ & \fd|PC|DOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(14),
	datad => \fd|PC|DOUT\(13),
	combout => \fd|adder|addsloop:14:add1to31|soma~combout\);

-- Location: LCCOMB_X56_Y24_N18
\fd|adder2|addsloop:14:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:14:add1to31|soma~combout\ = \fd|Rom|content~29_combout\ $ (\fd|adder2|addsloop:13:add1to31|vaium~0_combout\ $ (\fd|PC|DOUT\(14) $ (\fd|adder|addsloop:13:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~29_combout\,
	datab => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(14),
	datad => \fd|adder|addsloop:13:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:14:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y24_N12
\fd|MuxPC|selected[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[14]~4_combout\ = (!\ucfd|Equal4~0_combout\ & ((\fd|beqAnd~11_combout\ & ((\fd|adder2|addsloop:14:add1to31|soma~combout\))) # (!\fd|beqAnd~11_combout\ & (\fd|adder|addsloop:14:add1to31|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder|addsloop:14:add1to31|soma~combout\,
	datac => \fd|adder2|addsloop:14:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[14]~4_combout\);

-- Location: FF_X60_Y24_N13
\fd|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(14));

-- Location: LCCOMB_X60_Y24_N18
\fd|Rom|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~1_combout\ = (!\fd|PC|DOUT\(14) & (!\fd|PC|DOUT\(11) & (!\fd|PC|DOUT\(13) & !\fd|PC|DOUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|PC|DOUT\(11),
	datac => \fd|PC|DOUT\(13),
	datad => \fd|PC|DOUT\(12),
	combout => \fd|Rom|content~1_combout\);

-- Location: LCCOMB_X58_Y25_N26
\fd|Rom|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~4_combout\ = ((\fd|Rom|content~0_combout\) # ((!\fd|Rom|content~2_combout\) # (!\fd|Rom|content~3_combout\))) # (!\fd|Rom|content~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~3_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~4_combout\);

-- Location: LCCOMB_X58_Y25_N6
\ucfd|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal1~0_combout\ = (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & ((!\fd|Rom|content~8_combout\) # (!\fd|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|Rom|content~8_combout\,
	combout => \ucfd|Equal1~0_combout\);

-- Location: LCCOMB_X63_Y24_N10
\fd|Ram|ram_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fd|Ram|ram_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X63_Y24_N11
\fd|Ram|ram_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Ram|ram_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(12));

-- Location: FF_X63_Y24_N29
\fd|Ram|ram_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|muxB|selected[0]~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Ram|ram_rtl_0_bypass\(11));

-- Location: LCCOMB_X63_Y24_N20
\fd|MuxRegRam|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[0]~0_combout\ = (\fd|Ram|ram_rtl_0_bypass\(12) & ((\fd|Ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\fd|Ram|ram_rtl_0_bypass\(12) & (\fd|Ram|ram_rtl_0_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Ram|ram_rtl_0_bypass\(12),
	datab => \fd|Ram|ram_rtl_0_bypass\(11),
	datac => \fd|Ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \fd|MuxRegRam|selected[0]~0_combout\);

-- Location: LCCOMB_X58_Y23_N18
\fd|MuxRegRam|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[0]~1_combout\ = (\ucfd|Equal1~0_combout\ & (\fd|MuxRegRam|selected[0]~0_combout\)) # (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxRegRam|selected[0]~0_combout\,
	datad => \fd|ALU|final|selected[0]~61_combout\,
	combout => \fd|MuxRegRam|selected[0]~1_combout\);

-- Location: FF_X58_Y20_N29
\fd|BankRegister|add1to1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(0));

-- Location: LCCOMB_X56_Y24_N22
\fd|adder2|addsloop:15:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:15:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:14:add1to31|vaium~0_combout\ & ((\fd|Rom|content~31_combout\) # (\fd|PC|DOUT\(15) $ (\fd|adder|addsloop:14:add1to31|w3~combout\)))) # 
-- (!\fd|adder2|addsloop:14:add1to31|vaium~0_combout\ & (\fd|Rom|content~31_combout\ & (\fd|PC|DOUT\(15) $ (\fd|adder|addsloop:14:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\,
	datab => \fd|PC|DOUT\(15),
	datac => \fd|Rom|content~31_combout\,
	datad => \fd|adder|addsloop:14:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:15:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y24_N2
\fd|adder|addsloop:15:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:15:add1to31|w3~combout\ = (\fd|PC|DOUT\(14) & (\fd|PC|DOUT\(15) & (\fd|adder|addsloop:12:add1to31|w3~combout\ & \fd|PC|DOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|PC|DOUT\(15),
	datac => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(13),
	combout => \fd|adder|addsloop:15:add1to31|w3~combout\);

-- Location: LCCOMB_X56_Y24_N12
\fd|adder2|addsloop:16:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:16:add1to31|soma~combout\ = \fd|PC|DOUT\(16) $ (\fd|adder2|addsloop:15:add1to31|vaium~0_combout\ $ (\fd|adder|addsloop:15:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(16),
	datac => \fd|adder2|addsloop:15:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:15:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:16:add1to31|soma~combout\);

-- Location: LCCOMB_X56_Y24_N4
\fd|adder|addsloop:16:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:16:add1to31|soma~combout\ = \fd|PC|DOUT\(16) $ (\fd|adder|addsloop:15:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(16),
	datad => \fd|adder|addsloop:15:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:16:add1to31|soma~combout\);

-- Location: LCCOMB_X56_Y24_N0
\fd|PC|DOUT[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[16]~6_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:16:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:16:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:16:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:16:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[16]~6_combout\);

-- Location: FF_X56_Y24_N1
\fd|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[16]~6_combout\,
	asdata => \fd|Rom|content~29_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(16));

-- Location: LCCOMB_X56_Y24_N26
\fd|adder|addsloop:16:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:16:add1to31|w3~combout\ = (\fd|PC|DOUT\(14) & (\fd|PC|DOUT\(15) & (\fd|PC|DOUT\(16) & \fd|adder|addsloop:13:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|PC|DOUT\(15),
	datac => \fd|PC|DOUT\(16),
	datad => \fd|adder|addsloop:13:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:16:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y26_N0
\fd|adder2|addsloop:16:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:16:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:15:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(16) $ (((\fd|PC|DOUT\(15) & \fd|adder|addsloop:14:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(16),
	datab => \fd|PC|DOUT\(15),
	datac => \fd|adder2|addsloop:15:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:14:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y26_N26
\fd|adder2|addsloop:17:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:17:add1to31|soma~combout\ = \fd|PC|DOUT\(17) $ (\fd|adder|addsloop:16:add1to31|w3~combout\ $ (\fd|adder2|addsloop:16:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(17),
	datac => \fd|adder|addsloop:16:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:17:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y26_N10
\fd|adder|addsloop:17:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:17:add1to31|soma~combout\ = \fd|PC|DOUT\(17) $ (((\fd|adder|addsloop:15:add1to31|w3~combout\ & \fd|PC|DOUT\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(16),
	datad => \fd|PC|DOUT\(17),
	combout => \fd|adder|addsloop:17:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y26_N16
\fd|PC|DOUT[17]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[17]~7_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:17:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:17:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:17:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:17:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[17]~7_combout\);

-- Location: FF_X59_Y26_N17
\fd|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[17]~7_combout\,
	asdata => \fd|Rom|content~31_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(17));

-- Location: LCCOMB_X59_Y26_N2
\fd|adder2|addsloop:17:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:17:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:16:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(17) $ (((\fd|adder|addsloop:15:add1to31|w3~combout\ & \fd|PC|DOUT\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(17),
	datac => \fd|PC|DOUT\(16),
	datad => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:17:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y26_N8
\fd|adder|addsloop:18:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:18:add1to31|soma~combout\ = \fd|PC|DOUT\(18) $ (((\fd|adder|addsloop:15:add1to31|w3~combout\ & (\fd|PC|DOUT\(17) & \fd|PC|DOUT\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(17),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|PC|DOUT\(16),
	combout => \fd|adder|addsloop:18:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y26_N22
\fd|MuxPC|selected[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[18]~11_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:18:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:17:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:17:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:18:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[18]~11_combout\);

-- Location: FF_X59_Y26_N23
\fd|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[18]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(18));

-- Location: LCCOMB_X59_Y26_N24
\fd|adder|addsloop:18:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:18:add1to31|w3~combout\ = (\fd|adder|addsloop:15:add1to31|w3~combout\ & (\fd|PC|DOUT\(17) & (\fd|PC|DOUT\(18) & \fd|PC|DOUT\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(17),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|PC|DOUT\(16),
	combout => \fd|adder|addsloop:18:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y26_N18
\fd|adder|addsloop:19:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:19:add1to31|soma~combout\ = \fd|PC|DOUT\(19) $ (\fd|adder|addsloop:18:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(19),
	datad => \fd|adder|addsloop:18:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:19:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y26_N4
\fd|adder2|addsloop:18:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:18:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(18) & (\fd|adder2|addsloop:16:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:16:add1to31|w3~combout\ $ (\fd|PC|DOUT\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:16:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(17),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:18:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y26_N28
\fd|MuxPC|selected[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[19]~12_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:19:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:18:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder|addsloop:19:add1to31|soma~combout\,
	datac => \fd|adder2|addsloop:18:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[19]~12_combout\);

-- Location: FF_X59_Y26_N29
\fd|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[19]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(19));

-- Location: LCCOMB_X59_Y26_N14
\fd|adder|addsloop:19:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:19:add1to31|w3~combout\ = (\fd|adder|addsloop:16:add1to31|w3~combout\ & (\fd|PC|DOUT\(19) & (\fd|PC|DOUT\(18) & \fd|PC|DOUT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:16:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(19),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|PC|DOUT\(17),
	combout => \fd|adder|addsloop:19:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y26_N12
\fd|adder|addsloop:17:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:17:add1to31|w3~combout\ = (\fd|PC|DOUT\(16) & (\fd|PC|DOUT\(17) & (\fd|PC|DOUT\(15) & \fd|adder|addsloop:14:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(16),
	datab => \fd|PC|DOUT\(17),
	datac => \fd|PC|DOUT\(15),
	datad => \fd|adder|addsloop:14:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:17:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y26_N6
\fd|adder2|addsloop:19:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:19:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(19) & (\fd|adder2|addsloop:17:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:17:add1to31|w3~combout\ $ (\fd|PC|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:17:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(19),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|adder2|addsloop:17:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:19:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y26_N10
\fd|adder2|addsloop:20:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:20:add1to31|soma~combout\ = \fd|adder|addsloop:19:add1to31|w3~combout\ $ (\fd|adder2|addsloop:19:add1to31|vaium~0_combout\ $ (\fd|PC|DOUT\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:19:add1to31|w3~combout\,
	datac => \fd|adder2|addsloop:19:add1to31|vaium~0_combout\,
	datad => \fd|PC|DOUT\(20),
	combout => \fd|adder2|addsloop:20:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y26_N4
\fd|adder|addsloop:20:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:20:add1to31|soma~combout\ = \fd|PC|DOUT\(20) $ (((\fd|adder|addsloop:18:add1to31|w3~combout\ & \fd|PC|DOUT\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:18:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(19),
	datad => \fd|PC|DOUT\(20),
	combout => \fd|adder|addsloop:20:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y26_N28
\fd|PC|DOUT[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[20]~8_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:20:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:20:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:20:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:20:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[20]~8_combout\);

-- Location: FF_X60_Y26_N29
\fd|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[20]~8_combout\,
	asdata => \fd|Rom|content~15_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(20));

-- Location: LCCOMB_X59_Y26_N20
\fd|adder|addsloop:20:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:20:add1to31|w3~combout\ = (\fd|adder|addsloop:17:add1to31|w3~combout\ & (\fd|PC|DOUT\(19) & (\fd|PC|DOUT\(18) & \fd|PC|DOUT\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:17:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(19),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|PC|DOUT\(20),
	combout => \fd|adder|addsloop:20:add1to31|w3~combout\);

-- Location: LCCOMB_X60_Y26_N18
\fd|adder2|addsloop:20:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:20:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(20) & (\fd|adder2|addsloop:18:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(19) $ (\fd|adder|addsloop:18:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(19),
	datab => \fd|PC|DOUT\(20),
	datac => \fd|adder2|addsloop:18:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:18:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:20:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y26_N12
\fd|adder2|addsloop:21:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:21:add1to31|soma~combout\ = \fd|adder|addsloop:20:add1to31|w3~combout\ $ (\fd|PC|DOUT\(21) $ (\fd|adder2|addsloop:20:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:20:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(21),
	datad => \fd|adder2|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:21:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y26_N8
\fd|adder|addsloop:21:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:21:add1to31|soma~combout\ = \fd|PC|DOUT\(21) $ (((\fd|PC|DOUT\(19) & (\fd|adder|addsloop:18:add1to31|w3~combout\ & \fd|PC|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(19),
	datab => \fd|adder|addsloop:18:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(21),
	datad => \fd|PC|DOUT\(20),
	combout => \fd|adder|addsloop:21:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y26_N2
\fd|PC|DOUT[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[21]~9_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:21:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:21:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:21:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:21:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[21]~9_combout\);

-- Location: FF_X60_Y26_N3
\fd|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[21]~9_combout\,
	asdata => \fd|Rom|content~17_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(21));

-- Location: LCCOMB_X60_Y26_N6
\fd|adder|addsloop:21:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:21:add1to31|w3~combout\ = (\fd|PC|DOUT\(19) & (\fd|adder|addsloop:18:add1to31|w3~combout\ & (\fd|PC|DOUT\(21) & \fd|PC|DOUT\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(19),
	datab => \fd|adder|addsloop:18:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(21),
	datad => \fd|PC|DOUT\(20),
	combout => \fd|adder|addsloop:21:add1to31|w3~combout\);

-- Location: LCCOMB_X60_Y26_N16
\fd|adder|addsloop:22:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:22:add1to31|soma~combout\ = \fd|adder|addsloop:21:add1to31|w3~combout\ $ (\fd|PC|DOUT\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(22),
	combout => \fd|adder|addsloop:22:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y26_N26
\fd|adder2|addsloop:21:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:21:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(21) & (\fd|adder2|addsloop:19:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:19:add1to31|w3~combout\ $ (\fd|PC|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:19:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(21),
	datac => \fd|adder2|addsloop:19:add1to31|vaium~0_combout\,
	datad => \fd|PC|DOUT\(20),
	combout => \fd|adder2|addsloop:21:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y26_N24
\fd|MuxPC|selected[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[22]~13_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:22:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:21:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:22:add1to31|soma~combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder2|addsloop:21:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[22]~13_combout\);

-- Location: FF_X60_Y26_N25
\fd|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[22]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(22));

-- Location: LCCOMB_X60_Y26_N20
\fd|adder|addsloop:23:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:23:add1to31|soma~combout\ = \fd|PC|DOUT\(23) $ (((\fd|adder|addsloop:21:add1to31|w3~combout\ & \fd|PC|DOUT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(23),
	datad => \fd|PC|DOUT\(22),
	combout => \fd|adder|addsloop:23:add1to31|soma~combout\);

-- Location: LCCOMB_X60_Y26_N30
\fd|adder2|addsloop:22:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:22:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(22) & (\fd|adder2|addsloop:20:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:20:add1to31|w3~combout\ $ (\fd|PC|DOUT\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(22),
	datab => \fd|adder|addsloop:20:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(21),
	datad => \fd|adder2|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:22:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X60_Y26_N22
\fd|MuxPC|selected[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[23]~14_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:23:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:22:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:23:add1to31|soma~combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder2|addsloop:22:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[23]~14_combout\);

-- Location: FF_X60_Y26_N23
\fd|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[23]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(23));

-- Location: LCCOMB_X61_Y26_N8
\fd|adder2|addsloop:23:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:23:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:21:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(23) & (\fd|adder|addsloop:21:add1to31|w3~combout\ $ (\fd|PC|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:21:add1to31|vaium~0_combout\,
	datab => \fd|PC|DOUT\(23),
	datac => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(22),
	combout => \fd|adder2|addsloop:23:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y26_N26
\fd|adder|addsloop:24:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:24:add1to31|soma~combout\ = \fd|PC|DOUT\(24) $ (((\fd|PC|DOUT\(23) & (\fd|PC|DOUT\(22) & \fd|adder|addsloop:21:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder|addsloop:24:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N16
\fd|MuxPC|selected[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[24]~15_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:24:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:23:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:23:add1to31|vaium~0_combout\,
	datac => \fd|beqAnd~11_combout\,
	datad => \fd|adder|addsloop:24:add1to31|soma~combout\,
	combout => \fd|MuxPC|selected[24]~15_combout\);

-- Location: FF_X61_Y26_N17
\fd|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(24));

-- Location: LCCOMB_X61_Y26_N30
\fd|adder|addsloop:24:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:24:add1to31|w3~combout\ = (\fd|PC|DOUT\(23) & (\fd|PC|DOUT\(22) & (\fd|adder|addsloop:21:add1to31|w3~combout\ & \fd|PC|DOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder|addsloop:24:add1to31|w3~combout\);

-- Location: LCCOMB_X60_Y26_N0
\fd|adder|addsloop:22:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:22:add1to31|w3~combout\ = (\fd|adder|addsloop:19:add1to31|w3~combout\ & (\fd|PC|DOUT\(20) & (\fd|PC|DOUT\(21) & \fd|PC|DOUT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:19:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(20),
	datac => \fd|PC|DOUT\(21),
	datad => \fd|PC|DOUT\(22),
	combout => \fd|adder|addsloop:22:add1to31|w3~combout\);

-- Location: LCCOMB_X61_Y26_N10
\fd|adder2|addsloop:24:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:24:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(24) & (\fd|adder2|addsloop:22:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(23) $ (\fd|adder|addsloop:22:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(24),
	datac => \fd|adder|addsloop:22:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:24:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y26_N4
\fd|adder2|addsloop:25:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:25:add1to31|soma~combout\ = \fd|PC|DOUT\(25) $ (\fd|adder|addsloop:24:add1to31|w3~combout\ $ (\fd|adder2|addsloop:24:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(25),
	datac => \fd|adder|addsloop:24:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:25:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N28
\fd|adder|addsloop:25:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:25:add1to31|soma~combout\ = \fd|adder|addsloop:24:add1to31|w3~combout\ $ (\fd|PC|DOUT\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|adder|addsloop:24:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(25),
	combout => \fd|adder|addsloop:25:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N0
\fd|PC|DOUT[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[25]~10_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:25:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:25:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:25:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:25:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[25]~10_combout\);

-- Location: FF_X61_Y26_N1
\fd|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[25]~10_combout\,
	asdata => \fd|Rom|content~11_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(25));

-- Location: LCCOMB_X61_Y26_N20
\fd|adder|addsloop:25:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:25:add1to31|w3~combout\ = (\fd|PC|DOUT\(24) & (\fd|PC|DOUT\(23) & (\fd|adder|addsloop:22:add1to31|w3~combout\ & \fd|PC|DOUT\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(24),
	datab => \fd|PC|DOUT\(23),
	datac => \fd|adder|addsloop:22:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(25),
	combout => \fd|adder|addsloop:25:add1to31|w3~combout\);

-- Location: LCCOMB_X60_Y26_N14
\fd|adder|addsloop:23:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:23:add1to31|w3~combout\ = (\fd|PC|DOUT\(23) & (\fd|PC|DOUT\(22) & (\fd|PC|DOUT\(21) & \fd|adder|addsloop:20:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|PC|DOUT\(21),
	datad => \fd|adder|addsloop:20:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:23:add1to31|w3~combout\);

-- Location: LCCOMB_X61_Y26_N2
\fd|adder2|addsloop:25:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:25:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(25) & (\fd|adder2|addsloop:23:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:23:add1to31|w3~combout\ $ (\fd|PC|DOUT\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:23:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(25),
	datac => \fd|adder2|addsloop:23:add1to31|vaium~0_combout\,
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder2|addsloop:25:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X61_Y26_N12
\fd|adder2|addsloop:26:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:26:add1to31|soma~combout\ = \fd|adder|addsloop:25:add1to31|w3~combout\ $ (\fd|PC|DOUT\(26) $ (\fd|adder2|addsloop:25:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:25:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(26),
	datad => \fd|adder2|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:26:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N18
\fd|adder|addsloop:26:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:26:add1to31|soma~combout\ = \fd|PC|DOUT\(26) $ (((\fd|adder|addsloop:24:add1to31|w3~combout\ & \fd|PC|DOUT\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:24:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(26),
	datad => \fd|PC|DOUT\(25),
	combout => \fd|adder|addsloop:26:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N22
\fd|PC|DOUT[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[26]~11_combout\ = (\fd|beqAnd~11_combout\ & (\fd|adder2|addsloop:26:add1to31|soma~combout\)) # (!\fd|beqAnd~11_combout\ & ((\fd|adder|addsloop:26:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:26:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:26:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|PC|DOUT[26]~11_combout\);

-- Location: FF_X61_Y26_N23
\fd|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[26]~11_combout\,
	asdata => \fd|Rom|content~8_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(26));

-- Location: LCCOMB_X61_Y26_N6
\fd|adder2|addsloop:26:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:26:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(26) & (\fd|adder2|addsloop:24:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:24:add1to31|w3~combout\ $ (\fd|PC|DOUT\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:24:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(25),
	datac => \fd|PC|DOUT\(26),
	datad => \fd|adder2|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:26:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X65_Y24_N8
\fd|adder|addsloop:27:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:27:add1to31|soma~combout\ = \fd|PC|DOUT\(27) $ (((\fd|PC|DOUT\(25) & (\fd|PC|DOUT\(26) & \fd|adder|addsloop:24:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(25),
	datac => \fd|PC|DOUT\(26),
	datad => \fd|adder|addsloop:24:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:27:add1to31|soma~combout\);

-- Location: LCCOMB_X65_Y24_N4
\fd|MuxPC|selected[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[27]~16_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:27:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:26:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:26:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:27:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[27]~16_combout\);

-- Location: FF_X65_Y24_N5
\fd|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(27));

-- Location: LCCOMB_X65_Y24_N18
\fd|adder|addsloop:27:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:27:add1to31|w3~combout\ = (\fd|PC|DOUT\(27) & (\fd|PC|DOUT\(25) & (\fd|PC|DOUT\(26) & \fd|adder|addsloop:24:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(25),
	datac => \fd|PC|DOUT\(26),
	datad => \fd|adder|addsloop:24:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:27:add1to31|w3~combout\);

-- Location: LCCOMB_X65_Y24_N12
\fd|adder|addsloop:28:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:28:add1to31|soma~combout\ = \fd|PC|DOUT\(28) $ (\fd|adder|addsloop:27:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(28),
	datad => \fd|adder|addsloop:27:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:28:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N24
\fd|adder2|addsloop:27:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:27:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(27) & (\fd|adder2|addsloop:25:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:25:add1to31|w3~combout\ $ (\fd|PC|DOUT\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|adder|addsloop:25:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(26),
	datad => \fd|adder2|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:27:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X65_Y24_N2
\fd|MuxPC|selected[28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[28]~17_combout\ = \fd|adder|addsloop:28:add1to31|soma~combout\ $ (((!\ucfd|Equal4~0_combout\ & (\fd|adder2|addsloop:27:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:28:add1to31|soma~combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder2|addsloop:27:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[28]~17_combout\);

-- Location: FF_X65_Y24_N3
\fd|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(28));

-- Location: LCCOMB_X65_Y24_N10
\fd|adder|addsloop:29:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:29:add1to31|soma~combout\ = \fd|PC|DOUT\(29) $ (((\fd|PC|DOUT\(28) & \fd|adder|addsloop:27:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(29),
	datab => \fd|PC|DOUT\(28),
	datad => \fd|adder|addsloop:27:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:29:add1to31|soma~combout\);

-- Location: LCCOMB_X61_Y26_N14
\fd|adder|addsloop:26:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:26:add1to31|w3~combout\ = (\fd|adder|addsloop:23:add1to31|w3~combout\ & (\fd|PC|DOUT\(25) & (\fd|PC|DOUT\(26) & \fd|PC|DOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:23:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(25),
	datac => \fd|PC|DOUT\(26),
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder|addsloop:26:add1to31|w3~combout\);

-- Location: LCCOMB_X65_Y24_N16
\fd|adder2|addsloop:28:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:28:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(28) & (\fd|adder2|addsloop:26:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(27) $ (\fd|adder|addsloop:26:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(28),
	datac => \fd|adder|addsloop:26:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:26:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:28:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X65_Y24_N0
\fd|MuxPC|selected[29]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[29]~18_combout\ = \fd|adder|addsloop:29:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:28:add1to31|vaium~0_combout\ & (!\ucfd|Equal4~0_combout\ & \fd|beqAnd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:29:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:28:add1to31|vaium~0_combout\,
	datac => \ucfd|Equal4~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[29]~18_combout\);

-- Location: FF_X65_Y24_N1
\fd|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[29]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(29));

-- Location: LCCOMB_X65_Y24_N20
\fd|adder2|addsloop:29:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:29:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(29) & (\fd|adder2|addsloop:27:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(28) $ (\fd|adder|addsloop:27:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(29),
	datab => \fd|PC|DOUT\(28),
	datac => \fd|adder2|addsloop:27:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:27:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:29:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X65_Y24_N30
\fd|adder|addsloop:30:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:30:add1to31|soma~combout\ = \fd|PC|DOUT\(30) $ (((\fd|PC|DOUT\(29) & (\fd|PC|DOUT\(28) & \fd|adder|addsloop:27:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(29),
	datab => \fd|PC|DOUT\(28),
	datac => \fd|PC|DOUT\(30),
	datad => \fd|adder|addsloop:27:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:30:add1to31|soma~combout\);

-- Location: LCCOMB_X65_Y24_N26
\fd|MuxPC|selected[30]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[30]~19_combout\ = \fd|adder|addsloop:30:add1to31|soma~combout\ $ (((!\ucfd|Equal4~0_combout\ & (\fd|adder2|addsloop:29:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:29:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:30:add1to31|soma~combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[30]~19_combout\);

-- Location: FF_X65_Y24_N27
\fd|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[30]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(30));

-- Location: LCCOMB_X65_Y24_N6
\fd|adder|addsloop:28:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:28:add1to31|w3~combout\ = (\fd|PC|DOUT\(28) & (\fd|adder|addsloop:26:add1to31|w3~combout\ & \fd|PC|DOUT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(28),
	datac => \fd|adder|addsloop:26:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(27),
	combout => \fd|adder|addsloop:28:add1to31|w3~combout\);

-- Location: LCCOMB_X65_Y24_N28
\fd|adder|addsloop:31:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:31:add1to31|soma~combout\ = \fd|PC|DOUT\(31) $ (((\fd|PC|DOUT\(29) & (\fd|PC|DOUT\(30) & \fd|adder|addsloop:28:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(29),
	datab => \fd|PC|DOUT\(31),
	datac => \fd|PC|DOUT\(30),
	datad => \fd|adder|addsloop:28:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:31:add1to31|soma~combout\);

-- Location: LCCOMB_X65_Y24_N14
\fd|adder2|addsloop:30:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:30:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(30) & (\fd|adder2|addsloop:28:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:28:add1to31|w3~combout\ $ (\fd|PC|DOUT\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:28:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(30),
	datac => \fd|PC|DOUT\(29),
	datad => \fd|adder2|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:30:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X65_Y24_N24
\fd|MuxPC|selected[31]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[31]~20_combout\ = \fd|adder|addsloop:31:add1to31|soma~combout\ $ (((!\ucfd|Equal4~0_combout\ & (\fd|adder2|addsloop:30:add1to31|vaium~0_combout\ & \fd|beqAnd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder|addsloop:31:add1to31|soma~combout\,
	datac => \fd|adder2|addsloop:30:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|MuxPC|selected[31]~20_combout\);

-- Location: FF_X65_Y24_N25
\fd|PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[31]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(31));

-- Location: LCCOMB_X59_Y24_N12
\fd|MuxSaidaBankRegister|selected[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~35_combout\ = (\fd|MuxSaidaBankRegister|selected[0]~3_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|content~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~3_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datad => \fd|Rom|content~13_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~35_combout\);

ww_otR1(0) <= \otR1[0]~output_o\;

ww_otR1(1) <= \otR1[1]~output_o\;

ww_otR1(2) <= \otR1[2]~output_o\;

ww_otR1(3) <= \otR1[3]~output_o\;

ww_otR1(4) <= \otR1[4]~output_o\;

ww_otR1(5) <= \otR1[5]~output_o\;

ww_otR1(6) <= \otR1[6]~output_o\;

ww_otR1(7) <= \otR1[7]~output_o\;

ww_otR1(8) <= \otR1[8]~output_o\;

ww_otR1(9) <= \otR1[9]~output_o\;

ww_otR1(10) <= \otR1[10]~output_o\;

ww_otR1(11) <= \otR1[11]~output_o\;

ww_otR1(12) <= \otR1[12]~output_o\;

ww_otR1(13) <= \otR1[13]~output_o\;

ww_otR1(14) <= \otR1[14]~output_o\;

ww_otR1(15) <= \otR1[15]~output_o\;

ww_otR1(16) <= \otR1[16]~output_o\;

ww_otR1(17) <= \otR1[17]~output_o\;

ww_otR1(18) <= \otR1[18]~output_o\;

ww_otR1(19) <= \otR1[19]~output_o\;

ww_otR1(20) <= \otR1[20]~output_o\;

ww_otR1(21) <= \otR1[21]~output_o\;

ww_otR1(22) <= \otR1[22]~output_o\;

ww_otR1(23) <= \otR1[23]~output_o\;

ww_otR1(24) <= \otR1[24]~output_o\;

ww_otR1(25) <= \otR1[25]~output_o\;

ww_otR1(26) <= \otR1[26]~output_o\;

ww_otR1(27) <= \otR1[27]~output_o\;

ww_otR1(28) <= \otR1[28]~output_o\;

ww_otR1(29) <= \otR1[29]~output_o\;

ww_otR1(30) <= \otR1[30]~output_o\;

ww_otR1(31) <= \otR1[31]~output_o\;

ww_otR2(0) <= \otR2[0]~output_o\;

ww_otR2(1) <= \otR2[1]~output_o\;

ww_otR2(2) <= \otR2[2]~output_o\;

ww_otR2(3) <= \otR2[3]~output_o\;

ww_otR2(4) <= \otR2[4]~output_o\;

ww_otR2(5) <= \otR2[5]~output_o\;

ww_otR2(6) <= \otR2[6]~output_o\;

ww_otR2(7) <= \otR2[7]~output_o\;

ww_otR2(8) <= \otR2[8]~output_o\;

ww_otR2(9) <= \otR2[9]~output_o\;

ww_otR2(10) <= \otR2[10]~output_o\;

ww_otR2(11) <= \otR2[11]~output_o\;

ww_otR2(12) <= \otR2[12]~output_o\;

ww_otR2(13) <= \otR2[13]~output_o\;

ww_otR2(14) <= \otR2[14]~output_o\;

ww_otR2(15) <= \otR2[15]~output_o\;

ww_otR2(16) <= \otR2[16]~output_o\;

ww_otR2(17) <= \otR2[17]~output_o\;

ww_otR2(18) <= \otR2[18]~output_o\;

ww_otR2(19) <= \otR2[19]~output_o\;

ww_otR2(20) <= \otR2[20]~output_o\;

ww_otR2(21) <= \otR2[21]~output_o\;

ww_otR2(22) <= \otR2[22]~output_o\;

ww_otR2(23) <= \otR2[23]~output_o\;

ww_otR2(24) <= \otR2[24]~output_o\;

ww_otR2(25) <= \otR2[25]~output_o\;

ww_otR2(26) <= \otR2[26]~output_o\;

ww_otR2(27) <= \otR2[27]~output_o\;

ww_otR2(28) <= \otR2[28]~output_o\;

ww_otR2(29) <= \otR2[29]~output_o\;

ww_otR2(30) <= \otR2[30]~output_o\;

ww_otR2(31) <= \otR2[31]~output_o\;

ww_otR3(0) <= \otR3[0]~output_o\;

ww_otR3(1) <= \otR3[1]~output_o\;

ww_otR3(2) <= \otR3[2]~output_o\;

ww_otR3(3) <= \otR3[3]~output_o\;

ww_otR3(4) <= \otR3[4]~output_o\;

ww_otR3(5) <= \otR3[5]~output_o\;

ww_otR3(6) <= \otR3[6]~output_o\;

ww_otR3(7) <= \otR3[7]~output_o\;

ww_otR3(8) <= \otR3[8]~output_o\;

ww_otR3(9) <= \otR3[9]~output_o\;

ww_otR3(10) <= \otR3[10]~output_o\;

ww_otR3(11) <= \otR3[11]~output_o\;

ww_otR3(12) <= \otR3[12]~output_o\;

ww_otR3(13) <= \otR3[13]~output_o\;

ww_otR3(14) <= \otR3[14]~output_o\;

ww_otR3(15) <= \otR3[15]~output_o\;

ww_otR3(16) <= \otR3[16]~output_o\;

ww_otR3(17) <= \otR3[17]~output_o\;

ww_otR3(18) <= \otR3[18]~output_o\;

ww_otR3(19) <= \otR3[19]~output_o\;

ww_otR3(20) <= \otR3[20]~output_o\;

ww_otR3(21) <= \otR3[21]~output_o\;

ww_otR3(22) <= \otR3[22]~output_o\;

ww_otR3(23) <= \otR3[23]~output_o\;

ww_otR3(24) <= \otR3[24]~output_o\;

ww_otR3(25) <= \otR3[25]~output_o\;

ww_otR3(26) <= \otR3[26]~output_o\;

ww_otR3(27) <= \otR3[27]~output_o\;

ww_otR3(28) <= \otR3[28]~output_o\;

ww_otR3(29) <= \otR3[29]~output_o\;

ww_otR3(30) <= \otR3[30]~output_o\;

ww_otR3(31) <= \otR3[31]~output_o\;

ww_otR4(0) <= \otR4[0]~output_o\;

ww_otR4(1) <= \otR4[1]~output_o\;

ww_otR4(2) <= \otR4[2]~output_o\;

ww_otR4(3) <= \otR4[3]~output_o\;

ww_otR4(4) <= \otR4[4]~output_o\;

ww_otR4(5) <= \otR4[5]~output_o\;

ww_otR4(6) <= \otR4[6]~output_o\;

ww_otR4(7) <= \otR4[7]~output_o\;

ww_otR4(8) <= \otR4[8]~output_o\;

ww_otR4(9) <= \otR4[9]~output_o\;

ww_otR4(10) <= \otR4[10]~output_o\;

ww_otR4(11) <= \otR4[11]~output_o\;

ww_otR4(12) <= \otR4[12]~output_o\;

ww_otR4(13) <= \otR4[13]~output_o\;

ww_otR4(14) <= \otR4[14]~output_o\;

ww_otR4(15) <= \otR4[15]~output_o\;

ww_otR4(16) <= \otR4[16]~output_o\;

ww_otR4(17) <= \otR4[17]~output_o\;

ww_otR4(18) <= \otR4[18]~output_o\;

ww_otR4(19) <= \otR4[19]~output_o\;

ww_otR4(20) <= \otR4[20]~output_o\;

ww_otR4(21) <= \otR4[21]~output_o\;

ww_otR4(22) <= \otR4[22]~output_o\;

ww_otR4(23) <= \otR4[23]~output_o\;

ww_otR4(24) <= \otR4[24]~output_o\;

ww_otR4(25) <= \otR4[25]~output_o\;

ww_otR4(26) <= \otR4[26]~output_o\;

ww_otR4(27) <= \otR4[27]~output_o\;

ww_otR4(28) <= \otR4[28]~output_o\;

ww_otR4(29) <= \otR4[29]~output_o\;

ww_otR4(30) <= \otR4[30]~output_o\;

ww_otR4(31) <= \otR4[31]~output_o\;

ww_otR5(0) <= \otR5[0]~output_o\;

ww_otR5(1) <= \otR5[1]~output_o\;

ww_otR5(2) <= \otR5[2]~output_o\;

ww_otR5(3) <= \otR5[3]~output_o\;

ww_otR5(4) <= \otR5[4]~output_o\;

ww_otR5(5) <= \otR5[5]~output_o\;

ww_otR5(6) <= \otR5[6]~output_o\;

ww_otR5(7) <= \otR5[7]~output_o\;

ww_otR5(8) <= \otR5[8]~output_o\;

ww_otR5(9) <= \otR5[9]~output_o\;

ww_otR5(10) <= \otR5[10]~output_o\;

ww_otR5(11) <= \otR5[11]~output_o\;

ww_otR5(12) <= \otR5[12]~output_o\;

ww_otR5(13) <= \otR5[13]~output_o\;

ww_otR5(14) <= \otR5[14]~output_o\;

ww_otR5(15) <= \otR5[15]~output_o\;

ww_otR5(16) <= \otR5[16]~output_o\;

ww_otR5(17) <= \otR5[17]~output_o\;

ww_otR5(18) <= \otR5[18]~output_o\;

ww_otR5(19) <= \otR5[19]~output_o\;

ww_otR5(20) <= \otR5[20]~output_o\;

ww_otR5(21) <= \otR5[21]~output_o\;

ww_otR5(22) <= \otR5[22]~output_o\;

ww_otR5(23) <= \otR5[23]~output_o\;

ww_otR5(24) <= \otR5[24]~output_o\;

ww_otR5(25) <= \otR5[25]~output_o\;

ww_otR5(26) <= \otR5[26]~output_o\;

ww_otR5(27) <= \otR5[27]~output_o\;

ww_otR5(28) <= \otR5[28]~output_o\;

ww_otR5(29) <= \otR5[29]~output_o\;

ww_otR5(30) <= \otR5[30]~output_o\;

ww_otR5(31) <= \otR5[31]~output_o\;

ww_otR6(0) <= \otR6[0]~output_o\;

ww_otR6(1) <= \otR6[1]~output_o\;

ww_otR6(2) <= \otR6[2]~output_o\;

ww_otR6(3) <= \otR6[3]~output_o\;

ww_otR6(4) <= \otR6[4]~output_o\;

ww_otR6(5) <= \otR6[5]~output_o\;

ww_otR6(6) <= \otR6[6]~output_o\;

ww_otR6(7) <= \otR6[7]~output_o\;

ww_otR6(8) <= \otR6[8]~output_o\;

ww_otR6(9) <= \otR6[9]~output_o\;

ww_otR6(10) <= \otR6[10]~output_o\;

ww_otR6(11) <= \otR6[11]~output_o\;

ww_otR6(12) <= \otR6[12]~output_o\;

ww_otR6(13) <= \otR6[13]~output_o\;

ww_otR6(14) <= \otR6[14]~output_o\;

ww_otR6(15) <= \otR6[15]~output_o\;

ww_otR6(16) <= \otR6[16]~output_o\;

ww_otR6(17) <= \otR6[17]~output_o\;

ww_otR6(18) <= \otR6[18]~output_o\;

ww_otR6(19) <= \otR6[19]~output_o\;

ww_otR6(20) <= \otR6[20]~output_o\;

ww_otR6(21) <= \otR6[21]~output_o\;

ww_otR6(22) <= \otR6[22]~output_o\;

ww_otR6(23) <= \otR6[23]~output_o\;

ww_otR6(24) <= \otR6[24]~output_o\;

ww_otR6(25) <= \otR6[25]~output_o\;

ww_otR6(26) <= \otR6[26]~output_o\;

ww_otR6(27) <= \otR6[27]~output_o\;

ww_otR6(28) <= \otR6[28]~output_o\;

ww_otR6(29) <= \otR6[29]~output_o\;

ww_otR6(30) <= \otR6[30]~output_o\;

ww_otR6(31) <= \otR6[31]~output_o\;

ww_otR7(0) <= \otR7[0]~output_o\;

ww_otR7(1) <= \otR7[1]~output_o\;

ww_otR7(2) <= \otR7[2]~output_o\;

ww_otR7(3) <= \otR7[3]~output_o\;

ww_otR7(4) <= \otR7[4]~output_o\;

ww_otR7(5) <= \otR7[5]~output_o\;

ww_otR7(6) <= \otR7[6]~output_o\;

ww_otR7(7) <= \otR7[7]~output_o\;

ww_otR7(8) <= \otR7[8]~output_o\;

ww_otR7(9) <= \otR7[9]~output_o\;

ww_otR7(10) <= \otR7[10]~output_o\;

ww_otR7(11) <= \otR7[11]~output_o\;

ww_otR7(12) <= \otR7[12]~output_o\;

ww_otR7(13) <= \otR7[13]~output_o\;

ww_otR7(14) <= \otR7[14]~output_o\;

ww_otR7(15) <= \otR7[15]~output_o\;

ww_otR7(16) <= \otR7[16]~output_o\;

ww_otR7(17) <= \otR7[17]~output_o\;

ww_otR7(18) <= \otR7[18]~output_o\;

ww_otR7(19) <= \otR7[19]~output_o\;

ww_otR7(20) <= \otR7[20]~output_o\;

ww_otR7(21) <= \otR7[21]~output_o\;

ww_otR7(22) <= \otR7[22]~output_o\;

ww_otR7(23) <= \otR7[23]~output_o\;

ww_otR7(24) <= \otR7[24]~output_o\;

ww_otR7(25) <= \otR7[25]~output_o\;

ww_otR7(26) <= \otR7[26]~output_o\;

ww_otR7(27) <= \otR7[27]~output_o\;

ww_otR7(28) <= \otR7[28]~output_o\;

ww_otR7(29) <= \otR7[29]~output_o\;

ww_otR7(30) <= \otR7[30]~output_o\;

ww_otR7(31) <= \otR7[31]~output_o\;

ww_opcodeDebug(0) <= \opcodeDebug[0]~output_o\;

ww_opcodeDebug(1) <= \opcodeDebug[1]~output_o\;

ww_opcodeDebug(2) <= \opcodeDebug[2]~output_o\;

ww_opcodeDebug(3) <= \opcodeDebug[3]~output_o\;

ww_opcodeDebug(4) <= \opcodeDebug[4]~output_o\;

ww_opcodeDebug(5) <= \opcodeDebug[5]~output_o\;

ww_Mux1Debug <= \Mux1Debug~output_o\;

ww_Mux2Debug <= \Mux2Debug~output_o\;

ww_HabEscritaRegDebug <= \HabEscritaRegDebug~output_o\;

ww_Mux3Debug <= \Mux3Debug~output_o\;

ww_Mux4Debug <= \Mux4Debug~output_o\;

ww_BEQDebug <= \BEQDebug~output_o\;

ww_HabLeMEMDebug <= \HabLeMEMDebug~output_o\;

ww_HabEscMEMDebug <= \HabEscMEMDebug~output_o\;

ww_ULAopDebug(0) <= \ULAopDebug[0]~output_o\;

ww_ULAopDebug(1) <= \ULAopDebug[1]~output_o\;

ww_out_PCTeste(0) <= \out_PCTeste[0]~output_o\;

ww_out_PCTeste(1) <= \out_PCTeste[1]~output_o\;

ww_out_PCTeste(2) <= \out_PCTeste[2]~output_o\;

ww_out_PCTeste(3) <= \out_PCTeste[3]~output_o\;

ww_out_PCTeste(4) <= \out_PCTeste[4]~output_o\;

ww_out_PCTeste(5) <= \out_PCTeste[5]~output_o\;

ww_out_PCTeste(6) <= \out_PCTeste[6]~output_o\;

ww_out_PCTeste(7) <= \out_PCTeste[7]~output_o\;

ww_out_PCTeste(8) <= \out_PCTeste[8]~output_o\;

ww_out_PCTeste(9) <= \out_PCTeste[9]~output_o\;

ww_out_PCTeste(10) <= \out_PCTeste[10]~output_o\;

ww_out_PCTeste(11) <= \out_PCTeste[11]~output_o\;

ww_out_PCTeste(12) <= \out_PCTeste[12]~output_o\;

ww_out_PCTeste(13) <= \out_PCTeste[13]~output_o\;

ww_out_PCTeste(14) <= \out_PCTeste[14]~output_o\;

ww_out_PCTeste(15) <= \out_PCTeste[15]~output_o\;

ww_out_PCTeste(16) <= \out_PCTeste[16]~output_o\;

ww_out_PCTeste(17) <= \out_PCTeste[17]~output_o\;

ww_out_PCTeste(18) <= \out_PCTeste[18]~output_o\;

ww_out_PCTeste(19) <= \out_PCTeste[19]~output_o\;

ww_out_PCTeste(20) <= \out_PCTeste[20]~output_o\;

ww_out_PCTeste(21) <= \out_PCTeste[21]~output_o\;

ww_out_PCTeste(22) <= \out_PCTeste[22]~output_o\;

ww_out_PCTeste(23) <= \out_PCTeste[23]~output_o\;

ww_out_PCTeste(24) <= \out_PCTeste[24]~output_o\;

ww_out_PCTeste(25) <= \out_PCTeste[25]~output_o\;

ww_out_PCTeste(26) <= \out_PCTeste[26]~output_o\;

ww_out_PCTeste(27) <= \out_PCTeste[27]~output_o\;

ww_out_PCTeste(28) <= \out_PCTeste[28]~output_o\;

ww_out_PCTeste(29) <= \out_PCTeste[29]~output_o\;

ww_out_PCTeste(30) <= \out_PCTeste[30]~output_o\;

ww_out_PCTeste(31) <= \out_PCTeste[31]~output_o\;

ww_testAluA(0) <= \testAluA[0]~output_o\;

ww_testAluA(1) <= \testAluA[1]~output_o\;

ww_testAluA(2) <= \testAluA[2]~output_o\;

ww_testAluA(3) <= \testAluA[3]~output_o\;

ww_testAluA(4) <= \testAluA[4]~output_o\;

ww_testAluA(5) <= \testAluA[5]~output_o\;

ww_testAluA(6) <= \testAluA[6]~output_o\;

ww_testAluA(7) <= \testAluA[7]~output_o\;

ww_testAluA(8) <= \testAluA[8]~output_o\;

ww_testAluA(9) <= \testAluA[9]~output_o\;

ww_testAluA(10) <= \testAluA[10]~output_o\;

ww_testAluA(11) <= \testAluA[11]~output_o\;

ww_testAluA(12) <= \testAluA[12]~output_o\;

ww_testAluA(13) <= \testAluA[13]~output_o\;

ww_testAluA(14) <= \testAluA[14]~output_o\;

ww_testAluA(15) <= \testAluA[15]~output_o\;

ww_testAluA(16) <= \testAluA[16]~output_o\;

ww_testAluA(17) <= \testAluA[17]~output_o\;

ww_testAluA(18) <= \testAluA[18]~output_o\;

ww_testAluA(19) <= \testAluA[19]~output_o\;

ww_testAluA(20) <= \testAluA[20]~output_o\;

ww_testAluA(21) <= \testAluA[21]~output_o\;

ww_testAluA(22) <= \testAluA[22]~output_o\;

ww_testAluA(23) <= \testAluA[23]~output_o\;

ww_testAluA(24) <= \testAluA[24]~output_o\;

ww_testAluA(25) <= \testAluA[25]~output_o\;

ww_testAluA(26) <= \testAluA[26]~output_o\;

ww_testAluA(27) <= \testAluA[27]~output_o\;

ww_testAluA(28) <= \testAluA[28]~output_o\;

ww_testAluA(29) <= \testAluA[29]~output_o\;

ww_testAluA(30) <= \testAluA[30]~output_o\;

ww_testAluA(31) <= \testAluA[31]~output_o\;

ww_testAluB(0) <= \testAluB[0]~output_o\;

ww_testAluB(1) <= \testAluB[1]~output_o\;

ww_testAluB(2) <= \testAluB[2]~output_o\;

ww_testAluB(3) <= \testAluB[3]~output_o\;

ww_testAluB(4) <= \testAluB[4]~output_o\;

ww_testAluB(5) <= \testAluB[5]~output_o\;

ww_testAluB(6) <= \testAluB[6]~output_o\;

ww_testAluB(7) <= \testAluB[7]~output_o\;

ww_testAluB(8) <= \testAluB[8]~output_o\;

ww_testAluB(9) <= \testAluB[9]~output_o\;

ww_testAluB(10) <= \testAluB[10]~output_o\;

ww_testAluB(11) <= \testAluB[11]~output_o\;

ww_testAluB(12) <= \testAluB[12]~output_o\;

ww_testAluB(13) <= \testAluB[13]~output_o\;

ww_testAluB(14) <= \testAluB[14]~output_o\;

ww_testAluB(15) <= \testAluB[15]~output_o\;

ww_testAluB(16) <= \testAluB[16]~output_o\;

ww_testAluB(17) <= \testAluB[17]~output_o\;

ww_testAluB(18) <= \testAluB[18]~output_o\;

ww_testAluB(19) <= \testAluB[19]~output_o\;

ww_testAluB(20) <= \testAluB[20]~output_o\;

ww_testAluB(21) <= \testAluB[21]~output_o\;

ww_testAluB(22) <= \testAluB[22]~output_o\;

ww_testAluB(23) <= \testAluB[23]~output_o\;

ww_testAluB(24) <= \testAluB[24]~output_o\;

ww_testAluB(25) <= \testAluB[25]~output_o\;

ww_testAluB(26) <= \testAluB[26]~output_o\;

ww_testAluB(27) <= \testAluB[27]~output_o\;

ww_testAluB(28) <= \testAluB[28]~output_o\;

ww_testAluB(29) <= \testAluB[29]~output_o\;

ww_testAluB(30) <= \testAluB[30]~output_o\;

ww_testAluB(31) <= \testAluB[31]~output_o\;

ww_testeAluRes(0) <= \testeAluRes[0]~output_o\;

ww_testeAluRes(1) <= \testeAluRes[1]~output_o\;

ww_testeAluRes(2) <= \testeAluRes[2]~output_o\;

ww_testeAluRes(3) <= \testeAluRes[3]~output_o\;

ww_testeAluRes(4) <= \testeAluRes[4]~output_o\;

ww_testeAluRes(5) <= \testeAluRes[5]~output_o\;

ww_testeAluRes(6) <= \testeAluRes[6]~output_o\;

ww_testeAluRes(7) <= \testeAluRes[7]~output_o\;

ww_testeAluRes(8) <= \testeAluRes[8]~output_o\;

ww_testeAluRes(9) <= \testeAluRes[9]~output_o\;

ww_testeAluRes(10) <= \testeAluRes[10]~output_o\;

ww_testeAluRes(11) <= \testeAluRes[11]~output_o\;

ww_testeAluRes(12) <= \testeAluRes[12]~output_o\;

ww_testeAluRes(13) <= \testeAluRes[13]~output_o\;

ww_testeAluRes(14) <= \testeAluRes[14]~output_o\;

ww_testeAluRes(15) <= \testeAluRes[15]~output_o\;

ww_testeAluRes(16) <= \testeAluRes[16]~output_o\;

ww_testeAluRes(17) <= \testeAluRes[17]~output_o\;

ww_testeAluRes(18) <= \testeAluRes[18]~output_o\;

ww_testeAluRes(19) <= \testeAluRes[19]~output_o\;

ww_testeAluRes(20) <= \testeAluRes[20]~output_o\;

ww_testeAluRes(21) <= \testeAluRes[21]~output_o\;

ww_testeAluRes(22) <= \testeAluRes[22]~output_o\;

ww_testeAluRes(23) <= \testeAluRes[23]~output_o\;

ww_testeAluRes(24) <= \testeAluRes[24]~output_o\;

ww_testeAluRes(25) <= \testeAluRes[25]~output_o\;

ww_testeAluRes(26) <= \testeAluRes[26]~output_o\;

ww_testeAluRes(27) <= \testeAluRes[27]~output_o\;

ww_testeAluRes(28) <= \testeAluRes[28]~output_o\;

ww_testeAluRes(29) <= \testeAluRes[29]~output_o\;

ww_testeAluRes(30) <= \testeAluRes[30]~output_o\;

ww_testeAluRes(31) <= \testeAluRes[31]~output_o\;
END structure;


