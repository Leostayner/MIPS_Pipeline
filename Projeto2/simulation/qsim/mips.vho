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

-- DATE "10/30/2018 16:45:01"

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
	KEY : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	otR1 : OUT std_logic_vector(31 DOWNTO 0);
	otR2 : OUT std_logic_vector(31 DOWNTO 0);
	otR3 : OUT std_logic_vector(31 DOWNTO 0);
	otR4 : OUT std_logic_vector(31 DOWNTO 0);
	otR5 : OUT std_logic_vector(31 DOWNTO 0);
	otR6 : OUT std_logic_vector(31 DOWNTO 0);
	otR7 : OUT std_logic_vector(31 DOWNTO 0);
	overflow : OUT std_logic;
	resultadoSoma : OUT std_logic_vector(31 DOWNTO 0);
	opcodeDebug : OUT std_logic_vector(5 DOWNTO 0);
	Mux1Debug : OUT std_logic;
	Mux2Debug : OUT std_logic;
	HabEscritaRegDebug : OUT std_logic;
	Mux3Debug : OUT std_logic;
	Mux4Debug : OUT std_logic;
	mux_beq : OUT std_logic;
	BEQDebug : OUT std_logic;
	HabLeMEMDebug : OUT std_logic;
	HabEscMEMDebug : OUT std_logic;
	ULAopDebug : OUT std_logic_vector(1 DOWNTO 0);
	out_PCTeste : OUT std_logic_vector(31 DOWNTO 0);
	testAluA : OUT std_logic_vector(31 DOWNTO 0);
	testAluB : OUT std_logic_vector(31 DOWNTO 0);
	testeAluRes : OUT std_logic_vector(31 DOWNTO 0);
	testeOutRam : OUT std_logic_vector(31 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[1]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[5]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[8]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[12]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[14]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[16]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[17]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[18]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[19]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[20]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[21]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[22]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[23]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[24]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[25]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[26]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[27]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[28]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[29]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[30]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[31]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[1]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[3]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[6]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[9]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[10]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[11]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[14]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[15]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[16]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[17]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[18]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[19]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[20]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[21]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[22]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[24]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[25]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[26]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[27]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[28]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[29]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[30]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[31]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[3]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[4]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[5]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[7]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[8]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[9]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[11]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[12]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[14]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[15]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[16]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[17]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[18]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[19]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[20]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[21]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[22]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[23]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[24]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[25]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[26]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[27]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[28]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[29]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[30]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[31]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[9]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[10]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[13]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[14]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[15]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[16]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[17]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[18]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[19]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[20]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[21]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[22]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[23]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[24]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[25]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[26]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[27]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[28]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[29]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[30]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[31]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[7]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[8]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[10]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[11]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[13]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[15]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[18]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[19]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[20]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[21]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[22]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[23]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[24]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[25]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[26]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[27]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[28]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[29]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[30]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[31]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[0]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[1]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[2]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[3]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[4]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[5]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[8]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[9]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[11]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[12]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[13]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[14]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[15]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[16]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[17]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[18]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[19]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[20]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[21]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[22]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[23]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[24]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[25]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[26]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[27]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[28]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[29]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[30]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[31]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[0]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[1]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[3]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[8]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[12]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[13]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[15]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[19]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[20]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[22]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[23]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[24]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[25]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[26]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[27]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[28]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[29]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[30]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[31]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[1]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[8]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[13]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[15]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[16]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[17]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[18]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[19]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[20]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[23]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[24]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[25]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[26]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[27]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[28]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[29]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[30]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultadoSoma[31]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[3]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[4]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcodeDebug[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux1Debug	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux2Debug	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabEscritaRegDebug	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux3Debug	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux4Debug	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_beq	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BEQDebug	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabLeMEMDebug	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabEscMEMDebug	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAopDebug[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAopDebug[1]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[4]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[9]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[10]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[11]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[12]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[14]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[15]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[16]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[17]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[18]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[20]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[21]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[22]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[23]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[24]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[25]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[26]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[27]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[28]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[29]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[30]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PCTeste[31]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[3]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[4]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[10]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[11]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[12]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[13]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[14]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[16]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[17]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[18]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[19]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[20]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[21]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[22]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[23]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[24]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[25]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[26]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[27]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[28]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[29]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[30]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluA[31]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[3]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[8]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[11]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[13]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[16]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[17]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[18]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[19]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[20]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[21]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[22]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[23]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[24]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[25]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[26]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[27]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[28]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[29]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[30]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testAluB[31]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[0]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[4]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[5]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[9]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[10]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[11]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[15]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[16]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[18]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[19]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[20]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[21]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[22]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[23]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[24]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[25]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[26]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[27]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[28]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[29]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[30]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeAluRes[31]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[1]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[2]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[8]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[10]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[11]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[13]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[14]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[15]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[16]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[17]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[18]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[19]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[20]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[21]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[22]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[23]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[24]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[25]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[26]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[27]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[28]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[29]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[30]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeOutRam[31]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_otR1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR5 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR6 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_otR7 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_resultadoSoma : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opcodeDebug : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Mux1Debug : std_logic;
SIGNAL ww_Mux2Debug : std_logic;
SIGNAL ww_HabEscritaRegDebug : std_logic;
SIGNAL ww_Mux3Debug : std_logic;
SIGNAL ww_Mux4Debug : std_logic;
SIGNAL ww_mux_beq : std_logic;
SIGNAL ww_BEQDebug : std_logic;
SIGNAL ww_HabLeMEMDebug : std_logic;
SIGNAL ww_HabEscMEMDebug : std_logic;
SIGNAL ww_ULAopDebug : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_PCTeste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testAluA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testAluB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testeAluRes : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testeOutRam : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
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
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \resultadoSoma[0]~output_o\ : std_logic;
SIGNAL \resultadoSoma[1]~output_o\ : std_logic;
SIGNAL \resultadoSoma[2]~output_o\ : std_logic;
SIGNAL \resultadoSoma[3]~output_o\ : std_logic;
SIGNAL \resultadoSoma[4]~output_o\ : std_logic;
SIGNAL \resultadoSoma[5]~output_o\ : std_logic;
SIGNAL \resultadoSoma[6]~output_o\ : std_logic;
SIGNAL \resultadoSoma[7]~output_o\ : std_logic;
SIGNAL \resultadoSoma[8]~output_o\ : std_logic;
SIGNAL \resultadoSoma[9]~output_o\ : std_logic;
SIGNAL \resultadoSoma[10]~output_o\ : std_logic;
SIGNAL \resultadoSoma[11]~output_o\ : std_logic;
SIGNAL \resultadoSoma[12]~output_o\ : std_logic;
SIGNAL \resultadoSoma[13]~output_o\ : std_logic;
SIGNAL \resultadoSoma[14]~output_o\ : std_logic;
SIGNAL \resultadoSoma[15]~output_o\ : std_logic;
SIGNAL \resultadoSoma[16]~output_o\ : std_logic;
SIGNAL \resultadoSoma[17]~output_o\ : std_logic;
SIGNAL \resultadoSoma[18]~output_o\ : std_logic;
SIGNAL \resultadoSoma[19]~output_o\ : std_logic;
SIGNAL \resultadoSoma[20]~output_o\ : std_logic;
SIGNAL \resultadoSoma[21]~output_o\ : std_logic;
SIGNAL \resultadoSoma[22]~output_o\ : std_logic;
SIGNAL \resultadoSoma[23]~output_o\ : std_logic;
SIGNAL \resultadoSoma[24]~output_o\ : std_logic;
SIGNAL \resultadoSoma[25]~output_o\ : std_logic;
SIGNAL \resultadoSoma[26]~output_o\ : std_logic;
SIGNAL \resultadoSoma[27]~output_o\ : std_logic;
SIGNAL \resultadoSoma[28]~output_o\ : std_logic;
SIGNAL \resultadoSoma[29]~output_o\ : std_logic;
SIGNAL \resultadoSoma[30]~output_o\ : std_logic;
SIGNAL \resultadoSoma[31]~output_o\ : std_logic;
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
SIGNAL \mux_beq~output_o\ : std_logic;
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
SIGNAL \testeOutRam[0]~output_o\ : std_logic;
SIGNAL \testeOutRam[1]~output_o\ : std_logic;
SIGNAL \testeOutRam[2]~output_o\ : std_logic;
SIGNAL \testeOutRam[3]~output_o\ : std_logic;
SIGNAL \testeOutRam[4]~output_o\ : std_logic;
SIGNAL \testeOutRam[5]~output_o\ : std_logic;
SIGNAL \testeOutRam[6]~output_o\ : std_logic;
SIGNAL \testeOutRam[7]~output_o\ : std_logic;
SIGNAL \testeOutRam[8]~output_o\ : std_logic;
SIGNAL \testeOutRam[9]~output_o\ : std_logic;
SIGNAL \testeOutRam[10]~output_o\ : std_logic;
SIGNAL \testeOutRam[11]~output_o\ : std_logic;
SIGNAL \testeOutRam[12]~output_o\ : std_logic;
SIGNAL \testeOutRam[13]~output_o\ : std_logic;
SIGNAL \testeOutRam[14]~output_o\ : std_logic;
SIGNAL \testeOutRam[15]~output_o\ : std_logic;
SIGNAL \testeOutRam[16]~output_o\ : std_logic;
SIGNAL \testeOutRam[17]~output_o\ : std_logic;
SIGNAL \testeOutRam[18]~output_o\ : std_logic;
SIGNAL \testeOutRam[19]~output_o\ : std_logic;
SIGNAL \testeOutRam[20]~output_o\ : std_logic;
SIGNAL \testeOutRam[21]~output_o\ : std_logic;
SIGNAL \testeOutRam[22]~output_o\ : std_logic;
SIGNAL \testeOutRam[23]~output_o\ : std_logic;
SIGNAL \testeOutRam[24]~output_o\ : std_logic;
SIGNAL \testeOutRam[25]~output_o\ : std_logic;
SIGNAL \testeOutRam[26]~output_o\ : std_logic;
SIGNAL \testeOutRam[27]~output_o\ : std_logic;
SIGNAL \testeOutRam[28]~output_o\ : std_logic;
SIGNAL \testeOutRam[29]~output_o\ : std_logic;
SIGNAL \testeOutRam[30]~output_o\ : std_logic;
SIGNAL \testeOutRam[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd|adder|addsloop:2:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:5:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:6:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:8:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:7:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:9:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:10:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|Rom|content~17_combout\ : std_logic;
SIGNAL \fd|Rom|content~7_combout\ : std_logic;
SIGNAL \fd|Rom|content~11_combout\ : std_logic;
SIGNAL \ucfd|Equal1~0_combout\ : std_logic;
SIGNAL \ucfd|Equal1~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~15_combout\ : std_logic;
SIGNAL \fd|Rom|content~16_combout\ : std_logic;
SIGNAL \fd|Rom|content~13_combout\ : std_logic;
SIGNAL \fd|Rom|content~14_combout\ : std_logic;
SIGNAL \fd|Rom|content~32_combout\ : std_logic;
SIGNAL \fd|Rom|content~33_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal2~2_combout\ : std_logic;
SIGNAL \fd|Rom|content~30_combout\ : std_logic;
SIGNAL \fd|Rom|content~31_combout\ : std_logic;
SIGNAL \fd|Rom|content~28_combout\ : std_logic;
SIGNAL \fd|Rom|content~29_combout\ : std_logic;
SIGNAL \fd|UCalu|output[0]~5_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~0_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal2~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~8_combout\ : std_logic;
SIGNAL \fd|Rom|content~34_combout\ : std_logic;
SIGNAL \fd|Rom|content~35_combout\ : std_logic;
SIGNAL \ucfd|BEQ~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~2_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~5_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~4_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[3]~3_combout\ : std_logic;
SIGNAL \ucfd|HabEscritaReg~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~22_combout\ : std_logic;
SIGNAL \fd|Rom|content~36_combout\ : std_logic;
SIGNAL \fd|MuxRtRd|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~20_combout\ : std_logic;
SIGNAL \fd|MuxRtRd|selected[1]~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][3]~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~18_combout\ : std_logic;
SIGNAL \fd|Rom|content~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][3]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][3]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][3]~q\ : std_logic;
SIGNAL \fd|Rom|content~3_combout\ : std_logic;
SIGNAL \fd|Rom|content~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][3]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][3]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][3]~11_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][3]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[3]~112_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][3]~3_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][3]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][3]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][3]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][3]~7_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][3]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][3]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][3]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][3]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][3]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][3]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][31]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][31]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][3]~q\ : std_logic;
SIGNAL \fd|Rom|content~5_combout\ : std_logic;
SIGNAL \fd|Rom|content~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[3]~113_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[3]~114_combout\ : std_logic;
SIGNAL \fd|Rom|content~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[3]~115_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[3]~110_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[3]~111_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][3]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][3]~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][3]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][3]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][3]~15_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][3]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[3]~108_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[3]~109_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[2]~2_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[3]~34_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[3]~35_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal2~1_combout\ : std_logic;
SIGNAL \fd|UCalu|output[2]~3_combout\ : std_logic;
SIGNAL \fd|UCalu|output[2]~4_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~1_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[3]~60_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[2]~114_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[2]~115_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[2]~112_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[2]~113_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[2]~36_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[2]~37_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[2]~54_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[1]~120_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[1]~121_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[1]~122_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[1]~123_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][0]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[0]~120_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[0]~121_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~43_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[0]~124_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][0]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[0]~125_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[0]~126_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[0]~127_combout\ : std_logic;
SIGNAL \fd|ALU|adder|a0|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[1]~118_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[1]~119_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][1]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][1]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[1]~116_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[1]~117_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[1]~38_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[1]~39_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:2:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[2]~55_combout\ : std_logic;
SIGNAL \fd|Ram|ram~1064_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[2]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][2]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[2]~116_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[2]~117_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[2]~118_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[2]~119_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:3:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[3]~61_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[4]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[4]~109_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[4]~110_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[4]~108_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[4]~111_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[4]~106_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[4]~107_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][4]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[4]~104_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[4]~105_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[4]~33_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[4]~58_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:4:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[4]~59_combout\ : std_logic;
SIGNAL \fd|beqAnd~5_combout\ : std_logic;
SIGNAL \fd|Ram|ram~1062_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[0]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][0]~q\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~40_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~41_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~42_combout\ : std_logic;
SIGNAL \fd|ALU|adder|a0|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|choiceB|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[31]~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[31]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[31]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[31]~3_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[30]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][30]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][30]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[30]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][30]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[30]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[30]~7_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[30]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[29]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[29]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[29]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[29]~11_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[29]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[28]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[28]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[28]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[28]~11_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[28]~5_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[28]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][27]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[27]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[27]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[27]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[27]~15_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[27]~6_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[27]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[26]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[26]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][26]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][26]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[26]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[26]~17_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[26]~7_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[25]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[25]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[25]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[25]~21_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[25]~8_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[25]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[24]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[24]~25_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[24]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[24]~27_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[24]~9_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[24]~46_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[23]~32_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[23]~33_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[23]~34_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[23]~35_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[23]~44_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[22]~37_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[22]~38_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[22]~36_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[22]~39_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[21]~36_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[21]~37_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[21]~38_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[21]~39_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[21]~12_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[21]~36_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[20]~44_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][20]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[20]~45_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[20]~46_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[20]~47_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[20]~34_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[19]~44_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[19]~45_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[19]~46_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][19]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[19]~47_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[19]~14_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[19]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][18]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][18]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[18]~48_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[18]~49_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[18]~50_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[18]~51_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[18]~15_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[18]~40_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[17]~56_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[17]~57_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[17]~58_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[17]~59_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[17]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[16]~58_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[16]~59_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[16]~56_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[16]~57_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[16]~17_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[16]~38_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[15]~62_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[15]~63_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[15]~60_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[15]~61_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[15]~18_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[15]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[14]~69_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[14]~70_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[14]~68_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[14]~71_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[14]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[13]~72_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[13]~73_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[13]~74_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[13]~75_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[13]~48_combout\ : std_logic;
SIGNAL \fd|Rom|content~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[12]~74_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[12]~75_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[12]~72_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[12]~73_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[12]~22_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[12]~23_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[12]~50_combout\ : std_logic;
SIGNAL \fd|Rom|content~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[11]~80_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[11]~81_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[11]~82_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[11]~83_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[9]~89_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[9]~90_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][9]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][9]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[9]~88_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[9]~91_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[9]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[8]~93_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[8]~94_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][8]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[8]~92_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[8]~95_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[8]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[6]~100_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[6]~101_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[6]~102_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[6]~103_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[6]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[5]~100_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[5]~101_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[5]~102_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[5]~103_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[5]~31_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[5]~32_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[5]~62_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:5:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[5]~63_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[5]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][5]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[5]~104_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[5]~105_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[5]~106_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[5]~107_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:6:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[6]~31_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[6]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][6]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[6]~96_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[6]~97_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[6]~98_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[6]~99_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[6]~30_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][7]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[7]~96_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[7]~97_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[7]~98_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[7]~99_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:7:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[7]~32_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[7]~33_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[7]~7_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[7]~94_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[7]~95_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][7]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[7]~92_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[7]~93_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[7]~29_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:8:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[8]~27_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[8]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[8]~90_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[8]~91_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][8]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[8]~88_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[8]~89_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[8]~28_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:9:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[9]~17_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[9]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[9]~86_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[9]~87_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[9]~84_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][9]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[9]~85_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[9]~27_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[10]~84_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[0][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[10]~85_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[10]~86_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[10]~87_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:10:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[10]~14_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[10]~15_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[10]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[10]~82_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[10]~83_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][10]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[10]~80_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[10]~81_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[10]~26_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:11:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[11]~52_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[11]~53_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[11]~11_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[11]~78_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[11]~79_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[11]~76_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][11]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[11]~77_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[11]~24_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[11]~25_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:12:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[12]~51_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[12]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][12]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[12]~76_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[12]~77_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[12]~78_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[12]~79_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:13:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[13]~49_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[13]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[13]~70_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[13]~71_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[13]~68_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][13]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[13]~69_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[13]~20_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[13]~21_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:14:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[14]~9_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[14]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[3][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[14]~66_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[14]~67_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][14]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[14]~64_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[14]~65_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[14]~19_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:15:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[15]~7_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[15]~15_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][15]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[15]~65_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[15]~66_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[15]~64_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[15]~67_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:16:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[16]~39_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[16]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][16]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[16]~61_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[16]~62_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[16]~60_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[16]~63_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:17:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[17]~29_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[17]~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[17]~52_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][17]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[17]~53_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[17]~54_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[17]~55_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[17]~16_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:18:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[18]~41_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[18]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][18]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[18]~52_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[18]~53_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[18]~54_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[18]~55_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:19:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[19]~11_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[19]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][19]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[19]~48_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[19]~49_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[19]~50_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[19]~51_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:20:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[20]~35_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[20]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][20]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][20]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[20]~40_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[20]~41_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[20]~42_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[20]~43_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[20]~13_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:21:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[21]~37_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[21]~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][21]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[21]~40_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[21]~41_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[21]~42_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[21]~43_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:22:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[22]~42_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[22]~43_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[22]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[4][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[22]~32_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][22]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[22]~33_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[22]~34_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[22]~35_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[22]~11_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:23:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[23]~45_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[23]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[23]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[23]~31_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[23]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][23]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[23]~29_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[23]~10_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:24:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[24]~47_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[24]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][24]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[24]~29_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[24]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[24]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[24]~31_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:25:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[25]~13_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[25]~25_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][25]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[25]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[25]~25_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[25]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[25]~27_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:26:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[26]~18_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[26]~19_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[26]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][26]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[26]~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[26]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[26]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[26]~23_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:27:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[27]~21_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[27]~27_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][27]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[27]~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[27]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[27]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[27]~19_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:28:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[28]~23_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[28]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[5][28]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[28]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[28]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[28]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaA[28]~15_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:29:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[29]~25_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[29]~29_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[29]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][29]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[29]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[29]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[29]~7_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[29]~4_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:30:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[30]~3_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[30]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[30]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][30]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[30]~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[30]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[30]~3_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[30]~3_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:31:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~5_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[31]~31_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[2][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[31]~124_combout\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[31]~125_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[6][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[31]~122_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[7][31]~q\ : std_logic;
SIGNAL \fd|BankRegister|saidaB[31]~123_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[31]~44_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[0]~1_combout\ : std_logic;
SIGNAL \fd|beqAnd~0_combout\ : std_logic;
SIGNAL \fd|beqAnd~1_combout\ : std_logic;
SIGNAL \fd|beqAnd~3_combout\ : std_logic;
SIGNAL \fd|beqAnd~6_combout\ : std_logic;
SIGNAL \fd|beqAnd~7_combout\ : std_logic;
SIGNAL \fd|beqAnd~4_combout\ : std_logic;
SIGNAL \fd|beqAnd~8_combout\ : std_logic;
SIGNAL \fd|beqAnd~9_combout\ : std_logic;
SIGNAL \fd|beqAnd~2_combout\ : std_logic;
SIGNAL \fd|beqAnd~10_combout\ : std_logic;
SIGNAL \fd|beqAnd~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[10]~2_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:11:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:12:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:10:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:11:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:12:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[12]~1_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:13:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:12:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:13:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[13]~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~2_combout\ : std_logic;
SIGNAL \fd|Rom|content~24_combout\ : std_logic;
SIGNAL \fd|Rom|content~25_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:4:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:5:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[5]~3_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:6:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:5:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:7:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[7]~5_combout\ : std_logic;
SIGNAL \fd|Rom|content~1_combout\ : std_logic;
SIGNAL \fd|Rom|content~26_combout\ : std_logic;
SIGNAL \fd|Rom|content~27_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:3:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:4:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[4]~7_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:4:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:6:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[6]~6_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:7:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:8:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[8]~4_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:8:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:9:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[9]~3_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:10:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:11:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:11:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[11]~2_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:12:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:13:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:14:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[14]~1_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:14:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:15:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[15]~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~0_combout\ : std_logic;
SIGNAL \fd|Rom|content~12_combout\ : std_logic;
SIGNAL \ucfd|Equal4~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[0]~8_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:1:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:1:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|PC|DOUT[1]~6_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:1:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:1:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:2:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:2:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[2]~5_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:2:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:3:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:3:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[3]~4_combout\ : std_logic;
SIGNAL \ucfd|Equal0~0_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~3_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~2_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:1:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[1]~56_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[1]~57_combout\ : std_logic;
SIGNAL \fd|Ram|ram~1063_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[1]~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|registrador[1][1]~q\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \convhex7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \fd|ALU|adder|v~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:16:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:15:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:13:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:15:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:16:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[16]~7_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:16:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:16:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:17:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:17:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[17]~8_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:17:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:17:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:18:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[18]~9_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:18:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:19:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[19]~10_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:19:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:20:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[20]~11_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:20:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:21:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:18:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:20:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:21:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[21]~9_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:21:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:19:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:21:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:22:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:22:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[22]~10_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:23:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:22:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:22:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:23:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[23]~11_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:23:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:24:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:23:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[24]~12_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:25:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:24:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[25]~13_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:25:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:25:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[26]~14_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:26:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:24:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:26:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[27]~15_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:27:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:27:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[28]~16_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:28:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:28:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[29]~17_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:29:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:29:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[30]~18_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[31]~19_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[31]~20_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~45_combout\ : std_logic;
SIGNAL \fd|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|ALU|out4\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|UCalu|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fd|Ram|ALT_INV_ram~1064_combout\ : std_logic;
SIGNAL \fd|ALU|adder|ALT_INV_v~0_combout\ : std_logic;
SIGNAL \convhex7|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex6|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex5|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex4|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex3|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex2|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \convhex1|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
ww_clk <= clk;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
otR1 <= ww_otR1;
otR2 <= ww_otR2;
otR3 <= ww_otR3;
otR4 <= ww_otR4;
otR5 <= ww_otR5;
otR6 <= ww_otR6;
otR7 <= ww_otR7;
overflow <= ww_overflow;
resultadoSoma <= ww_resultadoSoma;
opcodeDebug <= ww_opcodeDebug;
Mux1Debug <= ww_Mux1Debug;
Mux2Debug <= ww_Mux2Debug;
HabEscritaRegDebug <= ww_HabEscritaRegDebug;
Mux3Debug <= ww_Mux3Debug;
Mux4Debug <= ww_Mux4Debug;
mux_beq <= ww_mux_beq;
BEQDebug <= ww_BEQDebug;
HabLeMEMDebug <= ww_HabLeMEMDebug;
HabEscMEMDebug <= ww_HabEscMEMDebug;
ULAopDebug <= ww_ULAopDebug;
out_PCTeste <= ww_out_PCTeste;
testAluA <= ww_testAluA;
testAluB <= ww_testAluB;
testeAluRes <= ww_testeAluRes;
testeOutRam <= ww_testeOutRam;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\fd|Ram|ALT_INV_ram~1064_combout\ <= NOT \fd|Ram|ram~1064_combout\;
\fd|ALU|adder|ALT_INV_v~0_combout\ <= NOT \fd|ALU|adder|v~0_combout\;
\convhex7|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex7|rascSaida7seg[2]~2_combout\;
\convhex6|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex6|rascSaida7seg[2]~2_combout\;
\convhex5|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex5|rascSaida7seg[2]~2_combout\;
\convhex4|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex4|rascSaida7seg[2]~2_combout\;
\convhex3|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex3|rascSaida7seg[2]~2_combout\;
\convhex2|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex2|rascSaida7seg[2]~2_combout\;
\convhex1|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \convhex1|rascSaida7seg[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex6|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convhex7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\otR1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][0]~q\,
	devoe => ww_devoe,
	o => \otR1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\otR1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][1]~q\,
	devoe => ww_devoe,
	o => \otR1[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\otR1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][2]~q\,
	devoe => ww_devoe,
	o => \otR1[2]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\otR1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][3]~q\,
	devoe => ww_devoe,
	o => \otR1[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\otR1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][4]~q\,
	devoe => ww_devoe,
	o => \otR1[4]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\otR1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][5]~q\,
	devoe => ww_devoe,
	o => \otR1[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\otR1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][6]~q\,
	devoe => ww_devoe,
	o => \otR1[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\otR1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][7]~q\,
	devoe => ww_devoe,
	o => \otR1[7]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\otR1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][8]~q\,
	devoe => ww_devoe,
	o => \otR1[8]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\otR1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][9]~q\,
	devoe => ww_devoe,
	o => \otR1[9]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\otR1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][10]~q\,
	devoe => ww_devoe,
	o => \otR1[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\otR1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][11]~q\,
	devoe => ww_devoe,
	o => \otR1[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\otR1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][12]~q\,
	devoe => ww_devoe,
	o => \otR1[12]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\otR1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][13]~q\,
	devoe => ww_devoe,
	o => \otR1[13]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\otR1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][14]~q\,
	devoe => ww_devoe,
	o => \otR1[14]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\otR1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][15]~q\,
	devoe => ww_devoe,
	o => \otR1[15]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\otR1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][16]~q\,
	devoe => ww_devoe,
	o => \otR1[16]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\otR1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][17]~q\,
	devoe => ww_devoe,
	o => \otR1[17]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\otR1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][18]~q\,
	devoe => ww_devoe,
	o => \otR1[18]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\otR1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][19]~q\,
	devoe => ww_devoe,
	o => \otR1[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\otR1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][20]~q\,
	devoe => ww_devoe,
	o => \otR1[20]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\otR1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][21]~q\,
	devoe => ww_devoe,
	o => \otR1[21]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\otR1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][22]~q\,
	devoe => ww_devoe,
	o => \otR1[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\otR1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][23]~q\,
	devoe => ww_devoe,
	o => \otR1[23]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\otR1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][24]~q\,
	devoe => ww_devoe,
	o => \otR1[24]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\otR1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][25]~q\,
	devoe => ww_devoe,
	o => \otR1[25]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\otR1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][26]~q\,
	devoe => ww_devoe,
	o => \otR1[26]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\otR1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][27]~q\,
	devoe => ww_devoe,
	o => \otR1[27]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\otR1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][28]~q\,
	devoe => ww_devoe,
	o => \otR1[28]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\otR1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][29]~q\,
	devoe => ww_devoe,
	o => \otR1[29]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\otR1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][30]~q\,
	devoe => ww_devoe,
	o => \otR1[30]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\otR1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[1][31]~q\,
	devoe => ww_devoe,
	o => \otR1[31]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\otR2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][0]~q\,
	devoe => ww_devoe,
	o => \otR2[0]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\otR2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][1]~q\,
	devoe => ww_devoe,
	o => \otR2[1]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\otR2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][2]~q\,
	devoe => ww_devoe,
	o => \otR2[2]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\otR2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][3]~q\,
	devoe => ww_devoe,
	o => \otR2[3]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\otR2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][4]~q\,
	devoe => ww_devoe,
	o => \otR2[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\otR2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][5]~q\,
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
	i => \fd|BankRegister|registrador[2][6]~q\,
	devoe => ww_devoe,
	o => \otR2[6]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\otR2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][7]~q\,
	devoe => ww_devoe,
	o => \otR2[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\otR2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][8]~q\,
	devoe => ww_devoe,
	o => \otR2[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\otR2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][9]~q\,
	devoe => ww_devoe,
	o => \otR2[9]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\otR2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][10]~q\,
	devoe => ww_devoe,
	o => \otR2[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\otR2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][11]~q\,
	devoe => ww_devoe,
	o => \otR2[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\otR2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][12]~q\,
	devoe => ww_devoe,
	o => \otR2[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\otR2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][13]~q\,
	devoe => ww_devoe,
	o => \otR2[13]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\otR2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][14]~q\,
	devoe => ww_devoe,
	o => \otR2[14]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\otR2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][15]~q\,
	devoe => ww_devoe,
	o => \otR2[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\otR2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][16]~q\,
	devoe => ww_devoe,
	o => \otR2[16]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\otR2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][17]~q\,
	devoe => ww_devoe,
	o => \otR2[17]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\otR2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][18]~q\,
	devoe => ww_devoe,
	o => \otR2[18]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\otR2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][19]~q\,
	devoe => ww_devoe,
	o => \otR2[19]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\otR2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][20]~q\,
	devoe => ww_devoe,
	o => \otR2[20]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\otR2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][21]~q\,
	devoe => ww_devoe,
	o => \otR2[21]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\otR2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][22]~q\,
	devoe => ww_devoe,
	o => \otR2[22]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\otR2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][23]~q\,
	devoe => ww_devoe,
	o => \otR2[23]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\otR2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][24]~q\,
	devoe => ww_devoe,
	o => \otR2[24]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\otR2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][25]~q\,
	devoe => ww_devoe,
	o => \otR2[25]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\otR2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][26]~q\,
	devoe => ww_devoe,
	o => \otR2[26]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\otR2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][27]~q\,
	devoe => ww_devoe,
	o => \otR2[27]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\otR2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][28]~q\,
	devoe => ww_devoe,
	o => \otR2[28]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\otR2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][29]~q\,
	devoe => ww_devoe,
	o => \otR2[29]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\otR2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][30]~q\,
	devoe => ww_devoe,
	o => \otR2[30]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\otR2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[2][31]~q\,
	devoe => ww_devoe,
	o => \otR2[31]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\otR3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][0]~q\,
	devoe => ww_devoe,
	o => \otR3[0]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\otR3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][1]~q\,
	devoe => ww_devoe,
	o => \otR3[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\otR3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][2]~q\,
	devoe => ww_devoe,
	o => \otR3[2]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\otR3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][3]~q\,
	devoe => ww_devoe,
	o => \otR3[3]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\otR3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][4]~q\,
	devoe => ww_devoe,
	o => \otR3[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\otR3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][5]~q\,
	devoe => ww_devoe,
	o => \otR3[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\otR3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][6]~q\,
	devoe => ww_devoe,
	o => \otR3[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\otR3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][7]~q\,
	devoe => ww_devoe,
	o => \otR3[7]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\otR3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][8]~q\,
	devoe => ww_devoe,
	o => \otR3[8]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\otR3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][9]~q\,
	devoe => ww_devoe,
	o => \otR3[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\otR3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][10]~q\,
	devoe => ww_devoe,
	o => \otR3[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\otR3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][11]~q\,
	devoe => ww_devoe,
	o => \otR3[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\otR3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][12]~q\,
	devoe => ww_devoe,
	o => \otR3[12]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\otR3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][13]~q\,
	devoe => ww_devoe,
	o => \otR3[13]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\otR3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][14]~q\,
	devoe => ww_devoe,
	o => \otR3[14]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\otR3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][15]~q\,
	devoe => ww_devoe,
	o => \otR3[15]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\otR3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][16]~q\,
	devoe => ww_devoe,
	o => \otR3[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\otR3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][17]~q\,
	devoe => ww_devoe,
	o => \otR3[17]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\otR3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][18]~q\,
	devoe => ww_devoe,
	o => \otR3[18]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\otR3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][19]~q\,
	devoe => ww_devoe,
	o => \otR3[19]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\otR3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][20]~q\,
	devoe => ww_devoe,
	o => \otR3[20]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\otR3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][21]~q\,
	devoe => ww_devoe,
	o => \otR3[21]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\otR3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][22]~q\,
	devoe => ww_devoe,
	o => \otR3[22]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\otR3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][23]~q\,
	devoe => ww_devoe,
	o => \otR3[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\otR3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][24]~q\,
	devoe => ww_devoe,
	o => \otR3[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\otR3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][25]~q\,
	devoe => ww_devoe,
	o => \otR3[25]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\otR3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][26]~q\,
	devoe => ww_devoe,
	o => \otR3[26]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\otR3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][27]~q\,
	devoe => ww_devoe,
	o => \otR3[27]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\otR3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][28]~q\,
	devoe => ww_devoe,
	o => \otR3[28]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\otR3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][29]~q\,
	devoe => ww_devoe,
	o => \otR3[29]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\otR3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][30]~q\,
	devoe => ww_devoe,
	o => \otR3[30]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\otR3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[3][31]~q\,
	devoe => ww_devoe,
	o => \otR3[31]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\otR4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][0]~q\,
	devoe => ww_devoe,
	o => \otR4[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\otR4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][1]~q\,
	devoe => ww_devoe,
	o => \otR4[1]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\otR4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][2]~q\,
	devoe => ww_devoe,
	o => \otR4[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\otR4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][3]~q\,
	devoe => ww_devoe,
	o => \otR4[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\otR4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][4]~q\,
	devoe => ww_devoe,
	o => \otR4[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\otR4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][5]~q\,
	devoe => ww_devoe,
	o => \otR4[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\otR4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][6]~q\,
	devoe => ww_devoe,
	o => \otR4[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\otR4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][7]~q\,
	devoe => ww_devoe,
	o => \otR4[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\otR4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][8]~q\,
	devoe => ww_devoe,
	o => \otR4[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\otR4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][9]~q\,
	devoe => ww_devoe,
	o => \otR4[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\otR4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][10]~q\,
	devoe => ww_devoe,
	o => \otR4[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\otR4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][11]~q\,
	devoe => ww_devoe,
	o => \otR4[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\otR4[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][12]~q\,
	devoe => ww_devoe,
	o => \otR4[12]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\otR4[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][13]~q\,
	devoe => ww_devoe,
	o => \otR4[13]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\otR4[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][14]~q\,
	devoe => ww_devoe,
	o => \otR4[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\otR4[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][15]~q\,
	devoe => ww_devoe,
	o => \otR4[15]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\otR4[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][16]~q\,
	devoe => ww_devoe,
	o => \otR4[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\otR4[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][17]~q\,
	devoe => ww_devoe,
	o => \otR4[17]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\otR4[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][18]~q\,
	devoe => ww_devoe,
	o => \otR4[18]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\otR4[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][19]~q\,
	devoe => ww_devoe,
	o => \otR4[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\otR4[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][20]~q\,
	devoe => ww_devoe,
	o => \otR4[20]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\otR4[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][21]~q\,
	devoe => ww_devoe,
	o => \otR4[21]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\otR4[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][22]~q\,
	devoe => ww_devoe,
	o => \otR4[22]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\otR4[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][23]~q\,
	devoe => ww_devoe,
	o => \otR4[23]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\otR4[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][24]~q\,
	devoe => ww_devoe,
	o => \otR4[24]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\otR4[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][25]~q\,
	devoe => ww_devoe,
	o => \otR4[25]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\otR4[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][26]~q\,
	devoe => ww_devoe,
	o => \otR4[26]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\otR4[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][27]~q\,
	devoe => ww_devoe,
	o => \otR4[27]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\otR4[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][28]~q\,
	devoe => ww_devoe,
	o => \otR4[28]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\otR4[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][29]~q\,
	devoe => ww_devoe,
	o => \otR4[29]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\otR4[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][30]~q\,
	devoe => ww_devoe,
	o => \otR4[30]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\otR4[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[4][31]~q\,
	devoe => ww_devoe,
	o => \otR4[31]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\otR5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][0]~q\,
	devoe => ww_devoe,
	o => \otR5[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\otR5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][1]~q\,
	devoe => ww_devoe,
	o => \otR5[1]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\otR5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][2]~q\,
	devoe => ww_devoe,
	o => \otR5[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\otR5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][3]~q\,
	devoe => ww_devoe,
	o => \otR5[3]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\otR5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][4]~q\,
	devoe => ww_devoe,
	o => \otR5[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\otR5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][5]~q\,
	devoe => ww_devoe,
	o => \otR5[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\otR5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][6]~q\,
	devoe => ww_devoe,
	o => \otR5[6]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\otR5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][7]~q\,
	devoe => ww_devoe,
	o => \otR5[7]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\otR5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][8]~q\,
	devoe => ww_devoe,
	o => \otR5[8]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\otR5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][9]~q\,
	devoe => ww_devoe,
	o => \otR5[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\otR5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][10]~q\,
	devoe => ww_devoe,
	o => \otR5[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\otR5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][11]~q\,
	devoe => ww_devoe,
	o => \otR5[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\otR5[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][12]~q\,
	devoe => ww_devoe,
	o => \otR5[12]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\otR5[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][13]~q\,
	devoe => ww_devoe,
	o => \otR5[13]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\otR5[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][14]~q\,
	devoe => ww_devoe,
	o => \otR5[14]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\otR5[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][15]~q\,
	devoe => ww_devoe,
	o => \otR5[15]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\otR5[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][16]~q\,
	devoe => ww_devoe,
	o => \otR5[16]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\otR5[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][17]~q\,
	devoe => ww_devoe,
	o => \otR5[17]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\otR5[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][18]~q\,
	devoe => ww_devoe,
	o => \otR5[18]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\otR5[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][19]~q\,
	devoe => ww_devoe,
	o => \otR5[19]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\otR5[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][20]~q\,
	devoe => ww_devoe,
	o => \otR5[20]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\otR5[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][21]~q\,
	devoe => ww_devoe,
	o => \otR5[21]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\otR5[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][22]~q\,
	devoe => ww_devoe,
	o => \otR5[22]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\otR5[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][23]~q\,
	devoe => ww_devoe,
	o => \otR5[23]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\otR5[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][24]~q\,
	devoe => ww_devoe,
	o => \otR5[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\otR5[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][25]~q\,
	devoe => ww_devoe,
	o => \otR5[25]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\otR5[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][26]~q\,
	devoe => ww_devoe,
	o => \otR5[26]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\otR5[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][27]~q\,
	devoe => ww_devoe,
	o => \otR5[27]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\otR5[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][28]~q\,
	devoe => ww_devoe,
	o => \otR5[28]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\otR5[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][29]~q\,
	devoe => ww_devoe,
	o => \otR5[29]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\otR5[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][30]~q\,
	devoe => ww_devoe,
	o => \otR5[30]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\otR5[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[5][31]~q\,
	devoe => ww_devoe,
	o => \otR5[31]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\otR6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][0]~q\,
	devoe => ww_devoe,
	o => \otR6[0]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\otR6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][1]~q\,
	devoe => ww_devoe,
	o => \otR6[1]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\otR6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][2]~q\,
	devoe => ww_devoe,
	o => \otR6[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\otR6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][3]~q\,
	devoe => ww_devoe,
	o => \otR6[3]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\otR6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][4]~q\,
	devoe => ww_devoe,
	o => \otR6[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\otR6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][5]~q\,
	devoe => ww_devoe,
	o => \otR6[5]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\otR6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][6]~q\,
	devoe => ww_devoe,
	o => \otR6[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\otR6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][7]~q\,
	devoe => ww_devoe,
	o => \otR6[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\otR6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][8]~q\,
	devoe => ww_devoe,
	o => \otR6[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\otR6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][9]~q\,
	devoe => ww_devoe,
	o => \otR6[9]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\otR6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][10]~q\,
	devoe => ww_devoe,
	o => \otR6[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\otR6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][11]~q\,
	devoe => ww_devoe,
	o => \otR6[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\otR6[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][12]~q\,
	devoe => ww_devoe,
	o => \otR6[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\otR6[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][13]~q\,
	devoe => ww_devoe,
	o => \otR6[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\otR6[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][14]~q\,
	devoe => ww_devoe,
	o => \otR6[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\otR6[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][15]~q\,
	devoe => ww_devoe,
	o => \otR6[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\otR6[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][16]~q\,
	devoe => ww_devoe,
	o => \otR6[16]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\otR6[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][17]~q\,
	devoe => ww_devoe,
	o => \otR6[17]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\otR6[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][18]~q\,
	devoe => ww_devoe,
	o => \otR6[18]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\otR6[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][19]~q\,
	devoe => ww_devoe,
	o => \otR6[19]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\otR6[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][20]~q\,
	devoe => ww_devoe,
	o => \otR6[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\otR6[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][21]~q\,
	devoe => ww_devoe,
	o => \otR6[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\otR6[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][22]~q\,
	devoe => ww_devoe,
	o => \otR6[22]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\otR6[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][23]~q\,
	devoe => ww_devoe,
	o => \otR6[23]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\otR6[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][24]~q\,
	devoe => ww_devoe,
	o => \otR6[24]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\otR6[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][25]~q\,
	devoe => ww_devoe,
	o => \otR6[25]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\otR6[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][26]~q\,
	devoe => ww_devoe,
	o => \otR6[26]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\otR6[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][27]~q\,
	devoe => ww_devoe,
	o => \otR6[27]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\otR6[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][28]~q\,
	devoe => ww_devoe,
	o => \otR6[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\otR6[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][29]~q\,
	devoe => ww_devoe,
	o => \otR6[29]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\otR6[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][30]~q\,
	devoe => ww_devoe,
	o => \otR6[30]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\otR6[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[6][31]~q\,
	devoe => ww_devoe,
	o => \otR6[31]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\otR7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][0]~q\,
	devoe => ww_devoe,
	o => \otR7[0]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\otR7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][1]~q\,
	devoe => ww_devoe,
	o => \otR7[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\otR7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][2]~q\,
	devoe => ww_devoe,
	o => \otR7[2]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\otR7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][3]~q\,
	devoe => ww_devoe,
	o => \otR7[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\otR7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][4]~q\,
	devoe => ww_devoe,
	o => \otR7[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\otR7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][5]~q\,
	devoe => ww_devoe,
	o => \otR7[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\otR7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][6]~q\,
	devoe => ww_devoe,
	o => \otR7[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\otR7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][7]~q\,
	devoe => ww_devoe,
	o => \otR7[7]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\otR7[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][8]~q\,
	devoe => ww_devoe,
	o => \otR7[8]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\otR7[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][9]~q\,
	devoe => ww_devoe,
	o => \otR7[9]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\otR7[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][10]~q\,
	devoe => ww_devoe,
	o => \otR7[10]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\otR7[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][11]~q\,
	devoe => ww_devoe,
	o => \otR7[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\otR7[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][12]~q\,
	devoe => ww_devoe,
	o => \otR7[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\otR7[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][13]~q\,
	devoe => ww_devoe,
	o => \otR7[13]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\otR7[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][14]~q\,
	devoe => ww_devoe,
	o => \otR7[14]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\otR7[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][15]~q\,
	devoe => ww_devoe,
	o => \otR7[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\otR7[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][16]~q\,
	devoe => ww_devoe,
	o => \otR7[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\otR7[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][17]~q\,
	devoe => ww_devoe,
	o => \otR7[17]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\otR7[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][18]~q\,
	devoe => ww_devoe,
	o => \otR7[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\otR7[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][19]~q\,
	devoe => ww_devoe,
	o => \otR7[19]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\otR7[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][20]~q\,
	devoe => ww_devoe,
	o => \otR7[20]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\otR7[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][21]~q\,
	devoe => ww_devoe,
	o => \otR7[21]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\otR7[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][22]~q\,
	devoe => ww_devoe,
	o => \otR7[22]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\otR7[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][23]~q\,
	devoe => ww_devoe,
	o => \otR7[23]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\otR7[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][24]~q\,
	devoe => ww_devoe,
	o => \otR7[24]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\otR7[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][25]~q\,
	devoe => ww_devoe,
	o => \otR7[25]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\otR7[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][26]~q\,
	devoe => ww_devoe,
	o => \otR7[26]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\otR7[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][27]~q\,
	devoe => ww_devoe,
	o => \otR7[27]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\otR7[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][28]~q\,
	devoe => ww_devoe,
	o => \otR7[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\otR7[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][29]~q\,
	devoe => ww_devoe,
	o => \otR7[29]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\otR7[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][30]~q\,
	devoe => ww_devoe,
	o => \otR7[30]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\otR7[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|registrador[7][31]~q\,
	devoe => ww_devoe,
	o => \otR7[31]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|ALT_INV_v~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\resultadoSoma[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|a0|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\resultadoSoma[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:1:add1to31|soma~combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\resultadoSoma[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:2:add1to31|soma~combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\resultadoSoma[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:3:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\resultadoSoma[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:4:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\resultadoSoma[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:5:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\resultadoSoma[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:6:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[6]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\resultadoSoma[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:7:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[7]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\resultadoSoma[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:8:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[8]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\resultadoSoma[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:9:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[9]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\resultadoSoma[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:10:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\resultadoSoma[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:11:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[11]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\resultadoSoma[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:12:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\resultadoSoma[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:13:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[13]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\resultadoSoma[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:14:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[14]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\resultadoSoma[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:15:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[15]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\resultadoSoma[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:16:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[16]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\resultadoSoma[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:17:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[17]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\resultadoSoma[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:18:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\resultadoSoma[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:19:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[19]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\resultadoSoma[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:20:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[20]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\resultadoSoma[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:21:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\resultadoSoma[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:22:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[22]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\resultadoSoma[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:23:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[23]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\resultadoSoma[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:24:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[24]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\resultadoSoma[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:25:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[25]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\resultadoSoma[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:26:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\resultadoSoma[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:27:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[27]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\resultadoSoma[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:28:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\resultadoSoma[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:29:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[29]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\resultadoSoma[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:30:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[30]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\resultadoSoma[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|adder|addsloop:31:add1to31|soma~0_combout\,
	devoe => ww_devoe,
	o => \resultadoSoma[31]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\opcodeDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|content~34_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\opcodeDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|content~35_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\opcodeDebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|content~12_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[2]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
\opcodeDebug[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Rom|content~34_combout\,
	devoe => ww_devoe,
	o => \opcodeDebug[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X7_Y73_N23
\Mux3Debug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \Mux3Debug~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\Mux4Debug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \Mux4Debug~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\mux_beq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|beqAnd~combout\,
	devoe => ww_devoe,
	o => \mux_beq~output_o\);

-- Location: IOOBUF_X7_Y73_N16
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

-- Location: IOOBUF_X5_Y73_N23
\HabLeMEMDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucfd|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \HabLeMEMDebug~output_o\);

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X3_Y73_N2
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X115_Y34_N23
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X115_Y32_N9
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

-- Location: IOOBUF_X115_Y15_N2
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

-- Location: IOOBUF_X115_Y15_N9
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

-- Location: IOOBUF_X96_Y0_N16
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X0_Y50_N23
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X113_Y73_N2
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X115_Y61_N16
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X115_Y59_N23
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X0_Y55_N16
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X0_Y44_N2
\testAluA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[0]~127_combout\,
	devoe => ww_devoe,
	o => \testAluA[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\testAluA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[1]~123_combout\,
	devoe => ww_devoe,
	o => \testAluA[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\testAluA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[2]~119_combout\,
	devoe => ww_devoe,
	o => \testAluA[2]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\testAluA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[3]~115_combout\,
	devoe => ww_devoe,
	o => \testAluA[3]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\testAluA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[4]~111_combout\,
	devoe => ww_devoe,
	o => \testAluA[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\testAluA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[5]~107_combout\,
	devoe => ww_devoe,
	o => \testAluA[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\testAluA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[6]~103_combout\,
	devoe => ww_devoe,
	o => \testAluA[6]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\testAluA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[7]~99_combout\,
	devoe => ww_devoe,
	o => \testAluA[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\testAluA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[8]~95_combout\,
	devoe => ww_devoe,
	o => \testAluA[8]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\testAluA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[9]~91_combout\,
	devoe => ww_devoe,
	o => \testAluA[9]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\testAluA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[10]~87_combout\,
	devoe => ww_devoe,
	o => \testAluA[10]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\testAluA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[11]~83_combout\,
	devoe => ww_devoe,
	o => \testAluA[11]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\testAluA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[12]~79_combout\,
	devoe => ww_devoe,
	o => \testAluA[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\testAluA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[13]~75_combout\,
	devoe => ww_devoe,
	o => \testAluA[13]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\testAluA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[14]~71_combout\,
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
	i => \fd|BankRegister|saidaA[15]~67_combout\,
	devoe => ww_devoe,
	o => \testAluA[15]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\testAluA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[16]~63_combout\,
	devoe => ww_devoe,
	o => \testAluA[16]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\testAluA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[17]~59_combout\,
	devoe => ww_devoe,
	o => \testAluA[17]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\testAluA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[18]~55_combout\,
	devoe => ww_devoe,
	o => \testAluA[18]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\testAluA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[19]~51_combout\,
	devoe => ww_devoe,
	o => \testAluA[19]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\testAluA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[20]~47_combout\,
	devoe => ww_devoe,
	o => \testAluA[20]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\testAluA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[21]~43_combout\,
	devoe => ww_devoe,
	o => \testAluA[21]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\testAluA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[22]~39_combout\,
	devoe => ww_devoe,
	o => \testAluA[22]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\testAluA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[23]~35_combout\,
	devoe => ww_devoe,
	o => \testAluA[23]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\testAluA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[24]~31_combout\,
	devoe => ww_devoe,
	o => \testAluA[24]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\testAluA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[25]~27_combout\,
	devoe => ww_devoe,
	o => \testAluA[25]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\testAluA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[26]~23_combout\,
	devoe => ww_devoe,
	o => \testAluA[26]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\testAluA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[27]~19_combout\,
	devoe => ww_devoe,
	o => \testAluA[27]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\testAluA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[28]~15_combout\,
	devoe => ww_devoe,
	o => \testAluA[28]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\testAluA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[29]~11_combout\,
	devoe => ww_devoe,
	o => \testAluA[29]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\testAluA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[30]~7_combout\,
	devoe => ww_devoe,
	o => \testAluA[30]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\testAluA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|BankRegister|saidaA[31]~3_combout\,
	devoe => ww_devoe,
	o => \testAluA[31]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\testAluB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[0]~45_combout\,
	devoe => ww_devoe,
	o => \testAluB[0]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\testAluB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[1]~39_combout\,
	devoe => ww_devoe,
	o => \testAluB[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\testAluB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[2]~37_combout\,
	devoe => ww_devoe,
	o => \testAluB[2]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\testAluB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[3]~35_combout\,
	devoe => ww_devoe,
	o => \testAluB[3]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\testAluB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[4]~33_combout\,
	devoe => ww_devoe,
	o => \testAluB[4]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\testAluB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[5]~32_combout\,
	devoe => ww_devoe,
	o => \testAluB[5]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\testAluB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[6]~30_combout\,
	devoe => ww_devoe,
	o => \testAluB[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\testAluB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[7]~29_combout\,
	devoe => ww_devoe,
	o => \testAluB[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\testAluB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[8]~28_combout\,
	devoe => ww_devoe,
	o => \testAluB[8]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\testAluB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[9]~27_combout\,
	devoe => ww_devoe,
	o => \testAluB[9]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\testAluB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[10]~26_combout\,
	devoe => ww_devoe,
	o => \testAluB[10]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\testAluB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[11]~25_combout\,
	devoe => ww_devoe,
	o => \testAluB[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\testAluB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[12]~23_combout\,
	devoe => ww_devoe,
	o => \testAluB[12]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\testAluB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[13]~21_combout\,
	devoe => ww_devoe,
	o => \testAluB[13]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\testAluB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[14]~19_combout\,
	devoe => ww_devoe,
	o => \testAluB[14]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X29_Y0_N16
\testAluB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[16]~17_combout\,
	devoe => ww_devoe,
	o => \testAluB[16]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\testAluB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[17]~16_combout\,
	devoe => ww_devoe,
	o => \testAluB[17]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\testAluB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[18]~15_combout\,
	devoe => ww_devoe,
	o => \testAluB[18]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\testAluB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[19]~14_combout\,
	devoe => ww_devoe,
	o => \testAluB[19]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\testAluB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[20]~13_combout\,
	devoe => ww_devoe,
	o => \testAluB[20]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\testAluB[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[21]~12_combout\,
	devoe => ww_devoe,
	o => \testAluB[21]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\testAluB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[22]~11_combout\,
	devoe => ww_devoe,
	o => \testAluB[22]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\testAluB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[23]~10_combout\,
	devoe => ww_devoe,
	o => \testAluB[23]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\testAluB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[24]~9_combout\,
	devoe => ww_devoe,
	o => \testAluB[24]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\testAluB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[25]~8_combout\,
	devoe => ww_devoe,
	o => \testAluB[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\testAluB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[26]~7_combout\,
	devoe => ww_devoe,
	o => \testAluB[26]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\testAluB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[27]~6_combout\,
	devoe => ww_devoe,
	o => \testAluB[27]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\testAluB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[28]~5_combout\,
	devoe => ww_devoe,
	o => \testAluB[28]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\testAluB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[29]~4_combout\,
	devoe => ww_devoe,
	o => \testAluB[29]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\testAluB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[30]~3_combout\,
	devoe => ww_devoe,
	o => \testAluB[30]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\testAluB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|MuxSaidaBankRegister|selected[31]~44_combout\,
	devoe => ww_devoe,
	o => \testAluB[31]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\testeAluRes[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[0]~1_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\testeAluRes[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[1]~57_combout\,
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
	i => \fd|ALU|final|selected[2]~55_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\testeAluRes[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[3]~61_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[3]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\testeAluRes[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[4]~59_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\testeAluRes[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[5]~63_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[5]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\testeAluRes[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[6]~31_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[6]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\testeAluRes[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[7]~33_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[7]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\testeAluRes[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[8]~27_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[8]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\testeAluRes[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[9]~17_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[9]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\testeAluRes[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[10]~15_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[10]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\testeAluRes[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[11]~53_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\testeAluRes[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[12]~51_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\testeAluRes[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[13]~49_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[13]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\testeAluRes[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[14]~9_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[14]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\testeAluRes[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[15]~7_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[15]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\testeAluRes[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[16]~39_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[16]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\testeAluRes[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[17]~29_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[17]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\testeAluRes[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[18]~41_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[18]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\testeAluRes[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[19]~11_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[19]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\testeAluRes[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[20]~35_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[20]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\testeAluRes[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[21]~37_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[21]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\testeAluRes[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[22]~43_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[22]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\testeAluRes[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[23]~45_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[23]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\testeAluRes[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[24]~47_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\testeAluRes[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[25]~13_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\testeAluRes[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[26]~19_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\testeAluRes[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[27]~21_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[27]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\testeAluRes[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[28]~23_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[28]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\testeAluRes[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[29]~25_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[29]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\testeAluRes[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[30]~3_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[30]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\testeAluRes[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|ALU|final|selected[31]~5_combout\,
	devoe => ww_devoe,
	o => \testeAluRes[31]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\testeOutRam[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Ram|ram~1062_combout\,
	devoe => ww_devoe,
	o => \testeOutRam[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\testeOutRam[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Ram|ram~1063_combout\,
	devoe => ww_devoe,
	o => \testeOutRam[1]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\testeOutRam[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|Ram|ALT_INV_ram~1064_combout\,
	devoe => ww_devoe,
	o => \testeOutRam[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\testeOutRam[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\testeOutRam[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\testeOutRam[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[5]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\testeOutRam[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[6]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\testeOutRam[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\testeOutRam[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[8]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\testeOutRam[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[9]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\testeOutRam[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[10]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\testeOutRam[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[11]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\testeOutRam[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[12]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\testeOutRam[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[13]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\testeOutRam[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\testeOutRam[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[15]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\testeOutRam[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[16]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\testeOutRam[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[17]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\testeOutRam[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\testeOutRam[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[19]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\testeOutRam[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[20]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\testeOutRam[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[21]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\testeOutRam[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[22]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\testeOutRam[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[23]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\testeOutRam[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[24]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\testeOutRam[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[25]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\testeOutRam[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[26]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\testeOutRam[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[27]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\testeOutRam[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[28]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\testeOutRam[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[29]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\testeOutRam[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[30]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\testeOutRam[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testeOutRam[31]~output_o\);

-- Location: IOIBUF_X58_Y0_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X57_Y38_N20
\fd|adder|addsloop:2:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:2:add1to31|w3~combout\ = (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) & \fd|PC|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(1),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|adder|addsloop:2:add1to31|w3~combout\);

-- Location: LCCOMB_X58_Y38_N8
\fd|adder|addsloop:5:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:5:add1to31|soma~combout\ = \fd|PC|DOUT\(5) $ (((\fd|PC|DOUT\(4) & (\fd|PC|DOUT\(3) & \fd|adder|addsloop:2:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:2:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:5:add1to31|soma~combout\);

-- Location: LCCOMB_X58_Y38_N14
\fd|adder|addsloop:6:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:6:add1to31|w3~combout\ = (\fd|PC|DOUT\(6) & (\fd|PC|DOUT\(5) & \fd|adder|addsloop:4:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(6),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:6:add1to31|w3~combout\);

-- Location: LCCOMB_X58_Y38_N20
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

-- Location: LCCOMB_X58_Y38_N24
\fd|adder|addsloop:7:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:7:add1to31|w3~combout\ = (\fd|PC|DOUT\(6) & (\fd|PC|DOUT\(7) & (\fd|PC|DOUT\(5) & \fd|adder|addsloop:4:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(6),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:7:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y38_N12
\fd|adder2|addsloop:9:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:9:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:8:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(9) $ (((\fd|PC|DOUT\(8) & \fd|adder|addsloop:7:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datab => \fd|PC|DOUT\(8),
	datac => \fd|adder2|addsloop:8:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:9:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y38_N22
\fd|adder|addsloop:10:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:10:add1to31|soma~combout\ = \fd|PC|DOUT\(10) $ (((\fd|adder|addsloop:8:add1to31|w3~combout\ & \fd|PC|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|adder|addsloop:8:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(9),
	combout => \fd|adder|addsloop:10:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y40_N4
\fd|Rom|content~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~17_combout\ = (\fd|PC|DOUT\(2)) # (\fd|PC|DOUT\(1) $ (((\fd|PC|DOUT\(3) & !\fd|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|content~17_combout\);

-- Location: LCCOMB_X52_Y40_N24
\fd|Rom|content~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~7_combout\ = (!\fd|PC|DOUT\(1) & !\fd|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(2),
	combout => \fd|Rom|content~7_combout\);

-- Location: LCCOMB_X54_Y40_N16
\fd|Rom|content~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~11_combout\ = (\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(3) & (\fd|PC|DOUT\(2) & \fd|PC|DOUT\(0)))) # (!\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(3) & (!\fd|PC|DOUT\(2) & !\fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|content~11_combout\);

-- Location: LCCOMB_X54_Y40_N2
\ucfd|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal1~0_combout\ = (!\fd|PC|DOUT\(3) & (!\fd|Rom|content~17_combout\ & (\fd|Rom|content~7_combout\ & !\fd|Rom|content~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(3),
	datab => \fd|Rom|content~17_combout\,
	datac => \fd|Rom|content~7_combout\,
	datad => \fd|Rom|content~11_combout\,
	combout => \ucfd|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y40_N28
\ucfd|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal1~1_combout\ = (\fd|Rom|content~0_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~1_combout\ & \ucfd|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~0_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \ucfd|Equal1~1_combout\);

-- Location: LCCOMB_X54_Y38_N20
\fd|Rom|content~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~15_combout\ = (\fd|PC|DOUT\(3)) # ((\fd|PC|DOUT\(2) & ((\fd|PC|DOUT\(1)))) # (!\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(0) & !\fd|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(3),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~15_combout\);

-- Location: LCCOMB_X54_Y38_N18
\fd|Rom|content~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~16_combout\ = (\fd|Rom|content~0_combout\ & (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & !\fd|Rom|content~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~0_combout\,
	datab => \fd|Rom|content~1_combout\,
	datac => \fd|Rom|content~2_combout\,
	datad => \fd|Rom|content~15_combout\,
	combout => \fd|Rom|content~16_combout\);

-- Location: LCCOMB_X54_Y38_N16
\fd|Rom|content~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~13_combout\ = (!\fd|PC|DOUT\(3) & ((\fd|PC|DOUT\(2) & (!\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))) # (!\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(0) & !\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(3),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~13_combout\);

-- Location: LCCOMB_X54_Y38_N6
\fd|Rom|content~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~14_combout\ = (\fd|Rom|content~0_combout\ & (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & \fd|Rom|content~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~0_combout\,
	datab => \fd|Rom|content~1_combout\,
	datac => \fd|Rom|content~2_combout\,
	datad => \fd|Rom|content~13_combout\,
	combout => \fd|Rom|content~14_combout\);

-- Location: LCCOMB_X53_Y38_N22
\fd|Rom|content~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~32_combout\ = (\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(2) & ((\fd|PC|DOUT\(3)))) # (!\fd|PC|DOUT\(2) & ((\fd|PC|DOUT\(1)) # (!\fd|PC|DOUT\(3)))))) # (!\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(2)) # ((\fd|PC|DOUT\(1) & !\fd|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~32_combout\);

-- Location: LCCOMB_X53_Y38_N8
\fd|Rom|content~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~33_combout\ = (!\fd|Rom|content~32_combout\ & (\fd|Rom|content~0_combout\ & (\fd|Rom|content~2_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~32_combout\,
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~2_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~33_combout\);

-- Location: LCCOMB_X58_Y39_N22
\fd|UCalu|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal2~2_combout\ = (\fd|Rom|content~25_combout\ & (!\fd|Rom|content~27_combout\ & !\fd|Rom|content~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~25_combout\,
	datab => \fd|Rom|content~27_combout\,
	datad => \fd|Rom|content~33_combout\,
	combout => \fd|UCalu|Equal2~2_combout\);

-- Location: LCCOMB_X55_Y40_N4
\fd|Rom|content~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~30_combout\ = (\fd|PC|DOUT\(3) & (!\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(2) & \fd|PC|DOUT\(0)))) # (!\fd|PC|DOUT\(3) & (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) $ (\fd|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(3),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|content~30_combout\);

-- Location: LCCOMB_X55_Y40_N14
\fd|Rom|content~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~31_combout\ = (\fd|Rom|content~2_combout\ & (\fd|Rom|content~0_combout\ & (\fd|Rom|content~30_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~2_combout\,
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~30_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~31_combout\);

-- Location: LCCOMB_X53_Y38_N30
\fd|Rom|content~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~28_combout\ = (!\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(3) & ((\fd|PC|DOUT\(0)) # (\fd|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~28_combout\);

-- Location: LCCOMB_X53_Y38_N24
\fd|Rom|content~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~29_combout\ = (\fd|Rom|content~28_combout\ & (\fd|Rom|content~0_combout\ & (\fd|Rom|content~2_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~28_combout\,
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~2_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~29_combout\);

-- Location: LCCOMB_X59_Y39_N8
\fd|UCalu|output[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[0]~5_combout\ = ((\fd|UCalu|Equal2~2_combout\ & ((!\fd|Rom|content~29_combout\) # (!\fd|Rom|content~31_combout\)))) # (!\ucfd|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|Equal2~2_combout\,
	datab => \fd|Rom|content~31_combout\,
	datac => \fd|Rom|content~29_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|output[0]~5_combout\);

-- Location: LCCOMB_X59_Y39_N18
\fd|UCalu|output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~0_combout\ = (\fd|Rom|content~29_combout\ & (!\fd|Rom|content~27_combout\ & ((!\fd|Rom|content~31_combout\)))) # (!\fd|Rom|content~29_combout\ & (((!\fd|Rom|content~33_combout\ & \fd|Rom|content~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~27_combout\,
	datab => \fd|Rom|content~33_combout\,
	datac => \fd|Rom|content~29_combout\,
	datad => \fd|Rom|content~31_combout\,
	combout => \fd|UCalu|output[3]~0_combout\);

-- Location: LCCOMB_X59_Y39_N28
\fd|UCalu|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal2~0_combout\ = (!\fd|Rom|content~27_combout\ & (!\fd|Rom|content~33_combout\ & (!\fd|Rom|content~29_combout\ & \fd|Rom|content~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~27_combout\,
	datab => \fd|Rom|content~33_combout\,
	datac => \fd|Rom|content~29_combout\,
	datad => \fd|Rom|content~25_combout\,
	combout => \fd|UCalu|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y39_N6
\fd|UCalu|output[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~1_combout\ = (\fd|Rom|content~25_combout\ & ((\fd|UCalu|output[3]~0_combout\) # ((!\fd|Rom|content~31_combout\ & \fd|UCalu|Equal2~0_combout\)))) # (!\fd|Rom|content~25_combout\ & (((!\fd|Rom|content~31_combout\ & 
-- \fd|UCalu|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~25_combout\,
	datab => \fd|UCalu|output[3]~0_combout\,
	datac => \fd|Rom|content~31_combout\,
	datad => \fd|UCalu|Equal2~0_combout\,
	combout => \fd|UCalu|output[3]~1_combout\);

-- Location: LCCOMB_X52_Y40_N10
\fd|Rom|content~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~8_combout\ = (\fd|Rom|content~2_combout\ & (\fd|Rom|content~7_combout\ & (\fd|Rom|content~0_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~2_combout\,
	datab => \fd|Rom|content~7_combout\,
	datac => \fd|Rom|content~0_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~8_combout\);

-- Location: LCCOMB_X57_Y38_N24
\fd|Rom|content~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~34_combout\ = (\fd|Rom|content~8_combout\ & !\fd|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~34_combout\);

-- Location: LCCOMB_X55_Y37_N2
\fd|Rom|content~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~35_combout\ = (!\fd|Rom|content~17_combout\ & (\fd|Rom|content~0_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~17_combout\,
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~35_combout\);

-- Location: LCCOMB_X57_Y38_N30
\ucfd|BEQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|BEQ~0_combout\ = (\fd|Rom|content~12_combout\ & (!\fd|Rom|content~35_combout\ & ((\fd|PC|DOUT\(3)) # (!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(3),
	datad => \fd|Rom|content~35_combout\,
	combout => \ucfd|BEQ~0_combout\);

-- Location: LCCOMB_X59_Y39_N16
\fd|UCalu|output[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~2_combout\ = (\fd|UCalu|output[3]~1_combout\) # ((\fd|Rom|content~34_combout\) # ((\fd|Rom|content~35_combout\) # (\ucfd|BEQ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output[3]~1_combout\,
	datab => \fd|Rom|content~34_combout\,
	datac => \fd|Rom|content~35_combout\,
	datad => \ucfd|BEQ~0_combout\,
	combout => \fd|UCalu|output[3]~2_combout\);

-- Location: LCCOMB_X59_Y39_N20
\fd|UCalu|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~5_combout\ = (!\fd|UCalu|output[0]~5_combout\ & \fd|UCalu|output[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|UCalu|output[0]~5_combout\,
	datad => \fd|UCalu|output[3]~2_combout\,
	combout => \fd|UCalu|comb~5_combout\);

-- Location: LCCOMB_X59_Y39_N26
\fd|UCalu|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~4_combout\ = (\fd|UCalu|output[0]~5_combout\ & \fd|UCalu|output[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|UCalu|output[0]~5_combout\,
	datad => \fd|UCalu|output[3]~2_combout\,
	combout => \fd|UCalu|comb~4_combout\);

-- Location: LCCOMB_X59_Y39_N10
\fd|UCalu|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(0) = (!\fd|UCalu|comb~4_combout\ & ((\fd|UCalu|comb~5_combout\) # (\fd|UCalu|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|comb~5_combout\,
	datac => \fd|UCalu|comb~4_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|UCalu|output\(0));

-- Location: LCCOMB_X55_Y40_N28
\fd|MuxRegRam|selected[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[3]~3_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[3]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[3]~61_combout\,
	combout => \fd|MuxRegRam|selected[3]~3_combout\);

-- Location: LCCOMB_X57_Y38_N8
\ucfd|HabEscritaReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|HabEscritaReg~0_combout\ = (!\fd|Rom|content~12_combout\ & (\fd|Rom|content~35_combout\ $ (((\fd|PC|DOUT\(3)) # (!\fd|Rom|content~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(3),
	datad => \fd|Rom|content~35_combout\,
	combout => \ucfd|HabEscritaReg~0_combout\);

-- Location: LCCOMB_X52_Y38_N10
\fd|Rom|content~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~22_combout\ = (!\fd|PC|DOUT\(3) & (!\fd|PC|DOUT\(0) & ((\fd|PC|DOUT\(2)) # (\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|content~22_combout\);

-- Location: LCCOMB_X55_Y37_N4
\fd|Rom|content~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~36_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~0_combout\ & \fd|Rom|content~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~0_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~36_combout\);

-- Location: LCCOMB_X55_Y37_N14
\fd|MuxRtRd|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRtRd|selected[0]~0_combout\ = (\fd|Rom|content~36_combout\ & ((\ucfd|Equal0~0_combout\ & (\fd|Rom|content~22_combout\)) # (!\ucfd|Equal0~0_combout\ & ((\fd|Rom|content~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~22_combout\,
	datab => \fd|Rom|content~36_combout\,
	datac => \fd|Rom|content~13_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|MuxRtRd|selected[0]~0_combout\);

-- Location: LCCOMB_X55_Y37_N28
\fd|Rom|content~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~20_combout\ = (!\fd|PC|DOUT\(3) & ((\fd|PC|DOUT\(0) & (!\fd|PC|DOUT\(1) & \fd|PC|DOUT\(2))) # (!\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~20_combout\);

-- Location: LCCOMB_X56_Y37_N14
\fd|MuxRtRd|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRtRd|selected[1]~1_combout\ = (\fd|Rom|content~36_combout\ & ((\ucfd|Equal0~0_combout\ & ((\fd|Rom|content~20_combout\))) # (!\ucfd|Equal0~0_combout\ & (!\fd|Rom|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~15_combout\,
	datab => \fd|Rom|content~36_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|Rom|content~20_combout\,
	combout => \fd|MuxRtRd|selected[1]~1_combout\);

-- Location: LCCOMB_X56_Y37_N26
\fd|BankRegister|registrador[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][3]~1_combout\ = (\fd|MuxRtRd|selected[0]~0_combout\ & (!\fd|MuxRtRd|selected[1]~1_combout\ & !\ucfd|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[0]~0_combout\,
	datab => \fd|MuxRtRd|selected[1]~1_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|BankRegister|registrador[1][3]~1_combout\);

-- Location: LCCOMB_X55_Y37_N8
\fd|Rom|content~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~18_combout\ = (!\fd|PC|DOUT\(3) & (\fd|PC|DOUT\(2) $ (((\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~18_combout\);

-- Location: LCCOMB_X55_Y37_N26
\fd|Rom|content~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~19_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~0_combout\ & (\fd|Rom|content~18_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~0_combout\,
	datac => \fd|Rom|content~18_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~19_combout\);

-- Location: LCCOMB_X56_Y37_N12
\fd|BankRegister|registrador[5][3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][3]~12_combout\ = (\ucfd|Equal0~0_combout\ & (!\fd|MuxRtRd|selected[1]~1_combout\ & (\fd|Rom|content~19_combout\ & \fd|MuxRtRd|selected[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|MuxRtRd|selected[1]~1_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|MuxRtRd|selected[0]~0_combout\,
	combout => \fd|BankRegister|registrador[5][3]~12_combout\);

-- Location: LCCOMB_X56_Y37_N10
\fd|BankRegister|registrador[5][3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][3]~13_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[5][3]~12_combout\) # ((\fd|Rom|content~12_combout\ & \fd|BankRegister|registrador[1][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \ucfd|HabEscritaReg~0_combout\,
	datac => \fd|BankRegister|registrador[1][3]~1_combout\,
	datad => \fd|BankRegister|registrador[5][3]~12_combout\,
	combout => \fd|BankRegister|registrador[5][3]~13_combout\);

-- Location: FF_X56_Y41_N15
\fd|BankRegister|registrador[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][3]~q\);

-- Location: LCCOMB_X54_Y38_N2
\fd|Rom|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~3_combout\ = (!\fd|PC|DOUT\(3) & ((\fd|PC|DOUT\(2) & ((\fd|PC|DOUT\(0)) # (!\fd|PC|DOUT\(1)))) # (!\fd|PC|DOUT\(2) & ((\fd|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(3),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|content~3_combout\);

-- Location: LCCOMB_X54_Y38_N24
\fd|Rom|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~4_combout\ = (\fd|Rom|content~0_combout\ & (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & \fd|Rom|content~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~0_combout\,
	datab => \fd|Rom|content~1_combout\,
	datac => \fd|Rom|content~2_combout\,
	datad => \fd|Rom|content~3_combout\,
	combout => \fd|Rom|content~4_combout\);

-- Location: LCCOMB_X55_Y41_N4
\fd|BankRegister|registrador[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~3_combout\,
	combout => \fd|BankRegister|registrador[4][3]~feeder_combout\);

-- Location: LCCOMB_X57_Y37_N12
\fd|BankRegister|registrador[4][3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][3]~10_combout\ = (!\fd|MuxRtRd|selected[0]~0_combout\ & (!\ucfd|Equal0~0_combout\ & !\fd|MuxRtRd|selected[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|MuxRtRd|selected[0]~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|MuxRtRd|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[4][3]~10_combout\);

-- Location: LCCOMB_X57_Y37_N22
\fd|BankRegister|registrador[4][3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][3]~9_combout\ = (\fd|Rom|content~19_combout\ & (!\fd|MuxRtRd|selected[0]~0_combout\ & (\ucfd|Equal0~0_combout\ & !\fd|MuxRtRd|selected[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~19_combout\,
	datab => \fd|MuxRtRd|selected[0]~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|MuxRtRd|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[4][3]~9_combout\);

-- Location: LCCOMB_X57_Y37_N2
\fd|BankRegister|registrador[4][3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][3]~11_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[4][3]~9_combout\) # ((\fd|BankRegister|registrador[4][3]~10_combout\ & \fd|Rom|content~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][3]~10_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|registrador[4][3]~9_combout\,
	datad => \ucfd|HabEscritaReg~0_combout\,
	combout => \fd|BankRegister|registrador[4][3]~11_combout\);

-- Location: FF_X55_Y41_N5
\fd|BankRegister|registrador[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][3]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][3]~q\);

-- Location: LCCOMB_X56_Y40_N26
\fd|BankRegister|saidaA[3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[3]~112_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][3]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][3]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[4][3]~q\,
	combout => \fd|BankRegister|saidaA[3]~112_combout\);

-- Location: LCCOMB_X57_Y37_N24
\fd|BankRegister|registrador[2][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][3]~3_combout\ = (!\fd|Rom|content~19_combout\ & (!\fd|MuxRtRd|selected[0]~0_combout\ & (\ucfd|Equal0~0_combout\ & \fd|MuxRtRd|selected[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~19_combout\,
	datab => \fd|MuxRtRd|selected[0]~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|MuxRtRd|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[2][3]~3_combout\);

-- Location: LCCOMB_X57_Y37_N30
\fd|BankRegister|registrador[2][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][3]~4_combout\ = (!\fd|MuxRtRd|selected[0]~0_combout\ & (!\ucfd|Equal0~0_combout\ & \fd|MuxRtRd|selected[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|MuxRtRd|selected[0]~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|MuxRtRd|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[2][3]~4_combout\);

-- Location: LCCOMB_X57_Y37_N16
\fd|BankRegister|registrador[2][3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][3]~5_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[2][3]~3_combout\) # ((!\fd|Rom|content~12_combout\ & \fd|BankRegister|registrador[2][3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][3]~3_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|registrador[2][3]~4_combout\,
	datad => \ucfd|HabEscritaReg~0_combout\,
	combout => \fd|BankRegister|registrador[2][3]~5_combout\);

-- Location: FF_X56_Y40_N13
\fd|BankRegister|registrador[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][3]~q\);

-- Location: LCCOMB_X56_Y37_N8
\fd|BankRegister|registrador[3][3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][3]~7_combout\ = (\fd|MuxRtRd|selected[0]~0_combout\ & (\fd|MuxRtRd|selected[1]~1_combout\ & !\ucfd|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxRtRd|selected[0]~0_combout\,
	datab => \fd|MuxRtRd|selected[1]~1_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|BankRegister|registrador[3][3]~7_combout\);

-- Location: LCCOMB_X56_Y37_N18
\fd|BankRegister|registrador[3][3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][3]~6_combout\ = (\ucfd|Equal0~0_combout\ & (\fd|MuxRtRd|selected[1]~1_combout\ & (!\fd|Rom|content~19_combout\ & \fd|MuxRtRd|selected[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|MuxRtRd|selected[1]~1_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|MuxRtRd|selected[0]~0_combout\,
	combout => \fd|BankRegister|registrador[3][3]~6_combout\);

-- Location: LCCOMB_X56_Y37_N2
\fd|BankRegister|registrador[3][3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][3]~8_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[3][3]~6_combout\) # ((!\fd|Rom|content~12_combout\ & \fd|BankRegister|registrador[3][3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \ucfd|HabEscritaReg~0_combout\,
	datac => \fd|BankRegister|registrador[3][3]~7_combout\,
	datad => \fd|BankRegister|registrador[3][3]~6_combout\,
	combout => \fd|BankRegister|registrador[3][3]~8_combout\);

-- Location: FF_X56_Y40_N5
\fd|BankRegister|registrador[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][3]~q\);

-- Location: LCCOMB_X56_Y37_N16
\fd|BankRegister|registrador[1][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][3]~0_combout\ = (\ucfd|Equal0~0_combout\ & (!\fd|MuxRtRd|selected[1]~1_combout\ & (!\fd|Rom|content~19_combout\ & \fd|MuxRtRd|selected[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|MuxRtRd|selected[1]~1_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|MuxRtRd|selected[0]~0_combout\,
	combout => \fd|BankRegister|registrador[1][3]~0_combout\);

-- Location: LCCOMB_X56_Y37_N28
\fd|BankRegister|registrador[1][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][3]~2_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[1][3]~0_combout\) # ((\fd|BankRegister|registrador[1][3]~1_combout\ & !\fd|Rom|content~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][3]~1_combout\,
	datab => \fd|BankRegister|registrador[1][3]~0_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \ucfd|HabEscritaReg~0_combout\,
	combout => \fd|BankRegister|registrador[1][3]~2_combout\);

-- Location: FF_X55_Y40_N25
\fd|BankRegister|registrador[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][3]~q\);

-- Location: LCCOMB_X57_Y37_N8
\fd|BankRegister|registrador[0][31]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][31]~18_combout\ = (!\fd|Rom|content~19_combout\ & (!\fd|MuxRtRd|selected[0]~0_combout\ & (\ucfd|Equal0~0_combout\ & !\fd|MuxRtRd|selected[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~19_combout\,
	datab => \fd|MuxRtRd|selected[0]~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|MuxRtRd|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[0][31]~18_combout\);

-- Location: LCCOMB_X57_Y37_N26
\fd|BankRegister|registrador[0][31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][31]~19_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[0][31]~18_combout\) # ((\fd|BankRegister|registrador[4][3]~10_combout\ & !\fd|Rom|content~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][3]~10_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|registrador[0][31]~18_combout\,
	datad => \ucfd|HabEscritaReg~0_combout\,
	combout => \fd|BankRegister|registrador[0][31]~19_combout\);

-- Location: FF_X55_Y40_N27
\fd|BankRegister|registrador[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~3_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][3]~q\);

-- Location: LCCOMB_X53_Y38_N4
\fd|Rom|content~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~5_combout\ = (\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(1) & !\fd|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~5_combout\);

-- Location: LCCOMB_X54_Y38_N10
\fd|Rom|content~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~6_combout\ = (\fd|Rom|content~2_combout\ & (\fd|Rom|content~1_combout\ & (\fd|Rom|content~5_combout\ & \fd|Rom|content~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~2_combout\,
	datab => \fd|Rom|content~1_combout\,
	datac => \fd|Rom|content~5_combout\,
	datad => \fd|Rom|content~0_combout\,
	combout => \fd|Rom|content~6_combout\);

-- Location: LCCOMB_X55_Y40_N26
\fd|BankRegister|saidaA[3]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[3]~113_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][3]~q\) # ((\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[0][3]~q\ & !\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[1][3]~q\,
	datac => \fd|BankRegister|registrador[0][3]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[3]~113_combout\);

-- Location: LCCOMB_X56_Y40_N16
\fd|BankRegister|saidaA[3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[3]~114_combout\ = (\fd|BankRegister|saidaA[3]~113_combout\ & (((\fd|BankRegister|registrador[3][3]~q\) # (!\fd|Rom|content~6_combout\)))) # (!\fd|BankRegister|saidaA[3]~113_combout\ & (\fd|BankRegister|registrador[2][3]~q\ & 
-- ((\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][3]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|saidaA[3]~113_combout\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[3]~114_combout\);

-- Location: LCCOMB_X52_Y40_N14
\fd|Rom|content~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~10_combout\ = (\fd|PC|DOUT\(3) & !\fd|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|PC|DOUT\(3),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|content~10_combout\);

-- Location: LCCOMB_X52_Y40_N8
\fd|BankRegister|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|Equal0~0_combout\ = (!\fd|Rom|content~6_combout\ & (!\fd|Rom|content~4_combout\ & ((!\fd|Rom|content~10_combout\) # (!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~8_combout\,
	datab => \fd|Rom|content~10_combout\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y40_N0
\fd|Rom|content~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~9_combout\ = (!\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(3) & \fd|Rom|content~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(3),
	datad => \fd|Rom|content~8_combout\,
	combout => \fd|Rom|content~9_combout\);

-- Location: LCCOMB_X56_Y40_N6
\fd|BankRegister|saidaA[3]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[3]~115_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[3]~112_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[3]~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[3]~112_combout\,
	datab => \fd|BankRegister|saidaA[3]~114_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[3]~115_combout\);

-- Location: LCCOMB_X55_Y40_N24
\fd|BankRegister|saidaB[3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[3]~110_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|BankRegister|registrador[1][3]~q\) # (\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][3]~q\ & 
-- ((!\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][3]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[3]~110_combout\);

-- Location: LCCOMB_X56_Y40_N12
\fd|BankRegister|saidaB[3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[3]~111_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[3]~110_combout\ & (\fd|BankRegister|registrador[3][3]~q\)) # (!\fd|BankRegister|saidaB[3]~110_combout\ & ((\fd|BankRegister|registrador[2][3]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[3]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[2][3]~q\,
	datad => \fd|BankRegister|saidaB[3]~110_combout\,
	combout => \fd|BankRegister|saidaB[3]~111_combout\);

-- Location: LCCOMB_X55_Y41_N2
\fd|BankRegister|registrador[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~3_combout\,
	combout => \fd|BankRegister|registrador[7][3]~feeder_combout\);

-- Location: LCCOMB_X56_Y37_N4
\fd|BankRegister|registrador[7][3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][3]~16_combout\ = (\ucfd|Equal0~0_combout\ & (\fd|MuxRtRd|selected[1]~1_combout\ & (\fd|Rom|content~19_combout\ & \fd|MuxRtRd|selected[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|MuxRtRd|selected[1]~1_combout\,
	datac => \fd|Rom|content~19_combout\,
	datad => \fd|MuxRtRd|selected[0]~0_combout\,
	combout => \fd|BankRegister|registrador[7][3]~16_combout\);

-- Location: LCCOMB_X56_Y37_N6
\fd|BankRegister|registrador[7][3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][3]~17_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[7][3]~16_combout\) # ((\fd|Rom|content~12_combout\ & \fd|BankRegister|registrador[3][3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|BankRegister|registrador[3][3]~7_combout\,
	datac => \fd|BankRegister|registrador[7][3]~16_combout\,
	datad => \ucfd|HabEscritaReg~0_combout\,
	combout => \fd|BankRegister|registrador[7][3]~17_combout\);

-- Location: FF_X55_Y41_N3
\fd|BankRegister|registrador[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[7][3]~feeder_combout\,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][3]~q\);

-- Location: LCCOMB_X56_Y41_N20
\fd|BankRegister|registrador[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[3]~3_combout\,
	combout => \fd|BankRegister|registrador[6][3]~feeder_combout\);

-- Location: LCCOMB_X57_Y37_N4
\fd|BankRegister|registrador[6][3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][3]~14_combout\ = (\fd|Rom|content~19_combout\ & (!\fd|MuxRtRd|selected[0]~0_combout\ & (\ucfd|Equal0~0_combout\ & \fd|MuxRtRd|selected[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~19_combout\,
	datab => \fd|MuxRtRd|selected[0]~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|MuxRtRd|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[6][3]~14_combout\);

-- Location: LCCOMB_X57_Y37_N14
\fd|BankRegister|registrador[6][3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][3]~15_combout\ = (\ucfd|HabEscritaReg~0_combout\ & ((\fd|BankRegister|registrador[6][3]~14_combout\) # ((\fd|BankRegister|registrador[2][3]~4_combout\ & \fd|Rom|content~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][3]~4_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|registrador[6][3]~14_combout\,
	datad => \ucfd|HabEscritaReg~0_combout\,
	combout => \fd|BankRegister|registrador[6][3]~15_combout\);

-- Location: FF_X56_Y41_N21
\fd|BankRegister|registrador[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][3]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][3]~q\);

-- Location: LCCOMB_X55_Y41_N14
\fd|BankRegister|saidaB[3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[3]~108_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][3]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][3]~q\,
	datab => \fd|BankRegister|registrador[4][3]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[3]~108_combout\);

-- Location: LCCOMB_X56_Y41_N28
\fd|BankRegister|saidaB[3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[3]~109_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[3]~108_combout\ & (\fd|BankRegister|registrador[7][3]~q\)) # (!\fd|BankRegister|saidaB[3]~108_combout\ & ((\fd|BankRegister|registrador[5][3]~q\))))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[3]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][3]~q\,
	datab => \fd|BankRegister|registrador[5][3]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|saidaB[3]~108_combout\,
	combout => \fd|BankRegister|saidaB[3]~109_combout\);

-- Location: LCCOMB_X54_Y40_N6
\fd|MuxSaidaBankRegister|selected[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[2]~2_combout\ = (!\ucfd|Equal1~1_combout\ & ((\fd|Rom|content~16_combout\) # ((\fd|Rom|content~14_combout\) # (\fd|Rom|content~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[2]~2_combout\);

-- Location: LCCOMB_X56_Y40_N20
\fd|MuxSaidaBankRegister|selected[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[3]~34_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[3]~109_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[3]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[3]~111_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[3]~109_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[3]~34_combout\);

-- Location: LCCOMB_X53_Y40_N8
\fd|MuxSaidaBankRegister|selected[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[3]~35_combout\ = (\fd|MuxSaidaBankRegister|selected[3]~34_combout\) # ((\ucfd|Equal1~1_combout\ & \fd|Rom|content~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datac => \fd|Rom|content~27_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[3]~34_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[3]~35_combout\);

-- Location: LCCOMB_X59_Y39_N12
\fd|UCalu|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal2~1_combout\ = (!\fd|Rom|content~31_combout\ & \fd|UCalu|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Rom|content~31_combout\,
	datad => \fd|UCalu|Equal2~0_combout\,
	combout => \fd|UCalu|Equal2~1_combout\);

-- Location: LCCOMB_X59_Y39_N22
\fd|UCalu|output[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[2]~3_combout\ = (\fd|Rom|content~27_combout\) # ((\fd|Rom|content~31_combout\) # ((!\fd|Rom|content~25_combout\) # (!\fd|Rom|content~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~27_combout\,
	datab => \fd|Rom|content~31_combout\,
	datac => \fd|Rom|content~29_combout\,
	datad => \fd|Rom|content~25_combout\,
	combout => \fd|UCalu|output[2]~3_combout\);

-- Location: LCCOMB_X59_Y39_N14
\fd|UCalu|output[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[2]~4_combout\ = (\ucfd|BEQ~0_combout\) # ((!\fd|UCalu|Equal2~1_combout\ & (\fd|UCalu|output[2]~3_combout\ & \ucfd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|Equal2~1_combout\,
	datab => \ucfd|BEQ~0_combout\,
	datac => \fd|UCalu|output[2]~3_combout\,
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|UCalu|output[2]~4_combout\);

-- Location: LCCOMB_X58_Y41_N18
\fd|UCalu|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~1_combout\ = (\fd|UCalu|output[2]~4_combout\ & \fd|UCalu|output[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|UCalu|output[2]~4_combout\,
	datad => \fd|UCalu|output[3]~2_combout\,
	combout => \fd|UCalu|comb~1_combout\);

-- Location: LCCOMB_X58_Y41_N8
\fd|UCalu|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~0_combout\ = (!\fd|UCalu|output[2]~4_combout\ & \fd|UCalu|output[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|UCalu|output[2]~4_combout\,
	datad => \fd|UCalu|output[3]~2_combout\,
	combout => \fd|UCalu|comb~0_combout\);

-- Location: LCCOMB_X58_Y41_N16
\fd|UCalu|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(2) = (!\fd|UCalu|comb~0_combout\ & ((\fd|UCalu|comb~1_combout\) # (\fd|UCalu|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|comb~1_combout\,
	datac => \fd|UCalu|comb~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|UCalu|output\(2));

-- Location: LCCOMB_X58_Y40_N4
\fd|ALU|final|selected[3]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[3]~60_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[3]~115_combout\) # (\fd|MuxSaidaBankRegister|selected[3]~35_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[3]~115_combout\ 
-- & (\fd|MuxSaidaBankRegister|selected[3]~35_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|saidaA[3]~115_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[3]~35_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[3]~60_combout\);

-- Location: FF_X56_Y40_N11
\fd|BankRegister|registrador[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~0_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][2]~q\);

-- Location: FF_X54_Y40_N27
\fd|BankRegister|registrador[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~0_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][2]~q\);

-- Location: FF_X55_Y40_N9
\fd|BankRegister|registrador[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~0_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][2]~q\);

-- Location: FF_X55_Y40_N17
\fd|BankRegister|registrador[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[2]~0_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][2]~q\);

-- Location: LCCOMB_X55_Y40_N18
\fd|BankRegister|saidaB[2]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[2]~114_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][2]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][2]~q\,
	datab => \fd|BankRegister|registrador[0][2]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[2]~114_combout\);

-- Location: LCCOMB_X54_Y40_N26
\fd|BankRegister|saidaB[2]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[2]~115_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[2]~114_combout\ & (\fd|BankRegister|registrador[3][2]~q\)) # (!\fd|BankRegister|saidaB[2]~114_combout\ & ((\fd|BankRegister|registrador[2][2]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[2]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][2]~q\,
	datac => \fd|BankRegister|registrador[2][2]~q\,
	datad => \fd|BankRegister|saidaB[2]~114_combout\,
	combout => \fd|BankRegister|saidaB[2]~115_combout\);

-- Location: FF_X55_Y41_N7
\fd|BankRegister|registrador[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~0_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][2]~q\);

-- Location: LCCOMB_X56_Y41_N10
\fd|BankRegister|registrador[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[2]~0_combout\,
	combout => \fd|BankRegister|registrador[6][2]~feeder_combout\);

-- Location: FF_X56_Y41_N11
\fd|BankRegister|registrador[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][2]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][2]~q\);

-- Location: LCCOMB_X55_Y41_N16
\fd|BankRegister|registrador[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[2]~0_combout\,
	combout => \fd|BankRegister|registrador[4][2]~feeder_combout\);

-- Location: FF_X55_Y41_N17
\fd|BankRegister|registrador[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][2]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][2]~q\);

-- Location: LCCOMB_X55_Y41_N12
\fd|BankRegister|saidaB[2]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[2]~112_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][2]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[2]~112_combout\);

-- Location: LCCOMB_X55_Y41_N26
\fd|BankRegister|saidaB[2]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[2]~113_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[2]~112_combout\ & (\fd|BankRegister|registrador[7][2]~q\)) # (!\fd|BankRegister|saidaB[2]~112_combout\ & ((\fd|BankRegister|registrador[5][2]~q\))))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[2]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][2]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|saidaB[2]~112_combout\,
	combout => \fd|BankRegister|saidaB[2]~113_combout\);

-- Location: LCCOMB_X54_Y40_N20
\fd|MuxSaidaBankRegister|selected[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[2]~36_combout\ = (\fd|Rom|content~29_combout\ & ((\ucfd|Equal1~1_combout\) # ((\fd|Rom|content~12_combout\ & \fd|BankRegister|saidaB[2]~113_combout\)))) # (!\fd|Rom|content~29_combout\ & (((\fd|Rom|content~12_combout\ & 
-- \fd|BankRegister|saidaB[2]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~29_combout\,
	datab => \ucfd|Equal1~1_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|BankRegister|saidaB[2]~113_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[2]~36_combout\);

-- Location: LCCOMB_X54_Y40_N30
\fd|MuxSaidaBankRegister|selected[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[2]~37_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~36_combout\) # ((\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & (!\fd|Rom|content~12_combout\ & \fd|BankRegister|saidaB[2]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[2]~115_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~36_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[2]~37_combout\);

-- Location: LCCOMB_X53_Y42_N4
\fd|ALU|final|selected[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[2]~54_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[2]~119_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[2]~119_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[2]~119_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~37_combout\,
	combout => \fd|ALU|final|selected[2]~54_combout\);

-- Location: FF_X55_Y41_N23
\fd|BankRegister|registrador[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][1]~q\);

-- Location: FF_X54_Y41_N5
\fd|BankRegister|registrador[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][1]~q\);

-- Location: LCCOMB_X54_Y41_N4
\fd|BankRegister|saidaA[1]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[1]~120_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][1]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|BankRegister|registrador[4][1]~q\,
	datac => \fd|BankRegister|registrador[5][1]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[1]~120_combout\);

-- Location: FF_X54_Y40_N9
\fd|BankRegister|registrador[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][1]~q\);

-- Location: FF_X52_Y40_N21
\fd|BankRegister|registrador[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][1]~q\);

-- Location: FF_X55_Y40_N29
\fd|BankRegister|registrador[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][1]~q\);

-- Location: LCCOMB_X55_Y40_N22
\fd|BankRegister|saidaA[1]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[1]~121_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][1]~q\) # ((\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[0][1]~q\ & !\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[0][1]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[1]~121_combout\);

-- Location: LCCOMB_X52_Y40_N20
\fd|BankRegister|saidaA[1]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[1]~122_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[1]~121_combout\ & ((\fd|BankRegister|registrador[3][1]~q\))) # (!\fd|BankRegister|saidaA[1]~121_combout\ & (\fd|BankRegister|registrador[2][1]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[1]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][1]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][1]~q\,
	datad => \fd|BankRegister|saidaA[1]~121_combout\,
	combout => \fd|BankRegister|saidaA[1]~122_combout\);

-- Location: LCCOMB_X52_Y40_N16
\fd|BankRegister|saidaA[1]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[1]~123_combout\ = (\fd|Rom|content~9_combout\ & (((\fd|BankRegister|saidaA[1]~120_combout\)))) # (!\fd|Rom|content~9_combout\ & (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|BankRegister|saidaA[1]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|Equal0~0_combout\,
	datac => \fd|BankRegister|saidaA[1]~120_combout\,
	datad => \fd|BankRegister|saidaA[1]~122_combout\,
	combout => \fd|BankRegister|saidaA[1]~123_combout\);

-- Location: FF_X52_Y40_N13
\fd|BankRegister|registrador[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][0]~q\);

-- Location: FF_X53_Y40_N23
\fd|BankRegister|registrador[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][0]~q\);

-- Location: LCCOMB_X56_Y41_N2
\fd|BankRegister|registrador[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][0]~feeder_combout\ = \fd|MuxRegRam|selected[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[0]~2_combout\,
	combout => \fd|BankRegister|registrador[6][0]~feeder_combout\);

-- Location: FF_X56_Y41_N3
\fd|BankRegister|registrador[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][0]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][0]~q\);

-- Location: FF_X53_Y40_N17
\fd|BankRegister|registrador[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][0]~q\);

-- Location: LCCOMB_X53_Y40_N16
\fd|BankRegister|saidaB[0]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[0]~120_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][0]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[6][0]~q\,
	datac => \fd|BankRegister|registrador[4][0]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[0]~120_combout\);

-- Location: LCCOMB_X53_Y40_N22
\fd|BankRegister|saidaB[0]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[0]~121_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[0]~120_combout\ & ((\fd|BankRegister|registrador[7][0]~q\))) # (!\fd|BankRegister|saidaB[0]~120_combout\ & (\fd|BankRegister|registrador[5][0]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[0]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[5][0]~q\,
	datac => \fd|BankRegister|registrador[7][0]~q\,
	datad => \fd|BankRegister|saidaB[0]~120_combout\,
	combout => \fd|BankRegister|saidaB[0]~121_combout\);

-- Location: LCCOMB_X53_Y40_N30
\fd|MuxSaidaBankRegister|selected[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~43_combout\ = (\fd|Rom|content~33_combout\ & ((\ucfd|Equal1~1_combout\) # ((\fd|Rom|content~12_combout\ & \fd|BankRegister|saidaB[0]~121_combout\)))) # (!\fd|Rom|content~33_combout\ & (\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~33_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[0]~121_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~43_combout\);

-- Location: LCCOMB_X52_Y40_N12
\fd|BankRegister|saidaA[0]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[0]~124_combout\ = (\fd|Rom|content~9_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][0]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[4][0]~q\,
	datac => \fd|BankRegister|registrador[5][0]~q\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[0]~124_combout\);

-- Location: FF_X52_Y40_N23
\fd|BankRegister|registrador[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][0]~q\);

-- Location: FF_X54_Y40_N13
\fd|BankRegister|registrador[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][0]~q\);

-- Location: FF_X55_Y40_N21
\fd|BankRegister|registrador[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][0]~q\);

-- Location: LCCOMB_X52_Y40_N18
\fd|BankRegister|saidaA[0]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[0]~125_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[1][0]~q\)) # (!\fd|Rom|content~4_combout\ & 
-- ((\fd|BankRegister|registrador[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][0]~q\,
	datab => \fd|BankRegister|registrador[0][0]~q\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[0]~125_combout\);

-- Location: LCCOMB_X52_Y40_N28
\fd|BankRegister|saidaA[0]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[0]~126_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[0]~125_combout\ & ((\fd|BankRegister|registrador[3][0]~q\))) # (!\fd|BankRegister|saidaA[0]~125_combout\ & (\fd|BankRegister|registrador[2][0]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[0]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][0]~q\,
	datab => \fd|BankRegister|registrador[3][0]~q\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|BankRegister|saidaA[0]~125_combout\,
	combout => \fd|BankRegister|saidaA[0]~126_combout\);

-- Location: LCCOMB_X52_Y40_N2
\fd|BankRegister|saidaA[0]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[0]~127_combout\ = (\fd|BankRegister|saidaA[0]~124_combout\) # ((!\fd|Rom|content~9_combout\ & (!\fd|BankRegister|Equal0~0_combout\ & \fd|BankRegister|saidaA[0]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[0]~124_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[0]~126_combout\,
	combout => \fd|BankRegister|saidaA[0]~127_combout\);

-- Location: LCCOMB_X53_Y40_N4
\fd|ALU|adder|a0|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|a0|vaium~0_combout\ = (\fd|MuxSaidaBankRegister|selected[0]~43_combout\ & (((\fd|BankRegister|saidaA[0]~127_combout\)))) # (!\fd|MuxSaidaBankRegister|selected[0]~43_combout\ & ((\fd|MuxSaidaBankRegister|selected[0]~42_combout\ & 
-- ((\fd|BankRegister|saidaA[0]~127_combout\))) # (!\fd|MuxSaidaBankRegister|selected[0]~42_combout\ & (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~43_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[0]~42_combout\,
	datad => \fd|BankRegister|saidaA[0]~127_combout\,
	combout => \fd|ALU|adder|a0|vaium~0_combout\);

-- Location: LCCOMB_X54_Y40_N10
\fd|BankRegister|saidaB[1]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[1]~118_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][1]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[0][1]~q\,
	datac => \fd|BankRegister|registrador[1][1]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[1]~118_combout\);

-- Location: LCCOMB_X54_Y40_N8
\fd|BankRegister|saidaB[1]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[1]~119_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[1]~118_combout\ & (\fd|BankRegister|registrador[3][1]~q\)) # (!\fd|BankRegister|saidaB[1]~118_combout\ & ((\fd|BankRegister|registrador[2][1]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[1]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][1]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|saidaB[1]~118_combout\,
	combout => \fd|BankRegister|saidaB[1]~119_combout\);

-- Location: FF_X55_Y41_N9
\fd|BankRegister|registrador[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][1]~q\);

-- Location: LCCOMB_X56_Y41_N12
\fd|BankRegister|registrador[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][1]~feeder_combout\ = \fd|MuxRegRam|selected[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[1]~1_combout\,
	combout => \fd|BankRegister|registrador[6][1]~feeder_combout\);

-- Location: FF_X56_Y41_N13
\fd|BankRegister|registrador[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][1]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][1]~q\);

-- Location: LCCOMB_X55_Y41_N28
\fd|BankRegister|saidaB[1]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[1]~116_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][1]~q\))) # (!\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][1]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[1]~116_combout\);

-- Location: LCCOMB_X55_Y41_N30
\fd|BankRegister|saidaB[1]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[1]~117_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[1]~116_combout\ & (\fd|BankRegister|registrador[7][1]~q\)) # (!\fd|BankRegister|saidaB[1]~116_combout\ & ((\fd|BankRegister|registrador[5][1]~q\))))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[1]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][1]~q\,
	datab => \fd|BankRegister|registrador[5][1]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|saidaB[1]~116_combout\,
	combout => \fd|BankRegister|saidaB[1]~117_combout\);

-- Location: LCCOMB_X54_Y40_N0
\fd|MuxSaidaBankRegister|selected[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[1]~38_combout\ = (\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[1]~117_combout\) # ((\fd|Rom|content~31_combout\ & \ucfd|Equal1~1_combout\)))) # (!\fd|Rom|content~12_combout\ & (\fd|Rom|content~31_combout\ & 
-- ((\ucfd|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|Rom|content~31_combout\,
	datac => \fd|BankRegister|saidaB[1]~117_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[1]~38_combout\);

-- Location: LCCOMB_X54_Y40_N24
\fd|MuxSaidaBankRegister|selected[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[1]~39_combout\ = (\fd|MuxSaidaBankRegister|selected[1]~38_combout\) # ((\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & (!\fd|Rom|content~12_combout\ & \fd|BankRegister|saidaB[1]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[1]~119_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[1]~38_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[1]~39_combout\);

-- Location: LCCOMB_X53_Y40_N6
\fd|ALU|adder|addsloop:1:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[1]~123_combout\ & ((\fd|ALU|adder|a0|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\)))) # 
-- (!\fd|BankRegister|saidaA[1]~123_combout\ & (\fd|ALU|adder|a0|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[1]~123_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|a0|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[1]~39_combout\,
	combout => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y42_N2
\fd|ALU|adder|addsloop:2:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:2:add1to31|soma~combout\ = \fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ $ (\fd|BankRegister|saidaA[2]~119_combout\ $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\,
	datac => \fd|BankRegister|saidaA[2]~119_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~37_combout\,
	combout => \fd|ALU|adder|addsloop:2:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y42_N6
\fd|ALU|final|selected[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[2]~55_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:2:add1to31|soma~combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[2]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[2]~54_combout\,
	datad => \fd|ALU|adder|addsloop:2:add1to31|soma~combout\,
	combout => \fd|ALU|final|selected[2]~55_combout\);

-- Location: LCCOMB_X55_Y40_N2
\fd|Ram|ram~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram~1064_combout\ = (((\fd|ALU|final|selected[1]~57_combout\ & \fd|ALU|final|selected[0]~1_combout\)) # (!\fd|ALU|final|selected[2]~55_combout\)) # (!\fd|beqAnd~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~5_combout\,
	datab => \fd|ALU|final|selected[2]~55_combout\,
	datac => \fd|ALU|final|selected[1]~57_combout\,
	datad => \fd|ALU|final|selected[0]~1_combout\,
	combout => \fd|Ram|ram~1064_combout\);

-- Location: LCCOMB_X55_Y40_N16
\fd|MuxRegRam|selected[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[2]~0_combout\ = (\ucfd|Equal1~1_combout\ & ((!\fd|Ram|ram~1064_combout\))) # (!\ucfd|Equal1~1_combout\ & (\fd|ALU|final|selected[2]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datab => \fd|ALU|final|selected[2]~55_combout\,
	datad => \fd|Ram|ram~1064_combout\,
	combout => \fd|MuxRegRam|selected[2]~0_combout\);

-- Location: LCCOMB_X56_Y41_N24
\fd|BankRegister|registrador[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[2]~0_combout\,
	combout => \fd|BankRegister|registrador[5][2]~feeder_combout\);

-- Location: FF_X56_Y41_N25
\fd|BankRegister|registrador[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][2]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][2]~q\);

-- Location: LCCOMB_X56_Y41_N30
\fd|BankRegister|saidaA[2]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[2]~116_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][2]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[4][2]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[2]~116_combout\);

-- Location: LCCOMB_X55_Y40_N8
\fd|BankRegister|saidaA[2]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[2]~117_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][2]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][2]~q\ & ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][2]~q\,
	datac => \fd|BankRegister|registrador[1][2]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[2]~117_combout\);

-- Location: LCCOMB_X56_Y40_N28
\fd|BankRegister|saidaA[2]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[2]~118_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[2]~117_combout\ & (\fd|BankRegister|registrador[3][2]~q\)) # (!\fd|BankRegister|saidaA[2]~117_combout\ & ((\fd|BankRegister|registrador[2][2]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[2]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][2]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[2][2]~q\,
	datad => \fd|BankRegister|saidaA[2]~117_combout\,
	combout => \fd|BankRegister|saidaA[2]~118_combout\);

-- Location: LCCOMB_X56_Y40_N22
\fd|BankRegister|saidaA[2]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[2]~119_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[2]~116_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[2]~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[2]~116_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[2]~118_combout\,
	combout => \fd|BankRegister|saidaA[2]~119_combout\);

-- Location: LCCOMB_X53_Y40_N24
\fd|ALU|adder|addsloop:2:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[2]~119_combout\ & ((\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\)))) # 
-- (!\fd|BankRegister|saidaA[2]~119_combout\ & (\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[2]~119_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[2]~37_combout\,
	datad => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y40_N6
\fd|ALU|adder|addsloop:3:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:3:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[3]~115_combout\ $ (\fd|MuxSaidaBankRegister|selected[3]~35_combout\ $ (\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[3]~115_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[3]~35_combout\,
	datad => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:3:add1to31|soma~0_combout\);

-- Location: LCCOMB_X58_Y40_N22
\fd|ALU|final|selected[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[3]~61_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:3:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[3]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[3]~60_combout\,
	datad => \fd|ALU|adder|addsloop:3:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[3]~61_combout\);

-- Location: LCCOMB_X55_Y40_N20
\fd|MuxRegRam|selected[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[4]~4_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[4]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[4]~59_combout\,
	combout => \fd|MuxRegRam|selected[4]~4_combout\);

-- Location: FF_X58_Y40_N13
\fd|BankRegister|registrador[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~4_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][4]~q\);

-- Location: FF_X52_Y40_N27
\fd|BankRegister|registrador[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~4_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][4]~q\);

-- Location: LCCOMB_X55_Y39_N10
\fd|BankRegister|registrador[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[4]~4_combout\,
	combout => \fd|BankRegister|registrador[0][4]~feeder_combout\);

-- Location: FF_X55_Y39_N11
\fd|BankRegister|registrador[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[0][4]~feeder_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][4]~q\);

-- Location: FF_X55_Y39_N1
\fd|BankRegister|registrador[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~4_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][4]~q\);

-- Location: LCCOMB_X55_Y39_N0
\fd|BankRegister|saidaA[4]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[4]~109_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][4]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][4]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][4]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[4]~109_combout\);

-- Location: LCCOMB_X52_Y40_N26
\fd|BankRegister|saidaA[4]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[4]~110_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[4]~109_combout\ & ((\fd|BankRegister|registrador[3][4]~q\))) # (!\fd|BankRegister|saidaA[4]~109_combout\ & (\fd|BankRegister|registrador[2][4]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[4]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][4]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][4]~q\,
	datad => \fd|BankRegister|saidaA[4]~109_combout\,
	combout => \fd|BankRegister|saidaA[4]~110_combout\);

-- Location: LCCOMB_X57_Y40_N12
\fd|BankRegister|registrador[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[4]~4_combout\,
	combout => \fd|BankRegister|registrador[5][4]~feeder_combout\);

-- Location: FF_X57_Y40_N13
\fd|BankRegister|registrador[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][4]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][4]~q\);

-- Location: LCCOMB_X56_Y38_N24
\fd|BankRegister|registrador[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[4]~4_combout\,
	combout => \fd|BankRegister|registrador[4][4]~feeder_combout\);

-- Location: FF_X56_Y38_N25
\fd|BankRegister|registrador[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][4]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][4]~q\);

-- Location: LCCOMB_X57_Y40_N28
\fd|BankRegister|saidaA[4]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[4]~108_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][4]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][4]~q\,
	datab => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[4][4]~q\,
	combout => \fd|BankRegister|saidaA[4]~108_combout\);

-- Location: LCCOMB_X52_Y40_N6
\fd|BankRegister|saidaA[4]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[4]~111_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[4]~108_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[4]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[4]~110_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[4]~108_combout\,
	datad => \fd|BankRegister|Equal0~0_combout\,
	combout => \fd|BankRegister|saidaA[4]~111_combout\);

-- Location: LCCOMB_X58_Y40_N10
\fd|BankRegister|saidaB[4]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[4]~106_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][4]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][4]~q\,
	datab => \fd|BankRegister|registrador[1][4]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[4]~106_combout\);

-- Location: LCCOMB_X58_Y40_N12
\fd|BankRegister|saidaB[4]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[4]~107_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[4]~106_combout\ & (\fd|BankRegister|registrador[3][4]~q\)) # (!\fd|BankRegister|saidaB[4]~106_combout\ & ((\fd|BankRegister|registrador[2][4]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[4]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][4]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[2][4]~q\,
	datad => \fd|BankRegister|saidaB[4]~106_combout\,
	combout => \fd|BankRegister|saidaB[4]~107_combout\);

-- Location: FF_X57_Y40_N17
\fd|BankRegister|registrador[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~4_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][4]~q\);

-- Location: LCCOMB_X56_Y38_N12
\fd|BankRegister|registrador[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[4]~4_combout\,
	combout => \fd|BankRegister|registrador[6][4]~feeder_combout\);

-- Location: FF_X56_Y38_N13
\fd|BankRegister|registrador[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][4]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][4]~q\);

-- Location: LCCOMB_X56_Y38_N28
\fd|BankRegister|saidaB[4]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[4]~104_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][4]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][4]~q\,
	datab => \fd|BankRegister|registrador[4][4]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[4]~104_combout\);

-- Location: LCCOMB_X57_Y40_N16
\fd|BankRegister|saidaB[4]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[4]~105_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[4]~104_combout\ & ((\fd|BankRegister|registrador[7][4]~q\))) # (!\fd|BankRegister|saidaB[4]~104_combout\ & (\fd|BankRegister|registrador[5][4]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[4]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][4]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][4]~q\,
	datad => \fd|BankRegister|saidaB[4]~104_combout\,
	combout => \fd|BankRegister|saidaB[4]~105_combout\);

-- Location: LCCOMB_X58_Y40_N24
\fd|MuxSaidaBankRegister|selected[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[4]~33_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[4]~105_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[4]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[4]~107_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[4]~105_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[4]~33_combout\);

-- Location: LCCOMB_X58_Y40_N8
\fd|ALU|final|selected[4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[4]~58_combout\ = (\fd|BankRegister|saidaA[4]~111_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[4]~33_combout\)))) # (!\fd|BankRegister|saidaA[4]~111_combout\ & (\fd|UCalu|output\(0) 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[4]~111_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|UCalu|output\(0),
	datad => \fd|MuxSaidaBankRegister|selected[4]~33_combout\,
	combout => \fd|ALU|final|selected[4]~58_combout\);

-- Location: LCCOMB_X53_Y40_N26
\fd|ALU|adder|addsloop:3:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[3]~115_combout\ & ((\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[3]~35_combout\)))) # 
-- (!\fd|BankRegister|saidaA[3]~115_combout\ & (\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[3]~115_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[3]~35_combout\,
	datad => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y40_N0
\fd|ALU|adder|addsloop:4:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:4:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[4]~111_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ $ (\fd|MuxSaidaBankRegister|selected[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[4]~111_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[4]~33_combout\,
	combout => \fd|ALU|adder|addsloop:4:add1to31|soma~0_combout\);

-- Location: LCCOMB_X58_Y40_N26
\fd|ALU|final|selected[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[4]~59_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:4:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[4]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[4]~58_combout\,
	datad => \fd|ALU|adder|addsloop:4:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[4]~59_combout\);

-- Location: LCCOMB_X55_Y40_N30
\fd|beqAnd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~5_combout\ = (!\fd|ALU|final|selected[3]~61_combout\ & !\fd|ALU|final|selected[4]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|ALU|final|selected[3]~61_combout\,
	datad => \fd|ALU|final|selected[4]~59_combout\,
	combout => \fd|beqAnd~5_combout\);

-- Location: LCCOMB_X55_Y40_N6
\fd|Ram|ram~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram~1062_combout\ = (\fd|beqAnd~5_combout\ & (\fd|ALU|final|selected[0]~1_combout\ & ((!\fd|ALU|final|selected[1]~57_combout\) # (!\fd|ALU|final|selected[2]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~5_combout\,
	datab => \fd|ALU|final|selected[2]~55_combout\,
	datac => \fd|ALU|final|selected[1]~57_combout\,
	datad => \fd|ALU|final|selected[0]~1_combout\,
	combout => \fd|Ram|ram~1062_combout\);

-- Location: LCCOMB_X55_Y40_N10
\fd|MuxRegRam|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[0]~2_combout\ = (\ucfd|Equal1~1_combout\ & ((\fd|Ram|ram~1062_combout\))) # (!\ucfd|Equal1~1_combout\ & (\fd|ALU|final|selected[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datac => \fd|ALU|final|selected[0]~1_combout\,
	datad => \fd|Ram|ram~1062_combout\,
	combout => \fd|MuxRegRam|selected[0]~2_combout\);

-- Location: FF_X54_Y40_N19
\fd|BankRegister|registrador[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~2_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][0]~q\);

-- Location: LCCOMB_X54_Y40_N12
\fd|MuxSaidaBankRegister|selected[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~40_combout\ = (\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[3][0]~q\)) # (!\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][0]~q\,
	datac => \fd|BankRegister|registrador[1][0]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~40_combout\);

-- Location: LCCOMB_X54_Y40_N18
\fd|MuxSaidaBankRegister|selected[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~41_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|MuxSaidaBankRegister|selected[0]~40_combout\)))) # (!\fd|Rom|content~14_combout\ & (\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[2][0]~q\,
	datad => \fd|MuxSaidaBankRegister|selected[0]~40_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~41_combout\);

-- Location: LCCOMB_X54_Y40_N14
\fd|MuxSaidaBankRegister|selected[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~42_combout\ = (!\ucfd|Equal1~1_combout\ & (!\fd|Rom|content~12_combout\ & \fd|MuxSaidaBankRegister|selected[0]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[0]~41_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~42_combout\);

-- Location: LCCOMB_X50_Y40_N0
\fd|ALU|adder|a0|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|a0|soma~0_combout\ = \fd|BankRegister|saidaA[0]~127_combout\ $ (((\fd|MuxSaidaBankRegister|selected[0]~42_combout\) # (\fd|MuxSaidaBankRegister|selected[0]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~42_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[0]~43_combout\,
	datad => \fd|BankRegister|saidaA[0]~127_combout\,
	combout => \fd|ALU|adder|a0|soma~0_combout\);

-- Location: LCCOMB_X50_Y40_N18
\fd|ALU|choiceB|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|choiceB|selected[0]~0_combout\ = \fd|UCalu|output\(2) $ (((\fd|MuxSaidaBankRegister|selected[0]~42_combout\) # (\fd|MuxSaidaBankRegister|selected[0]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~42_combout\,
	datab => \fd|UCalu|output\(2),
	datad => \fd|MuxSaidaBankRegister|selected[0]~43_combout\,
	combout => \fd|ALU|choiceB|selected[0]~0_combout\);

-- Location: LCCOMB_X50_Y40_N4
\fd|ALU|final|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[0]~0_combout\ = (\fd|BankRegister|saidaA[0]~127_combout\ & ((\fd|UCalu|output\(0)) # ((!\fd|UCalu|output\(1) & \fd|ALU|choiceB|selected[0]~0_combout\)))) # (!\fd|BankRegister|saidaA[0]~127_combout\ & (\fd|UCalu|output\(0) & 
-- ((\fd|UCalu|output\(1)) # (\fd|ALU|choiceB|selected[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[0]~127_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|choiceB|selected[0]~0_combout\,
	combout => \fd|ALU|final|selected[0]~0_combout\);

-- Location: FF_X56_Y39_N25
\fd|BankRegister|registrador[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][31]~q\);

-- Location: FF_X57_Y39_N5
\fd|BankRegister|registrador[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][31]~q\);

-- Location: FF_X57_Y39_N11
\fd|BankRegister|registrador[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[31]~31_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][31]~q\);

-- Location: LCCOMB_X57_Y39_N8
\fd|BankRegister|saidaA[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[31]~1_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|Rom|content~6_combout\) # ((\fd|BankRegister|registrador[1][31]~q\)))) # (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & 
-- ((\fd|BankRegister|registrador[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][31]~q\,
	datad => \fd|BankRegister|registrador[0][31]~q\,
	combout => \fd|BankRegister|saidaA[31]~1_combout\);

-- Location: LCCOMB_X58_Y40_N28
\fd|BankRegister|saidaA[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[31]~2_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[31]~1_combout\ & (\fd|BankRegister|registrador[3][31]~q\)) # (!\fd|BankRegister|saidaA[31]~1_combout\ & ((\fd|BankRegister|registrador[2][31]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[3][31]~q\,
	datac => \fd|BankRegister|registrador[2][31]~q\,
	datad => \fd|BankRegister|saidaA[31]~1_combout\,
	combout => \fd|BankRegister|saidaA[31]~2_combout\);

-- Location: FF_X57_Y40_N19
\fd|BankRegister|registrador[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][31]~q\);

-- Location: FF_X58_Y39_N7
\fd|BankRegister|registrador[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][31]~q\);

-- Location: LCCOMB_X57_Y40_N18
\fd|BankRegister|saidaA[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[31]~0_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][31]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][31]~q\,
	datad => \fd|BankRegister|registrador[4][31]~q\,
	combout => \fd|BankRegister|saidaA[31]~0_combout\);

-- Location: LCCOMB_X56_Y40_N8
\fd|BankRegister|saidaA[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[31]~3_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[31]~0_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[31]~2_combout\,
	datab => \fd|BankRegister|saidaA[31]~0_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[31]~3_combout\);

-- Location: LCCOMB_X61_Y39_N14
\fd|ALU|final|selected[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~4_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[31]~3_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[31]~44_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[31]~3_combout\ & 
-- (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[31]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[31]~44_combout\,
	datad => \fd|BankRegister|saidaA[31]~3_combout\,
	combout => \fd|ALU|final|selected[31]~4_combout\);

-- Location: FF_X58_Y39_N1
\fd|BankRegister|registrador[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~30_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][30]~q\);

-- Location: FF_X57_Y40_N29
\fd|BankRegister|registrador[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~30_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][30]~q\);

-- Location: LCCOMB_X57_Y40_N22
\fd|BankRegister|saidaA[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[30]~4_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][30]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][30]~q\,
	datab => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[5][30]~q\,
	combout => \fd|BankRegister|saidaA[30]~4_combout\);

-- Location: LCCOMB_X58_Y40_N2
\fd|BankRegister|registrador[2][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][30]~feeder_combout\ = \fd|MuxRegRam|selected[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[30]~30_combout\,
	combout => \fd|BankRegister|registrador[2][30]~feeder_combout\);

-- Location: FF_X58_Y40_N3
\fd|BankRegister|registrador[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][30]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][30]~q\);

-- Location: FF_X57_Y39_N27
\fd|BankRegister|registrador[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[30]~30_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][30]~q\);

-- Location: LCCOMB_X57_Y39_N6
\fd|BankRegister|registrador[1][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][30]~feeder_combout\ = \fd|MuxRegRam|selected[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[30]~30_combout\,
	combout => \fd|BankRegister|registrador[1][30]~feeder_combout\);

-- Location: FF_X57_Y39_N7
\fd|BankRegister|registrador[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[1][30]~feeder_combout\,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][30]~q\);

-- Location: LCCOMB_X57_Y39_N30
\fd|BankRegister|saidaA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[30]~5_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|Rom|content~6_combout\) # ((\fd|BankRegister|registrador[1][30]~q\)))) # (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & (\fd|BankRegister|registrador[0][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[0][30]~q\,
	datad => \fd|BankRegister|registrador[1][30]~q\,
	combout => \fd|BankRegister|saidaA[30]~5_combout\);

-- Location: LCCOMB_X59_Y39_N0
\fd|BankRegister|registrador[3][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][30]~feeder_combout\ = \fd|MuxRegRam|selected[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[30]~30_combout\,
	combout => \fd|BankRegister|registrador[3][30]~feeder_combout\);

-- Location: FF_X59_Y39_N1
\fd|BankRegister|registrador[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[3][30]~feeder_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][30]~q\);

-- Location: LCCOMB_X58_Y40_N18
\fd|BankRegister|saidaA[30]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[30]~6_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[30]~5_combout\ & ((\fd|BankRegister|registrador[3][30]~q\))) # (!\fd|BankRegister|saidaA[30]~5_combout\ & (\fd|BankRegister|registrador[2][30]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[30]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][30]~q\,
	datac => \fd|BankRegister|saidaA[30]~5_combout\,
	datad => \fd|BankRegister|registrador[3][30]~q\,
	combout => \fd|BankRegister|saidaA[30]~6_combout\);

-- Location: LCCOMB_X58_Y40_N20
\fd|BankRegister|saidaA[30]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[30]~7_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[30]~4_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[30]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[30]~4_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|saidaA[30]~6_combout\,
	combout => \fd|BankRegister|saidaA[30]~7_combout\);

-- Location: LCCOMB_X58_Y40_N30
\fd|ALU|final|selected[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[30]~2_combout\ = (\fd|BankRegister|saidaA[30]~7_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~3_combout\)))) # (!\fd|BankRegister|saidaA[30]~7_combout\ & (\fd|UCalu|output\(0) & 
-- (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[30]~7_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|MuxSaidaBankRegister|selected[30]~3_combout\,
	combout => \fd|ALU|final|selected[30]~2_combout\);

-- Location: LCCOMB_X47_Y39_N28
\fd|BankRegister|registrador[5][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~29_combout\,
	combout => \fd|BankRegister|registrador[5][29]~feeder_combout\);

-- Location: FF_X47_Y39_N29
\fd|BankRegister|registrador[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][29]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][29]~q\);

-- Location: FF_X58_Y39_N31
\fd|BankRegister|registrador[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][29]~q\);

-- Location: LCCOMB_X48_Y39_N4
\fd|BankRegister|saidaA[29]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[29]~8_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][29]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[5][29]~q\,
	datad => \fd|BankRegister|registrador[4][29]~q\,
	combout => \fd|BankRegister|saidaA[29]~8_combout\);

-- Location: LCCOMB_X47_Y39_N12
\fd|BankRegister|registrador[2][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~29_combout\,
	combout => \fd|BankRegister|registrador[2][29]~feeder_combout\);

-- Location: FF_X47_Y39_N13
\fd|BankRegister|registrador[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][29]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][29]~q\);

-- Location: FF_X48_Y39_N23
\fd|BankRegister|registrador[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][29]~q\);

-- Location: FF_X49_Y39_N13
\fd|BankRegister|registrador[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[29]~29_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][29]~q\);

-- Location: FF_X49_Y39_N27
\fd|BankRegister|registrador[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][29]~q\);

-- Location: LCCOMB_X49_Y39_N26
\fd|BankRegister|saidaA[29]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[29]~9_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][29]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][29]~q\ & 
-- ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][29]~q\,
	datab => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[1][29]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[29]~9_combout\);

-- Location: LCCOMB_X48_Y39_N22
\fd|BankRegister|saidaA[29]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[29]~10_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[29]~9_combout\ & ((\fd|BankRegister|registrador[3][29]~q\))) # (!\fd|BankRegister|saidaA[29]~9_combout\ & (\fd|BankRegister|registrador[2][29]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[29]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][29]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][29]~q\,
	datad => \fd|BankRegister|saidaA[29]~9_combout\,
	combout => \fd|BankRegister|saidaA[29]~10_combout\);

-- Location: LCCOMB_X49_Y39_N24
\fd|BankRegister|saidaA[29]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[29]~11_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[29]~8_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[29]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[29]~8_combout\,
	datad => \fd|BankRegister|saidaA[29]~10_combout\,
	combout => \fd|BankRegister|saidaA[29]~11_combout\);

-- Location: LCCOMB_X49_Y39_N20
\fd|ALU|final|selected[29]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[29]~24_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[29]~11_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[29]~4_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[29]~11_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[29]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[29]~4_combout\,
	datad => \fd|BankRegister|saidaA[29]~11_combout\,
	combout => \fd|ALU|final|selected[29]~24_combout\);

-- Location: FF_X48_Y39_N1
\fd|BankRegister|registrador[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~28_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][28]~q\);

-- Location: LCCOMB_X58_Y39_N20
\fd|BankRegister|registrador[6][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[28]~28_combout\,
	combout => \fd|BankRegister|registrador[6][28]~feeder_combout\);

-- Location: FF_X58_Y39_N21
\fd|BankRegister|registrador[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][28]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][28]~q\);

-- Location: FF_X58_Y39_N29
\fd|BankRegister|registrador[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~28_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][28]~q\);

-- Location: LCCOMB_X58_Y39_N28
\fd|BankRegister|saidaB[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[28]~8_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][28]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][28]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[6][28]~q\,
	datac => \fd|BankRegister|registrador[4][28]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[28]~8_combout\);

-- Location: LCCOMB_X48_Y39_N0
\fd|BankRegister|saidaB[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[28]~9_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[28]~8_combout\ & ((\fd|BankRegister|registrador[7][28]~q\))) # (!\fd|BankRegister|saidaB[28]~8_combout\ & (\fd|BankRegister|registrador[5][28]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[28]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][28]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][28]~q\,
	datad => \fd|BankRegister|saidaB[28]~8_combout\,
	combout => \fd|BankRegister|saidaB[28]~9_combout\);

-- Location: LCCOMB_X47_Y39_N26
\fd|BankRegister|registrador[2][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[28]~28_combout\,
	combout => \fd|BankRegister|registrador[2][28]~feeder_combout\);

-- Location: FF_X47_Y39_N27
\fd|BankRegister|registrador[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][28]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][28]~q\);

-- Location: FF_X48_Y39_N21
\fd|BankRegister|registrador[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~28_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][28]~q\);

-- Location: FF_X49_Y39_N9
\fd|BankRegister|registrador[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~28_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][28]~q\);

-- Location: FF_X49_Y39_N19
\fd|BankRegister|registrador[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[28]~28_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][28]~q\);

-- Location: LCCOMB_X49_Y39_N8
\fd|BankRegister|saidaB[28]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[28]~10_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\) # ((\fd|BankRegister|registrador[1][28]~q\)))) # (!\fd|Rom|content~14_combout\ & (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[1][28]~q\,
	datad => \fd|BankRegister|registrador[0][28]~q\,
	combout => \fd|BankRegister|saidaB[28]~10_combout\);

-- Location: LCCOMB_X48_Y39_N24
\fd|BankRegister|saidaB[28]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[28]~11_combout\ = (\fd|BankRegister|saidaB[28]~10_combout\ & (((\fd|BankRegister|registrador[3][28]~q\) # (!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[28]~10_combout\ & (\fd|BankRegister|registrador[2][28]~q\ & 
-- ((\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][28]~q\,
	datab => \fd|BankRegister|registrador[3][28]~q\,
	datac => \fd|BankRegister|saidaB[28]~10_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[28]~11_combout\);

-- Location: LCCOMB_X49_Y39_N4
\fd|MuxSaidaBankRegister|selected[28]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[28]~5_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[28]~9_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[28]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[28]~9_combout\,
	datab => \fd|BankRegister|saidaB[28]~11_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[28]~5_combout\);

-- Location: LCCOMB_X49_Y39_N0
\fd|ALU|final|selected[28]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[28]~22_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[28]~15_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[28]~15_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[28]~5_combout\,
	datad => \fd|BankRegister|saidaA[28]~15_combout\,
	combout => \fd|ALU|final|selected[28]~22_combout\);

-- Location: FF_X57_Y40_N15
\fd|BankRegister|registrador[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][27]~q\);

-- Location: FF_X57_Y40_N11
\fd|BankRegister|registrador[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][27]~q\);

-- Location: LCCOMB_X58_Y39_N26
\fd|BankRegister|registrador[6][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][27]~feeder_combout\ = \fd|MuxRegRam|selected[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[27]~27_combout\,
	combout => \fd|BankRegister|registrador[6][27]~feeder_combout\);

-- Location: FF_X58_Y39_N27
\fd|BankRegister|registrador[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][27]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][27]~q\);

-- Location: FF_X58_Y39_N11
\fd|BankRegister|registrador[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][27]~q\);

-- Location: LCCOMB_X58_Y39_N10
\fd|BankRegister|saidaB[27]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[27]~12_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][27]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][27]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[6][27]~q\,
	datac => \fd|BankRegister|registrador[4][27]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[27]~12_combout\);

-- Location: LCCOMB_X57_Y40_N10
\fd|BankRegister|saidaB[27]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[27]~13_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[27]~12_combout\ & ((\fd|BankRegister|registrador[7][27]~q\))) # (!\fd|BankRegister|saidaB[27]~12_combout\ & (\fd|BankRegister|registrador[5][27]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[27]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][27]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][27]~q\,
	datad => \fd|BankRegister|saidaB[27]~12_combout\,
	combout => \fd|BankRegister|saidaB[27]~13_combout\);

-- Location: FF_X56_Y39_N19
\fd|BankRegister|registrador[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][27]~q\);

-- Location: FF_X57_Y39_N25
\fd|BankRegister|registrador[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[27]~27_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][27]~q\);

-- Location: FF_X57_Y39_N29
\fd|BankRegister|registrador[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][27]~q\);

-- Location: LCCOMB_X57_Y39_N18
\fd|BankRegister|saidaB[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[27]~14_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][27]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[0][27]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[1][27]~q\,
	combout => \fd|BankRegister|saidaB[27]~14_combout\);

-- Location: LCCOMB_X56_Y39_N0
\fd|BankRegister|saidaB[27]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[27]~15_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[27]~14_combout\ & (\fd|BankRegister|registrador[3][27]~q\)) # (!\fd|BankRegister|saidaB[27]~14_combout\ & ((\fd|BankRegister|registrador[2][27]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[27]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][27]~q\,
	datac => \fd|BankRegister|registrador[2][27]~q\,
	datad => \fd|BankRegister|saidaB[27]~14_combout\,
	combout => \fd|BankRegister|saidaB[27]~15_combout\);

-- Location: LCCOMB_X56_Y40_N30
\fd|MuxSaidaBankRegister|selected[27]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[27]~6_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[27]~13_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[27]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[27]~13_combout\,
	datad => \fd|BankRegister|saidaB[27]~15_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[27]~6_combout\);

-- Location: LCCOMB_X55_Y39_N28
\fd|ALU|final|selected[27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[27]~20_combout\ = (\fd|BankRegister|saidaA[27]~19_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[27]~6_combout\)))) # (!\fd|BankRegister|saidaA[27]~19_combout\ & (\fd|UCalu|output\(0) 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[27]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[27]~6_combout\,
	datac => \fd|BankRegister|saidaA[27]~19_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[27]~20_combout\);

-- Location: FF_X57_Y39_N23
\fd|BankRegister|registrador[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~26_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][26]~q\);

-- Location: FF_X57_Y39_N1
\fd|BankRegister|registrador[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[26]~26_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][26]~q\);

-- Location: LCCOMB_X57_Y39_N14
\fd|BankRegister|saidaB[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[26]~18_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][26]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][26]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[0][26]~q\,
	combout => \fd|BankRegister|saidaB[26]~18_combout\);

-- Location: FF_X56_Y39_N29
\fd|BankRegister|registrador[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~26_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][26]~q\);

-- Location: LCCOMB_X56_Y39_N14
\fd|BankRegister|saidaB[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[26]~19_combout\ = (\fd|BankRegister|saidaB[26]~18_combout\ & ((\fd|BankRegister|registrador[3][26]~q\) # ((!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[26]~18_combout\ & (((\fd|BankRegister|registrador[2][26]~q\ & 
-- \fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[26]~18_combout\,
	datab => \fd|BankRegister|registrador[3][26]~q\,
	datac => \fd|BankRegister|registrador[2][26]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[26]~19_combout\);

-- Location: LCCOMB_X57_Y40_N20
\fd|BankRegister|registrador[5][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][26]~feeder_combout\ = \fd|MuxRegRam|selected[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[26]~26_combout\,
	combout => \fd|BankRegister|registrador[5][26]~feeder_combout\);

-- Location: FF_X57_Y40_N21
\fd|BankRegister|registrador[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][26]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][26]~q\);

-- Location: FF_X57_Y40_N1
\fd|BankRegister|registrador[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~26_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][26]~q\);

-- Location: LCCOMB_X58_Y39_N4
\fd|BankRegister|registrador[4][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][26]~feeder_combout\ = \fd|MuxRegRam|selected[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[26]~26_combout\,
	combout => \fd|BankRegister|registrador[4][26]~feeder_combout\);

-- Location: FF_X58_Y39_N5
\fd|BankRegister|registrador[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][26]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][26]~q\);

-- Location: FF_X58_Y39_N25
\fd|BankRegister|registrador[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~26_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][26]~q\);

-- Location: LCCOMB_X58_Y39_N24
\fd|BankRegister|saidaB[26]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[26]~16_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][26]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][26]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][26]~q\,
	datac => \fd|BankRegister|registrador[6][26]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[26]~16_combout\);

-- Location: LCCOMB_X57_Y40_N0
\fd|BankRegister|saidaB[26]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[26]~17_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[26]~16_combout\ & ((\fd|BankRegister|registrador[7][26]~q\))) # (!\fd|BankRegister|saidaB[26]~16_combout\ & (\fd|BankRegister|registrador[5][26]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[26]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][26]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][26]~q\,
	datad => \fd|BankRegister|saidaB[26]~16_combout\,
	combout => \fd|BankRegister|saidaB[26]~17_combout\);

-- Location: LCCOMB_X56_Y39_N8
\fd|MuxSaidaBankRegister|selected[26]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[26]~7_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[26]~17_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[26]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[26]~19_combout\,
	datad => \fd|BankRegister|saidaB[26]~17_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[26]~7_combout\);

-- Location: LCCOMB_X56_Y39_N20
\fd|BankRegister|registrador[2][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[25]~25_combout\,
	combout => \fd|BankRegister|registrador[2][25]~feeder_combout\);

-- Location: FF_X56_Y39_N21
\fd|BankRegister|registrador[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][25]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][25]~q\);

-- Location: FF_X56_Y39_N31
\fd|BankRegister|registrador[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][25]~q\);

-- Location: FF_X57_Y39_N13
\fd|BankRegister|registrador[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][25]~q\);

-- Location: FF_X57_Y39_N21
\fd|BankRegister|registrador[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[25]~25_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][25]~q\);

-- Location: LCCOMB_X57_Y39_N2
\fd|BankRegister|saidaB[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[25]~22_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][25]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][25]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[0][25]~q\,
	combout => \fd|BankRegister|saidaB[25]~22_combout\);

-- Location: LCCOMB_X56_Y39_N12
\fd|BankRegister|saidaB[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[25]~23_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[25]~22_combout\ & ((\fd|BankRegister|registrador[3][25]~q\))) # (!\fd|BankRegister|saidaB[25]~22_combout\ & (\fd|BankRegister|registrador[2][25]~q\)))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[25]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[2][25]~q\,
	datac => \fd|BankRegister|registrador[3][25]~q\,
	datad => \fd|BankRegister|saidaB[25]~22_combout\,
	combout => \fd|BankRegister|saidaB[25]~23_combout\);

-- Location: FF_X58_Y39_N23
\fd|BankRegister|registrador[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][25]~q\);

-- Location: FF_X58_Y39_N3
\fd|BankRegister|registrador[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][25]~q\);

-- Location: LCCOMB_X58_Y39_N2
\fd|BankRegister|saidaB[25]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[25]~20_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][25]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][25]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][25]~q\,
	datac => \fd|BankRegister|registrador[6][25]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[25]~20_combout\);

-- Location: FF_X56_Y37_N31
\fd|BankRegister|registrador[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~25_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][25]~q\);

-- Location: LCCOMB_X56_Y37_N0
\fd|BankRegister|saidaB[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[25]~21_combout\ = (\fd|BankRegister|saidaB[25]~20_combout\ & (((\fd|BankRegister|registrador[7][25]~q\) # (!\fd|Rom|content~14_combout\)))) # (!\fd|BankRegister|saidaB[25]~20_combout\ & (\fd|BankRegister|registrador[5][25]~q\ & 
-- ((\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[25]~20_combout\,
	datab => \fd|BankRegister|registrador[5][25]~q\,
	datac => \fd|BankRegister|registrador[7][25]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[25]~21_combout\);

-- Location: LCCOMB_X56_Y39_N2
\fd|MuxSaidaBankRegister|selected[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[25]~8_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[25]~21_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[25]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[25]~23_combout\,
	datab => \fd|BankRegister|saidaB[25]~21_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[25]~8_combout\);

-- Location: LCCOMB_X56_Y39_N6
\fd|ALU|final|selected[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[25]~12_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[25]~27_combout\) # (\fd|MuxSaidaBankRegister|selected[25]~8_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[25]~27_combout\ 
-- & (\fd|MuxSaidaBankRegister|selected[25]~8_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|saidaA[25]~27_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[25]~8_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[25]~12_combout\);

-- Location: FF_X58_Y39_N13
\fd|BankRegister|registrador[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~24_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][24]~q\);

-- Location: FF_X58_Y39_N9
\fd|BankRegister|registrador[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~24_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][24]~q\);

-- Location: LCCOMB_X58_Y39_N8
\fd|BankRegister|saidaB[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[24]~24_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][24]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][24]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][24]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[6][24]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[24]~24_combout\);

-- Location: FF_X48_Y39_N31
\fd|BankRegister|registrador[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~24_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][24]~q\);

-- Location: FF_X52_Y40_N25
\fd|BankRegister|registrador[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~24_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][24]~q\);

-- Location: LCCOMB_X48_Y39_N30
\fd|BankRegister|saidaB[24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[24]~25_combout\ = (\fd|BankRegister|saidaB[24]~24_combout\ & (((\fd|BankRegister|registrador[7][24]~q\)) # (!\fd|Rom|content~14_combout\))) # (!\fd|BankRegister|saidaB[24]~24_combout\ & (\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[5][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[24]~24_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][24]~q\,
	datad => \fd|BankRegister|registrador[5][24]~q\,
	combout => \fd|BankRegister|saidaB[24]~25_combout\);

-- Location: FF_X53_Y42_N13
\fd|BankRegister|registrador[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~24_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][24]~q\);

-- Location: LCCOMB_X54_Y42_N22
\fd|BankRegister|registrador[3][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[24]~24_combout\,
	combout => \fd|BankRegister|registrador[3][24]~feeder_combout\);

-- Location: FF_X54_Y42_N23
\fd|BankRegister|registrador[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[3][24]~feeder_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][24]~q\);

-- Location: FF_X53_Y39_N17
\fd|BankRegister|registrador[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[24]~24_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][24]~q\);

-- Location: LCCOMB_X55_Y39_N18
\fd|BankRegister|saidaB[24]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[24]~26_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\) # (\fd|BankRegister|registrador[1][24]~q\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][24]~q\ & 
-- (!\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[0][24]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[1][24]~q\,
	combout => \fd|BankRegister|saidaB[24]~26_combout\);

-- Location: LCCOMB_X53_Y42_N14
\fd|BankRegister|saidaB[24]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[24]~27_combout\ = (\fd|BankRegister|saidaB[24]~26_combout\ & (((\fd|BankRegister|registrador[3][24]~q\) # (!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[24]~26_combout\ & (\fd|BankRegister|registrador[2][24]~q\ & 
-- ((\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][24]~q\,
	datab => \fd|BankRegister|registrador[3][24]~q\,
	datac => \fd|BankRegister|saidaB[24]~26_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[24]~27_combout\);

-- Location: LCCOMB_X48_Y39_N6
\fd|MuxSaidaBankRegister|selected[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[24]~9_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[24]~25_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[24]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[24]~25_combout\,
	datab => \fd|BankRegister|saidaB[24]~27_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[24]~9_combout\);

-- Location: LCCOMB_X53_Y39_N20
\fd|ALU|final|selected[24]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[24]~46_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[24]~31_combout\) # (\fd|MuxSaidaBankRegister|selected[24]~9_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[24]~31_combout\ 
-- & (\fd|MuxSaidaBankRegister|selected[24]~9_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|MuxSaidaBankRegister|selected[24]~9_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|BankRegister|saidaA[24]~31_combout\,
	combout => \fd|ALU|final|selected[24]~46_combout\);

-- Location: FF_X56_Y37_N21
\fd|BankRegister|registrador[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][23]~q\);

-- Location: LCCOMB_X56_Y38_N10
\fd|BankRegister|registrador[4][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[23]~23_combout\,
	combout => \fd|BankRegister|registrador[4][23]~feeder_combout\);

-- Location: FF_X56_Y38_N11
\fd|BankRegister|registrador[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][23]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][23]~q\);

-- Location: LCCOMB_X56_Y37_N20
\fd|BankRegister|saidaA[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[23]~32_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][23]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][23]~q\,
	datad => \fd|BankRegister|registrador[4][23]~q\,
	combout => \fd|BankRegister|saidaA[23]~32_combout\);

-- Location: LCCOMB_X54_Y42_N12
\fd|BankRegister|registrador[3][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[23]~23_combout\,
	combout => \fd|BankRegister|registrador[3][23]~feeder_combout\);

-- Location: FF_X54_Y42_N13
\fd|BankRegister|registrador[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[3][23]~feeder_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][23]~q\);

-- Location: FF_X55_Y39_N15
\fd|BankRegister|registrador[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[23]~23_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][23]~q\);

-- Location: FF_X55_Y39_N3
\fd|BankRegister|registrador[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][23]~q\);

-- Location: LCCOMB_X55_Y39_N2
\fd|BankRegister|saidaA[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[23]~33_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][23]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][23]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][23]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[23]~33_combout\);

-- Location: LCCOMB_X54_Y42_N30
\fd|BankRegister|saidaA[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[23]~34_combout\ = (\fd|BankRegister|saidaA[23]~33_combout\ & (((\fd|BankRegister|registrador[3][23]~q\) # (!\fd|Rom|content~6_combout\)))) # (!\fd|BankRegister|saidaA[23]~33_combout\ & (\fd|BankRegister|registrador[2][23]~q\ & 
-- ((\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][23]~q\,
	datab => \fd|BankRegister|registrador[3][23]~q\,
	datac => \fd|BankRegister|saidaA[23]~33_combout\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[23]~34_combout\);

-- Location: LCCOMB_X54_Y41_N22
\fd|BankRegister|saidaA[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[23]~35_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[23]~32_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[23]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[23]~32_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[23]~34_combout\,
	datad => \fd|BankRegister|Equal0~0_combout\,
	combout => \fd|BankRegister|saidaA[23]~35_combout\);

-- Location: LCCOMB_X54_Y41_N18
\fd|ALU|final|selected[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[23]~44_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[23]~35_combout\) # (\fd|MuxSaidaBankRegister|selected[23]~10_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[23]~35_combout\ & (\fd|MuxSaidaBankRegister|selected[23]~10_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|MuxSaidaBankRegister|selected[23]~10_combout\,
	datac => \fd|BankRegister|saidaA[23]~35_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[23]~44_combout\);

-- Location: LCCOMB_X54_Y42_N8
\fd|BankRegister|registrador[2][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][22]~feeder_combout\ = \fd|MuxRegRam|selected[22]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[22]~22_combout\,
	combout => \fd|BankRegister|registrador[2][22]~feeder_combout\);

-- Location: FF_X54_Y42_N9
\fd|BankRegister|registrador[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][22]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][22]~q\);

-- Location: FF_X52_Y41_N3
\fd|BankRegister|registrador[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~22_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][22]~q\);

-- Location: FF_X55_Y39_N25
\fd|BankRegister|registrador[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~22_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][22]~q\);

-- Location: FF_X55_Y39_N23
\fd|BankRegister|registrador[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[22]~22_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][22]~q\);

-- Location: LCCOMB_X55_Y39_N24
\fd|BankRegister|saidaA[22]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[22]~37_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|Rom|content~6_combout\) # ((\fd|BankRegister|registrador[1][22]~q\)))) # (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & 
-- ((\fd|BankRegister|registrador[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][22]~q\,
	datad => \fd|BankRegister|registrador[0][22]~q\,
	combout => \fd|BankRegister|saidaA[22]~37_combout\);

-- Location: LCCOMB_X52_Y41_N2
\fd|BankRegister|saidaA[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[22]~38_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[22]~37_combout\ & ((\fd|BankRegister|registrador[3][22]~q\))) # (!\fd|BankRegister|saidaA[22]~37_combout\ & (\fd|BankRegister|registrador[2][22]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[22]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][22]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][22]~q\,
	datad => \fd|BankRegister|saidaA[22]~37_combout\,
	combout => \fd|BankRegister|saidaA[22]~38_combout\);

-- Location: FF_X49_Y38_N17
\fd|BankRegister|registrador[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~22_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][22]~q\);

-- Location: LCCOMB_X49_Y38_N16
\fd|BankRegister|saidaA[22]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[22]~36_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][22]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][22]~q\,
	datad => \fd|BankRegister|registrador[4][22]~q\,
	combout => \fd|BankRegister|saidaA[22]~36_combout\);

-- Location: LCCOMB_X52_Y41_N4
\fd|BankRegister|saidaA[22]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[22]~39_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[22]~36_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[22]~38_combout\,
	datac => \fd|BankRegister|saidaA[22]~36_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[22]~39_combout\);

-- Location: FF_X49_Y38_N5
\fd|BankRegister|registrador[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][21]~q\);

-- Location: LCCOMB_X56_Y38_N26
\fd|BankRegister|registrador[6][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[21]~21_combout\,
	combout => \fd|BankRegister|registrador[6][21]~feeder_combout\);

-- Location: FF_X56_Y38_N27
\fd|BankRegister|registrador[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][21]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][21]~q\);

-- Location: LCCOMB_X56_Y38_N14
\fd|BankRegister|registrador[4][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[21]~21_combout\,
	combout => \fd|BankRegister|registrador[4][21]~feeder_combout\);

-- Location: FF_X56_Y38_N15
\fd|BankRegister|registrador[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][21]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][21]~q\);

-- Location: LCCOMB_X56_Y38_N4
\fd|BankRegister|saidaB[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[21]~36_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][21]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][21]~q\,
	datab => \fd|BankRegister|registrador[4][21]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[21]~36_combout\);

-- Location: LCCOMB_X49_Y38_N4
\fd|BankRegister|saidaB[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[21]~37_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[21]~36_combout\ & ((\fd|BankRegister|registrador[7][21]~q\))) # (!\fd|BankRegister|saidaB[21]~36_combout\ & (\fd|BankRegister|registrador[5][21]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[21]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][21]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][21]~q\,
	datad => \fd|BankRegister|saidaB[21]~36_combout\,
	combout => \fd|BankRegister|saidaB[21]~37_combout\);

-- Location: FF_X52_Y41_N25
\fd|BankRegister|registrador[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][21]~q\);

-- Location: LCCOMB_X50_Y41_N20
\fd|BankRegister|registrador[2][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[21]~21_combout\,
	combout => \fd|BankRegister|registrador[2][21]~feeder_combout\);

-- Location: FF_X50_Y41_N21
\fd|BankRegister|registrador[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][21]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][21]~q\);

-- Location: FF_X55_Y39_N31
\fd|BankRegister|registrador[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[21]~21_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][21]~q\);

-- Location: FF_X55_Y39_N7
\fd|BankRegister|registrador[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][21]~q\);

-- Location: LCCOMB_X55_Y39_N20
\fd|BankRegister|saidaB[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[21]~38_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\) # (\fd|BankRegister|registrador[1][21]~q\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][21]~q\ & 
-- (!\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[0][21]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[1][21]~q\,
	combout => \fd|BankRegister|saidaB[21]~38_combout\);

-- Location: LCCOMB_X50_Y41_N2
\fd|BankRegister|saidaB[21]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[21]~39_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[21]~38_combout\ & (\fd|BankRegister|registrador[3][21]~q\)) # (!\fd|BankRegister|saidaB[21]~38_combout\ & ((\fd|BankRegister|registrador[2][21]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[21]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][21]~q\,
	datab => \fd|BankRegister|registrador[2][21]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|saidaB[21]~38_combout\,
	combout => \fd|BankRegister|saidaB[21]~39_combout\);

-- Location: LCCOMB_X50_Y41_N8
\fd|MuxSaidaBankRegister|selected[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[21]~12_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[21]~37_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[21]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[21]~37_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[21]~39_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[21]~12_combout\);

-- Location: LCCOMB_X52_Y41_N28
\fd|ALU|final|selected[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[21]~36_combout\ = (\fd|BankRegister|saidaA[21]~43_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~12_combout\)))) # (!\fd|BankRegister|saidaA[21]~43_combout\ & 
-- (\fd|UCalu|output\(0) & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[21]~43_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|MuxSaidaBankRegister|selected[21]~12_combout\,
	combout => \fd|ALU|final|selected[21]~36_combout\);

-- Location: FF_X56_Y38_N9
\fd|BankRegister|registrador[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~20_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][20]~q\);

-- Location: LCCOMB_X55_Y37_N18
\fd|BankRegister|saidaA[20]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[20]~44_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][20]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][20]~q\,
	datad => \fd|BankRegister|registrador[4][20]~q\,
	combout => \fd|BankRegister|saidaA[20]~44_combout\);

-- Location: LCCOMB_X52_Y37_N30
\fd|BankRegister|registrador[3][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][20]~feeder_combout\ = \fd|MuxRegRam|selected[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[20]~20_combout\,
	combout => \fd|BankRegister|registrador[3][20]~feeder_combout\);

-- Location: FF_X52_Y37_N31
\fd|BankRegister|registrador[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[3][20]~feeder_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][20]~q\);

-- Location: FF_X53_Y37_N19
\fd|BankRegister|registrador[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[20]~20_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][20]~q\);

-- Location: FF_X53_Y37_N13
\fd|BankRegister|registrador[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~20_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][20]~q\);

-- Location: LCCOMB_X53_Y37_N12
\fd|BankRegister|saidaA[20]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[20]~45_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][20]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][20]~q\ & 
-- ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][20]~q\,
	datac => \fd|BankRegister|registrador[1][20]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[20]~45_combout\);

-- Location: FF_X54_Y37_N23
\fd|BankRegister|registrador[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~20_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][20]~q\);

-- Location: LCCOMB_X52_Y37_N24
\fd|BankRegister|saidaA[20]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[20]~46_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[20]~45_combout\ & (\fd|BankRegister|registrador[3][20]~q\)) # (!\fd|BankRegister|saidaA[20]~45_combout\ & ((\fd|BankRegister|registrador[2][20]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[20]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][20]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|saidaA[20]~45_combout\,
	datad => \fd|BankRegister|registrador[2][20]~q\,
	combout => \fd|BankRegister|saidaA[20]~46_combout\);

-- Location: LCCOMB_X52_Y37_N26
\fd|BankRegister|saidaA[20]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[20]~47_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[20]~44_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[20]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[20]~44_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|saidaA[20]~46_combout\,
	combout => \fd|BankRegister|saidaA[20]~47_combout\);

-- Location: LCCOMB_X54_Y37_N18
\fd|ALU|final|selected[20]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[20]~34_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[20]~47_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[20]~13_combout\)))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[20]~47_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[20]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|MuxSaidaBankRegister|selected[20]~13_combout\,
	datad => \fd|BankRegister|saidaA[20]~47_combout\,
	combout => \fd|ALU|final|selected[20]~34_combout\);

-- Location: FF_X49_Y38_N19
\fd|BankRegister|registrador[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][19]~q\);

-- Location: FF_X50_Y38_N31
\fd|BankRegister|registrador[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][19]~q\);

-- Location: FF_X50_Y38_N7
\fd|BankRegister|registrador[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][19]~q\);

-- Location: LCCOMB_X50_Y38_N6
\fd|BankRegister|saidaB[19]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[19]~44_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][19]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][19]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][19]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[4][19]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[19]~44_combout\);

-- Location: LCCOMB_X49_Y38_N18
\fd|BankRegister|saidaB[19]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[19]~45_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[19]~44_combout\ & ((\fd|BankRegister|registrador[7][19]~q\))) # (!\fd|BankRegister|saidaB[19]~44_combout\ & (\fd|BankRegister|registrador[5][19]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[19]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][19]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][19]~q\,
	datad => \fd|BankRegister|saidaB[19]~44_combout\,
	combout => \fd|BankRegister|saidaB[19]~45_combout\);

-- Location: FF_X53_Y37_N5
\fd|BankRegister|registrador[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[19]~19_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][19]~q\);

-- Location: FF_X53_Y37_N15
\fd|BankRegister|registrador[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][19]~q\);

-- Location: LCCOMB_X50_Y37_N8
\fd|BankRegister|saidaB[19]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[19]~46_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][19]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][19]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[1][19]~q\,
	combout => \fd|BankRegister|saidaB[19]~46_combout\);

-- Location: FF_X50_Y41_N19
\fd|BankRegister|registrador[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][19]~q\);

-- Location: LCCOMB_X53_Y41_N26
\fd|BankRegister|registrador[3][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][19]~feeder_combout\ = \fd|MuxRegRam|selected[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[19]~19_combout\,
	combout => \fd|BankRegister|registrador[3][19]~feeder_combout\);

-- Location: FF_X53_Y41_N27
\fd|BankRegister|registrador[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[3][19]~feeder_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][19]~q\);

-- Location: LCCOMB_X50_Y41_N18
\fd|BankRegister|saidaB[19]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[19]~47_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[19]~46_combout\ & ((\fd|BankRegister|registrador[3][19]~q\))) # (!\fd|BankRegister|saidaB[19]~46_combout\ & (\fd|BankRegister|registrador[2][19]~q\)))) # 
-- (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|saidaB[19]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|saidaB[19]~46_combout\,
	datac => \fd|BankRegister|registrador[2][19]~q\,
	datad => \fd|BankRegister|registrador[3][19]~q\,
	combout => \fd|BankRegister|saidaB[19]~47_combout\);

-- Location: LCCOMB_X50_Y41_N30
\fd|MuxSaidaBankRegister|selected[19]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[19]~14_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[19]~45_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[19]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[19]~45_combout\,
	datab => \fd|BankRegister|saidaB[19]~47_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|Rom|content~12_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[19]~14_combout\);

-- Location: LCCOMB_X53_Y37_N2
\fd|ALU|final|selected[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[19]~10_combout\ = (\fd|BankRegister|saidaA[19]~51_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~14_combout\)))) # (!\fd|BankRegister|saidaA[19]~51_combout\ & 
-- (\fd|UCalu|output\(0) & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[19]~14_combout\,
	datac => \fd|BankRegister|saidaA[19]~51_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[19]~10_combout\);

-- Location: FF_X57_Y40_N3
\fd|BankRegister|registrador[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~18_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][18]~q\);

-- Location: LCCOMB_X56_Y38_N22
\fd|BankRegister|registrador[4][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][18]~feeder_combout\ = \fd|MuxRegRam|selected[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[18]~18_combout\,
	combout => \fd|BankRegister|registrador[4][18]~feeder_combout\);

-- Location: FF_X56_Y38_N23
\fd|BankRegister|registrador[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][18]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][18]~q\);

-- Location: LCCOMB_X56_Y38_N2
\fd|BankRegister|registrador[6][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][18]~feeder_combout\ = \fd|MuxRegRam|selected[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[18]~18_combout\,
	combout => \fd|BankRegister|registrador[6][18]~feeder_combout\);

-- Location: FF_X56_Y38_N3
\fd|BankRegister|registrador[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][18]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][18]~q\);

-- Location: LCCOMB_X56_Y38_N6
\fd|BankRegister|saidaB[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[18]~48_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][18]~q\))) # (!\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[4][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][18]~q\,
	datab => \fd|BankRegister|registrador[6][18]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[18]~48_combout\);

-- Location: LCCOMB_X57_Y40_N2
\fd|BankRegister|saidaB[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[18]~49_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[18]~48_combout\ & ((\fd|BankRegister|registrador[7][18]~q\))) # (!\fd|BankRegister|saidaB[18]~48_combout\ & (\fd|BankRegister|registrador[5][18]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[18]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][18]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][18]~q\,
	datad => \fd|BankRegister|saidaB[18]~48_combout\,
	combout => \fd|BankRegister|saidaB[18]~49_combout\);

-- Location: FF_X50_Y39_N3
\fd|BankRegister|registrador[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~18_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][18]~q\);

-- Location: FF_X50_Y39_N17
\fd|BankRegister|registrador[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[18]~18_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][18]~q\);

-- Location: LCCOMB_X50_Y41_N24
\fd|BankRegister|saidaB[18]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[18]~50_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][18]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[1][18]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[0][18]~q\,
	combout => \fd|BankRegister|saidaB[18]~50_combout\);

-- Location: FF_X50_Y41_N1
\fd|BankRegister|registrador[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~18_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][18]~q\);

-- Location: FF_X52_Y41_N23
\fd|BankRegister|registrador[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~18_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][18]~q\);

-- Location: LCCOMB_X50_Y41_N0
\fd|BankRegister|saidaB[18]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[18]~51_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[18]~50_combout\ & ((\fd|BankRegister|registrador[3][18]~q\))) # (!\fd|BankRegister|saidaB[18]~50_combout\ & (\fd|BankRegister|registrador[2][18]~q\)))) # 
-- (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|saidaB[18]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|saidaB[18]~50_combout\,
	datac => \fd|BankRegister|registrador[2][18]~q\,
	datad => \fd|BankRegister|registrador[3][18]~q\,
	combout => \fd|BankRegister|saidaB[18]~51_combout\);

-- Location: LCCOMB_X50_Y40_N8
\fd|MuxSaidaBankRegister|selected[18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[18]~15_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[18]~49_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[18]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[18]~49_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[18]~51_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[18]~15_combout\);

-- Location: LCCOMB_X50_Y39_N28
\fd|ALU|final|selected[18]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[18]~40_combout\ = (\fd|BankRegister|saidaA[18]~55_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~15_combout\)))) # (!\fd|BankRegister|saidaA[18]~55_combout\ & 
-- (\fd|UCalu|output\(0) & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[18]~15_combout\,
	datac => \fd|BankRegister|saidaA[18]~55_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[18]~40_combout\);

-- Location: FF_X50_Y38_N29
\fd|BankRegister|registrador[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][17]~q\);

-- Location: LCCOMB_X50_Y38_N30
\fd|BankRegister|saidaA[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[17]~56_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][17]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][17]~q\,
	datab => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[4][17]~q\,
	combout => \fd|BankRegister|saidaA[17]~56_combout\);

-- Location: FF_X50_Y41_N7
\fd|BankRegister|registrador[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][17]~q\);

-- Location: FF_X50_Y39_N27
\fd|BankRegister|registrador[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[17]~17_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][17]~q\);

-- Location: LCCOMB_X50_Y41_N14
\fd|BankRegister|registrador[1][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[17]~17_combout\,
	combout => \fd|BankRegister|registrador[1][17]~feeder_combout\);

-- Location: FF_X50_Y41_N15
\fd|BankRegister|registrador[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[1][17]~feeder_combout\,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][17]~q\);

-- Location: LCCOMB_X50_Y41_N4
\fd|BankRegister|saidaA[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[17]~57_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][17]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][17]~q\,
	datab => \fd|BankRegister|registrador[1][17]~q\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[17]~57_combout\);

-- Location: FF_X52_Y37_N9
\fd|BankRegister|registrador[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][17]~q\);

-- Location: LCCOMB_X52_Y37_N8
\fd|BankRegister|saidaA[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[17]~58_combout\ = (\fd|BankRegister|saidaA[17]~57_combout\ & (((\fd|BankRegister|registrador[3][17]~q\) # (!\fd|Rom|content~6_combout\)))) # (!\fd|BankRegister|saidaA[17]~57_combout\ & (\fd|BankRegister|registrador[2][17]~q\ & 
-- ((\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][17]~q\,
	datab => \fd|BankRegister|saidaA[17]~57_combout\,
	datac => \fd|BankRegister|registrador[3][17]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[17]~58_combout\);

-- Location: LCCOMB_X52_Y37_N0
\fd|BankRegister|saidaA[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[17]~59_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[17]~56_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[17]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[17]~56_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[17]~58_combout\,
	datad => \fd|BankRegister|Equal0~0_combout\,
	combout => \fd|BankRegister|saidaA[17]~59_combout\);

-- Location: LCCOMB_X50_Y39_N4
\fd|ALU|final|selected[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[17]~28_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[17]~59_combout\) # (\fd|MuxSaidaBankRegister|selected[17]~16_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[17]~59_combout\ & (\fd|MuxSaidaBankRegister|selected[17]~16_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|MuxSaidaBankRegister|selected[17]~16_combout\,
	datac => \fd|BankRegister|saidaA[17]~59_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[17]~28_combout\);

-- Location: FF_X52_Y37_N15
\fd|BankRegister|registrador[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~16_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][16]~q\);

-- Location: FF_X54_Y37_N9
\fd|BankRegister|registrador[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[16]~16_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][16]~q\);

-- Location: FF_X52_Y37_N17
\fd|BankRegister|registrador[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~16_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][16]~q\);

-- Location: LCCOMB_X54_Y37_N6
\fd|BankRegister|saidaB[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[16]~58_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|BankRegister|registrador[1][16]~q\) # (\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][16]~q\ & 
-- ((!\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][16]~q\,
	datab => \fd|BankRegister|registrador[1][16]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[16]~58_combout\);

-- Location: LCCOMB_X54_Y37_N24
\fd|BankRegister|saidaB[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[16]~59_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[16]~58_combout\ & (\fd|BankRegister|registrador[3][16]~q\)) # (!\fd|BankRegister|saidaB[16]~58_combout\ & ((\fd|BankRegister|registrador[2][16]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[16]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][16]~q\,
	datac => \fd|BankRegister|registrador[2][16]~q\,
	datad => \fd|BankRegister|saidaB[16]~58_combout\,
	combout => \fd|BankRegister|saidaB[16]~59_combout\);

-- Location: LCCOMB_X50_Y38_N22
\fd|BankRegister|registrador[6][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[16]~16_combout\,
	combout => \fd|BankRegister|registrador[6][16]~feeder_combout\);

-- Location: FF_X50_Y38_N23
\fd|BankRegister|registrador[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][16]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][16]~q\);

-- Location: FF_X50_Y38_N19
\fd|BankRegister|registrador[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~16_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][16]~q\);

-- Location: LCCOMB_X50_Y38_N18
\fd|BankRegister|saidaB[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[16]~56_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][16]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][16]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[6][16]~q\,
	datac => \fd|BankRegister|registrador[4][16]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[16]~56_combout\);

-- Location: LCCOMB_X57_Y40_N4
\fd|BankRegister|registrador[5][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[16]~16_combout\,
	combout => \fd|BankRegister|registrador[5][16]~feeder_combout\);

-- Location: FF_X57_Y40_N5
\fd|BankRegister|registrador[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][16]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][16]~q\);

-- Location: FF_X57_Y40_N25
\fd|BankRegister|registrador[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~16_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][16]~q\);

-- Location: LCCOMB_X57_Y40_N24
\fd|BankRegister|saidaB[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[16]~57_combout\ = (\fd|BankRegister|saidaB[16]~56_combout\ & (((\fd|BankRegister|registrador[7][16]~q\) # (!\fd|Rom|content~14_combout\)))) # (!\fd|BankRegister|saidaB[16]~56_combout\ & (\fd|BankRegister|registrador[5][16]~q\ & 
-- ((\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[16]~56_combout\,
	datab => \fd|BankRegister|registrador[5][16]~q\,
	datac => \fd|BankRegister|registrador[7][16]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[16]~57_combout\);

-- Location: LCCOMB_X53_Y37_N22
\fd|MuxSaidaBankRegister|selected[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[16]~17_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[16]~57_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[16]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|BankRegister|saidaB[16]~59_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[16]~57_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[16]~17_combout\);

-- Location: LCCOMB_X54_Y37_N4
\fd|ALU|final|selected[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[16]~38_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[16]~63_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~17_combout\)))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[16]~63_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[16]~63_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[16]~17_combout\,
	combout => \fd|ALU|final|selected[16]~38_combout\);

-- Location: FF_X53_Y41_N1
\fd|BankRegister|registrador[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][15]~q\);

-- Location: LCCOMB_X53_Y42_N28
\fd|BankRegister|registrador[0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[15]~15_combout\,
	combout => \fd|BankRegister|registrador[0][15]~feeder_combout\);

-- Location: FF_X53_Y42_N29
\fd|BankRegister|registrador[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[0][15]~feeder_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][15]~q\);

-- Location: FF_X53_Y41_N17
\fd|BankRegister|registrador[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][15]~q\);

-- Location: LCCOMB_X50_Y41_N10
\fd|BankRegister|saidaB[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[15]~62_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][15]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[0][15]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[1][15]~q\,
	combout => \fd|BankRegister|saidaB[15]~62_combout\);

-- Location: LCCOMB_X50_Y41_N28
\fd|BankRegister|saidaB[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[15]~63_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[15]~62_combout\ & ((\fd|BankRegister|registrador[3][15]~q\))) # (!\fd|BankRegister|saidaB[15]~62_combout\ & (\fd|BankRegister|registrador[2][15]~q\)))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[15]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][15]~q\,
	datab => \fd|BankRegister|registrador[3][15]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|saidaB[15]~62_combout\,
	combout => \fd|BankRegister|saidaB[15]~63_combout\);

-- Location: LCCOMB_X57_Y40_N30
\fd|BankRegister|registrador[5][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[15]~15_combout\,
	combout => \fd|BankRegister|registrador[5][15]~feeder_combout\);

-- Location: FF_X57_Y40_N31
\fd|BankRegister|registrador[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][15]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][15]~q\);

-- Location: FF_X57_Y40_N27
\fd|BankRegister|registrador[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~15_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][15]~q\);

-- Location: LCCOMB_X52_Y38_N22
\fd|BankRegister|registrador[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~15_combout\,
	combout => \fd|BankRegister|registrador[4][15]~feeder_combout\);

-- Location: FF_X52_Y38_N23
\fd|BankRegister|registrador[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][15]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][15]~q\);

-- Location: LCCOMB_X52_Y38_N2
\fd|BankRegister|registrador[6][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~15_combout\,
	combout => \fd|BankRegister|registrador[6][15]~feeder_combout\);

-- Location: FF_X52_Y38_N3
\fd|BankRegister|registrador[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][15]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][15]~q\);

-- Location: LCCOMB_X52_Y38_N28
\fd|BankRegister|saidaB[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[15]~60_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][15]~q\))) # (!\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][15]~q\,
	datab => \fd|BankRegister|registrador[6][15]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[15]~60_combout\);

-- Location: LCCOMB_X57_Y40_N26
\fd|BankRegister|saidaB[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[15]~61_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[15]~60_combout\ & ((\fd|BankRegister|registrador[7][15]~q\))) # (!\fd|BankRegister|saidaB[15]~60_combout\ & (\fd|BankRegister|registrador[5][15]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[15]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][15]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][15]~q\,
	datad => \fd|BankRegister|saidaB[15]~60_combout\,
	combout => \fd|BankRegister|saidaB[15]~61_combout\);

-- Location: LCCOMB_X56_Y39_N26
\fd|MuxSaidaBankRegister|selected[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[15]~18_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[15]~61_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[15]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[15]~63_combout\,
	datad => \fd|BankRegister|saidaB[15]~61_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[15]~18_combout\);

-- Location: LCCOMB_X53_Y42_N16
\fd|ALU|final|selected[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[15]~6_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[15]~67_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[15]~67_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[15]~67_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	combout => \fd|ALU|final|selected[15]~6_combout\);

-- Location: LCCOMB_X47_Y39_N16
\fd|BankRegister|registrador[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[14]~14_combout\,
	combout => \fd|BankRegister|registrador[2][14]~feeder_combout\);

-- Location: FF_X47_Y39_N17
\fd|BankRegister|registrador[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][14]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][14]~q\);

-- Location: FF_X49_Y39_N31
\fd|BankRegister|registrador[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[14]~14_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][14]~q\);

-- Location: FF_X53_Y41_N11
\fd|BankRegister|registrador[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~14_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][14]~q\);

-- Location: LCCOMB_X53_Y41_N10
\fd|BankRegister|saidaA[14]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[14]~69_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][14]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][14]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][14]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[14]~69_combout\);

-- Location: LCCOMB_X53_Y41_N18
\fd|BankRegister|saidaA[14]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[14]~70_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[14]~69_combout\ & ((\fd|BankRegister|registrador[3][14]~q\))) # (!\fd|BankRegister|saidaA[14]~69_combout\ & (\fd|BankRegister|registrador[2][14]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[14]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][14]~q\,
	datac => \fd|BankRegister|registrador[3][14]~q\,
	datad => \fd|BankRegister|saidaA[14]~69_combout\,
	combout => \fd|BankRegister|saidaA[14]~70_combout\);

-- Location: LCCOMB_X49_Y41_N30
\fd|BankRegister|registrador[5][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[14]~14_combout\,
	combout => \fd|BankRegister|registrador[5][14]~feeder_combout\);

-- Location: FF_X49_Y41_N31
\fd|BankRegister|registrador[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][14]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][14]~q\);

-- Location: LCCOMB_X49_Y41_N4
\fd|BankRegister|registrador[4][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[14]~14_combout\,
	combout => \fd|BankRegister|registrador[4][14]~feeder_combout\);

-- Location: FF_X49_Y41_N5
\fd|BankRegister|registrador[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][14]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][14]~q\);

-- Location: LCCOMB_X49_Y41_N20
\fd|BankRegister|saidaA[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[14]~68_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][14]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][14]~q\,
	datac => \fd|BankRegister|registrador[4][14]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[14]~68_combout\);

-- Location: LCCOMB_X53_Y41_N14
\fd|BankRegister|saidaA[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[14]~71_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[14]~68_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[14]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[14]~70_combout\,
	datac => \fd|BankRegister|saidaA[14]~68_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[14]~71_combout\);

-- Location: LCCOMB_X53_Y42_N8
\fd|ALU|final|selected[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[14]~8_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[14]~71_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~19_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[14]~71_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|MuxSaidaBankRegister|selected[14]~19_combout\,
	datad => \fd|BankRegister|saidaA[14]~71_combout\,
	combout => \fd|ALU|final|selected[14]~8_combout\);

-- Location: LCCOMB_X49_Y38_N26
\fd|BankRegister|registrador[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[13]~13_combout\,
	combout => \fd|BankRegister|registrador[5][13]~feeder_combout\);

-- Location: FF_X49_Y38_N27
\fd|BankRegister|registrador[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][13]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][13]~q\);

-- Location: LCCOMB_X52_Y38_N12
\fd|BankRegister|registrador[4][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[13]~13_combout\,
	combout => \fd|BankRegister|registrador[4][13]~feeder_combout\);

-- Location: FF_X52_Y38_N13
\fd|BankRegister|registrador[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][13]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][13]~q\);

-- Location: LCCOMB_X52_Y38_N24
\fd|BankRegister|saidaA[13]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[13]~72_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][13]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][13]~q\,
	datad => \fd|BankRegister|registrador[4][13]~q\,
	combout => \fd|BankRegister|saidaA[13]~72_combout\);

-- Location: FF_X53_Y36_N3
\fd|BankRegister|registrador[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~13_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][13]~q\);

-- Location: LCCOMB_X52_Y36_N12
\fd|BankRegister|registrador[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[13]~13_combout\,
	combout => \fd|BankRegister|registrador[1][13]~feeder_combout\);

-- Location: FF_X52_Y36_N13
\fd|BankRegister|registrador[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[1][13]~feeder_combout\,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][13]~q\);

-- Location: LCCOMB_X52_Y36_N2
\fd|BankRegister|registrador[0][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[13]~13_combout\,
	combout => \fd|BankRegister|registrador[0][13]~feeder_combout\);

-- Location: FF_X52_Y36_N3
\fd|BankRegister|registrador[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[0][13]~feeder_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][13]~q\);

-- Location: LCCOMB_X52_Y36_N26
\fd|BankRegister|saidaA[13]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[13]~73_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][13]~q\) # ((\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[0][13]~q\ & 
-- !\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][13]~q\,
	datab => \fd|BankRegister|registrador[0][13]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[13]~73_combout\);

-- Location: LCCOMB_X52_Y36_N24
\fd|BankRegister|saidaA[13]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[13]~74_combout\ = (\fd|BankRegister|saidaA[13]~73_combout\ & (((\fd|BankRegister|registrador[3][13]~q\) # (!\fd|Rom|content~6_combout\)))) # (!\fd|BankRegister|saidaA[13]~73_combout\ & (\fd|BankRegister|registrador[2][13]~q\ & 
-- ((\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][13]~q\,
	datab => \fd|BankRegister|registrador[3][13]~q\,
	datac => \fd|BankRegister|saidaA[13]~73_combout\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[13]~74_combout\);

-- Location: LCCOMB_X52_Y40_N30
\fd|BankRegister|saidaA[13]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[13]~75_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[13]~72_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[13]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[13]~72_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|saidaA[13]~74_combout\,
	combout => \fd|BankRegister|saidaA[13]~75_combout\);

-- Location: LCCOMB_X53_Y36_N26
\fd|ALU|final|selected[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[13]~48_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[13]~75_combout\) # (\fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[13]~75_combout\ & (\fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[13]~21_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(2),
	datad => \fd|BankRegister|saidaA[13]~75_combout\,
	combout => \fd|ALU|final|selected[13]~48_combout\);

-- Location: LCCOMB_X55_Y37_N22
\fd|Rom|content~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~21_combout\ = (\fd|Rom|content~2_combout\ & (\fd|Rom|content~1_combout\ & (\fd|Rom|content~0_combout\ & \fd|Rom|content~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~2_combout\,
	datab => \fd|Rom|content~1_combout\,
	datac => \fd|Rom|content~0_combout\,
	datad => \fd|Rom|content~20_combout\,
	combout => \fd|Rom|content~21_combout\);

-- Location: LCCOMB_X50_Y37_N6
\fd|BankRegister|registrador[2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][12]~feeder_combout\ = \fd|MuxRegRam|selected[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[12]~12_combout\,
	combout => \fd|BankRegister|registrador[2][12]~feeder_combout\);

-- Location: FF_X50_Y37_N7
\fd|BankRegister|registrador[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][12]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][12]~q\);

-- Location: FF_X52_Y37_N29
\fd|BankRegister|registrador[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~12_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][12]~q\);

-- Location: LCCOMB_X50_Y37_N14
\fd|BankRegister|registrador[0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][12]~feeder_combout\ = \fd|MuxRegRam|selected[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[12]~12_combout\,
	combout => \fd|BankRegister|registrador[0][12]~feeder_combout\);

-- Location: FF_X50_Y37_N15
\fd|BankRegister|registrador[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[0][12]~feeder_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][12]~q\);

-- Location: FF_X52_Y37_N23
\fd|BankRegister|registrador[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~12_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][12]~q\);

-- Location: LCCOMB_X50_Y37_N28
\fd|BankRegister|saidaB[12]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[12]~74_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\) # (\fd|BankRegister|registrador[1][12]~q\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][12]~q\ & 
-- (!\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[0][12]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[1][12]~q\,
	combout => \fd|BankRegister|saidaB[12]~74_combout\);

-- Location: LCCOMB_X50_Y37_N18
\fd|BankRegister|saidaB[12]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[12]~75_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[12]~74_combout\ & ((\fd|BankRegister|registrador[3][12]~q\))) # (!\fd|BankRegister|saidaB[12]~74_combout\ & (\fd|BankRegister|registrador[2][12]~q\)))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[12]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][12]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[3][12]~q\,
	datad => \fd|BankRegister|saidaB[12]~74_combout\,
	combout => \fd|BankRegister|saidaB[12]~75_combout\);

-- Location: LCCOMB_X52_Y38_N6
\fd|BankRegister|registrador[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][12]~feeder_combout\ = \fd|MuxRegRam|selected[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[12]~12_combout\,
	combout => \fd|BankRegister|registrador[6][12]~feeder_combout\);

-- Location: FF_X52_Y38_N7
\fd|BankRegister|registrador[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][12]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][12]~q\);

-- Location: LCCOMB_X52_Y38_N18
\fd|BankRegister|registrador[4][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][12]~feeder_combout\ = \fd|MuxRegRam|selected[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[12]~12_combout\,
	combout => \fd|BankRegister|registrador[4][12]~feeder_combout\);

-- Location: FF_X52_Y38_N19
\fd|BankRegister|registrador[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][12]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][12]~q\);

-- Location: LCCOMB_X52_Y38_N30
\fd|BankRegister|saidaB[12]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[12]~72_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][12]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][12]~q\,
	datab => \fd|BankRegister|registrador[4][12]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[12]~72_combout\);

-- Location: LCCOMB_X55_Y37_N20
\fd|BankRegister|registrador[7][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][12]~feeder_combout\ = \fd|MuxRegRam|selected[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[12]~12_combout\,
	combout => \fd|BankRegister|registrador[7][12]~feeder_combout\);

-- Location: FF_X55_Y37_N21
\fd|BankRegister|registrador[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[7][12]~feeder_combout\,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][12]~q\);

-- Location: LCCOMB_X55_Y37_N12
\fd|BankRegister|saidaB[12]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[12]~73_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[12]~72_combout\ & ((\fd|BankRegister|registrador[7][12]~q\))) # (!\fd|BankRegister|saidaB[12]~72_combout\ & (\fd|BankRegister|registrador[5][12]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[12]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[5][12]~q\,
	datac => \fd|BankRegister|saidaB[12]~72_combout\,
	datad => \fd|BankRegister|registrador[7][12]~q\,
	combout => \fd|BankRegister|saidaB[12]~73_combout\);

-- Location: LCCOMB_X55_Y37_N6
\fd|MuxSaidaBankRegister|selected[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[12]~22_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[12]~73_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[12]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[12]~75_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[12]~73_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[12]~22_combout\);

-- Location: LCCOMB_X55_Y37_N16
\fd|MuxSaidaBankRegister|selected[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[12]~23_combout\ = (\fd|MuxSaidaBankRegister|selected[12]~22_combout\) # ((\ucfd|Equal1~1_combout\ & \fd|Rom|content~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datac => \fd|Rom|content~21_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[12]~22_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[12]~23_combout\);

-- Location: LCCOMB_X53_Y36_N30
\fd|ALU|final|selected[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[12]~50_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[12]~79_combout\) # (\fd|MuxSaidaBankRegister|selected[12]~23_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[12]~79_combout\ & (\fd|MuxSaidaBankRegister|selected[12]~23_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[12]~23_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[12]~79_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[12]~50_combout\);

-- Location: LCCOMB_X50_Y40_N2
\fd|Rom|content~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~23_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~22_combout\ & (\fd|Rom|content~0_combout\ & \fd|Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~22_combout\,
	datac => \fd|Rom|content~0_combout\,
	datad => \fd|Rom|content~2_combout\,
	combout => \fd|Rom|content~23_combout\);

-- Location: LCCOMB_X52_Y38_N8
\fd|BankRegister|registrador[4][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[11]~11_combout\,
	combout => \fd|BankRegister|registrador[4][11]~feeder_combout\);

-- Location: FF_X52_Y38_N9
\fd|BankRegister|registrador[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][11]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][11]~q\);

-- Location: LCCOMB_X50_Y40_N20
\fd|BankRegister|registrador[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[11]~11_combout\,
	combout => \fd|BankRegister|registrador[5][11]~feeder_combout\);

-- Location: FF_X50_Y40_N21
\fd|BankRegister|registrador[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][11]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][11]~q\);

-- Location: LCCOMB_X52_Y40_N22
\fd|BankRegister|saidaA[11]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[11]~80_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][11]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][11]~q\,
	datab => \fd|BankRegister|registrador[5][11]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[11]~80_combout\);

-- Location: LCCOMB_X50_Y37_N20
\fd|BankRegister|registrador[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[11]~11_combout\,
	combout => \fd|BankRegister|registrador[2][11]~feeder_combout\);

-- Location: FF_X50_Y37_N21
\fd|BankRegister|registrador[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][11]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][11]~q\);

-- Location: FF_X54_Y37_N21
\fd|BankRegister|registrador[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[11]~11_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][11]~q\);

-- Location: FF_X52_Y37_N5
\fd|BankRegister|registrador[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][11]~q\);

-- Location: LCCOMB_X52_Y37_N12
\fd|BankRegister|saidaA[11]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[11]~81_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][11]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][11]~q\ & 
-- ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][11]~q\,
	datac => \fd|BankRegister|registrador[1][11]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[11]~81_combout\);

-- Location: LCCOMB_X52_Y37_N18
\fd|BankRegister|saidaA[11]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[11]~82_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[11]~81_combout\ & (\fd|BankRegister|registrador[3][11]~q\)) # (!\fd|BankRegister|saidaA[11]~81_combout\ & ((\fd|BankRegister|registrador[2][11]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[11]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][11]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[2][11]~q\,
	datad => \fd|BankRegister|saidaA[11]~81_combout\,
	combout => \fd|BankRegister|saidaA[11]~82_combout\);

-- Location: LCCOMB_X52_Y40_N4
\fd|BankRegister|saidaA[11]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[11]~83_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[11]~80_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[11]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[11]~80_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[11]~82_combout\,
	combout => \fd|BankRegister|saidaA[11]~83_combout\);

-- Location: FF_X49_Y40_N27
\fd|BankRegister|registrador[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][9]~q\);

-- Location: FF_X52_Y41_N9
\fd|BankRegister|registrador[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][9]~q\);

-- Location: FF_X52_Y41_N31
\fd|BankRegister|registrador[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[9]~9_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][9]~q\);

-- Location: LCCOMB_X53_Y41_N24
\fd|BankRegister|saidaA[9]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[9]~89_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][9]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[0][9]~q\,
	datac => \fd|BankRegister|registrador[1][9]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[9]~89_combout\);

-- Location: LCCOMB_X52_Y41_N8
\fd|BankRegister|saidaA[9]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[9]~90_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[9]~89_combout\ & ((\fd|BankRegister|registrador[3][9]~q\))) # (!\fd|BankRegister|saidaA[9]~89_combout\ & (\fd|BankRegister|registrador[2][9]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[9]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][9]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][9]~q\,
	datad => \fd|BankRegister|saidaA[9]~89_combout\,
	combout => \fd|BankRegister|saidaA[9]~90_combout\);

-- Location: LCCOMB_X50_Y40_N12
\fd|BankRegister|registrador[5][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[9]~9_combout\,
	combout => \fd|BankRegister|registrador[5][9]~feeder_combout\);

-- Location: FF_X50_Y40_N13
\fd|BankRegister|registrador[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][9]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][9]~q\);

-- Location: LCCOMB_X50_Y38_N10
\fd|BankRegister|registrador[4][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[9]~9_combout\,
	combout => \fd|BankRegister|registrador[4][9]~feeder_combout\);

-- Location: FF_X50_Y38_N11
\fd|BankRegister|registrador[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][9]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][9]~q\);

-- Location: LCCOMB_X50_Y40_N6
\fd|BankRegister|saidaA[9]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[9]~88_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][9]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][9]~q\,
	datab => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[4][9]~q\,
	combout => \fd|BankRegister|saidaA[9]~88_combout\);

-- Location: LCCOMB_X52_Y41_N12
\fd|BankRegister|saidaA[9]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[9]~91_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[9]~88_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[9]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[9]~90_combout\,
	datac => \fd|BankRegister|saidaA[9]~88_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[9]~91_combout\);

-- Location: LCCOMB_X52_Y41_N20
\fd|ALU|final|selected[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[9]~16_combout\ = (\fd|BankRegister|saidaA[9]~91_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\)))) # (!\fd|BankRegister|saidaA[9]~91_combout\ & (\fd|UCalu|output\(0) & 
-- (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[9]~91_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|MuxSaidaBankRegister|selected[9]~27_combout\,
	combout => \fd|ALU|final|selected[9]~16_combout\);

-- Location: FF_X54_Y37_N15
\fd|BankRegister|registrador[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][8]~q\);

-- Location: FF_X53_Y37_N29
\fd|BankRegister|registrador[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][8]~q\);

-- Location: FF_X53_Y41_N7
\fd|BankRegister|registrador[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][8]~q\);

-- Location: LCCOMB_X53_Y41_N6
\fd|BankRegister|saidaA[8]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[8]~93_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][8]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][8]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][8]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[8]~93_combout\);

-- Location: LCCOMB_X53_Y41_N28
\fd|BankRegister|saidaA[8]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[8]~94_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[8]~93_combout\ & ((\fd|BankRegister|registrador[3][8]~q\))) # (!\fd|BankRegister|saidaA[8]~93_combout\ & (\fd|BankRegister|registrador[2][8]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[8]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][8]~q\,
	datac => \fd|BankRegister|registrador[3][8]~q\,
	datad => \fd|BankRegister|saidaA[8]~93_combout\,
	combout => \fd|BankRegister|saidaA[8]~94_combout\);

-- Location: LCCOMB_X50_Y38_N0
\fd|BankRegister|registrador[4][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][8]~feeder_combout\ = \fd|MuxRegRam|selected[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[8]~8_combout\,
	combout => \fd|BankRegister|registrador[4][8]~feeder_combout\);

-- Location: FF_X50_Y38_N1
\fd|BankRegister|registrador[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][8]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][8]~q\);

-- Location: FF_X54_Y41_N1
\fd|BankRegister|registrador[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][8]~q\);

-- Location: LCCOMB_X54_Y41_N0
\fd|BankRegister|saidaA[8]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[8]~92_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][8]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][8]~q\,
	datac => \fd|BankRegister|registrador[5][8]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[8]~92_combout\);

-- Location: LCCOMB_X53_Y41_N4
\fd|BankRegister|saidaA[8]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[8]~95_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[8]~92_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[8]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[8]~94_combout\,
	datac => \fd|BankRegister|saidaA[8]~92_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[8]~95_combout\);

-- Location: LCCOMB_X54_Y41_N26
\fd|ALU|final|selected[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[8]~26_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[8]~95_combout\) # (\fd|MuxSaidaBankRegister|selected[8]~28_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[8]~95_combout\ & 
-- (\fd|MuxSaidaBankRegister|selected[8]~28_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|saidaA[8]~95_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[8]~28_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[8]~26_combout\);

-- Location: LCCOMB_X48_Y40_N0
\fd|BankRegister|registrador[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[6]~6_combout\,
	combout => \fd|BankRegister|registrador[5][6]~feeder_combout\);

-- Location: FF_X48_Y40_N1
\fd|BankRegister|registrador[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][6]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][6]~q\);

-- Location: LCCOMB_X47_Y40_N16
\fd|BankRegister|registrador[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[6]~6_combout\,
	combout => \fd|BankRegister|registrador[4][6]~feeder_combout\);

-- Location: FF_X47_Y40_N17
\fd|BankRegister|registrador[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][6]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][6]~q\);

-- Location: LCCOMB_X48_Y40_N14
\fd|BankRegister|saidaA[6]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[6]~100_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][6]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|BankRegister|registrador[5][6]~q\,
	datac => \fd|BankRegister|registrador[4][6]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[6]~100_combout\);

-- Location: FF_X49_Y40_N5
\fd|BankRegister|registrador[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~6_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][6]~q\);

-- Location: FF_X49_Y40_N11
\fd|BankRegister|registrador[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~6_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][6]~q\);

-- Location: LCCOMB_X50_Y39_N10
\fd|BankRegister|registrador[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[6]~6_combout\,
	combout => \fd|BankRegister|registrador[0][6]~feeder_combout\);

-- Location: FF_X50_Y39_N11
\fd|BankRegister|registrador[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[0][6]~feeder_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][6]~q\);

-- Location: FF_X50_Y39_N1
\fd|BankRegister|registrador[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[6]~6_combout\,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][6]~q\);

-- Location: LCCOMB_X50_Y39_N24
\fd|BankRegister|saidaA[6]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[6]~101_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][6]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][6]~q\ & ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][6]~q\,
	datab => \fd|BankRegister|registrador[1][6]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[6]~101_combout\);

-- Location: LCCOMB_X49_Y40_N10
\fd|BankRegister|saidaA[6]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[6]~102_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[6]~101_combout\ & ((\fd|BankRegister|registrador[3][6]~q\))) # (!\fd|BankRegister|saidaA[6]~101_combout\ & (\fd|BankRegister|registrador[2][6]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[6]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][6]~q\,
	datac => \fd|BankRegister|registrador[3][6]~q\,
	datad => \fd|BankRegister|saidaA[6]~101_combout\,
	combout => \fd|BankRegister|saidaA[6]~102_combout\);

-- Location: LCCOMB_X49_Y40_N0
\fd|BankRegister|saidaA[6]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[6]~103_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[6]~100_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[6]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[6]~100_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[6]~102_combout\,
	combout => \fd|BankRegister|saidaA[6]~103_combout\);

-- Location: LCCOMB_X50_Y39_N20
\fd|ALU|final|selected[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[6]~30_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[6]~103_combout\) # (\fd|MuxSaidaBankRegister|selected[6]~30_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[6]~103_combout\ 
-- & (\fd|MuxSaidaBankRegister|selected[6]~30_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|MuxSaidaBankRegister|selected[6]~30_combout\,
	datac => \fd|BankRegister|saidaA[6]~103_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[6]~30_combout\);

-- Location: LCCOMB_X49_Y38_N22
\fd|BankRegister|registrador[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[5]~5_combout\,
	combout => \fd|BankRegister|registrador[7][5]~feeder_combout\);

-- Location: FF_X49_Y38_N23
\fd|BankRegister|registrador[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[7][5]~feeder_combout\,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][5]~q\);

-- Location: LCCOMB_X50_Y38_N16
\fd|BankRegister|registrador[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[5]~5_combout\,
	combout => \fd|BankRegister|registrador[4][5]~feeder_combout\);

-- Location: FF_X50_Y38_N17
\fd|BankRegister|registrador[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][5]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][5]~q\);

-- Location: FF_X50_Y38_N5
\fd|BankRegister|registrador[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][5]~q\);

-- Location: LCCOMB_X50_Y38_N4
\fd|BankRegister|saidaB[5]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[5]~100_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][5]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][5]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][5]~q\,
	datac => \fd|BankRegister|registrador[6][5]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[5]~100_combout\);

-- Location: LCCOMB_X49_Y38_N10
\fd|BankRegister|saidaB[5]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[5]~101_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[5]~100_combout\ & (\fd|BankRegister|registrador[7][5]~q\)) # (!\fd|BankRegister|saidaB[5]~100_combout\ & ((\fd|BankRegister|registrador[5][5]~q\))))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[5]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][5]~q\,
	datab => \fd|BankRegister|registrador[5][5]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|saidaB[5]~100_combout\,
	combout => \fd|BankRegister|saidaB[5]~101_combout\);

-- Location: FF_X53_Y36_N29
\fd|BankRegister|registrador[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][5]~q\);

-- Location: FF_X53_Y36_N13
\fd|BankRegister|registrador[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][5]~q\);

-- Location: FF_X53_Y37_N11
\fd|BankRegister|registrador[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[5]~5_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][5]~q\);

-- Location: FF_X53_Y37_N21
\fd|BankRegister|registrador[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~5_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][5]~q\);

-- Location: LCCOMB_X53_Y37_N20
\fd|BankRegister|saidaB[5]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[5]~102_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|BankRegister|registrador[1][5]~q\) # (\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][5]~q\ & 
-- ((!\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[0][5]~q\,
	datac => \fd|BankRegister|registrador[1][5]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[5]~102_combout\);

-- Location: LCCOMB_X53_Y36_N12
\fd|BankRegister|saidaB[5]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[5]~103_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[5]~102_combout\ & (\fd|BankRegister|registrador[3][5]~q\)) # (!\fd|BankRegister|saidaB[5]~102_combout\ & ((\fd|BankRegister|registrador[2][5]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[5]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][5]~q\,
	datac => \fd|BankRegister|registrador[2][5]~q\,
	datad => \fd|BankRegister|saidaB[5]~102_combout\,
	combout => \fd|BankRegister|saidaB[5]~103_combout\);

-- Location: LCCOMB_X53_Y38_N10
\fd|MuxSaidaBankRegister|selected[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[5]~31_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[5]~101_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[5]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datac => \fd|BankRegister|saidaB[5]~101_combout\,
	datad => \fd|BankRegister|saidaB[5]~103_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[5]~31_combout\);

-- Location: LCCOMB_X53_Y38_N12
\fd|MuxSaidaBankRegister|selected[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[5]~32_combout\ = (\fd|MuxSaidaBankRegister|selected[5]~31_combout\) # ((\fd|Rom|content~25_combout\ & \ucfd|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~25_combout\,
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[5]~31_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[5]~32_combout\);

-- Location: LCCOMB_X53_Y37_N8
\fd|ALU|final|selected[5]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[5]~62_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[5]~107_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[5]~107_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|saidaA[5]~107_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|MuxSaidaBankRegister|selected[5]~32_combout\,
	combout => \fd|ALU|final|selected[5]~62_combout\);

-- Location: LCCOMB_X53_Y40_N0
\fd|ALU|adder|addsloop:4:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[4]~111_combout\ & ((\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[4]~33_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[4]~111_combout\ & (\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[4]~33_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[4]~33_combout\,
	datab => \fd|BankRegister|saidaA[4]~111_combout\,
	datac => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y37_N16
\fd|ALU|adder|addsloop:5:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:5:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ $ (\fd|BankRegister|saidaA[5]~107_combout\ $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\,
	datac => \fd|BankRegister|saidaA[5]~107_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[5]~32_combout\,
	combout => \fd|ALU|adder|addsloop:5:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y37_N30
\fd|ALU|final|selected[5]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[5]~63_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:5:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[5]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[5]~62_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:5:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[5]~63_combout\);

-- Location: LCCOMB_X53_Y37_N10
\fd|MuxRegRam|selected[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[5]~5_combout\ = (\fd|ALU|final|selected[5]~63_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[5]~63_combout\,
	datac => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[5]~5_combout\);

-- Location: LCCOMB_X49_Y38_N0
\fd|BankRegister|registrador[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[5]~5_combout\,
	combout => \fd|BankRegister|registrador[5][5]~feeder_combout\);

-- Location: FF_X49_Y38_N1
\fd|BankRegister|registrador[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][5]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][5]~q\);

-- Location: LCCOMB_X53_Y36_N24
\fd|BankRegister|saidaA[5]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[5]~104_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][5]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|BankRegister|registrador[5][5]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[4][5]~q\,
	combout => \fd|BankRegister|saidaA[5]~104_combout\);

-- Location: LCCOMB_X53_Y36_N10
\fd|BankRegister|saidaA[5]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[5]~105_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][5]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][5]~q\ & ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][5]~q\,
	datac => \fd|BankRegister|registrador[1][5]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[5]~105_combout\);

-- Location: LCCOMB_X53_Y36_N28
\fd|BankRegister|saidaA[5]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[5]~106_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[5]~105_combout\ & ((\fd|BankRegister|registrador[3][5]~q\))) # (!\fd|BankRegister|saidaA[5]~105_combout\ & (\fd|BankRegister|registrador[2][5]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[5]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][5]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][5]~q\,
	datad => \fd|BankRegister|saidaA[5]~105_combout\,
	combout => \fd|BankRegister|saidaA[5]~106_combout\);

-- Location: LCCOMB_X53_Y36_N16
\fd|BankRegister|saidaA[5]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[5]~107_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[5]~104_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[5]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|saidaA[5]~104_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[5]~106_combout\,
	combout => \fd|BankRegister|saidaA[5]~107_combout\);

-- Location: LCCOMB_X53_Y40_N2
\fd|ALU|adder|addsloop:5:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[5]~107_combout\ & ((\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\)))) # 
-- (!\fd|BankRegister|saidaA[5]~107_combout\ & (\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[5]~107_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[5]~32_combout\,
	datad => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X50_Y39_N18
\fd|ALU|adder|addsloop:6:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:6:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[6]~103_combout\ $ (\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ $ (\fd|MuxSaidaBankRegister|selected[6]~30_combout\ $ (\fd|UCalu|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[6]~103_combout\,
	datab => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[6]~30_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:6:add1to31|soma~0_combout\);

-- Location: LCCOMB_X50_Y39_N30
\fd|ALU|final|selected[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[6]~31_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:6:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[6]~30_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:6:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[6]~31_combout\);

-- Location: LCCOMB_X50_Y39_N0
\fd|MuxRegRam|selected[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[6]~6_combout\ = (\fd|ALU|final|selected[6]~31_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[6]~31_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[6]~6_combout\);

-- Location: LCCOMB_X48_Y40_N6
\fd|BankRegister|registrador[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[6]~6_combout\,
	combout => \fd|BankRegister|registrador[7][6]~feeder_combout\);

-- Location: FF_X48_Y40_N7
\fd|BankRegister|registrador[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[7][6]~feeder_combout\,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][6]~q\);

-- Location: LCCOMB_X47_Y40_N30
\fd|BankRegister|registrador[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[6]~6_combout\,
	combout => \fd|BankRegister|registrador[6][6]~feeder_combout\);

-- Location: FF_X47_Y40_N31
\fd|BankRegister|registrador[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][6]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][6]~q\);

-- Location: LCCOMB_X48_Y40_N28
\fd|BankRegister|saidaB[6]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[6]~96_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][6]~q\))) # (!\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][6]~q\,
	datab => \fd|BankRegister|registrador[6][6]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[6]~96_combout\);

-- Location: LCCOMB_X48_Y40_N18
\fd|BankRegister|saidaB[6]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[6]~97_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[6]~96_combout\ & (\fd|BankRegister|registrador[7][6]~q\)) # (!\fd|BankRegister|saidaB[6]~96_combout\ & ((\fd|BankRegister|registrador[5][6]~q\))))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[6]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][6]~q\,
	datab => \fd|BankRegister|registrador[5][6]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|saidaB[6]~96_combout\,
	combout => \fd|BankRegister|saidaB[6]~97_combout\);

-- Location: LCCOMB_X49_Y40_N2
\fd|BankRegister|saidaB[6]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[6]~98_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][6]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[0][6]~q\,
	datac => \fd|BankRegister|registrador[1][6]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[6]~98_combout\);

-- Location: LCCOMB_X49_Y40_N4
\fd|BankRegister|saidaB[6]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[6]~99_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[6]~98_combout\ & (\fd|BankRegister|registrador[3][6]~q\)) # (!\fd|BankRegister|saidaB[6]~98_combout\ & ((\fd|BankRegister|registrador[2][6]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[6]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][6]~q\,
	datac => \fd|BankRegister|registrador[2][6]~q\,
	datad => \fd|BankRegister|saidaB[6]~98_combout\,
	combout => \fd|BankRegister|saidaB[6]~99_combout\);

-- Location: LCCOMB_X48_Y40_N24
\fd|MuxSaidaBankRegister|selected[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[6]~30_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[6]~97_combout\)) # (!\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[6]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|BankRegister|saidaB[6]~97_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[6]~99_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[6]~30_combout\);

-- Location: LCCOMB_X53_Y40_N20
\fd|ALU|adder|addsloop:6:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[6]~103_combout\ & ((\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~30_combout\)))) # 
-- (!\fd|BankRegister|saidaA[6]~103_combout\ & (\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[6]~30_combout\,
	datac => \fd|BankRegister|saidaA[6]~103_combout\,
	datad => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X50_Y38_N2
\fd|BankRegister|registrador[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][7]~feeder_combout\ = \fd|MuxRegRam|selected[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[7]~7_combout\,
	combout => \fd|BankRegister|registrador[4][7]~feeder_combout\);

-- Location: FF_X50_Y38_N3
\fd|BankRegister|registrador[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][7]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][7]~q\);

-- Location: FF_X54_Y41_N11
\fd|BankRegister|registrador[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][7]~q\);

-- Location: LCCOMB_X54_Y41_N10
\fd|BankRegister|saidaA[7]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[7]~96_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][7]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|BankRegister|registrador[4][7]~q\,
	datac => \fd|BankRegister|registrador[5][7]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[7]~96_combout\);

-- Location: FF_X54_Y37_N1
\fd|BankRegister|registrador[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][7]~q\);

-- Location: FF_X53_Y41_N13
\fd|BankRegister|registrador[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][7]~q\);

-- Location: LCCOMB_X53_Y41_N12
\fd|BankRegister|saidaA[7]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[7]~97_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][7]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][7]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][7]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[7]~97_combout\);

-- Location: FF_X54_Y37_N17
\fd|BankRegister|registrador[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][7]~q\);

-- Location: LCCOMB_X53_Y41_N2
\fd|BankRegister|saidaA[7]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[7]~98_combout\ = (\fd|BankRegister|saidaA[7]~97_combout\ & (((\fd|BankRegister|registrador[3][7]~q\)) # (!\fd|Rom|content~6_combout\))) # (!\fd|BankRegister|saidaA[7]~97_combout\ & (\fd|Rom|content~6_combout\ & 
-- ((\fd|BankRegister|registrador[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[7]~97_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][7]~q\,
	datad => \fd|BankRegister|registrador[2][7]~q\,
	combout => \fd|BankRegister|saidaA[7]~98_combout\);

-- Location: LCCOMB_X53_Y41_N30
\fd|BankRegister|saidaA[7]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[7]~99_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[7]~96_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[7]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[7]~96_combout\,
	datad => \fd|BankRegister|saidaA[7]~98_combout\,
	combout => \fd|BankRegister|saidaA[7]~99_combout\);

-- Location: LCCOMB_X54_Y41_N14
\fd|ALU|adder|addsloop:7:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:7:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\ $ (\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ $ (\fd|BankRegister|saidaA[7]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[7]~29_combout\,
	datac => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\,
	datad => \fd|BankRegister|saidaA[7]~99_combout\,
	combout => \fd|ALU|adder|addsloop:7:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y41_N2
\fd|ALU|final|selected[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[7]~32_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[7]~99_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[7]~99_combout\ & 
-- (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[7]~29_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|BankRegister|saidaA[7]~99_combout\,
	combout => \fd|ALU|final|selected[7]~32_combout\);

-- Location: LCCOMB_X54_Y41_N20
\fd|ALU|final|selected[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[7]~33_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & (\fd|ALU|adder|addsloop:7:add1to31|soma~0_combout\))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|adder|addsloop:7:add1to31|soma~0_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[7]~32_combout\,
	combout => \fd|ALU|final|selected[7]~33_combout\);

-- Location: LCCOMB_X50_Y37_N12
\fd|MuxRegRam|selected[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[7]~7_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[7]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[7]~33_combout\,
	combout => \fd|MuxRegRam|selected[7]~7_combout\);

-- Location: FF_X53_Y41_N3
\fd|BankRegister|registrador[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][7]~q\);

-- Location: LCCOMB_X54_Y37_N0
\fd|BankRegister|saidaB[7]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[7]~94_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][7]~q\) # ((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|registrador[0][7]~q\ & 
-- !\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[1][7]~q\,
	datac => \fd|BankRegister|registrador[0][7]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[7]~94_combout\);

-- Location: LCCOMB_X54_Y37_N16
\fd|BankRegister|saidaB[7]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[7]~95_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[7]~94_combout\ & (\fd|BankRegister|registrador[3][7]~q\)) # (!\fd|BankRegister|saidaB[7]~94_combout\ & ((\fd|BankRegister|registrador[2][7]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[7]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][7]~q\,
	datac => \fd|BankRegister|registrador[2][7]~q\,
	datad => \fd|BankRegister|saidaB[7]~94_combout\,
	combout => \fd|BankRegister|saidaB[7]~95_combout\);

-- Location: FF_X54_Y41_N7
\fd|BankRegister|registrador[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][7]~q\);

-- Location: FF_X50_Y38_N15
\fd|BankRegister|registrador[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~7_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][7]~q\);

-- Location: LCCOMB_X50_Y38_N14
\fd|BankRegister|saidaB[7]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[7]~92_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][7]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][7]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][7]~q\,
	datac => \fd|BankRegister|registrador[6][7]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[7]~92_combout\);

-- Location: LCCOMB_X54_Y41_N6
\fd|BankRegister|saidaB[7]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[7]~93_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[7]~92_combout\ & ((\fd|BankRegister|registrador[7][7]~q\))) # (!\fd|BankRegister|saidaB[7]~92_combout\ & (\fd|BankRegister|registrador[5][7]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[7]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][7]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][7]~q\,
	datad => \fd|BankRegister|saidaB[7]~92_combout\,
	combout => \fd|BankRegister|saidaB[7]~93_combout\);

-- Location: LCCOMB_X54_Y41_N24
\fd|MuxSaidaBankRegister|selected[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[7]~29_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[7]~93_combout\))) # (!\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[7]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|BankRegister|saidaB[7]~95_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[7]~93_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[7]~29_combout\);

-- Location: LCCOMB_X53_Y40_N18
\fd|ALU|adder|addsloop:7:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[7]~99_combout\ & ((\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\)))) # 
-- (!\fd|BankRegister|saidaA[7]~99_combout\ & (\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[7]~29_combout\,
	datac => \fd|BankRegister|saidaA[7]~99_combout\,
	datad => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y41_N28
\fd|ALU|adder|addsloop:8:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:8:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[8]~28_combout\ $ (\fd|BankRegister|saidaA[8]~95_combout\ $ (\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ $ (\fd|UCalu|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[8]~28_combout\,
	datab => \fd|BankRegister|saidaA[8]~95_combout\,
	datac => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:8:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y41_N8
\fd|ALU|final|selected[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[8]~27_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:8:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[8]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[8]~26_combout\,
	datad => \fd|ALU|adder|addsloop:8:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[8]~27_combout\);

-- Location: LCCOMB_X50_Y37_N10
\fd|MuxRegRam|selected[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[8]~8_combout\ = (\fd|ALU|final|selected[8]~27_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[8]~27_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[8]~8_combout\);

-- Location: FF_X53_Y41_N29
\fd|BankRegister|registrador[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][8]~q\);

-- Location: LCCOMB_X54_Y37_N2
\fd|BankRegister|saidaB[8]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[8]~90_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][8]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[1][8]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[0][8]~q\,
	combout => \fd|BankRegister|saidaB[8]~90_combout\);

-- Location: LCCOMB_X54_Y37_N14
\fd|BankRegister|saidaB[8]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[8]~91_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[8]~90_combout\ & (\fd|BankRegister|registrador[3][8]~q\)) # (!\fd|BankRegister|saidaB[8]~90_combout\ & ((\fd|BankRegister|registrador[2][8]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[8]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][8]~q\,
	datac => \fd|BankRegister|registrador[2][8]~q\,
	datad => \fd|BankRegister|saidaB[8]~90_combout\,
	combout => \fd|BankRegister|saidaB[8]~91_combout\);

-- Location: FF_X54_Y41_N13
\fd|BankRegister|registrador[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][8]~q\);

-- Location: FF_X50_Y38_N25
\fd|BankRegister|registrador[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~8_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][8]~q\);

-- Location: LCCOMB_X50_Y38_N24
\fd|BankRegister|saidaB[8]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[8]~88_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][8]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][8]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][8]~q\,
	datac => \fd|BankRegister|registrador[6][8]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[8]~88_combout\);

-- Location: LCCOMB_X54_Y41_N12
\fd|BankRegister|saidaB[8]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[8]~89_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[8]~88_combout\ & ((\fd|BankRegister|registrador[7][8]~q\))) # (!\fd|BankRegister|saidaB[8]~88_combout\ & (\fd|BankRegister|registrador[5][8]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[8]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[5][8]~q\,
	datac => \fd|BankRegister|registrador[7][8]~q\,
	datad => \fd|BankRegister|saidaB[8]~88_combout\,
	combout => \fd|BankRegister|saidaB[8]~89_combout\);

-- Location: LCCOMB_X54_Y41_N30
\fd|MuxSaidaBankRegister|selected[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[8]~28_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[8]~89_combout\))) # (!\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[8]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|BankRegister|saidaB[8]~91_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[8]~89_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[8]~28_combout\);

-- Location: LCCOMB_X53_Y40_N28
\fd|ALU|adder|addsloop:8:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[8]~95_combout\ & ((\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[8]~28_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[8]~95_combout\ & (\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[8]~28_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[8]~28_combout\,
	datab => \fd|BankRegister|saidaA[8]~95_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X52_Y41_N18
\fd|ALU|adder|addsloop:9:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:9:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[9]~91_combout\ $ (\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[9]~91_combout\,
	datac => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[9]~27_combout\,
	combout => \fd|ALU|adder|addsloop:9:add1to31|soma~0_combout\);

-- Location: LCCOMB_X52_Y41_N14
\fd|ALU|final|selected[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[9]~17_combout\ = (\fd|UCalu|output\(1) & (((!\fd|UCalu|output\(0) & \fd|ALU|adder|addsloop:9:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (\fd|ALU|final|selected[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|final|selected[9]~16_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|adder|addsloop:9:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[9]~17_combout\);

-- Location: LCCOMB_X52_Y41_N30
\fd|MuxRegRam|selected[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[9]~9_combout\ = (\fd|ALU|final|selected[9]~17_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[9]~17_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[9]~9_combout\);

-- Location: FF_X53_Y41_N25
\fd|BankRegister|registrador[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][9]~q\);

-- Location: LCCOMB_X49_Y40_N30
\fd|BankRegister|saidaB[9]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[9]~86_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][9]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][9]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[0][9]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[9]~86_combout\);

-- Location: LCCOMB_X49_Y40_N26
\fd|BankRegister|saidaB[9]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[9]~87_combout\ = (\fd|BankRegister|saidaB[9]~86_combout\ & (((\fd|BankRegister|registrador[3][9]~q\)) # (!\fd|Rom|content~16_combout\))) # (!\fd|BankRegister|saidaB[9]~86_combout\ & (\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[9]~86_combout\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[2][9]~q\,
	datad => \fd|BankRegister|registrador[3][9]~q\,
	combout => \fd|BankRegister|saidaB[9]~87_combout\);

-- Location: FF_X50_Y38_N27
\fd|BankRegister|registrador[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][9]~q\);

-- Location: LCCOMB_X50_Y38_N26
\fd|BankRegister|saidaB[9]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[9]~84_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][9]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][9]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][9]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[6][9]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[9]~84_combout\);

-- Location: FF_X50_Y40_N1
\fd|BankRegister|registrador[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~9_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][9]~q\);

-- Location: LCCOMB_X50_Y40_N26
\fd|BankRegister|saidaB[9]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[9]~85_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[9]~84_combout\ & ((\fd|BankRegister|registrador[7][9]~q\))) # (!\fd|BankRegister|saidaB[9]~84_combout\ & (\fd|BankRegister|registrador[5][9]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[9]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][9]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|saidaB[9]~84_combout\,
	datad => \fd|BankRegister|registrador[7][9]~q\,
	combout => \fd|BankRegister|saidaB[9]~85_combout\);

-- Location: LCCOMB_X49_Y40_N24
\fd|MuxSaidaBankRegister|selected[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[9]~27_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[9]~85_combout\))) # (!\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[9]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[9]~87_combout\,
	datad => \fd|BankRegister|saidaB[9]~85_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[9]~27_combout\);

-- Location: LCCOMB_X53_Y40_N10
\fd|ALU|adder|addsloop:9:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[9]~91_combout\ & ((\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\)))) # 
-- (!\fd|BankRegister|saidaA[9]~91_combout\ & (\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[9]~27_combout\,
	datac => \fd|BankRegister|saidaA[9]~91_combout\,
	datad => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X50_Y40_N14
\fd|BankRegister|registrador[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[10]~10_combout\,
	combout => \fd|BankRegister|registrador[5][10]~feeder_combout\);

-- Location: FF_X50_Y40_N15
\fd|BankRegister|registrador[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][10]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][10]~q\);

-- Location: LCCOMB_X50_Y38_N20
\fd|BankRegister|registrador[4][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[4][10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[10]~10_combout\,
	combout => \fd|BankRegister|registrador[4][10]~feeder_combout\);

-- Location: FF_X50_Y38_N21
\fd|BankRegister|registrador[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[4][10]~feeder_combout\,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][10]~q\);

-- Location: LCCOMB_X50_Y40_N10
\fd|BankRegister|saidaA[10]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[10]~84_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][10]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[5][10]~q\,
	datad => \fd|BankRegister|registrador[4][10]~q\,
	combout => \fd|BankRegister|saidaA[10]~84_combout\);

-- Location: FF_X49_Y40_N13
\fd|BankRegister|registrador[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~10_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][10]~q\);

-- Location: LCCOMB_X50_Y37_N26
\fd|BankRegister|registrador[0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[0][10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[10]~10_combout\,
	combout => \fd|BankRegister|registrador[0][10]~feeder_combout\);

-- Location: FF_X50_Y37_N27
\fd|BankRegister|registrador[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[0][10]~feeder_combout\,
	ena => \fd|BankRegister|registrador[0][31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[0][10]~q\);

-- Location: LCCOMB_X50_Y41_N16
\fd|BankRegister|registrador[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[10]~10_combout\,
	combout => \fd|BankRegister|registrador[1][10]~feeder_combout\);

-- Location: FF_X50_Y41_N17
\fd|BankRegister|registrador[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[1][10]~feeder_combout\,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][10]~q\);

-- Location: LCCOMB_X50_Y41_N26
\fd|BankRegister|saidaA[10]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[10]~85_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][10]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][10]~q\,
	datab => \fd|BankRegister|registrador[1][10]~q\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[10]~85_combout\);

-- Location: LCCOMB_X49_Y40_N20
\fd|BankRegister|saidaA[10]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[10]~86_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[10]~85_combout\ & ((\fd|BankRegister|registrador[3][10]~q\))) # (!\fd|BankRegister|saidaA[10]~85_combout\ & (\fd|BankRegister|registrador[2][10]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[10]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][10]~q\,
	datac => \fd|BankRegister|registrador[3][10]~q\,
	datad => \fd|BankRegister|saidaA[10]~85_combout\,
	combout => \fd|BankRegister|saidaA[10]~86_combout\);

-- Location: LCCOMB_X49_Y40_N16
\fd|BankRegister|saidaA[10]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[10]~87_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[10]~84_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[10]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[10]~84_combout\,
	datab => \fd|BankRegister|Equal0~0_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|saidaA[10]~86_combout\,
	combout => \fd|BankRegister|saidaA[10]~87_combout\);

-- Location: LCCOMB_X49_Y40_N22
\fd|ALU|adder|addsloop:10:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:10:add1to31|soma~0_combout\ = \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ $ (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~26_combout\ $ (\fd|BankRegister|saidaA[10]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[10]~26_combout\,
	datad => \fd|BankRegister|saidaA[10]~87_combout\,
	combout => \fd|ALU|adder|addsloop:10:add1to31|soma~0_combout\);

-- Location: LCCOMB_X49_Y40_N28
\fd|ALU|final|selected[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[10]~14_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[10]~87_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~26_combout\)))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[10]~87_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[10]~26_combout\,
	datad => \fd|BankRegister|saidaA[10]~87_combout\,
	combout => \fd|ALU|final|selected[10]~14_combout\);

-- Location: LCCOMB_X49_Y40_N6
\fd|ALU|final|selected[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[10]~15_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & (\fd|ALU|adder|addsloop:10:add1to31|soma~0_combout\))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:10:add1to31|soma~0_combout\,
	datad => \fd|ALU|final|selected[10]~14_combout\,
	combout => \fd|ALU|final|selected[10]~15_combout\);

-- Location: LCCOMB_X50_Y37_N4
\fd|MuxRegRam|selected[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[10]~10_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[10]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[10]~15_combout\,
	combout => \fd|MuxRegRam|selected[10]~10_combout\);

-- Location: FF_X49_Y40_N21
\fd|BankRegister|registrador[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~10_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][10]~q\);

-- Location: LCCOMB_X49_Y40_N8
\fd|BankRegister|saidaB[10]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[10]~82_combout\ = (\fd|Rom|content~16_combout\ & (\fd|Rom|content~14_combout\)) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][10]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[1][10]~q\,
	datad => \fd|BankRegister|registrador[0][10]~q\,
	combout => \fd|BankRegister|saidaB[10]~82_combout\);

-- Location: LCCOMB_X49_Y40_N12
\fd|BankRegister|saidaB[10]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[10]~83_combout\ = (\fd|BankRegister|saidaB[10]~82_combout\ & ((\fd|BankRegister|registrador[3][10]~q\) # ((!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[10]~82_combout\ & (((\fd|BankRegister|registrador[2][10]~q\ & 
-- \fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][10]~q\,
	datab => \fd|BankRegister|saidaB[10]~82_combout\,
	datac => \fd|BankRegister|registrador[2][10]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[10]~83_combout\);

-- Location: FF_X50_Y40_N19
\fd|BankRegister|registrador[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~10_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][10]~q\);

-- Location: FF_X50_Y38_N9
\fd|BankRegister|registrador[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~10_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][10]~q\);

-- Location: LCCOMB_X50_Y38_N8
\fd|BankRegister|saidaB[10]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[10]~80_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[6][10]~q\) # (\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][10]~q\ & 
-- ((!\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][10]~q\,
	datac => \fd|BankRegister|registrador[6][10]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[10]~80_combout\);

-- Location: LCCOMB_X49_Y40_N18
\fd|BankRegister|saidaB[10]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[10]~81_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[10]~80_combout\ & (\fd|BankRegister|registrador[7][10]~q\)) # (!\fd|BankRegister|saidaB[10]~80_combout\ & ((\fd|BankRegister|registrador[5][10]~q\))))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[10]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[7][10]~q\,
	datac => \fd|BankRegister|saidaB[10]~80_combout\,
	datad => \fd|BankRegister|registrador[5][10]~q\,
	combout => \fd|BankRegister|saidaB[10]~81_combout\);

-- Location: LCCOMB_X49_Y40_N14
\fd|MuxSaidaBankRegister|selected[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[10]~26_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[10]~81_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[10]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[10]~83_combout\,
	datab => \fd|BankRegister|saidaB[10]~81_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[10]~26_combout\);

-- Location: LCCOMB_X53_Y40_N12
\fd|ALU|adder|addsloop:10:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[10]~87_combout\ & ((\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[10]~26_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[10]~87_combout\ & (\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[10]~26_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[10]~26_combout\,
	datab => \fd|BankRegister|saidaA[10]~87_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y37_N30
\fd|ALU|adder|addsloop:11:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:11:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[11]~25_combout\ $ (\fd|BankRegister|saidaA[11]~83_combout\ $ (\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[11]~25_combout\,
	datac => \fd|BankRegister|saidaA[11]~83_combout\,
	datad => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:11:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y37_N12
\fd|ALU|final|selected[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[11]~52_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[11]~83_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[11]~25_combout\)))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[11]~83_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[11]~83_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[11]~25_combout\,
	combout => \fd|ALU|final|selected[11]~52_combout\);

-- Location: LCCOMB_X54_Y37_N26
\fd|ALU|final|selected[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[11]~53_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & (\fd|ALU|adder|addsloop:11:add1to31|soma~0_combout\))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[11]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|adder|addsloop:11:add1to31|soma~0_combout\,
	datad => \fd|ALU|final|selected[11]~52_combout\,
	combout => \fd|ALU|final|selected[11]~53_combout\);

-- Location: LCCOMB_X54_Y37_N20
\fd|MuxRegRam|selected[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[11]~11_combout\ = (\fd|ALU|final|selected[11]~53_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[11]~53_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[11]~11_combout\);

-- Location: LCCOMB_X52_Y37_N10
\fd|BankRegister|registrador[3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[3][11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[11]~11_combout\,
	combout => \fd|BankRegister|registrador[3][11]~feeder_combout\);

-- Location: FF_X52_Y37_N11
\fd|BankRegister|registrador[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[3][11]~feeder_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][11]~q\);

-- Location: LCCOMB_X52_Y37_N4
\fd|BankRegister|saidaB[11]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[11]~78_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\) # ((\fd|BankRegister|registrador[1][11]~q\)))) # (!\fd|Rom|content~14_combout\ & (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[1][11]~q\,
	datad => \fd|BankRegister|registrador[0][11]~q\,
	combout => \fd|BankRegister|saidaB[11]~78_combout\);

-- Location: LCCOMB_X50_Y37_N24
\fd|BankRegister|saidaB[11]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[11]~79_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[11]~78_combout\ & (\fd|BankRegister|registrador[3][11]~q\)) # (!\fd|BankRegister|saidaB[11]~78_combout\ & ((\fd|BankRegister|registrador[2][11]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[11]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][11]~q\,
	datab => \fd|BankRegister|registrador[2][11]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|saidaB[11]~78_combout\,
	combout => \fd|BankRegister|saidaB[11]~79_combout\);

-- Location: LCCOMB_X52_Y38_N20
\fd|BankRegister|registrador[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[11]~11_combout\,
	combout => \fd|BankRegister|registrador[6][11]~feeder_combout\);

-- Location: FF_X52_Y38_N21
\fd|BankRegister|registrador[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][11]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][11]~q\);

-- Location: LCCOMB_X52_Y38_N4
\fd|BankRegister|saidaB[11]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[11]~76_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\) # (\fd|BankRegister|registrador[6][11]~q\)))) # (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[4][11]~q\ & 
-- (!\fd|Rom|content~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[4][11]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[6][11]~q\,
	combout => \fd|BankRegister|saidaB[11]~76_combout\);

-- Location: FF_X50_Y40_N29
\fd|BankRegister|registrador[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~11_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][11]~q\);

-- Location: LCCOMB_X50_Y40_N28
\fd|BankRegister|saidaB[11]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[11]~77_combout\ = (\fd|BankRegister|saidaB[11]~76_combout\ & (((\fd|BankRegister|registrador[7][11]~q\)) # (!\fd|Rom|content~14_combout\))) # (!\fd|BankRegister|saidaB[11]~76_combout\ & (\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[11]~76_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][11]~q\,
	datad => \fd|BankRegister|registrador[5][11]~q\,
	combout => \fd|BankRegister|saidaB[11]~77_combout\);

-- Location: LCCOMB_X50_Y40_N16
\fd|MuxSaidaBankRegister|selected[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[11]~24_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[11]~77_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[11]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[11]~79_combout\,
	datad => \fd|BankRegister|saidaB[11]~77_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[11]~24_combout\);

-- Location: LCCOMB_X50_Y40_N24
\fd|MuxSaidaBankRegister|selected[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[11]~25_combout\ = (\fd|MuxSaidaBankRegister|selected[11]~24_combout\) # ((\fd|Rom|content~23_combout\ & \ucfd|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~23_combout\,
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[11]~24_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[11]~25_combout\);

-- Location: LCCOMB_X53_Y40_N14
\fd|ALU|adder|addsloop:11:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[11]~83_combout\ & ((\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[11]~25_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[11]~83_combout\ & (\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[11]~25_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[11]~25_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|saidaA[11]~83_combout\,
	datad => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y36_N18
\fd|ALU|adder|addsloop:12:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:12:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[12]~23_combout\ $ (\fd|BankRegister|saidaA[12]~79_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[12]~23_combout\,
	datab => \fd|BankRegister|saidaA[12]~79_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:12:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y36_N20
\fd|ALU|final|selected[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[12]~51_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:12:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[12]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[12]~50_combout\,
	datad => \fd|ALU|adder|addsloop:12:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[12]~51_combout\);

-- Location: LCCOMB_X50_Y37_N22
\fd|MuxRegRam|selected[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[12]~12_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[12]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[12]~51_combout\,
	combout => \fd|MuxRegRam|selected[12]~12_combout\);

-- Location: FF_X55_Y37_N5
\fd|BankRegister|registrador[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~12_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][12]~q\);

-- Location: LCCOMB_X52_Y37_N20
\fd|BankRegister|saidaA[12]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[12]~76_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][12]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][12]~q\,
	datad => \fd|BankRegister|registrador[4][12]~q\,
	combout => \fd|BankRegister|saidaA[12]~76_combout\);

-- Location: LCCOMB_X52_Y37_N22
\fd|BankRegister|saidaA[12]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[12]~77_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][12]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][12]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][12]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[12]~77_combout\);

-- Location: LCCOMB_X52_Y37_N28
\fd|BankRegister|saidaA[12]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[12]~78_combout\ = (\fd|BankRegister|saidaA[12]~77_combout\ & (((\fd|BankRegister|registrador[3][12]~q\) # (!\fd|Rom|content~6_combout\)))) # (!\fd|BankRegister|saidaA[12]~77_combout\ & (\fd|BankRegister|registrador[2][12]~q\ & 
-- ((\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[12]~77_combout\,
	datab => \fd|BankRegister|registrador[2][12]~q\,
	datac => \fd|BankRegister|registrador[3][12]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[12]~78_combout\);

-- Location: LCCOMB_X52_Y37_N6
\fd|BankRegister|saidaA[12]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[12]~79_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[12]~76_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[12]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[12]~76_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|saidaA[12]~78_combout\,
	combout => \fd|BankRegister|saidaA[12]~79_combout\);

-- Location: LCCOMB_X52_Y39_N28
\fd|ALU|adder|addsloop:12:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[12]~79_combout\ & ((\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[12]~23_combout\)))) # 
-- (!\fd|BankRegister|saidaA[12]~79_combout\ & (\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[12]~79_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[12]~23_combout\,
	datad => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y36_N0
\fd|ALU|adder|addsloop:13:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:13:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|BankRegister|saidaA[13]~75_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[13]~21_combout\,
	datab => \fd|BankRegister|saidaA[13]~75_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:13:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y36_N4
\fd|ALU|final|selected[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[13]~49_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:13:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[13]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[13]~48_combout\,
	datad => \fd|ALU|adder|addsloop:13:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[13]~49_combout\);

-- Location: LCCOMB_X53_Y36_N14
\fd|MuxRegRam|selected[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[13]~13_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[13]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datac => \fd|ALU|final|selected[13]~49_combout\,
	combout => \fd|MuxRegRam|selected[13]~13_combout\);

-- Location: FF_X53_Y36_N15
\fd|BankRegister|registrador[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[13]~13_combout\,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][13]~q\);

-- Location: LCCOMB_X52_Y36_N20
\fd|BankRegister|saidaB[13]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[13]~70_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\) # (\fd|BankRegister|registrador[1][13]~q\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][13]~q\ & 
-- (!\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[0][13]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[1][13]~q\,
	combout => \fd|BankRegister|saidaB[13]~70_combout\);

-- Location: LCCOMB_X53_Y36_N2
\fd|BankRegister|saidaB[13]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[13]~71_combout\ = (\fd|BankRegister|saidaB[13]~70_combout\ & ((\fd|BankRegister|registrador[3][13]~q\) # ((!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[13]~70_combout\ & (((\fd|BankRegister|registrador[2][13]~q\ & 
-- \fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][13]~q\,
	datab => \fd|BankRegister|saidaB[13]~70_combout\,
	datac => \fd|BankRegister|registrador[2][13]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[13]~71_combout\);

-- Location: LCCOMB_X52_Y38_N16
\fd|BankRegister|registrador[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[13]~13_combout\,
	combout => \fd|BankRegister|registrador[6][13]~feeder_combout\);

-- Location: FF_X52_Y38_N17
\fd|BankRegister|registrador[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][13]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][13]~q\);

-- Location: LCCOMB_X52_Y38_N14
\fd|BankRegister|saidaB[13]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[13]~68_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][13]~q\))) # (!\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][13]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[6][13]~q\,
	combout => \fd|BankRegister|saidaB[13]~68_combout\);

-- Location: LCCOMB_X49_Y38_N12
\fd|BankRegister|registrador[7][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[7][13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[13]~13_combout\,
	combout => \fd|BankRegister|registrador[7][13]~feeder_combout\);

-- Location: FF_X49_Y38_N13
\fd|BankRegister|registrador[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[7][13]~feeder_combout\,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][13]~q\);

-- Location: LCCOMB_X49_Y38_N8
\fd|BankRegister|saidaB[13]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[13]~69_combout\ = (\fd|BankRegister|saidaB[13]~68_combout\ & (((\fd|BankRegister|registrador[7][13]~q\) # (!\fd|Rom|content~14_combout\)))) # (!\fd|BankRegister|saidaB[13]~68_combout\ & (\fd|BankRegister|registrador[5][13]~q\ & 
-- (\fd|Rom|content~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][13]~q\,
	datab => \fd|BankRegister|saidaB[13]~68_combout\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[7][13]~q\,
	combout => \fd|BankRegister|saidaB[13]~69_combout\);

-- Location: LCCOMB_X53_Y36_N8
\fd|MuxSaidaBankRegister|selected[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[13]~20_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[13]~69_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[13]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|BankRegister|saidaB[13]~71_combout\,
	datac => \fd|BankRegister|saidaB[13]~69_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[13]~20_combout\);

-- Location: LCCOMB_X53_Y36_N6
\fd|MuxSaidaBankRegister|selected[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[13]~21_combout\ = (\fd|MuxSaidaBankRegister|selected[13]~20_combout\) # ((\ucfd|Equal1~1_combout\ & \fd|Rom|content~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[13]~20_combout\,
	datad => \fd|Rom|content~19_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[13]~21_combout\);

-- Location: LCCOMB_X52_Y39_N22
\fd|ALU|adder|addsloop:13:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[13]~75_combout\ & ((\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[13]~75_combout\ & (\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[13]~21_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|saidaA[13]~75_combout\,
	datad => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y42_N0
\fd|ALU|adder|addsloop:14:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:14:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[14]~71_combout\ $ (\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ $ (\fd|MuxSaidaBankRegister|selected[14]~19_combout\ $ (\fd|UCalu|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[14]~71_combout\,
	datab => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[14]~19_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:14:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y42_N26
\fd|ALU|final|selected[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[14]~9_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:14:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[14]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[14]~8_combout\,
	datad => \fd|ALU|adder|addsloop:14:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[14]~9_combout\);

-- Location: LCCOMB_X49_Y39_N30
\fd|MuxRegRam|selected[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[14]~14_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[14]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[14]~9_combout\,
	combout => \fd|MuxRegRam|selected[14]~14_combout\);

-- Location: FF_X53_Y41_N19
\fd|BankRegister|registrador[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~14_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[3][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[3][14]~q\);

-- Location: LCCOMB_X48_Y39_N18
\fd|BankRegister|saidaB[14]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[14]~66_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][14]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[0][14]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[1][14]~q\,
	combout => \fd|BankRegister|saidaB[14]~66_combout\);

-- Location: LCCOMB_X48_Y39_N12
\fd|BankRegister|saidaB[14]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[14]~67_combout\ = (\fd|BankRegister|saidaB[14]~66_combout\ & ((\fd|BankRegister|registrador[3][14]~q\) # ((!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[14]~66_combout\ & (((\fd|BankRegister|registrador[2][14]~q\ & 
-- \fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][14]~q\,
	datab => \fd|BankRegister|saidaB[14]~66_combout\,
	datac => \fd|BankRegister|registrador[2][14]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[14]~67_combout\);

-- Location: FF_X48_Y39_N5
\fd|BankRegister|registrador[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~14_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][14]~q\);

-- Location: LCCOMB_X48_Y38_N0
\fd|BankRegister|registrador[6][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[14]~14_combout\,
	combout => \fd|BankRegister|registrador[6][14]~feeder_combout\);

-- Location: FF_X48_Y38_N1
\fd|BankRegister|registrador[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][14]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][14]~q\);

-- Location: LCCOMB_X48_Y39_N14
\fd|BankRegister|saidaB[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[14]~64_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][14]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((!\fd|Rom|content~14_combout\ & 
-- \fd|BankRegister|registrador[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[6][14]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[4][14]~q\,
	combout => \fd|BankRegister|saidaB[14]~64_combout\);

-- Location: LCCOMB_X48_Y39_N28
\fd|BankRegister|saidaB[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[14]~65_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[14]~64_combout\ & ((\fd|BankRegister|registrador[7][14]~q\))) # (!\fd|BankRegister|saidaB[14]~64_combout\ & (\fd|BankRegister|registrador[5][14]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[14]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][14]~q\,
	datab => \fd|BankRegister|registrador[7][14]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|saidaB[14]~64_combout\,
	combout => \fd|BankRegister|saidaB[14]~65_combout\);

-- Location: LCCOMB_X48_Y39_N26
\fd|MuxSaidaBankRegister|selected[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[14]~19_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[14]~65_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[14]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[14]~67_combout\,
	datab => \fd|BankRegister|saidaB[14]~65_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[14]~19_combout\);

-- Location: LCCOMB_X52_Y39_N12
\fd|ALU|adder|addsloop:14:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[14]~71_combout\ & ((\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[14]~19_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[14]~71_combout\ & (\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[14]~19_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[14]~19_combout\,
	datab => \fd|BankRegister|saidaA[14]~71_combout\,
	datac => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y42_N30
\fd|ALU|adder|addsloop:15:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:15:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[15]~18_combout\ $ (\fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[15]~67_combout\ $ (\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|saidaA[15]~67_combout\,
	datad => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:15:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y42_N22
\fd|ALU|final|selected[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[15]~7_combout\ = (\fd|UCalu|output\(1) & (((\fd|ALU|adder|addsloop:15:add1to31|soma~0_combout\ & !\fd|UCalu|output\(0))))) # (!\fd|UCalu|output\(1) & (\fd|ALU|final|selected[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|final|selected[15]~6_combout\,
	datac => \fd|ALU|adder|addsloop:15:add1to31|soma~0_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[15]~7_combout\);

-- Location: LCCOMB_X53_Y42_N12
\fd|MuxRegRam|selected[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[15]~15_combout\ = (\fd|ALU|final|selected[15]~7_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[15]~7_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[15]~15_combout\);

-- Location: LCCOMB_X50_Y41_N12
\fd|BankRegister|registrador[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~15_combout\,
	combout => \fd|BankRegister|registrador[2][15]~feeder_combout\);

-- Location: FF_X50_Y41_N13
\fd|BankRegister|registrador[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][15]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][15]~q\);

-- Location: LCCOMB_X53_Y41_N16
\fd|BankRegister|saidaA[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[15]~65_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][15]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][15]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][15]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[15]~65_combout\);

-- Location: LCCOMB_X53_Y41_N0
\fd|BankRegister|saidaA[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[15]~66_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[15]~65_combout\ & ((\fd|BankRegister|registrador[3][15]~q\))) # (!\fd|BankRegister|saidaA[15]~65_combout\ & (\fd|BankRegister|registrador[2][15]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[15]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][15]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][15]~q\,
	datad => \fd|BankRegister|saidaA[15]~65_combout\,
	combout => \fd|BankRegister|saidaA[15]~66_combout\);

-- Location: LCCOMB_X53_Y42_N18
\fd|BankRegister|saidaA[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[15]~64_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][15]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][15]~q\,
	datad => \fd|BankRegister|registrador[4][15]~q\,
	combout => \fd|BankRegister|saidaA[15]~64_combout\);

-- Location: LCCOMB_X53_Y42_N20
\fd|BankRegister|saidaA[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[15]~67_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[15]~64_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[15]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|saidaA[15]~66_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[15]~64_combout\,
	combout => \fd|BankRegister|saidaA[15]~67_combout\);

-- Location: LCCOMB_X52_Y39_N2
\fd|ALU|adder|addsloop:15:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[15]~67_combout\ & ((\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\)))) # 
-- (!\fd|BankRegister|saidaA[15]~67_combout\ & (\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[15]~67_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	datad => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y37_N28
\fd|ALU|adder|addsloop:16:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:16:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~17_combout\ $ (\fd|BankRegister|saidaA[16]~63_combout\ $ (\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[16]~17_combout\,
	datac => \fd|BankRegister|saidaA[16]~63_combout\,
	datad => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:16:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y37_N10
\fd|ALU|final|selected[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[16]~39_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:16:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[16]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[16]~38_combout\,
	datad => \fd|ALU|adder|addsloop:16:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[16]~39_combout\);

-- Location: LCCOMB_X54_Y37_N8
\fd|MuxRegRam|selected[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[16]~16_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[16]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[16]~39_combout\,
	combout => \fd|MuxRegRam|selected[16]~16_combout\);

-- Location: FF_X54_Y37_N25
\fd|BankRegister|registrador[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~16_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][16]~q\);

-- Location: LCCOMB_X52_Y37_N16
\fd|BankRegister|saidaA[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[16]~61_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][16]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][16]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][16]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[16]~61_combout\);

-- Location: LCCOMB_X52_Y37_N14
\fd|BankRegister|saidaA[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[16]~62_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[16]~61_combout\ & ((\fd|BankRegister|registrador[3][16]~q\))) # (!\fd|BankRegister|saidaA[16]~61_combout\ & (\fd|BankRegister|registrador[2][16]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[16]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][16]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][16]~q\,
	datad => \fd|BankRegister|saidaA[16]~61_combout\,
	combout => \fd|BankRegister|saidaA[16]~62_combout\);

-- Location: LCCOMB_X53_Y37_N28
\fd|BankRegister|saidaA[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[16]~60_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][16]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[4][16]~q\,
	datad => \fd|BankRegister|registrador[5][16]~q\,
	combout => \fd|BankRegister|saidaA[16]~60_combout\);

-- Location: LCCOMB_X52_Y37_N2
\fd|BankRegister|saidaA[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[16]~63_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[16]~60_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[16]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[16]~62_combout\,
	datad => \fd|BankRegister|saidaA[16]~60_combout\,
	combout => \fd|BankRegister|saidaA[16]~63_combout\);

-- Location: LCCOMB_X52_Y39_N0
\fd|ALU|adder|addsloop:16:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[16]~63_combout\ & ((\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~17_combout\)))) # 
-- (!\fd|BankRegister|saidaA[16]~63_combout\ & (\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[16]~63_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[16]~17_combout\,
	datad => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X50_Y39_N12
\fd|ALU|adder|addsloop:17:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:17:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[17]~59_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ $ (\fd|MuxSaidaBankRegister|selected[17]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[17]~59_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[17]~16_combout\,
	combout => \fd|ALU|adder|addsloop:17:add1to31|soma~0_combout\);

-- Location: LCCOMB_X50_Y39_N14
\fd|ALU|final|selected[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[17]~29_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:17:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[17]~28_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:17:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[17]~29_combout\);

-- Location: LCCOMB_X50_Y39_N26
\fd|MuxRegRam|selected[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[17]~17_combout\ = (\fd|ALU|final|selected[17]~29_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[17]~29_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[17]~17_combout\);

-- Location: FF_X50_Y40_N7
\fd|BankRegister|registrador[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][17]~q\);

-- Location: LCCOMB_X50_Y38_N12
\fd|BankRegister|registrador[6][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[17]~17_combout\,
	combout => \fd|BankRegister|registrador[6][17]~feeder_combout\);

-- Location: FF_X50_Y38_N13
\fd|BankRegister|registrador[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][17]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][17]~q\);

-- Location: LCCOMB_X50_Y38_N28
\fd|BankRegister|saidaB[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[17]~52_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][17]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][17]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][17]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[4][17]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[17]~52_combout\);

-- Location: FF_X50_Y40_N11
\fd|BankRegister|registrador[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~17_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][17]~q\);

-- Location: LCCOMB_X50_Y40_N30
\fd|BankRegister|saidaB[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[17]~53_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[17]~52_combout\ & ((\fd|BankRegister|registrador[7][17]~q\))) # (!\fd|BankRegister|saidaB[17]~52_combout\ & (\fd|BankRegister|registrador[5][17]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[17]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][17]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|saidaB[17]~52_combout\,
	datad => \fd|BankRegister|registrador[7][17]~q\,
	combout => \fd|BankRegister|saidaB[17]~53_combout\);

-- Location: LCCOMB_X50_Y41_N22
\fd|BankRegister|saidaB[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[17]~54_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[1][17]~q\)) # (!\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[1][17]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|BankRegister|registrador[0][17]~q\,
	combout => \fd|BankRegister|saidaB[17]~54_combout\);

-- Location: LCCOMB_X50_Y41_N6
\fd|BankRegister|saidaB[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[17]~55_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[17]~54_combout\ & ((\fd|BankRegister|registrador[3][17]~q\))) # (!\fd|BankRegister|saidaB[17]~54_combout\ & (\fd|BankRegister|registrador[2][17]~q\)))) # 
-- (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|saidaB[17]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|saidaB[17]~54_combout\,
	datac => \fd|BankRegister|registrador[2][17]~q\,
	datad => \fd|BankRegister|registrador[3][17]~q\,
	combout => \fd|BankRegister|saidaB[17]~55_combout\);

-- Location: LCCOMB_X50_Y39_N8
\fd|MuxSaidaBankRegister|selected[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[17]~16_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[17]~53_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[17]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[17]~53_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[17]~55_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[17]~16_combout\);

-- Location: LCCOMB_X52_Y39_N10
\fd|ALU|adder|addsloop:17:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[17]~59_combout\ & ((\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[17]~16_combout\)))) # 
-- (!\fd|BankRegister|saidaA[17]~59_combout\ & (\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[17]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[17]~16_combout\,
	datac => \fd|BankRegister|saidaA[17]~59_combout\,
	datad => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X50_Y39_N6
\fd|ALU|adder|addsloop:18:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:18:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~15_combout\ $ (\fd|BankRegister|saidaA[18]~55_combout\ $ (\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[18]~15_combout\,
	datac => \fd|BankRegister|saidaA[18]~55_combout\,
	datad => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:18:add1to31|soma~0_combout\);

-- Location: LCCOMB_X50_Y39_N22
\fd|ALU|final|selected[18]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[18]~41_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:18:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[18]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[18]~40_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:18:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[18]~41_combout\);

-- Location: LCCOMB_X50_Y39_N16
\fd|MuxRegRam|selected[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[18]~18_combout\ = (\fd|ALU|final|selected[18]~41_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[18]~41_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[18]~18_combout\);

-- Location: FF_X57_Y40_N23
\fd|BankRegister|registrador[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~18_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][18]~q\);

-- Location: LCCOMB_X57_Y40_N14
\fd|BankRegister|saidaA[18]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[18]~52_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][18]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][18]~q\,
	datab => \fd|BankRegister|registrador[4][18]~q\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[18]~52_combout\);

-- Location: LCCOMB_X50_Y39_N2
\fd|BankRegister|saidaA[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[18]~53_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][18]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][18]~q\ & 
-- ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][18]~q\,
	datac => \fd|BankRegister|registrador[1][18]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[18]~53_combout\);

-- Location: LCCOMB_X52_Y41_N22
\fd|BankRegister|saidaA[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[18]~54_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[18]~53_combout\ & ((\fd|BankRegister|registrador[3][18]~q\))) # (!\fd|BankRegister|saidaA[18]~53_combout\ & (\fd|BankRegister|registrador[2][18]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[18]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][18]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][18]~q\,
	datad => \fd|BankRegister|saidaA[18]~53_combout\,
	combout => \fd|BankRegister|saidaA[18]~54_combout\);

-- Location: LCCOMB_X53_Y41_N20
\fd|BankRegister|saidaA[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[18]~55_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[18]~52_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[18]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[18]~52_combout\,
	datad => \fd|BankRegister|saidaA[18]~54_combout\,
	combout => \fd|BankRegister|saidaA[18]~55_combout\);

-- Location: LCCOMB_X52_Y39_N16
\fd|ALU|adder|addsloop:18:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[18]~55_combout\ & ((\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~15_combout\)))) # 
-- (!\fd|BankRegister|saidaA[18]~55_combout\ & (\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[18]~55_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[18]~15_combout\,
	datad => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y37_N6
\fd|ALU|adder|addsloop:19:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:19:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~14_combout\ $ (\fd|BankRegister|saidaA[19]~51_combout\ $ (\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[19]~14_combout\,
	datac => \fd|BankRegister|saidaA[19]~51_combout\,
	datad => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:19:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y37_N0
\fd|ALU|final|selected[19]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[19]~11_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:19:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[19]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[19]~10_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:19:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[19]~11_combout\);

-- Location: LCCOMB_X53_Y37_N4
\fd|MuxRegRam|selected[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[19]~19_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[19]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[19]~11_combout\,
	combout => \fd|MuxRegRam|selected[19]~19_combout\);

-- Location: FF_X49_Y38_N25
\fd|BankRegister|registrador[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~19_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][19]~q\);

-- Location: LCCOMB_X49_Y38_N24
\fd|BankRegister|saidaA[19]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[19]~48_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][19]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][19]~q\,
	datad => \fd|BankRegister|registrador[4][19]~q\,
	combout => \fd|BankRegister|saidaA[19]~48_combout\);

-- Location: LCCOMB_X53_Y37_N14
\fd|BankRegister|saidaA[19]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[19]~49_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][19]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][19]~q\ & 
-- ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][19]~q\,
	datac => \fd|BankRegister|registrador[1][19]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[19]~49_combout\);

-- Location: LCCOMB_X53_Y41_N8
\fd|BankRegister|saidaA[19]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[19]~50_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[19]~49_combout\ & (\fd|BankRegister|registrador[3][19]~q\)) # (!\fd|BankRegister|saidaA[19]~49_combout\ & ((\fd|BankRegister|registrador[2][19]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[19]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][19]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|saidaA[19]~49_combout\,
	datad => \fd|BankRegister|registrador[2][19]~q\,
	combout => \fd|BankRegister|saidaA[19]~50_combout\);

-- Location: LCCOMB_X53_Y41_N22
\fd|BankRegister|saidaA[19]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[19]~51_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[19]~48_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[19]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[19]~48_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|saidaA[19]~50_combout\,
	datad => \fd|BankRegister|Equal0~0_combout\,
	combout => \fd|BankRegister|saidaA[19]~51_combout\);

-- Location: LCCOMB_X52_Y39_N6
\fd|ALU|adder|addsloop:19:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[19]~51_combout\ & ((\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~14_combout\)))) # 
-- (!\fd|BankRegister|saidaA[19]~51_combout\ & (\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[19]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[19]~51_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[19]~14_combout\,
	datad => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y37_N24
\fd|ALU|adder|addsloop:20:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:20:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[20]~13_combout\ $ (\fd|BankRegister|saidaA[20]~47_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[20]~13_combout\,
	datab => \fd|BankRegister|saidaA[20]~47_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:20:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y37_N26
\fd|ALU|final|selected[20]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[20]~35_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:20:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[20]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[20]~34_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:20:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[20]~35_combout\);

-- Location: LCCOMB_X53_Y37_N18
\fd|MuxRegRam|selected[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[20]~20_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[20]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datac => \fd|ALU|final|selected[20]~35_combout\,
	combout => \fd|MuxRegRam|selected[20]~20_combout\);

-- Location: FF_X55_Y37_N19
\fd|BankRegister|registrador[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~20_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][20]~q\);

-- Location: FF_X55_Y37_N31
\fd|BankRegister|registrador[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~20_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][20]~q\);

-- Location: LCCOMB_X56_Y38_N0
\fd|BankRegister|registrador[6][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][20]~feeder_combout\ = \fd|MuxRegRam|selected[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[20]~20_combout\,
	combout => \fd|BankRegister|registrador[6][20]~feeder_combout\);

-- Location: FF_X56_Y38_N1
\fd|BankRegister|registrador[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][20]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][20]~q\);

-- Location: LCCOMB_X56_Y38_N8
\fd|BankRegister|saidaB[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[20]~40_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\) # ((\fd|BankRegister|registrador[6][20]~q\)))) # (!\fd|Rom|content~16_combout\ & (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[4][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[4][20]~q\,
	datad => \fd|BankRegister|registrador[6][20]~q\,
	combout => \fd|BankRegister|saidaB[20]~40_combout\);

-- Location: LCCOMB_X55_Y37_N30
\fd|BankRegister|saidaB[20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[20]~41_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|saidaB[20]~40_combout\ & ((\fd|BankRegister|registrador[7][20]~q\))) # (!\fd|BankRegister|saidaB[20]~40_combout\ & (\fd|BankRegister|registrador[5][20]~q\)))) # 
-- (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|saidaB[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[5][20]~q\,
	datac => \fd|BankRegister|registrador[7][20]~q\,
	datad => \fd|BankRegister|saidaB[20]~40_combout\,
	combout => \fd|BankRegister|saidaB[20]~41_combout\);

-- Location: LCCOMB_X54_Y41_N16
\fd|BankRegister|saidaB[20]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[20]~42_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][20]~q\) # ((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|registrador[0][20]~q\ & 
-- !\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[1][20]~q\,
	datac => \fd|BankRegister|registrador[0][20]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[20]~42_combout\);

-- Location: LCCOMB_X54_Y37_N22
\fd|BankRegister|saidaB[20]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[20]~43_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[20]~42_combout\ & (\fd|BankRegister|registrador[3][20]~q\)) # (!\fd|BankRegister|saidaB[20]~42_combout\ & ((\fd|BankRegister|registrador[2][20]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|saidaB[20]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[3][20]~q\,
	datac => \fd|BankRegister|registrador[2][20]~q\,
	datad => \fd|BankRegister|saidaB[20]~42_combout\,
	combout => \fd|BankRegister|saidaB[20]~43_combout\);

-- Location: LCCOMB_X55_Y37_N10
\fd|MuxSaidaBankRegister|selected[20]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[20]~13_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[20]~41_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[20]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[20]~41_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|BankRegister|saidaB[20]~43_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[20]~13_combout\);

-- Location: LCCOMB_X52_Y39_N20
\fd|ALU|adder|addsloop:20:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[20]~47_combout\ & ((\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[20]~13_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[20]~47_combout\ & (\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[20]~13_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[20]~13_combout\,
	datab => \fd|BankRegister|saidaA[20]~47_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X52_Y39_N4
\fd|ALU|adder|addsloop:21:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:21:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[21]~43_combout\ $ (\fd|MuxSaidaBankRegister|selected[21]~12_combout\ $ (\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[21]~43_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[21]~12_combout\,
	datad => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:21:add1to31|soma~0_combout\);

-- Location: LCCOMB_X55_Y39_N26
\fd|ALU|final|selected[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[21]~37_combout\ = (\fd|UCalu|output\(1) & (((!\fd|UCalu|output\(0) & \fd|ALU|adder|addsloop:21:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (\fd|ALU|final|selected[21]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[21]~36_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:21:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[21]~37_combout\);

-- Location: LCCOMB_X55_Y39_N30
\fd|MuxRegRam|selected[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[21]~21_combout\ = (\fd|ALU|final|selected[21]~37_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[21]~37_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[21]~21_combout\);

-- Location: FF_X49_Y38_N3
\fd|BankRegister|registrador[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~21_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][21]~q\);

-- Location: LCCOMB_X49_Y38_N2
\fd|BankRegister|saidaA[21]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[21]~40_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][21]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|content~4_combout\,
	datac => \fd|BankRegister|registrador[5][21]~q\,
	datad => \fd|BankRegister|registrador[4][21]~q\,
	combout => \fd|BankRegister|saidaA[21]~40_combout\);

-- Location: LCCOMB_X55_Y39_N6
\fd|BankRegister|saidaA[21]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[21]~41_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|Rom|content~6_combout\) # ((\fd|BankRegister|registrador[1][21]~q\)))) # (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & 
-- ((\fd|BankRegister|registrador[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][21]~q\,
	datad => \fd|BankRegister|registrador[0][21]~q\,
	combout => \fd|BankRegister|saidaA[21]~41_combout\);

-- Location: LCCOMB_X52_Y41_N26
\fd|BankRegister|saidaA[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[21]~42_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[21]~41_combout\ & (\fd|BankRegister|registrador[3][21]~q\)) # (!\fd|BankRegister|saidaA[21]~41_combout\ & ((\fd|BankRegister|registrador[2][21]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[21]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[3][21]~q\,
	datac => \fd|BankRegister|saidaA[21]~41_combout\,
	datad => \fd|BankRegister|registrador[2][21]~q\,
	combout => \fd|BankRegister|saidaA[21]~42_combout\);

-- Location: LCCOMB_X52_Y41_N16
\fd|BankRegister|saidaA[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[21]~43_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[21]~40_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[21]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[21]~40_combout\,
	datac => \fd|BankRegister|saidaA[21]~42_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[21]~43_combout\);

-- Location: LCCOMB_X52_Y39_N18
\fd|ALU|adder|addsloop:21:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[21]~43_combout\ & ((\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~12_combout\)))) # 
-- (!\fd|BankRegister|saidaA[21]~43_combout\ & (\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[21]~43_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[21]~12_combout\,
	datad => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X52_Y39_N26
\fd|ALU|adder|addsloop:22:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:22:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[22]~39_combout\ $ (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~11_combout\ $ (\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[22]~39_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[22]~11_combout\,
	datad => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:22:add1to31|soma~0_combout\);

-- Location: LCCOMB_X52_Y41_N6
\fd|ALU|final|selected[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[22]~42_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[22]~39_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~11_combout\)))) # (!\fd|UCalu|output\(0) & 
-- (\fd|BankRegister|saidaA[22]~39_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[22]~39_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[22]~11_combout\,
	combout => \fd|ALU|final|selected[22]~42_combout\);

-- Location: LCCOMB_X52_Y39_N30
\fd|ALU|final|selected[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[22]~43_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & (\fd|ALU|adder|addsloop:22:add1to31|soma~0_combout\))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[22]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|adder|addsloop:22:add1to31|soma~0_combout\,
	datad => \fd|ALU|final|selected[22]~42_combout\,
	combout => \fd|ALU|final|selected[22]~43_combout\);

-- Location: LCCOMB_X55_Y39_N22
\fd|MuxRegRam|selected[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[22]~22_combout\ = (\fd|ALU|final|selected[22]~43_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[22]~43_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[22]~22_combout\);

-- Location: FF_X56_Y38_N21
\fd|BankRegister|registrador[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~22_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[4][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[4][22]~q\);

-- Location: LCCOMB_X56_Y38_N16
\fd|BankRegister|registrador[6][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][22]~feeder_combout\ = \fd|MuxRegRam|selected[22]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[22]~22_combout\,
	combout => \fd|BankRegister|registrador[6][22]~feeder_combout\);

-- Location: FF_X56_Y38_N17
\fd|BankRegister|registrador[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][22]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][22]~q\);

-- Location: LCCOMB_X56_Y38_N20
\fd|BankRegister|saidaB[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[22]~32_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\) # ((\fd|BankRegister|registrador[6][22]~q\)))) # (!\fd|Rom|content~16_combout\ & (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[4][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[4][22]~q\,
	datad => \fd|BankRegister|registrador[6][22]~q\,
	combout => \fd|BankRegister|saidaB[22]~32_combout\);

-- Location: FF_X49_Y38_N31
\fd|BankRegister|registrador[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~22_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][22]~q\);

-- Location: LCCOMB_X49_Y38_N30
\fd|BankRegister|saidaB[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[22]~33_combout\ = (\fd|BankRegister|saidaB[22]~32_combout\ & (((\fd|BankRegister|registrador[7][22]~q\)) # (!\fd|Rom|content~14_combout\))) # (!\fd|BankRegister|saidaB[22]~32_combout\ & (\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[5][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[22]~32_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][22]~q\,
	datad => \fd|BankRegister|registrador[5][22]~q\,
	combout => \fd|BankRegister|saidaB[22]~33_combout\);

-- Location: LCCOMB_X55_Y39_N4
\fd|BankRegister|saidaB[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[22]~34_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][22]~q\) # ((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (((!\fd|Rom|content~16_combout\ & 
-- \fd|BankRegister|registrador[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[1][22]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[0][22]~q\,
	combout => \fd|BankRegister|saidaB[22]~34_combout\);

-- Location: LCCOMB_X52_Y41_N0
\fd|BankRegister|saidaB[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[22]~35_combout\ = (\fd|BankRegister|saidaB[22]~34_combout\ & ((\fd|BankRegister|registrador[3][22]~q\) # ((!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[22]~34_combout\ & (((\fd|BankRegister|registrador[2][22]~q\ & 
-- \fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[22]~34_combout\,
	datab => \fd|BankRegister|registrador[3][22]~q\,
	datac => \fd|BankRegister|registrador[2][22]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[22]~35_combout\);

-- Location: LCCOMB_X52_Y41_N10
\fd|MuxSaidaBankRegister|selected[22]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[22]~11_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[22]~33_combout\)) # (!\fd|Rom|content~12_combout\ & 
-- ((\fd|BankRegister|saidaB[22]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|BankRegister|saidaB[22]~33_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|BankRegister|saidaB[22]~35_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[22]~11_combout\);

-- Location: LCCOMB_X52_Y39_N24
\fd|ALU|adder|addsloop:22:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[22]~39_combout\ & ((\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[22]~11_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[22]~39_combout\ & (\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[22]~11_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[22]~11_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|saidaA[22]~39_combout\,
	datad => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X52_Y39_N8
\fd|ALU|adder|addsloop:23:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:23:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[23]~10_combout\ $ (\fd|BankRegister|saidaA[23]~35_combout\ $ (\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[23]~10_combout\,
	datac => \fd|BankRegister|saidaA[23]~35_combout\,
	datad => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:23:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y39_N8
\fd|ALU|final|selected[23]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[23]~45_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:23:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[23]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[23]~44_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:23:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[23]~45_combout\);

-- Location: LCCOMB_X55_Y39_N14
\fd|MuxRegRam|selected[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[23]~23_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[23]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[23]~45_combout\,
	combout => \fd|MuxRegRam|selected[23]~23_combout\);

-- Location: LCCOMB_X54_Y42_N10
\fd|BankRegister|registrador[2][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[2][23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[23]~23_combout\,
	combout => \fd|BankRegister|registrador[2][23]~feeder_combout\);

-- Location: FF_X54_Y42_N11
\fd|BankRegister|registrador[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[2][23]~feeder_combout\,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][23]~q\);

-- Location: LCCOMB_X55_Y39_N16
\fd|BankRegister|saidaB[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[23]~30_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][23]~q\) # ((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (((!\fd|Rom|content~16_combout\ & 
-- \fd|BankRegister|registrador[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[1][23]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[0][23]~q\,
	combout => \fd|BankRegister|saidaB[23]~30_combout\);

-- Location: LCCOMB_X54_Y42_N20
\fd|BankRegister|saidaB[23]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[23]~31_combout\ = (\fd|BankRegister|saidaB[23]~30_combout\ & (((\fd|BankRegister|registrador[3][23]~q\) # (!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[23]~30_combout\ & (\fd|BankRegister|registrador[2][23]~q\ & 
-- (\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][23]~q\,
	datab => \fd|BankRegister|saidaB[23]~30_combout\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[3][23]~q\,
	combout => \fd|BankRegister|saidaB[23]~31_combout\);

-- Location: FF_X56_Y38_N31
\fd|BankRegister|registrador[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][23]~q\);

-- Location: LCCOMB_X56_Y38_N30
\fd|BankRegister|saidaB[23]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[23]~28_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][23]~q\))) # (!\fd|Rom|content~16_combout\ & 
-- (\fd|BankRegister|registrador[4][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][23]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[6][23]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[23]~28_combout\);

-- Location: FF_X56_Y37_N25
\fd|BankRegister|registrador[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~23_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][23]~q\);

-- Location: LCCOMB_X56_Y37_N24
\fd|BankRegister|saidaB[23]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[23]~29_combout\ = (\fd|BankRegister|saidaB[23]~28_combout\ & (((\fd|BankRegister|registrador[7][23]~q\) # (!\fd|Rom|content~14_combout\)))) # (!\fd|BankRegister|saidaB[23]~28_combout\ & (\fd|BankRegister|registrador[5][23]~q\ & 
-- ((\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[23]~28_combout\,
	datab => \fd|BankRegister|registrador[5][23]~q\,
	datac => \fd|BankRegister|registrador[7][23]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[23]~29_combout\);

-- Location: LCCOMB_X55_Y37_N24
\fd|MuxSaidaBankRegister|selected[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[23]~10_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[23]~29_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[23]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[23]~31_combout\,
	datab => \fd|BankRegister|saidaB[23]~29_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datad => \fd|Rom|content~12_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[23]~10_combout\);

-- Location: LCCOMB_X52_Y39_N14
\fd|ALU|adder|addsloop:23:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[23]~35_combout\ & ((\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[23]~10_combout\)))) # 
-- (!\fd|BankRegister|saidaA[23]~35_combout\ & (\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[23]~10_combout\,
	datac => \fd|BankRegister|saidaA[23]~35_combout\,
	datad => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y39_N2
\fd|ALU|adder|addsloop:24:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:24:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[24]~31_combout\ $ (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[24]~9_combout\ $ (\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[24]~31_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[24]~9_combout\,
	datad => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:24:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y39_N30
\fd|ALU|final|selected[24]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[24]~47_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:24:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[24]~46_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:24:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[24]~47_combout\);

-- Location: LCCOMB_X53_Y39_N16
\fd|MuxRegRam|selected[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[24]~24_combout\ = (\fd|ALU|final|selected[24]~47_combout\ & !\ucfd|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|ALU|final|selected[24]~47_combout\,
	datad => \ucfd|Equal1~1_combout\,
	combout => \fd|MuxRegRam|selected[24]~24_combout\);

-- Location: LCCOMB_X55_Y39_N12
\fd|BankRegister|registrador[1][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[1][24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[24]~24_combout\,
	combout => \fd|BankRegister|registrador[1][24]~feeder_combout\);

-- Location: FF_X55_Y39_N13
\fd|BankRegister|registrador[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[1][24]~feeder_combout\,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][24]~q\);

-- Location: LCCOMB_X55_Y39_N8
\fd|BankRegister|saidaA[24]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[24]~29_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[1][24]~q\)) # (!\fd|Rom|content~4_combout\ & 
-- ((\fd|BankRegister|registrador[0][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][24]~q\,
	datab => \fd|BankRegister|registrador[0][24]~q\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|Rom|content~4_combout\,
	combout => \fd|BankRegister|saidaA[24]~29_combout\);

-- Location: LCCOMB_X53_Y42_N24
\fd|BankRegister|saidaA[24]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[24]~30_combout\ = (\fd|BankRegister|saidaA[24]~29_combout\ & ((\fd|BankRegister|registrador[3][24]~q\) # ((!\fd|Rom|content~6_combout\)))) # (!\fd|BankRegister|saidaA[24]~29_combout\ & (((\fd|Rom|content~6_combout\ & 
-- \fd|BankRegister|registrador[2][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[24]~29_combout\,
	datab => \fd|BankRegister|registrador[3][24]~q\,
	datac => \fd|Rom|content~6_combout\,
	datad => \fd|BankRegister|registrador[2][24]~q\,
	combout => \fd|BankRegister|saidaA[24]~30_combout\);

-- Location: LCCOMB_X48_Y39_N16
\fd|BankRegister|saidaA[24]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[24]~28_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][24]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[4][24]~q\,
	datad => \fd|BankRegister|registrador[5][24]~q\,
	combout => \fd|BankRegister|saidaA[24]~28_combout\);

-- Location: LCCOMB_X53_Y42_N10
\fd|BankRegister|saidaA[24]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[24]~31_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[24]~28_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[24]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~9_combout\,
	datab => \fd|BankRegister|saidaA[24]~30_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[24]~28_combout\,
	combout => \fd|BankRegister|saidaA[24]~31_combout\);

-- Location: LCCOMB_X53_Y39_N6
\fd|ALU|adder|addsloop:24:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[24]~31_combout\ & ((\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[24]~9_combout\)))) # 
-- (!\fd|BankRegister|saidaA[24]~31_combout\ & (\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[24]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[24]~31_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[24]~9_combout\,
	datad => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y39_N28
\fd|ALU|adder|addsloop:25:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:25:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[25]~27_combout\ $ (\fd|MuxSaidaBankRegister|selected[25]~8_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[25]~27_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[25]~8_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:25:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y39_N26
\fd|ALU|final|selected[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[25]~13_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:25:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[25]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[25]~12_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:25:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[25]~13_combout\);

-- Location: LCCOMB_X57_Y39_N20
\fd|MuxRegRam|selected[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[25]~25_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[25]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[25]~13_combout\,
	combout => \fd|MuxRegRam|selected[25]~25_combout\);

-- Location: LCCOMB_X56_Y37_N22
\fd|BankRegister|registrador[5][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[25]~25_combout\,
	combout => \fd|BankRegister|registrador[5][25]~feeder_combout\);

-- Location: FF_X56_Y37_N23
\fd|BankRegister|registrador[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][25]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][25]~q\);

-- Location: LCCOMB_X56_Y37_N30
\fd|BankRegister|saidaA[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[25]~24_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][25]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[5][25]~q\,
	datad => \fd|BankRegister|registrador[4][25]~q\,
	combout => \fd|BankRegister|saidaA[25]~24_combout\);

-- Location: LCCOMB_X57_Y39_N12
\fd|BankRegister|saidaA[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[25]~25_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|Rom|content~6_combout\) # ((\fd|BankRegister|registrador[1][25]~q\)))) # (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & 
-- ((\fd|BankRegister|registrador[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][25]~q\,
	datad => \fd|BankRegister|registrador[0][25]~q\,
	combout => \fd|BankRegister|saidaA[25]~25_combout\);

-- Location: LCCOMB_X56_Y39_N30
\fd|BankRegister|saidaA[25]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[25]~26_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[25]~25_combout\ & (\fd|BankRegister|registrador[3][25]~q\)) # (!\fd|BankRegister|saidaA[25]~25_combout\ & ((\fd|BankRegister|registrador[2][25]~q\))))) # 
-- (!\fd|Rom|content~6_combout\ & (\fd|BankRegister|saidaA[25]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|saidaA[25]~25_combout\,
	datac => \fd|BankRegister|registrador[3][25]~q\,
	datad => \fd|BankRegister|registrador[2][25]~q\,
	combout => \fd|BankRegister|saidaA[25]~26_combout\);

-- Location: LCCOMB_X56_Y39_N4
\fd|BankRegister|saidaA[25]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[25]~27_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[25]~24_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[25]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[25]~24_combout\,
	datac => \fd|BankRegister|saidaA[25]~26_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[25]~27_combout\);

-- Location: LCCOMB_X53_Y39_N12
\fd|ALU|adder|addsloop:25:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[25]~27_combout\ & ((\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[25]~8_combout\)))) # 
-- (!\fd|BankRegister|saidaA[25]~27_combout\ & (\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[25]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[25]~27_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[25]~8_combout\,
	datad => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y39_N22
\fd|ALU|adder|addsloop:26:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:26:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[26]~7_combout\ $ (\fd|BankRegister|saidaA[26]~23_combout\ $ (\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[26]~7_combout\,
	datac => \fd|BankRegister|saidaA[26]~23_combout\,
	datad => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:26:add1to31|soma~0_combout\);

-- Location: LCCOMB_X49_Y38_N6
\fd|ALU|final|selected[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[26]~18_combout\ = (\fd|UCalu|output\(0) & ((\fd|BankRegister|saidaA[26]~23_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[26]~7_combout\)))) # (!\fd|UCalu|output\(0) & (\fd|BankRegister|saidaA[26]~23_combout\ 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[26]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|saidaA[26]~23_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[26]~7_combout\,
	combout => \fd|ALU|final|selected[26]~18_combout\);

-- Location: LCCOMB_X53_Y39_N4
\fd|ALU|final|selected[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[26]~19_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & (\fd|ALU|adder|addsloop:26:add1to31|soma~0_combout\))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[26]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:26:add1to31|soma~0_combout\,
	datad => \fd|ALU|final|selected[26]~18_combout\,
	combout => \fd|ALU|final|selected[26]~19_combout\);

-- Location: LCCOMB_X57_Y39_N0
\fd|MuxRegRam|selected[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[26]~26_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[26]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[26]~19_combout\,
	combout => \fd|MuxRegRam|selected[26]~26_combout\);

-- Location: FF_X56_Y39_N15
\fd|BankRegister|registrador[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~26_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][26]~q\);

-- Location: LCCOMB_X57_Y39_N22
\fd|BankRegister|saidaA[26]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[26]~21_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|Rom|content~6_combout\) # ((\fd|BankRegister|registrador[1][26]~q\)))) # (!\fd|Rom|content~4_combout\ & (!\fd|Rom|content~6_combout\ & 
-- ((\fd|BankRegister|registrador[0][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[1][26]~q\,
	datad => \fd|BankRegister|registrador[0][26]~q\,
	combout => \fd|BankRegister|saidaA[26]~21_combout\);

-- Location: LCCOMB_X56_Y39_N28
\fd|BankRegister|saidaA[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[26]~22_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[26]~21_combout\ & ((\fd|BankRegister|registrador[3][26]~q\))) # (!\fd|BankRegister|saidaA[26]~21_combout\ & (\fd|BankRegister|registrador[2][26]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[26]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][26]~q\,
	datac => \fd|BankRegister|registrador[3][26]~q\,
	datad => \fd|BankRegister|saidaA[26]~21_combout\,
	combout => \fd|BankRegister|saidaA[26]~22_combout\);

-- Location: LCCOMB_X58_Y39_N12
\fd|BankRegister|saidaA[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[26]~20_combout\ = (\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[5][26]~q\))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[4][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[4][26]~q\,
	datad => \fd|BankRegister|registrador[5][26]~q\,
	combout => \fd|BankRegister|saidaA[26]~20_combout\);

-- Location: LCCOMB_X56_Y39_N22
\fd|BankRegister|saidaA[26]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[26]~23_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[26]~20_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[26]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[26]~22_combout\,
	datac => \fd|BankRegister|saidaA[26]~20_combout\,
	datad => \fd|Rom|content~9_combout\,
	combout => \fd|BankRegister|saidaA[26]~23_combout\);

-- Location: LCCOMB_X53_Y39_N10
\fd|ALU|adder|addsloop:26:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[26]~23_combout\ & ((\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[26]~7_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[26]~23_combout\ & (\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[26]~7_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[26]~23_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[26]~7_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y39_N24
\fd|ALU|adder|addsloop:27:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:27:add1to31|soma~0_combout\ = \fd|BankRegister|saidaA[27]~19_combout\ $ (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[27]~6_combout\ $ (\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[27]~19_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[27]~6_combout\,
	datad => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:27:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y39_N14
\fd|ALU|final|selected[27]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[27]~21_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:27:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[27]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[27]~20_combout\,
	datad => \fd|ALU|adder|addsloop:27:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[27]~21_combout\);

-- Location: LCCOMB_X57_Y39_N24
\fd|MuxRegRam|selected[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[27]~27_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[27]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[27]~21_combout\,
	combout => \fd|MuxRegRam|selected[27]~27_combout\);

-- Location: FF_X56_Y39_N1
\fd|BankRegister|registrador[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~27_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][27]~q\);

-- Location: LCCOMB_X57_Y39_N28
\fd|BankRegister|saidaA[27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[27]~17_combout\ = (\fd|Rom|content~4_combout\ & (((\fd|BankRegister|registrador[1][27]~q\) # (\fd|Rom|content~6_combout\)))) # (!\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[0][27]~q\ & 
-- ((!\fd|Rom|content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[0][27]~q\,
	datac => \fd|BankRegister|registrador[1][27]~q\,
	datad => \fd|Rom|content~6_combout\,
	combout => \fd|BankRegister|saidaA[27]~17_combout\);

-- Location: LCCOMB_X56_Y39_N18
\fd|BankRegister|saidaA[27]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[27]~18_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[27]~17_combout\ & ((\fd|BankRegister|registrador[3][27]~q\))) # (!\fd|BankRegister|saidaA[27]~17_combout\ & (\fd|BankRegister|registrador[2][27]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[27]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[2][27]~q\,
	datac => \fd|BankRegister|registrador[3][27]~q\,
	datad => \fd|BankRegister|saidaA[27]~17_combout\,
	combout => \fd|BankRegister|saidaA[27]~18_combout\);

-- Location: LCCOMB_X58_Y39_N14
\fd|BankRegister|saidaA[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[27]~16_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][27]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~4_combout\,
	datab => \fd|BankRegister|registrador[5][27]~q\,
	datad => \fd|BankRegister|registrador[4][27]~q\,
	combout => \fd|BankRegister|saidaA[27]~16_combout\);

-- Location: LCCOMB_X56_Y39_N10
\fd|BankRegister|saidaA[27]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[27]~19_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[27]~16_combout\))) # (!\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[27]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|Equal0~0_combout\,
	datab => \fd|BankRegister|saidaA[27]~18_combout\,
	datac => \fd|Rom|content~9_combout\,
	datad => \fd|BankRegister|saidaA[27]~16_combout\,
	combout => \fd|BankRegister|saidaA[27]~19_combout\);

-- Location: LCCOMB_X53_Y39_N0
\fd|ALU|adder|addsloop:27:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[27]~19_combout\ & ((\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[27]~6_combout\)))) # 
-- (!\fd|BankRegister|saidaA[27]~19_combout\ & (\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[27]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[27]~19_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[27]~6_combout\,
	datad => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X49_Y39_N28
\fd|ALU|adder|addsloop:28:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:28:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[28]~15_combout\ $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\ $ (\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[28]~15_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[28]~5_combout\,
	datad => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:28:add1to31|soma~0_combout\);

-- Location: LCCOMB_X49_Y39_N14
\fd|ALU|final|selected[28]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[28]~23_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:28:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[28]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[28]~22_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:28:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[28]~23_combout\);

-- Location: LCCOMB_X49_Y39_N18
\fd|MuxRegRam|selected[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[28]~28_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[28]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~1_combout\,
	datac => \fd|ALU|final|selected[28]~23_combout\,
	combout => \fd|MuxRegRam|selected[28]~28_combout\);

-- Location: LCCOMB_X47_Y39_N30
\fd|BankRegister|registrador[5][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[5][28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[28]~28_combout\,
	combout => \fd|BankRegister|registrador[5][28]~feeder_combout\);

-- Location: FF_X47_Y39_N31
\fd|BankRegister|registrador[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[5][28]~feeder_combout\,
	ena => \fd|BankRegister|registrador[5][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[5][28]~q\);

-- Location: LCCOMB_X47_Y39_N14
\fd|BankRegister|saidaA[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[28]~12_combout\ = (\fd|Rom|content~4_combout\ & (\fd|BankRegister|registrador[5][28]~q\)) # (!\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[4][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][28]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[4][28]~q\,
	combout => \fd|BankRegister|saidaA[28]~12_combout\);

-- Location: LCCOMB_X49_Y39_N6
\fd|BankRegister|saidaA[28]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[28]~13_combout\ = (\fd|Rom|content~6_combout\ & (((\fd|Rom|content~4_combout\)))) # (!\fd|Rom|content~6_combout\ & ((\fd|Rom|content~4_combout\ & ((\fd|BankRegister|registrador[1][28]~q\))) # (!\fd|Rom|content~4_combout\ & 
-- (\fd|BankRegister|registrador[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~6_combout\,
	datab => \fd|BankRegister|registrador[0][28]~q\,
	datac => \fd|Rom|content~4_combout\,
	datad => \fd|BankRegister|registrador[1][28]~q\,
	combout => \fd|BankRegister|saidaA[28]~13_combout\);

-- Location: LCCOMB_X48_Y39_N20
\fd|BankRegister|saidaA[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[28]~14_combout\ = (\fd|Rom|content~6_combout\ & ((\fd|BankRegister|saidaA[28]~13_combout\ & ((\fd|BankRegister|registrador[3][28]~q\))) # (!\fd|BankRegister|saidaA[28]~13_combout\ & (\fd|BankRegister|registrador[2][28]~q\)))) # 
-- (!\fd|Rom|content~6_combout\ & (((\fd|BankRegister|saidaA[28]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][28]~q\,
	datab => \fd|Rom|content~6_combout\,
	datac => \fd|BankRegister|registrador[3][28]~q\,
	datad => \fd|BankRegister|saidaA[28]~13_combout\,
	combout => \fd|BankRegister|saidaA[28]~14_combout\);

-- Location: LCCOMB_X49_Y39_N16
\fd|BankRegister|saidaA[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaA[28]~15_combout\ = (!\fd|BankRegister|Equal0~0_combout\ & ((\fd|Rom|content~9_combout\ & (\fd|BankRegister|saidaA[28]~12_combout\)) # (!\fd|Rom|content~9_combout\ & ((\fd|BankRegister|saidaA[28]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[28]~12_combout\,
	datab => \fd|Rom|content~9_combout\,
	datac => \fd|BankRegister|Equal0~0_combout\,
	datad => \fd|BankRegister|saidaA[28]~14_combout\,
	combout => \fd|BankRegister|saidaA[28]~15_combout\);

-- Location: LCCOMB_X53_Y39_N18
\fd|ALU|adder|addsloop:28:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[28]~15_combout\ & ((\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\)))) # 
-- (!\fd|BankRegister|saidaA[28]~15_combout\ & (\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaA[28]~15_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[28]~5_combout\,
	datad => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X49_Y39_N2
\fd|ALU|adder|addsloop:29:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:29:add1to31|soma~0_combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[29]~11_combout\ $ (\fd|MuxSaidaBankRegister|selected[29]~4_combout\ $ (\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[29]~11_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[29]~4_combout\,
	datad => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:29:add1to31|soma~0_combout\);

-- Location: LCCOMB_X49_Y39_N10
\fd|ALU|final|selected[29]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[29]~25_combout\ = (\fd|UCalu|output\(1) & (!\fd|UCalu|output\(0) & ((\fd|ALU|adder|addsloop:29:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[29]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[29]~24_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:29:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[29]~25_combout\);

-- Location: LCCOMB_X49_Y39_N12
\fd|MuxRegRam|selected[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[29]~29_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[29]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[29]~25_combout\,
	combout => \fd|MuxRegRam|selected[29]~29_combout\);

-- Location: LCCOMB_X58_Y39_N18
\fd|BankRegister|registrador[6][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|registrador[6][29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~29_combout\,
	combout => \fd|BankRegister|registrador[6][29]~feeder_combout\);

-- Location: FF_X58_Y39_N19
\fd|BankRegister|registrador[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|registrador[6][29]~feeder_combout\,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][29]~q\);

-- Location: LCCOMB_X58_Y39_N30
\fd|BankRegister|saidaB[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[29]~4_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][29]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][29]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[6][29]~q\,
	datac => \fd|BankRegister|registrador[4][29]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[29]~4_combout\);

-- Location: FF_X48_Y39_N11
\fd|BankRegister|registrador[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~29_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][29]~q\);

-- Location: LCCOMB_X48_Y39_N10
\fd|BankRegister|saidaB[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[29]~5_combout\ = (\fd|BankRegister|saidaB[29]~4_combout\ & (((\fd|BankRegister|registrador[7][29]~q\)) # (!\fd|Rom|content~14_combout\))) # (!\fd|BankRegister|saidaB[29]~4_combout\ & (\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[5][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[29]~4_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][29]~q\,
	datad => \fd|BankRegister|registrador[5][29]~q\,
	combout => \fd|BankRegister|saidaB[29]~5_combout\);

-- Location: LCCOMB_X48_Y39_N8
\fd|BankRegister|saidaB[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[29]~6_combout\ = (\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][29]~q\) # ((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & (((\fd|BankRegister|registrador[0][29]~q\ & 
-- !\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][29]~q\,
	datab => \fd|BankRegister|registrador[0][29]~q\,
	datac => \fd|Rom|content~14_combout\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[29]~6_combout\);

-- Location: LCCOMB_X48_Y39_N2
\fd|BankRegister|saidaB[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[29]~7_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|saidaB[29]~6_combout\ & (\fd|BankRegister|registrador[3][29]~q\)) # (!\fd|BankRegister|saidaB[29]~6_combout\ & ((\fd|BankRegister|registrador[2][29]~q\))))) # 
-- (!\fd|Rom|content~16_combout\ & (\fd|BankRegister|saidaB[29]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|saidaB[29]~6_combout\,
	datac => \fd|BankRegister|registrador[3][29]~q\,
	datad => \fd|BankRegister|registrador[2][29]~q\,
	combout => \fd|BankRegister|saidaB[29]~7_combout\);

-- Location: LCCOMB_X49_Y39_N22
\fd|MuxSaidaBankRegister|selected[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[29]~4_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[29]~5_combout\)) # (!\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[29]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[29]~5_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|BankRegister|saidaB[29]~7_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[29]~4_combout\);

-- Location: LCCOMB_X53_Y39_N8
\fd|ALU|adder|addsloop:29:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[29]~11_combout\ & ((\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[29]~4_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[29]~11_combout\ & (\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[29]~4_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[29]~4_combout\,
	datab => \fd|BankRegister|saidaA[29]~11_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y39_N10
\fd|ALU|adder|addsloop:30:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:30:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[30]~3_combout\ $ (\fd|BankRegister|saidaA[30]~7_combout\ $ (\fd|UCalu|output\(2) $ (\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[30]~3_combout\,
	datab => \fd|BankRegister|saidaA[30]~7_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:30:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y39_N14
\fd|ALU|final|selected[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[30]~3_combout\ = (\fd|UCalu|output\(1) & (((!\fd|UCalu|output\(0) & \fd|ALU|adder|addsloop:30:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (\fd|ALU|final|selected[30]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[30]~2_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:30:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[30]~3_combout\);

-- Location: LCCOMB_X57_Y39_N26
\fd|MuxRegRam|selected[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[30]~30_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[30]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[30]~3_combout\,
	combout => \fd|MuxRegRam|selected[30]~30_combout\);

-- Location: FF_X58_Y39_N17
\fd|BankRegister|registrador[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~30_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][30]~q\);

-- Location: LCCOMB_X58_Y39_N0
\fd|BankRegister|saidaB[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[30]~0_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\)))) # (!\fd|Rom|content~14_combout\ & ((\fd|Rom|content~16_combout\ & (\fd|BankRegister|registrador[6][30]~q\)) # (!\fd|Rom|content~16_combout\ & 
-- ((\fd|BankRegister|registrador[4][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~14_combout\,
	datab => \fd|BankRegister|registrador[6][30]~q\,
	datac => \fd|BankRegister|registrador[4][30]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[30]~0_combout\);

-- Location: FF_X57_Y40_N9
\fd|BankRegister|registrador[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~30_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][30]~q\);

-- Location: LCCOMB_X57_Y40_N8
\fd|BankRegister|saidaB[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[30]~1_combout\ = (\fd|BankRegister|saidaB[30]~0_combout\ & (((\fd|BankRegister|registrador[7][30]~q\)) # (!\fd|Rom|content~14_combout\))) # (!\fd|BankRegister|saidaB[30]~0_combout\ & (\fd|Rom|content~14_combout\ & 
-- ((\fd|BankRegister|registrador[5][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[30]~0_combout\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|BankRegister|registrador[7][30]~q\,
	datad => \fd|BankRegister|registrador[5][30]~q\,
	combout => \fd|BankRegister|saidaB[30]~1_combout\);

-- Location: LCCOMB_X57_Y39_N16
\fd|BankRegister|saidaB[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[30]~2_combout\ = (\fd|Rom|content~14_combout\ & (((\fd|Rom|content~16_combout\) # (\fd|BankRegister|registrador[1][30]~q\)))) # (!\fd|Rom|content~14_combout\ & (\fd|BankRegister|registrador[0][30]~q\ & 
-- (!\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][30]~q\,
	datab => \fd|Rom|content~14_combout\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[1][30]~q\,
	combout => \fd|BankRegister|saidaB[30]~2_combout\);

-- Location: LCCOMB_X58_Y40_N14
\fd|BankRegister|saidaB[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[30]~3_combout\ = (\fd|BankRegister|saidaB[30]~2_combout\ & (((\fd|BankRegister|registrador[3][30]~q\) # (!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[30]~2_combout\ & (\fd|BankRegister|registrador[2][30]~q\ & 
-- (\fd|Rom|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|saidaB[30]~2_combout\,
	datab => \fd|BankRegister|registrador[2][30]~q\,
	datac => \fd|Rom|content~16_combout\,
	datad => \fd|BankRegister|registrador[3][30]~q\,
	combout => \fd|BankRegister|saidaB[30]~3_combout\);

-- Location: LCCOMB_X58_Y40_N16
\fd|MuxSaidaBankRegister|selected[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[30]~3_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & (\fd|BankRegister|saidaB[30]~1_combout\)) # (!\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[30]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|BankRegister|saidaB[30]~1_combout\,
	datac => \fd|BankRegister|saidaB[30]~3_combout\,
	datad => \fd|Rom|content~12_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[30]~3_combout\);

-- Location: LCCOMB_X54_Y39_N24
\fd|ALU|adder|addsloop:30:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ = (\fd|BankRegister|saidaA[30]~7_combout\ & ((\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[30]~3_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|saidaA[30]~7_combout\ & (\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[30]~3_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[30]~3_combout\,
	datab => \fd|BankRegister|saidaA[30]~7_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y39_N16
\fd|ALU|adder|addsloop:31:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:31:add1to31|soma~0_combout\ = \fd|MuxSaidaBankRegister|selected[31]~44_combout\ $ (\fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[31]~3_combout\ $ (\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[31]~44_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|saidaA[31]~3_combout\,
	datad => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:31:add1to31|soma~0_combout\);

-- Location: LCCOMB_X54_Y39_N4
\fd|ALU|final|selected[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~5_combout\ = (\fd|UCalu|output\(1) & (((!\fd|UCalu|output\(0) & \fd|ALU|adder|addsloop:31:add1to31|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & (\fd|ALU|final|selected[31]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[31]~4_combout\,
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:31:add1to31|soma~0_combout\,
	combout => \fd|ALU|final|selected[31]~5_combout\);

-- Location: LCCOMB_X57_Y39_N10
\fd|MuxRegRam|selected[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[31]~31_combout\ = (!\ucfd|Equal1~1_combout\ & \fd|ALU|final|selected[31]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|ALU|final|selected[31]~5_combout\,
	combout => \fd|MuxRegRam|selected[31]~31_combout\);

-- Location: FF_X58_Y40_N29
\fd|BankRegister|registrador[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[2][31]~q\);

-- Location: LCCOMB_X57_Y39_N4
\fd|BankRegister|saidaB[31]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[31]~124_combout\ = (\fd|Rom|content~16_combout\ & (((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & ((\fd|Rom|content~14_combout\ & ((\fd|BankRegister|registrador[1][31]~q\))) # (!\fd|Rom|content~14_combout\ & 
-- (\fd|BankRegister|registrador[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[0][31]~q\,
	datab => \fd|Rom|content~16_combout\,
	datac => \fd|BankRegister|registrador[1][31]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[31]~124_combout\);

-- Location: LCCOMB_X56_Y39_N24
\fd|BankRegister|saidaB[31]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[31]~125_combout\ = (\fd|BankRegister|saidaB[31]~124_combout\ & (((\fd|BankRegister|registrador[3][31]~q\) # (!\fd|Rom|content~16_combout\)))) # (!\fd|BankRegister|saidaB[31]~124_combout\ & (\fd|BankRegister|registrador[2][31]~q\ & 
-- ((\fd|Rom|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][31]~q\,
	datab => \fd|BankRegister|saidaB[31]~124_combout\,
	datac => \fd|BankRegister|registrador[3][31]~q\,
	datad => \fd|Rom|content~16_combout\,
	combout => \fd|BankRegister|saidaB[31]~125_combout\);

-- Location: FF_X58_Y39_N15
\fd|BankRegister|registrador[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[6][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[6][31]~q\);

-- Location: LCCOMB_X58_Y39_N6
\fd|BankRegister|saidaB[31]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[31]~122_combout\ = (\fd|Rom|content~16_combout\ & ((\fd|BankRegister|registrador[6][31]~q\) # ((\fd|Rom|content~14_combout\)))) # (!\fd|Rom|content~16_combout\ & (((\fd|BankRegister|registrador[4][31]~q\ & 
-- !\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~16_combout\,
	datab => \fd|BankRegister|registrador[6][31]~q\,
	datac => \fd|BankRegister|registrador[4][31]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[31]~122_combout\);

-- Location: FF_X57_Y40_N7
\fd|BankRegister|registrador[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~31_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[7][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[7][31]~q\);

-- Location: LCCOMB_X57_Y40_N6
\fd|BankRegister|saidaB[31]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|saidaB[31]~123_combout\ = (\fd|BankRegister|saidaB[31]~122_combout\ & (((\fd|BankRegister|registrador[7][31]~q\) # (!\fd|Rom|content~14_combout\)))) # (!\fd|BankRegister|saidaB[31]~122_combout\ & (\fd|BankRegister|registrador[5][31]~q\ & 
-- ((\fd|Rom|content~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][31]~q\,
	datab => \fd|BankRegister|saidaB[31]~122_combout\,
	datac => \fd|BankRegister|registrador[7][31]~q\,
	datad => \fd|Rom|content~14_combout\,
	combout => \fd|BankRegister|saidaB[31]~123_combout\);

-- Location: LCCOMB_X56_Y39_N16
\fd|MuxSaidaBankRegister|selected[31]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[31]~44_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~2_combout\ & ((\fd|Rom|content~12_combout\ & ((\fd|BankRegister|saidaB[31]~123_combout\))) # (!\fd|Rom|content~12_combout\ & 
-- (\fd|BankRegister|saidaB[31]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[2]~2_combout\,
	datab => \fd|BankRegister|saidaB[31]~125_combout\,
	datac => \fd|Rom|content~12_combout\,
	datad => \fd|BankRegister|saidaB[31]~123_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[31]~44_combout\);

-- Location: LCCOMB_X54_Y39_N2
\fd|ALU|out4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|out4\(0) = (\fd|BankRegister|saidaA[31]~3_combout\ & (\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[31]~44_combout\ $ (!\fd|UCalu|output\(2))))) # (!\fd|BankRegister|saidaA[31]~3_combout\ & 
-- ((\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[31]~44_combout\ $ (!\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[31]~44_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|saidaA[31]~3_combout\,
	datad => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	combout => \fd|ALU|out4\(0));

-- Location: LCCOMB_X54_Y39_N0
\fd|ALU|final|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[0]~1_combout\ = (\fd|UCalu|output\(1) & ((\fd|ALU|final|selected[0]~0_combout\ & ((!\fd|ALU|out4\(0)))) # (!\fd|ALU|final|selected[0]~0_combout\ & (\fd|ALU|adder|a0|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & 
-- (((\fd|ALU|final|selected[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|a0|soma~0_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|final|selected[0]~0_combout\,
	datad => \fd|ALU|out4\(0),
	combout => \fd|ALU|final|selected[0]~1_combout\);

-- Location: LCCOMB_X54_Y39_N30
\fd|beqAnd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~0_combout\ = (!\fd|ALU|final|selected[25]~13_combout\ & (!\fd|ALU|final|selected[15]~7_combout\ & (!\fd|ALU|final|selected[19]~11_combout\ & !\fd|ALU|final|selected[14]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[25]~13_combout\,
	datab => \fd|ALU|final|selected[15]~7_combout\,
	datac => \fd|ALU|final|selected[19]~11_combout\,
	datad => \fd|ALU|final|selected[14]~9_combout\,
	combout => \fd|beqAnd~0_combout\);

-- Location: LCCOMB_X52_Y41_N24
\fd|beqAnd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~1_combout\ = (!\fd|ALU|final|selected[9]~17_combout\ & !\fd|ALU|final|selected[10]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|ALU|final|selected[9]~17_combout\,
	datad => \fd|ALU|final|selected[10]~15_combout\,
	combout => \fd|beqAnd~1_combout\);

-- Location: LCCOMB_X54_Y39_N6
\fd|beqAnd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~3_combout\ = (!\fd|ALU|final|selected[6]~31_combout\ & (!\fd|ALU|final|selected[7]~33_combout\ & (!\fd|ALU|final|selected[20]~35_combout\ & !\fd|ALU|final|selected[21]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[6]~31_combout\,
	datab => \fd|ALU|final|selected[7]~33_combout\,
	datac => \fd|ALU|final|selected[20]~35_combout\,
	datad => \fd|ALU|final|selected[21]~37_combout\,
	combout => \fd|beqAnd~3_combout\);

-- Location: LCCOMB_X54_Y36_N12
\fd|beqAnd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~6_combout\ = (!\fd|ALU|final|selected[5]~63_combout\ & (!\fd|ALU|final|selected[2]~55_combout\ & (!\fd|ALU|final|selected[1]~57_combout\ & \fd|beqAnd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[5]~63_combout\,
	datab => \fd|ALU|final|selected[2]~55_combout\,
	datac => \fd|ALU|final|selected[1]~57_combout\,
	datad => \fd|beqAnd~5_combout\,
	combout => \fd|beqAnd~6_combout\);

-- Location: LCCOMB_X53_Y36_N22
\fd|beqAnd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~7_combout\ = (!\fd|ALU|final|selected[11]~53_combout\ & (!\fd|ALU|final|selected[13]~49_combout\ & (\fd|beqAnd~6_combout\ & !\fd|ALU|final|selected[12]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[11]~53_combout\,
	datab => \fd|ALU|final|selected[13]~49_combout\,
	datac => \fd|beqAnd~6_combout\,
	datad => \fd|ALU|final|selected[12]~51_combout\,
	combout => \fd|beqAnd~7_combout\);

-- Location: LCCOMB_X54_Y39_N18
\fd|beqAnd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~4_combout\ = (!\fd|ALU|final|selected[22]~43_combout\ & (!\fd|ALU|final|selected[18]~41_combout\ & (!\fd|ALU|final|selected[23]~45_combout\ & !\fd|ALU|final|selected[24]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[22]~43_combout\,
	datab => \fd|ALU|final|selected[18]~41_combout\,
	datac => \fd|ALU|final|selected[23]~45_combout\,
	datad => \fd|ALU|final|selected[24]~47_combout\,
	combout => \fd|beqAnd~4_combout\);

-- Location: LCCOMB_X54_Y39_N20
\fd|beqAnd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~8_combout\ = (\fd|beqAnd~3_combout\ & (\fd|beqAnd~7_combout\ & (!\fd|ALU|final|selected[16]~39_combout\ & \fd|beqAnd~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~3_combout\,
	datab => \fd|beqAnd~7_combout\,
	datac => \fd|ALU|final|selected[16]~39_combout\,
	datad => \fd|beqAnd~4_combout\,
	combout => \fd|beqAnd~8_combout\);

-- Location: LCCOMB_X54_Y39_N22
\fd|beqAnd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~9_combout\ = (!\fd|ALU|final|selected[8]~27_combout\ & (\ucfd|BEQ~0_combout\ & (!\fd|ALU|final|selected[17]~29_combout\ & \fd|beqAnd~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[8]~27_combout\,
	datab => \ucfd|BEQ~0_combout\,
	datac => \fd|ALU|final|selected[17]~29_combout\,
	datad => \fd|beqAnd~8_combout\,
	combout => \fd|beqAnd~9_combout\);

-- Location: LCCOMB_X54_Y39_N28
\fd|beqAnd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~2_combout\ = (!\fd|ALU|final|selected[27]~21_combout\ & (!\fd|ALU|final|selected[26]~19_combout\ & (!\fd|ALU|final|selected[28]~23_combout\ & !\fd|ALU|final|selected[29]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[27]~21_combout\,
	datab => \fd|ALU|final|selected[26]~19_combout\,
	datac => \fd|ALU|final|selected[28]~23_combout\,
	datad => \fd|ALU|final|selected[29]~25_combout\,
	combout => \fd|beqAnd~2_combout\);

-- Location: LCCOMB_X54_Y39_N12
\fd|beqAnd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~10_combout\ = (\fd|beqAnd~0_combout\ & (\fd|beqAnd~1_combout\ & (\fd|beqAnd~9_combout\ & \fd|beqAnd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~0_combout\,
	datab => \fd|beqAnd~1_combout\,
	datac => \fd|beqAnd~9_combout\,
	datad => \fd|beqAnd~2_combout\,
	combout => \fd|beqAnd~10_combout\);

-- Location: LCCOMB_X54_Y39_N26
\fd|beqAnd\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~combout\ = (!\fd|ALU|final|selected[0]~1_combout\ & (!\fd|ALU|final|selected[30]~3_combout\ & (!\fd|ALU|final|selected[31]~5_combout\ & \fd|beqAnd~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[0]~1_combout\,
	datab => \fd|ALU|final|selected[30]~3_combout\,
	datac => \fd|ALU|final|selected[31]~5_combout\,
	datad => \fd|beqAnd~10_combout\,
	combout => \fd|beqAnd~combout\);

-- Location: LCCOMB_X54_Y38_N28
\fd|MuxPC|selected[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[10]~2_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:10:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:9:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:9:add1to31|vaium~0_combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder|addsloop:10:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[10]~2_combout\);

-- Location: FF_X54_Y38_N29
\fd|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(10));

-- Location: LCCOMB_X59_Y38_N0
\fd|adder|addsloop:11:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:11:add1to31|w3~combout\ = (\fd|PC|DOUT\(10) & (\fd|adder|addsloop:8:add1to31|w3~combout\ & (\fd|PC|DOUT\(9) & \fd|PC|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|adder|addsloop:8:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(9),
	datad => \fd|PC|DOUT\(11),
	combout => \fd|adder|addsloop:11:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y38_N14
\fd|adder|addsloop:12:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:12:add1to31|soma~combout\ = \fd|adder|addsloop:11:add1to31|w3~combout\ $ (\fd|PC|DOUT\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|adder|addsloop:11:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(12),
	combout => \fd|adder|addsloop:12:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y38_N18
\fd|adder|addsloop:10:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:10:add1to31|w3~combout\ = (\fd|PC|DOUT\(9) & (\fd|PC|DOUT\(8) & (\fd|PC|DOUT\(10) & \fd|adder|addsloop:7:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datab => \fd|PC|DOUT\(8),
	datac => \fd|PC|DOUT\(10),
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:10:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y38_N28
\fd|adder2|addsloop:11:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:11:add1to31|vaium~0_combout\ = (\fd|Rom|content~23_combout\ & ((\fd|adder2|addsloop:10:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:10:add1to31|w3~combout\ $ (\fd|PC|DOUT\(11))))) # (!\fd|Rom|content~23_combout\ & 
-- (\fd|adder2|addsloop:10:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:10:add1to31|w3~combout\ $ (\fd|PC|DOUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~23_combout\,
	datab => \fd|adder|addsloop:10:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(11),
	datad => \fd|adder2|addsloop:10:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:11:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y38_N16
\fd|adder2|addsloop:12:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:12:add1to31|soma~combout\ = \fd|Rom|content~21_combout\ $ (\fd|PC|DOUT\(12) $ (\fd|adder|addsloop:11:add1to31|w3~combout\ $ (\fd|adder2|addsloop:11:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~21_combout\,
	datab => \fd|PC|DOUT\(12),
	datac => \fd|adder|addsloop:11:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:12:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y38_N10
\fd|PC|DOUT[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[12]~1_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:12:add1to31|soma~combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:12:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:12:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:12:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[12]~1_combout\);

-- Location: FF_X55_Y38_N11
\fd|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[12]~1_combout\,
	asdata => \fd|Rom|content~21_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(12));

-- Location: LCCOMB_X55_Y38_N22
\fd|adder|addsloop:13:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:13:add1to31|soma~combout\ = \fd|PC|DOUT\(13) $ (((\fd|adder|addsloop:11:add1to31|w3~combout\ & \fd|PC|DOUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(13),
	datab => \fd|adder|addsloop:11:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(12),
	combout => \fd|adder|addsloop:13:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y38_N18
\fd|adder2|addsloop:12:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:12:add1to31|vaium~0_combout\ = (\fd|Rom|content~21_combout\ & ((\fd|adder2|addsloop:11:add1to31|vaium~0_combout\) # (\fd|PC|DOUT\(12) $ (\fd|adder|addsloop:11:add1to31|w3~combout\)))) # (!\fd|Rom|content~21_combout\ & 
-- (\fd|adder2|addsloop:11:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(12) $ (\fd|adder|addsloop:11:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~21_combout\,
	datab => \fd|PC|DOUT\(12),
	datac => \fd|adder|addsloop:11:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:12:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y38_N20
\fd|adder2|addsloop:13:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:13:add1to31|soma~combout\ = \fd|adder|addsloop:12:add1to31|w3~combout\ $ (\fd|Rom|content~19_combout\ $ (\fd|PC|DOUT\(13) $ (\fd|adder2|addsloop:12:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datab => \fd|Rom|content~19_combout\,
	datac => \fd|PC|DOUT\(13),
	datad => \fd|adder2|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:13:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y38_N8
\fd|PC|DOUT[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[13]~0_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:13:add1to31|soma~combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:13:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:13:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:13:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[13]~0_combout\);

-- Location: FF_X55_Y38_N9
\fd|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[13]~0_combout\,
	asdata => \fd|Rom|content~19_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(13));

-- Location: LCCOMB_X55_Y38_N30
\fd|Rom|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~2_combout\ = (!\fd|PC|DOUT\(12) & (!\fd|PC|DOUT\(11) & (!\fd|PC|DOUT\(13) & !\fd|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(12),
	datab => \fd|PC|DOUT\(11),
	datac => \fd|PC|DOUT\(13),
	datad => \fd|PC|DOUT\(5),
	combout => \fd|Rom|content~2_combout\);

-- Location: LCCOMB_X53_Y38_N0
\fd|Rom|content~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~24_combout\ = (!\fd|PC|DOUT\(3) & ((\fd|PC|DOUT\(2) & ((!\fd|PC|DOUT\(1)) # (!\fd|PC|DOUT\(0)))) # (!\fd|PC|DOUT\(2) & ((\fd|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~24_combout\);

-- Location: LCCOMB_X53_Y38_N26
\fd|Rom|content~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~25_combout\ = (\fd|Rom|content~2_combout\ & (\fd|Rom|content~24_combout\ & (\fd|Rom|content~0_combout\ & \fd|Rom|content~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~2_combout\,
	datab => \fd|Rom|content~24_combout\,
	datac => \fd|Rom|content~0_combout\,
	datad => \fd|Rom|content~1_combout\,
	combout => \fd|Rom|content~25_combout\);

-- Location: LCCOMB_X58_Y38_N16
\fd|adder2|addsloop:4:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:4:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:3:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(4) $ (((\fd|PC|DOUT\(3) & \fd|adder|addsloop:2:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:2:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y38_N10
\fd|adder2|addsloop:5:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:5:add1to31|soma~combout\ = \fd|adder|addsloop:4:add1to31|w3~combout\ $ (\fd|PC|DOUT\(5) $ (\fd|Rom|content~25_combout\ $ (\fd|adder2|addsloop:4:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:4:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(5),
	datac => \fd|Rom|content~25_combout\,
	datad => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:5:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y38_N6
\fd|PC|DOUT[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[5]~3_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:5:add1to31|soma~combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:5:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:5:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:5:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[5]~3_combout\);

-- Location: FF_X55_Y38_N7
\fd|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[5]~3_combout\,
	asdata => \fd|Rom|content~25_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(5));

-- Location: LCCOMB_X58_Y38_N12
\fd|adder2|addsloop:6:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:6:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:5:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(6) $ (((\fd|PC|DOUT\(5) & \fd|adder|addsloop:4:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(6),
	datab => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:6:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y38_N4
\fd|adder|addsloop:5:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:5:add1to31|w3~combout\ = (\fd|PC|DOUT\(4) & (\fd|PC|DOUT\(3) & (\fd|PC|DOUT\(5) & \fd|adder|addsloop:2:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(5),
	datad => \fd|adder|addsloop:2:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:5:add1to31|w3~combout\);

-- Location: LCCOMB_X58_Y38_N28
\fd|adder|addsloop:7:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:7:add1to31|soma~combout\ = \fd|PC|DOUT\(7) $ (((\fd|adder|addsloop:5:add1to31|w3~combout\ & \fd|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:5:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(6),
	combout => \fd|adder|addsloop:7:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y38_N12
\fd|MuxPC|selected[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[7]~5_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:7:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:6:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:6:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:7:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[7]~5_combout\);

-- Location: FF_X54_Y38_N13
\fd|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(7));

-- Location: LCCOMB_X54_Y38_N4
\fd|Rom|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~1_combout\ = (!\fd|PC|DOUT\(7) & (!\fd|PC|DOUT\(4) & (!\fd|PC|DOUT\(8) & !\fd|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(7),
	datab => \fd|PC|DOUT\(4),
	datac => \fd|PC|DOUT\(8),
	datad => \fd|PC|DOUT\(6),
	combout => \fd|Rom|content~1_combout\);

-- Location: LCCOMB_X53_Y38_N18
\fd|Rom|content~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~26_combout\ = (\fd|PC|DOUT\(0) & (!\fd|PC|DOUT\(2) & (!\fd|PC|DOUT\(1) & \fd|PC|DOUT\(3)))) # (!\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) $ (\fd|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|content~26_combout\);

-- Location: LCCOMB_X53_Y38_N20
\fd|Rom|content~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~27_combout\ = (\fd|Rom|content~1_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~0_combout\ & \fd|Rom|content~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~1_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~0_combout\,
	datad => \fd|Rom|content~26_combout\,
	combout => \fd|Rom|content~27_combout\);

-- Location: LCCOMB_X57_Y38_N6
\fd|adder2|addsloop:3:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:3:add1to31|vaium~0_combout\ = (\fd|Rom|content~27_combout\ & ((\fd|adder2|addsloop:2:add1to31|vaium~0_combout\) # (\fd|PC|DOUT\(3) $ (\fd|adder|addsloop:2:add1to31|w3~combout\)))) # (!\fd|Rom|content~27_combout\ & 
-- (\fd|adder2|addsloop:2:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(3) $ (\fd|adder|addsloop:2:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(3),
	datab => \fd|adder|addsloop:2:add1to31|w3~combout\,
	datac => \fd|Rom|content~27_combout\,
	datad => \fd|adder2|addsloop:2:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y38_N16
\fd|adder|addsloop:4:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:4:add1to31|soma~combout\ = \fd|PC|DOUT\(4) $ (((\fd|PC|DOUT\(3) & \fd|adder|addsloop:2:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datac => \fd|PC|DOUT\(3),
	datad => \fd|adder|addsloop:2:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:4:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y38_N14
\fd|MuxPC|selected[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[4]~7_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:4:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:3:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:4:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[4]~7_combout\);

-- Location: FF_X54_Y38_N15
\fd|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(4));

-- Location: LCCOMB_X57_Y38_N12
\fd|adder|addsloop:4:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:4:add1to31|w3~combout\ = (\fd|PC|DOUT\(4) & (\fd|adder|addsloop:1:add1to31|w3~combout\ & (\fd|PC|DOUT\(3) & \fd|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(4),
	datab => \fd|adder|addsloop:1:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(3),
	datad => \fd|PC|DOUT\(2),
	combout => \fd|adder|addsloop:4:add1to31|w3~combout\);

-- Location: LCCOMB_X58_Y38_N18
\fd|adder2|addsloop:5:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ = (\fd|Rom|content~25_combout\ & ((\fd|adder2|addsloop:4:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:4:add1to31|w3~combout\ $ (\fd|PC|DOUT\(5))))) # (!\fd|Rom|content~25_combout\ & 
-- (\fd|adder2|addsloop:4:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:4:add1to31|w3~combout\ $ (\fd|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:4:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(5),
	datac => \fd|Rom|content~25_combout\,
	datad => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y38_N22
\fd|adder|addsloop:6:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:6:add1to31|soma~combout\ = \fd|adder|addsloop:5:add1to31|w3~combout\ $ (\fd|PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:5:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(6),
	combout => \fd|adder|addsloop:6:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y38_N24
\fd|MuxPC|selected[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[6]~6_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:6:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:5:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder|addsloop:6:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[6]~6_combout\);

-- Location: FF_X55_Y38_N25
\fd|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(6));

-- Location: LCCOMB_X58_Y38_N6
\fd|adder2|addsloop:7:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:7:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:6:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(7) $ (((\fd|PC|DOUT\(6) & \fd|adder|addsloop:5:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(6),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|adder|addsloop:5:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:6:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X58_Y38_N26
\fd|adder|addsloop:8:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:8:add1to31|soma~combout\ = \fd|PC|DOUT\(8) $ (((\fd|adder|addsloop:5:add1to31|w3~combout\ & (\fd|PC|DOUT\(7) & \fd|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|adder|addsloop:5:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(7),
	datad => \fd|PC|DOUT\(6),
	combout => \fd|adder|addsloop:8:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y38_N26
\fd|MuxPC|selected[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[8]~4_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:8:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	datab => \fd|adder|addsloop:8:add1to31|soma~combout\,
	datac => \ucfd|Equal4~0_combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[8]~4_combout\);

-- Location: FF_X54_Y38_N27
\fd|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(8));

-- Location: LCCOMB_X58_Y38_N30
\fd|adder|addsloop:8:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:8:add1to31|w3~combout\ = (\fd|PC|DOUT\(8) & (\fd|adder|addsloop:5:add1to31|w3~combout\ & (\fd|PC|DOUT\(7) & \fd|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(8),
	datab => \fd|adder|addsloop:5:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(7),
	datad => \fd|PC|DOUT\(6),
	combout => \fd|adder|addsloop:8:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y38_N24
\fd|adder|addsloop:9:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:9:add1to31|soma~combout\ = \fd|PC|DOUT\(9) $ (\fd|adder|addsloop:8:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|PC|DOUT\(9),
	datad => \fd|adder|addsloop:8:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:9:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y38_N22
\fd|MuxPC|selected[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[9]~3_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:9:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:8:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:9:add1to31|soma~combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder2|addsloop:8:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[9]~3_combout\);

-- Location: FF_X54_Y38_N23
\fd|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(9));

-- Location: LCCOMB_X59_Y38_N10
\fd|adder2|addsloop:10:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:10:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:9:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(10) $ (((\fd|PC|DOUT\(9) & \fd|adder|addsloop:8:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datab => \fd|adder|addsloop:8:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(10),
	datad => \fd|adder2|addsloop:9:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:10:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\fd|adder2|addsloop:11:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:11:add1to31|soma~combout\ = \fd|adder2|addsloop:10:add1to31|vaium~0_combout\ $ (\fd|PC|DOUT\(11) $ (\fd|Rom|content~23_combout\ $ (\fd|adder|addsloop:10:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:10:add1to31|vaium~0_combout\,
	datab => \fd|PC|DOUT\(11),
	datac => \fd|Rom|content~23_combout\,
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:11:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y38_N26
\fd|adder|addsloop:11:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:11:add1to31|soma~combout\ = \fd|PC|DOUT\(11) $ (((\fd|PC|DOUT\(10) & (\fd|adder|addsloop:8:add1to31|w3~combout\ & \fd|PC|DOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(10),
	datab => \fd|adder|addsloop:8:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(9),
	datad => \fd|PC|DOUT\(11),
	combout => \fd|adder|addsloop:11:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y38_N4
\fd|PC|DOUT[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[11]~2_combout\ = (\fd|beqAnd~combout\ & (\fd|adder2|addsloop:11:add1to31|soma~combout\)) # (!\fd|beqAnd~combout\ & ((\fd|adder|addsloop:11:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:11:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:11:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[11]~2_combout\);

-- Location: FF_X55_Y38_N5
\fd|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[11]~2_combout\,
	asdata => \fd|Rom|content~23_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(11));

-- Location: LCCOMB_X55_Y38_N12
\fd|adder|addsloop:12:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:12:add1to31|w3~combout\ = (\fd|PC|DOUT\(11) & (\fd|PC|DOUT\(12) & \fd|adder|addsloop:10:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(11),
	datab => \fd|PC|DOUT\(12),
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:12:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y38_N0
\fd|adder2|addsloop:13:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:13:add1to31|vaium~0_combout\ = (\fd|Rom|content~19_combout\ & ((\fd|adder2|addsloop:12:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:12:add1to31|w3~combout\ $ (\fd|PC|DOUT\(13))))) # (!\fd|Rom|content~19_combout\ & 
-- (\fd|adder2|addsloop:12:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:12:add1to31|w3~combout\ $ (\fd|PC|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datab => \fd|Rom|content~19_combout\,
	datac => \fd|PC|DOUT\(13),
	datad => \fd|adder2|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y38_N28
\fd|adder|addsloop:14:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:14:add1to31|soma~combout\ = \fd|PC|DOUT\(14) $ (((\fd|PC|DOUT\(13) & (\fd|PC|DOUT\(12) & \fd|adder|addsloop:11:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(13),
	datab => \fd|PC|DOUT\(12),
	datac => \fd|adder|addsloop:11:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(14),
	combout => \fd|adder|addsloop:14:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y38_N30
\fd|MuxPC|selected[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[14]~1_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:14:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:13:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:14:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[14]~1_combout\);

-- Location: FF_X54_Y38_N31
\fd|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(14));

-- Location: LCCOMB_X55_Y38_N26
\fd|adder2|addsloop:14:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:13:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(14) $ (((\fd|adder|addsloop:12:add1to31|w3~combout\ & \fd|PC|DOUT\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(14),
	datac => \fd|PC|DOUT\(13),
	datad => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y42_N4
\fd|adder|addsloop:14:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:14:add1to31|w3~combout\ = (\fd|PC|DOUT\(13) & (\fd|PC|DOUT\(14) & (\fd|PC|DOUT\(12) & \fd|adder|addsloop:11:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(13),
	datab => \fd|PC|DOUT\(14),
	datac => \fd|PC|DOUT\(12),
	datad => \fd|adder|addsloop:11:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:14:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y42_N6
\fd|adder|addsloop:15:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:15:add1to31|soma~combout\ = \fd|PC|DOUT\(15) $ (\fd|adder|addsloop:14:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(15),
	datac => \fd|adder|addsloop:14:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:15:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y38_N0
\fd|MuxPC|selected[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[15]~0_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:15:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:14:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|adder|addsloop:15:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[15]~0_combout\);

-- Location: FF_X54_Y38_N1
\fd|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(15));

-- Location: LCCOMB_X54_Y38_N8
\fd|Rom|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~0_combout\ = (!\fd|PC|DOUT\(14) & (!\fd|PC|DOUT\(10) & (!\fd|PC|DOUT\(9) & !\fd|PC|DOUT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|PC|DOUT\(10),
	datac => \fd|PC|DOUT\(9),
	datad => \fd|PC|DOUT\(15),
	combout => \fd|Rom|content~0_combout\);

-- Location: LCCOMB_X54_Y40_N22
\fd|Rom|content~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|content~12_combout\ = (\fd|Rom|content~0_combout\ & (\fd|Rom|content~2_combout\ & (\fd|Rom|content~1_combout\ & \fd|Rom|content~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~0_combout\,
	datab => \fd|Rom|content~2_combout\,
	datac => \fd|Rom|content~1_combout\,
	datad => \fd|Rom|content~11_combout\,
	combout => \fd|Rom|content~12_combout\);

-- Location: LCCOMB_X57_Y38_N14
\ucfd|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal4~0_combout\ = (!\fd|Rom|content~12_combout\ & (\fd|Rom|content~35_combout\ & ((\fd|PC|DOUT\(3)) # (!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|content~12_combout\,
	datab => \fd|Rom|content~8_combout\,
	datac => \fd|PC|DOUT\(3),
	datad => \fd|Rom|content~35_combout\,
	combout => \ucfd|Equal4~0_combout\);

-- Location: LCCOMB_X53_Y38_N6
\fd|MuxPC|selected[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[0]~8_combout\ = (\ucfd|Equal4~0_combout\ & (\fd|Rom|content~33_combout\)) # (!\ucfd|Equal4~0_combout\ & (\fd|PC|DOUT\(0) $ (((!\fd|beqAnd~combout\) # (!\fd|Rom|content~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|Rom|content~33_combout\,
	datac => \fd|PC|DOUT\(0),
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[0]~8_combout\);

-- Location: FF_X53_Y38_N7
\fd|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(0));

-- Location: LCCOMB_X57_Y38_N26
\fd|adder|addsloop:1:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:1:add1to31|soma~combout\ = \fd|PC|DOUT\(1) $ (\fd|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|adder|addsloop:1:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y38_N14
\fd|adder2|addsloop:1:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:1:add1to31|soma~0_combout\ = \fd|PC|DOUT\(1) $ (\fd|Rom|content~31_combout\ $ (((\fd|PC|DOUT\(0)) # (\fd|Rom|content~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|Rom|content~33_combout\,
	datac => \fd|PC|DOUT\(1),
	datad => \fd|Rom|content~31_combout\,
	combout => \fd|adder2|addsloop:1:add1to31|soma~0_combout\);

-- Location: LCCOMB_X53_Y38_N28
\fd|PC|DOUT[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[1]~6_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:1:add1to31|soma~0_combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:1:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:1:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:1:add1to31|soma~0_combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[1]~6_combout\);

-- Location: FF_X53_Y38_N29
\fd|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[1]~6_combout\,
	asdata => \fd|Rom|content~31_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(1));

-- Location: LCCOMB_X57_Y38_N18
\fd|adder|addsloop:1:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:1:add1to31|w3~combout\ = (\fd|PC|DOUT\(1) & \fd|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|adder|addsloop:1:add1to31|w3~combout\);

-- Location: LCCOMB_X57_Y38_N10
\fd|adder2|addsloop:1:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:1:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(0) & ((\fd|Rom|content~33_combout\) # (\fd|Rom|content~31_combout\)))) # (!\fd|PC|DOUT\(1) & (\fd|Rom|content~31_combout\ & ((\fd|PC|DOUT\(0)) # 
-- (\fd|Rom|content~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|Rom|content~33_combout\,
	datad => \fd|Rom|content~31_combout\,
	combout => \fd|adder2|addsloop:1:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y38_N22
\fd|adder2|addsloop:2:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:2:add1to31|soma~combout\ = \fd|PC|DOUT\(2) $ (\fd|adder|addsloop:1:add1to31|w3~combout\ $ (\fd|Rom|content~29_combout\ $ (\fd|adder2|addsloop:1:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|adder|addsloop:1:add1to31|w3~combout\,
	datac => \fd|Rom|content~29_combout\,
	datad => \fd|adder2|addsloop:1:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:2:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y38_N4
\fd|adder|addsloop:2:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:2:add1to31|soma~combout\ = \fd|PC|DOUT\(2) $ (((\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|adder|addsloop:2:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y38_N2
\fd|PC|DOUT[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[2]~5_combout\ = (\fd|beqAnd~combout\ & (\fd|adder2|addsloop:2:add1to31|soma~combout\)) # (!\fd|beqAnd~combout\ & ((\fd|adder|addsloop:2:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:2:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:2:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[2]~5_combout\);

-- Location: FF_X53_Y38_N3
\fd|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[2]~5_combout\,
	asdata => \fd|Rom|content~29_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(2));

-- Location: LCCOMB_X57_Y38_N28
\fd|adder2|addsloop:2:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:2:add1to31|vaium~0_combout\ = (\fd|Rom|content~29_combout\ & ((\fd|adder2|addsloop:1:add1to31|vaium~0_combout\) # (\fd|PC|DOUT\(2) $ (\fd|adder|addsloop:1:add1to31|w3~combout\)))) # (!\fd|Rom|content~29_combout\ & 
-- (\fd|adder2|addsloop:1:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(2) $ (\fd|adder|addsloop:1:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|adder|addsloop:1:add1to31|w3~combout\,
	datac => \fd|Rom|content~29_combout\,
	datad => \fd|adder2|addsloop:1:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:2:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y38_N2
\fd|adder2|addsloop:3:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:3:add1to31|soma~combout\ = \fd|PC|DOUT\(3) $ (\fd|adder2|addsloop:2:add1to31|vaium~0_combout\ $ (\fd|Rom|content~27_combout\ $ (\fd|adder|addsloop:2:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(3),
	datab => \fd|adder2|addsloop:2:add1to31|vaium~0_combout\,
	datac => \fd|Rom|content~27_combout\,
	datad => \fd|adder|addsloop:2:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:3:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y38_N0
\fd|adder|addsloop:3:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:3:add1to31|soma~combout\ = \fd|PC|DOUT\(3) $ (((\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(2),
	datab => \fd|PC|DOUT\(3),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|adder|addsloop:3:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y38_N16
\fd|PC|DOUT[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[3]~4_combout\ = (\fd|beqAnd~combout\ & (\fd|adder2|addsloop:3:add1to31|soma~combout\)) # (!\fd|beqAnd~combout\ & ((\fd|adder|addsloop:3:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:3:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[3]~4_combout\);

-- Location: FF_X53_Y38_N17
\fd|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[3]~4_combout\,
	asdata => \fd|Rom|content~27_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(3));

-- Location: LCCOMB_X55_Y37_N0
\ucfd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal0~0_combout\ = (!\fd|Rom|content~12_combout\ & (!\fd|Rom|content~35_combout\ & ((\fd|PC|DOUT\(3)) # (!\fd|Rom|content~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(3),
	datab => \fd|Rom|content~12_combout\,
	datac => \fd|Rom|content~8_combout\,
	datad => \fd|Rom|content~35_combout\,
	combout => \ucfd|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y39_N2
\fd|UCalu|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~3_combout\ = (\fd|UCalu|output[3]~2_combout\ & ((\fd|UCalu|output[2]~3_combout\) # (!\ucfd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datac => \fd|UCalu|output[2]~3_combout\,
	datad => \fd|UCalu|output[3]~2_combout\,
	combout => \fd|UCalu|comb~3_combout\);

-- Location: LCCOMB_X59_Y39_N24
\fd|UCalu|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~2_combout\ = (\ucfd|Equal0~0_combout\ & (!\fd|UCalu|output[2]~3_combout\ & \fd|UCalu|output[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datac => \fd|UCalu|output[2]~3_combout\,
	datad => \fd|UCalu|output[3]~2_combout\,
	combout => \fd|UCalu|comb~2_combout\);

-- Location: LCCOMB_X58_Y39_N16
\fd|UCalu|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(1) = (!\fd|UCalu|comb~2_combout\ & ((\fd|UCalu|comb~3_combout\) # (\fd|UCalu|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~3_combout\,
	datab => \fd|UCalu|comb~2_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|UCalu|output\(1));

-- Location: LCCOMB_X49_Y38_N20
\fd|ALU|adder|addsloop:1:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:1:add1to31|soma~combout\ = \fd|UCalu|output\(2) $ (\fd|BankRegister|saidaA[1]~123_combout\ $ (\fd|ALU|adder|a0|vaium~0_combout\ $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|saidaA[1]~123_combout\,
	datac => \fd|ALU|adder|a0|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[1]~39_combout\,
	combout => \fd|ALU|adder|addsloop:1:add1to31|soma~combout\);

-- Location: LCCOMB_X49_Y38_N28
\fd|ALU|final|selected[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[1]~56_combout\ = (\fd|BankRegister|saidaA[1]~123_combout\ & ((\fd|UCalu|output\(0)) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\)))) # (!\fd|BankRegister|saidaA[1]~123_combout\ & (\fd|UCalu|output\(0) 
-- & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[1]~39_combout\,
	datac => \fd|BankRegister|saidaA[1]~123_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[1]~56_combout\);

-- Location: LCCOMB_X49_Y38_N14
\fd|ALU|final|selected[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[1]~57_combout\ = (\fd|UCalu|output\(1) & (\fd|ALU|adder|addsloop:1:add1to31|soma~combout\ & (!\fd|UCalu|output\(0)))) # (!\fd|UCalu|output\(1) & (((\fd|ALU|final|selected[1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|adder|addsloop:1:add1to31|soma~combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[1]~56_combout\,
	combout => \fd|ALU|final|selected[1]~57_combout\);

-- Location: LCCOMB_X55_Y40_N12
\fd|Ram|ram~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Ram|ram~1063_combout\ = (\fd|beqAnd~5_combout\ & (\fd|ALU|final|selected[1]~57_combout\ & ((!\fd|ALU|final|selected[0]~1_combout\) # (!\fd|ALU|final|selected[2]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~5_combout\,
	datab => \fd|ALU|final|selected[2]~55_combout\,
	datac => \fd|ALU|final|selected[1]~57_combout\,
	datad => \fd|ALU|final|selected[0]~1_combout\,
	combout => \fd|Ram|ram~1063_combout\);

-- Location: LCCOMB_X55_Y40_N0
\fd|MuxRegRam|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[1]~1_combout\ = (\ucfd|Equal1~1_combout\ & ((\fd|Ram|ram~1063_combout\))) # (!\ucfd|Equal1~1_combout\ & (\fd|ALU|final|selected[1]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[1]~57_combout\,
	datab => \ucfd|Equal1~1_combout\,
	datad => \fd|Ram|ram~1063_combout\,
	combout => \fd|MuxRegRam|selected[1]~1_combout\);

-- Location: FF_X55_Y40_N31
\fd|BankRegister|registrador[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~1_combout\,
	sload => VCC,
	ena => \fd|BankRegister|registrador[1][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|registrador[1][1]~q\);

-- Location: LCCOMB_X114_Y28_N4
\convhex1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[1][2]~q\ & (!\fd|BankRegister|registrador[1][1]~q\ & (\fd|BankRegister|registrador[1][3]~q\ $ (!\fd|BankRegister|registrador[1][0]~q\)))) # (!\fd|BankRegister|registrador[1][2]~q\ & 
-- (\fd|BankRegister|registrador[1][0]~q\ & (\fd|BankRegister|registrador[1][1]~q\ $ (!\fd|BankRegister|registrador[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y28_N18
\convhex1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[1][1]~q\ & ((\fd|BankRegister|registrador[1][0]~q\ & ((\fd|BankRegister|registrador[1][3]~q\))) # (!\fd|BankRegister|registrador[1][0]~q\ & (\fd|BankRegister|registrador[1][2]~q\)))) # 
-- (!\fd|BankRegister|registrador[1][1]~q\ & (\fd|BankRegister|registrador[1][2]~q\ & (\fd|BankRegister|registrador[1][3]~q\ $ (\fd|BankRegister|registrador[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y28_N28
\convhex1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[1][2]~q\ & (((!\fd|BankRegister|registrador[1][1]~q\ & \fd|BankRegister|registrador[1][0]~q\)) # (!\fd|BankRegister|registrador[1][3]~q\))) # (!\fd|BankRegister|registrador[1][2]~q\ & 
-- (((\fd|BankRegister|registrador[1][3]~q\) # (\fd|BankRegister|registrador[1][0]~q\)) # (!\fd|BankRegister|registrador[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y28_N2
\convhex1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[1][1]~q\ & ((\fd|BankRegister|registrador[1][2]~q\ & ((\fd|BankRegister|registrador[1][0]~q\))) # (!\fd|BankRegister|registrador[1][2]~q\ & (\fd|BankRegister|registrador[1][3]~q\ & 
-- !\fd|BankRegister|registrador[1][0]~q\)))) # (!\fd|BankRegister|registrador[1][1]~q\ & (!\fd|BankRegister|registrador[1][3]~q\ & (\fd|BankRegister|registrador[1][2]~q\ $ (\fd|BankRegister|registrador[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y28_N8
\convhex1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[1][1]~q\ & (((!\fd|BankRegister|registrador[1][3]~q\ & \fd|BankRegister|registrador[1][0]~q\)))) # (!\fd|BankRegister|registrador[1][1]~q\ & ((\fd|BankRegister|registrador[1][2]~q\ & 
-- (!\fd|BankRegister|registrador[1][3]~q\)) # (!\fd|BankRegister|registrador[1][2]~q\ & ((\fd|BankRegister|registrador[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y28_N6
\convhex1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[1][1]~q\ & (!\fd|BankRegister|registrador[1][3]~q\ & ((\fd|BankRegister|registrador[1][0]~q\) # (!\fd|BankRegister|registrador[1][2]~q\)))) # (!\fd|BankRegister|registrador[1][1]~q\ & 
-- (\fd|BankRegister|registrador[1][0]~q\ & (\fd|BankRegister|registrador[1][2]~q\ $ (!\fd|BankRegister|registrador[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y28_N12
\convhex1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex1|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[1][0]~q\ & (!\fd|BankRegister|registrador[1][3]~q\ & (\fd|BankRegister|registrador[1][1]~q\ $ (!\fd|BankRegister|registrador[1][2]~q\)))) # (!\fd|BankRegister|registrador[1][0]~q\ & 
-- (!\fd|BankRegister|registrador[1][1]~q\ & (\fd|BankRegister|registrador[1][2]~q\ $ (!\fd|BankRegister|registrador[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[1][1]~q\,
	datab => \fd|BankRegister|registrador[1][2]~q\,
	datac => \fd|BankRegister|registrador[1][3]~q\,
	datad => \fd|BankRegister|registrador[1][0]~q\,
	combout => \convhex1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X114_Y19_N20
\convhex2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[2][2]~q\ & (!\fd|BankRegister|registrador[2][1]~q\ & (\fd|BankRegister|registrador[2][3]~q\ $ (!\fd|BankRegister|registrador[2][0]~q\)))) # (!\fd|BankRegister|registrador[2][2]~q\ & 
-- (\fd|BankRegister|registrador[2][0]~q\ & (\fd|BankRegister|registrador[2][3]~q\ $ (!\fd|BankRegister|registrador[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\convhex2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[2][3]~q\ & ((\fd|BankRegister|registrador[2][0]~q\ & ((\fd|BankRegister|registrador[2][1]~q\))) # (!\fd|BankRegister|registrador[2][0]~q\ & (\fd|BankRegister|registrador[2][2]~q\)))) # 
-- (!\fd|BankRegister|registrador[2][3]~q\ & (\fd|BankRegister|registrador[2][2]~q\ & (\fd|BankRegister|registrador[2][1]~q\ $ (\fd|BankRegister|registrador[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y19_N4
\convhex2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[2][2]~q\ & (((!\fd|BankRegister|registrador[2][1]~q\ & \fd|BankRegister|registrador[2][0]~q\)) # (!\fd|BankRegister|registrador[2][3]~q\))) # (!\fd|BankRegister|registrador[2][2]~q\ & 
-- ((\fd|BankRegister|registrador[2][3]~q\) # ((\fd|BankRegister|registrador[2][0]~q\) # (!\fd|BankRegister|registrador[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y19_N26
\convhex2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[2][1]~q\ & ((\fd|BankRegister|registrador[2][2]~q\ & ((\fd|BankRegister|registrador[2][0]~q\))) # (!\fd|BankRegister|registrador[2][2]~q\ & (\fd|BankRegister|registrador[2][3]~q\ & 
-- !\fd|BankRegister|registrador[2][0]~q\)))) # (!\fd|BankRegister|registrador[2][1]~q\ & (!\fd|BankRegister|registrador[2][3]~q\ & (\fd|BankRegister|registrador[2][2]~q\ $ (\fd|BankRegister|registrador[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y19_N28
\convhex2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[2][1]~q\ & (((!\fd|BankRegister|registrador[2][3]~q\ & \fd|BankRegister|registrador[2][0]~q\)))) # (!\fd|BankRegister|registrador[2][1]~q\ & ((\fd|BankRegister|registrador[2][2]~q\ & 
-- (!\fd|BankRegister|registrador[2][3]~q\)) # (!\fd|BankRegister|registrador[2][2]~q\ & ((\fd|BankRegister|registrador[2][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y19_N10
\convhex2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[2][2]~q\ & (\fd|BankRegister|registrador[2][0]~q\ & (\fd|BankRegister|registrador[2][3]~q\ $ (\fd|BankRegister|registrador[2][1]~q\)))) # (!\fd|BankRegister|registrador[2][2]~q\ & 
-- (!\fd|BankRegister|registrador[2][3]~q\ & ((\fd|BankRegister|registrador[2][1]~q\) # (\fd|BankRegister|registrador[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y19_N0
\convhex2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex2|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[2][0]~q\ & (!\fd|BankRegister|registrador[2][3]~q\ & (\fd|BankRegister|registrador[2][2]~q\ $ (!\fd|BankRegister|registrador[2][1]~q\)))) # (!\fd|BankRegister|registrador[2][0]~q\ & 
-- (!\fd|BankRegister|registrador[2][1]~q\ & (\fd|BankRegister|registrador[2][2]~q\ $ (!\fd|BankRegister|registrador[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[2][2]~q\,
	datab => \fd|BankRegister|registrador[2][3]~q\,
	datac => \fd|BankRegister|registrador[2][1]~q\,
	datad => \fd|BankRegister|registrador[2][0]~q\,
	combout => \convhex2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X56_Y40_N10
\convhex3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[3][3]~q\ & (\fd|BankRegister|registrador[3][0]~q\ & (\fd|BankRegister|registrador[3][2]~q\ $ (\fd|BankRegister|registrador[3][1]~q\)))) # (!\fd|BankRegister|registrador[3][3]~q\ & 
-- (!\fd|BankRegister|registrador[3][1]~q\ & (\fd|BankRegister|registrador[3][0]~q\ $ (\fd|BankRegister|registrador[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][0]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[3][2]~q\,
	datad => \fd|BankRegister|registrador[3][1]~q\,
	combout => \convhex3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X56_Y40_N4
\convhex3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[3][1]~q\ & ((\fd|BankRegister|registrador[3][0]~q\ & (\fd|BankRegister|registrador[3][3]~q\)) # (!\fd|BankRegister|registrador[3][0]~q\ & ((\fd|BankRegister|registrador[3][2]~q\))))) # 
-- (!\fd|BankRegister|registrador[3][1]~q\ & (\fd|BankRegister|registrador[3][2]~q\ & (\fd|BankRegister|registrador[3][0]~q\ $ (\fd|BankRegister|registrador[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][0]~q\,
	datab => \fd|BankRegister|registrador[3][1]~q\,
	datac => \fd|BankRegister|registrador[3][3]~q\,
	datad => \fd|BankRegister|registrador[3][2]~q\,
	combout => \convhex3|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X56_Y40_N14
\convhex3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[3][2]~q\ & (((\fd|BankRegister|registrador[3][0]~q\ & !\fd|BankRegister|registrador[3][1]~q\)) # (!\fd|BankRegister|registrador[3][3]~q\))) # (!\fd|BankRegister|registrador[3][2]~q\ & 
-- ((\fd|BankRegister|registrador[3][3]~q\) # ((\fd|BankRegister|registrador[3][0]~q\) # (!\fd|BankRegister|registrador[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][2]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[3][0]~q\,
	datad => \fd|BankRegister|registrador[3][1]~q\,
	combout => \convhex3|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X56_Y40_N24
\convhex3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[3][1]~q\ & ((\fd|BankRegister|registrador[3][2]~q\ & ((\fd|BankRegister|registrador[3][0]~q\))) # (!\fd|BankRegister|registrador[3][2]~q\ & (\fd|BankRegister|registrador[3][3]~q\ & 
-- !\fd|BankRegister|registrador[3][0]~q\)))) # (!\fd|BankRegister|registrador[3][1]~q\ & (!\fd|BankRegister|registrador[3][3]~q\ & (\fd|BankRegister|registrador[3][2]~q\ $ (\fd|BankRegister|registrador[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][2]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[3][0]~q\,
	datad => \fd|BankRegister|registrador[3][1]~q\,
	combout => \convhex3|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X56_Y40_N2
\convhex3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[3][1]~q\ & (((!\fd|BankRegister|registrador[3][3]~q\ & \fd|BankRegister|registrador[3][0]~q\)))) # (!\fd|BankRegister|registrador[3][1]~q\ & ((\fd|BankRegister|registrador[3][2]~q\ & 
-- (!\fd|BankRegister|registrador[3][3]~q\)) # (!\fd|BankRegister|registrador[3][2]~q\ & ((\fd|BankRegister|registrador[3][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][2]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[3][0]~q\,
	datad => \fd|BankRegister|registrador[3][1]~q\,
	combout => \convhex3|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X56_Y40_N0
\convhex3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[3][2]~q\ & (\fd|BankRegister|registrador[3][0]~q\ & (\fd|BankRegister|registrador[3][3]~q\ $ (\fd|BankRegister|registrador[3][1]~q\)))) # (!\fd|BankRegister|registrador[3][2]~q\ & 
-- (!\fd|BankRegister|registrador[3][3]~q\ & ((\fd|BankRegister|registrador[3][0]~q\) # (\fd|BankRegister|registrador[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][2]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[3][0]~q\,
	datad => \fd|BankRegister|registrador[3][1]~q\,
	combout => \convhex3|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X56_Y40_N18
\convhex3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex3|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[3][0]~q\ & (!\fd|BankRegister|registrador[3][3]~q\ & (\fd|BankRegister|registrador[3][2]~q\ $ (!\fd|BankRegister|registrador[3][1]~q\)))) # (!\fd|BankRegister|registrador[3][0]~q\ & 
-- (!\fd|BankRegister|registrador[3][1]~q\ & (\fd|BankRegister|registrador[3][2]~q\ $ (!\fd|BankRegister|registrador[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[3][2]~q\,
	datab => \fd|BankRegister|registrador[3][3]~q\,
	datac => \fd|BankRegister|registrador[3][0]~q\,
	datad => \fd|BankRegister|registrador[3][1]~q\,
	combout => \convhex3|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X57_Y37_N20
\convhex4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[4][2]~q\ & (!\fd|BankRegister|registrador[4][1]~q\ & (\fd|BankRegister|registrador[4][0]~q\ $ (!\fd|BankRegister|registrador[4][3]~q\)))) # (!\fd|BankRegister|registrador[4][2]~q\ & 
-- (\fd|BankRegister|registrador[4][0]~q\ & (\fd|BankRegister|registrador[4][3]~q\ $ (!\fd|BankRegister|registrador[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|BankRegister|registrador[4][3]~q\,
	datad => \fd|BankRegister|registrador[4][1]~q\,
	combout => \convhex4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X57_Y37_N6
\convhex4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[4][3]~q\ & ((\fd|BankRegister|registrador[4][0]~q\ & ((\fd|BankRegister|registrador[4][1]~q\))) # (!\fd|BankRegister|registrador[4][0]~q\ & (\fd|BankRegister|registrador[4][2]~q\)))) # 
-- (!\fd|BankRegister|registrador[4][3]~q\ & (\fd|BankRegister|registrador[4][2]~q\ & (\fd|BankRegister|registrador[4][0]~q\ $ (\fd|BankRegister|registrador[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|BankRegister|registrador[4][3]~q\,
	datad => \fd|BankRegister|registrador[4][1]~q\,
	combout => \convhex4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X57_Y37_N0
\convhex4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[4][2]~q\ & (((\fd|BankRegister|registrador[4][0]~q\ & !\fd|BankRegister|registrador[4][1]~q\)) # (!\fd|BankRegister|registrador[4][3]~q\))) # (!\fd|BankRegister|registrador[4][2]~q\ & 
-- ((\fd|BankRegister|registrador[4][0]~q\) # ((\fd|BankRegister|registrador[4][3]~q\) # (!\fd|BankRegister|registrador[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|BankRegister|registrador[4][3]~q\,
	datad => \fd|BankRegister|registrador[4][1]~q\,
	combout => \convhex4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X57_Y37_N18
\convhex4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[4][1]~q\ & ((\fd|BankRegister|registrador[4][0]~q\ & (\fd|BankRegister|registrador[4][2]~q\)) # (!\fd|BankRegister|registrador[4][0]~q\ & (!\fd|BankRegister|registrador[4][2]~q\ & 
-- \fd|BankRegister|registrador[4][3]~q\)))) # (!\fd|BankRegister|registrador[4][1]~q\ & (!\fd|BankRegister|registrador[4][3]~q\ & (\fd|BankRegister|registrador[4][0]~q\ $ (\fd|BankRegister|registrador[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|BankRegister|registrador[4][3]~q\,
	datad => \fd|BankRegister|registrador[4][1]~q\,
	combout => \convhex4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X55_Y41_N22
\convhex4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[4][1]~q\ & (\fd|BankRegister|registrador[4][0]~q\ & (!\fd|BankRegister|registrador[4][3]~q\))) # (!\fd|BankRegister|registrador[4][1]~q\ & ((\fd|BankRegister|registrador[4][2]~q\ & 
-- ((!\fd|BankRegister|registrador[4][3]~q\))) # (!\fd|BankRegister|registrador[4][2]~q\ & (\fd|BankRegister|registrador[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][3]~q\,
	datac => \fd|BankRegister|registrador[4][1]~q\,
	datad => \fd|BankRegister|registrador[4][2]~q\,
	combout => \convhex4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X57_Y37_N28
\convhex4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[4][0]~q\ & (\fd|BankRegister|registrador[4][3]~q\ $ (((\fd|BankRegister|registrador[4][1]~q\) # (!\fd|BankRegister|registrador[4][2]~q\))))) # (!\fd|BankRegister|registrador[4][0]~q\ & 
-- (!\fd|BankRegister|registrador[4][2]~q\ & (!\fd|BankRegister|registrador[4][3]~q\ & \fd|BankRegister|registrador[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|BankRegister|registrador[4][3]~q\,
	datad => \fd|BankRegister|registrador[4][1]~q\,
	combout => \convhex4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X57_Y37_N10
\convhex4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex4|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[4][0]~q\ & (!\fd|BankRegister|registrador[4][3]~q\ & (\fd|BankRegister|registrador[4][2]~q\ $ (!\fd|BankRegister|registrador[4][1]~q\)))) # (!\fd|BankRegister|registrador[4][0]~q\ & 
-- (!\fd|BankRegister|registrador[4][1]~q\ & (\fd|BankRegister|registrador[4][2]~q\ $ (!\fd|BankRegister|registrador[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[4][0]~q\,
	datab => \fd|BankRegister|registrador[4][2]~q\,
	datac => \fd|BankRegister|registrador[4][3]~q\,
	datad => \fd|BankRegister|registrador[4][1]~q\,
	combout => \convhex4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X74_Y44_N24
\convhex5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[5][3]~q\ & (\fd|BankRegister|registrador[5][0]~q\ & (\fd|BankRegister|registrador[5][2]~q\ $ (\fd|BankRegister|registrador[5][1]~q\)))) # (!\fd|BankRegister|registrador[5][3]~q\ & 
-- (!\fd|BankRegister|registrador[5][1]~q\ & (\fd|BankRegister|registrador[5][2]~q\ $ (\fd|BankRegister|registrador[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][3]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[5][1]~q\,
	datad => \fd|BankRegister|registrador[5][0]~q\,
	combout => \convhex5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X56_Y41_N14
\convhex5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[5][3]~q\ & ((\fd|BankRegister|registrador[5][0]~q\ & ((\fd|BankRegister|registrador[5][1]~q\))) # (!\fd|BankRegister|registrador[5][0]~q\ & (\fd|BankRegister|registrador[5][2]~q\)))) # 
-- (!\fd|BankRegister|registrador[5][3]~q\ & (\fd|BankRegister|registrador[5][2]~q\ & (\fd|BankRegister|registrador[5][0]~q\ $ (\fd|BankRegister|registrador[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][0]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[5][3]~q\,
	datad => \fd|BankRegister|registrador[5][1]~q\,
	combout => \convhex5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X74_Y44_N26
\convhex5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[5][3]~q\ & (((!\fd|BankRegister|registrador[5][1]~q\ & \fd|BankRegister|registrador[5][0]~q\)) # (!\fd|BankRegister|registrador[5][2]~q\))) # (!\fd|BankRegister|registrador[5][3]~q\ & 
-- ((\fd|BankRegister|registrador[5][2]~q\) # ((\fd|BankRegister|registrador[5][0]~q\) # (!\fd|BankRegister|registrador[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][3]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[5][1]~q\,
	datad => \fd|BankRegister|registrador[5][0]~q\,
	combout => \convhex5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X56_Y41_N4
\convhex5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[5][1]~q\ & ((\fd|BankRegister|registrador[5][0]~q\ & ((\fd|BankRegister|registrador[5][2]~q\))) # (!\fd|BankRegister|registrador[5][0]~q\ & (\fd|BankRegister|registrador[5][3]~q\ & 
-- !\fd|BankRegister|registrador[5][2]~q\)))) # (!\fd|BankRegister|registrador[5][1]~q\ & (!\fd|BankRegister|registrador[5][3]~q\ & (\fd|BankRegister|registrador[5][0]~q\ $ (\fd|BankRegister|registrador[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][1]~q\,
	datab => \fd|BankRegister|registrador[5][3]~q\,
	datac => \fd|BankRegister|registrador[5][0]~q\,
	datad => \fd|BankRegister|registrador[5][2]~q\,
	combout => \convhex5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X74_Y44_N12
\convhex5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[5][1]~q\ & (!\fd|BankRegister|registrador[5][3]~q\ & ((\fd|BankRegister|registrador[5][0]~q\)))) # (!\fd|BankRegister|registrador[5][1]~q\ & ((\fd|BankRegister|registrador[5][2]~q\ & 
-- (!\fd|BankRegister|registrador[5][3]~q\)) # (!\fd|BankRegister|registrador[5][2]~q\ & ((\fd|BankRegister|registrador[5][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][3]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[5][1]~q\,
	datad => \fd|BankRegister|registrador[5][0]~q\,
	combout => \convhex5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X74_Y44_N6
\convhex5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[5][2]~q\ & (\fd|BankRegister|registrador[5][0]~q\ & (\fd|BankRegister|registrador[5][3]~q\ $ (\fd|BankRegister|registrador[5][1]~q\)))) # (!\fd|BankRegister|registrador[5][2]~q\ & 
-- (!\fd|BankRegister|registrador[5][3]~q\ & ((\fd|BankRegister|registrador[5][1]~q\) # (\fd|BankRegister|registrador[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][3]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[5][1]~q\,
	datad => \fd|BankRegister|registrador[5][0]~q\,
	combout => \convhex5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X74_Y44_N20
\convhex5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex5|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[5][0]~q\ & (!\fd|BankRegister|registrador[5][3]~q\ & (\fd|BankRegister|registrador[5][2]~q\ $ (!\fd|BankRegister|registrador[5][1]~q\)))) # (!\fd|BankRegister|registrador[5][0]~q\ & 
-- (!\fd|BankRegister|registrador[5][1]~q\ & (\fd|BankRegister|registrador[5][3]~q\ $ (!\fd|BankRegister|registrador[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[5][3]~q\,
	datab => \fd|BankRegister|registrador[5][2]~q\,
	datac => \fd|BankRegister|registrador[5][1]~q\,
	datad => \fd|BankRegister|registrador[5][0]~q\,
	combout => \convhex5|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X56_Y41_N6
\convhex6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[6][2]~q\ & (!\fd|BankRegister|registrador[6][1]~q\ & (\fd|BankRegister|registrador[6][0]~q\ $ (!\fd|BankRegister|registrador[6][3]~q\)))) # (!\fd|BankRegister|registrador[6][2]~q\ & 
-- (\fd|BankRegister|registrador[6][0]~q\ & (\fd|BankRegister|registrador[6][1]~q\ $ (!\fd|BankRegister|registrador[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X56_Y41_N16
\convhex6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[6][1]~q\ & ((\fd|BankRegister|registrador[6][0]~q\ & ((\fd|BankRegister|registrador[6][3]~q\))) # (!\fd|BankRegister|registrador[6][0]~q\ & (\fd|BankRegister|registrador[6][2]~q\)))) # 
-- (!\fd|BankRegister|registrador[6][1]~q\ & (\fd|BankRegister|registrador[6][2]~q\ & (\fd|BankRegister|registrador[6][0]~q\ $ (\fd|BankRegister|registrador[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X56_Y41_N22
\convhex6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[6][2]~q\ & (((!\fd|BankRegister|registrador[6][1]~q\ & \fd|BankRegister|registrador[6][0]~q\)) # (!\fd|BankRegister|registrador[6][3]~q\))) # (!\fd|BankRegister|registrador[6][2]~q\ & 
-- (((\fd|BankRegister|registrador[6][0]~q\) # (\fd|BankRegister|registrador[6][3]~q\)) # (!\fd|BankRegister|registrador[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X56_Y41_N8
\convhex6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[6][1]~q\ & ((\fd|BankRegister|registrador[6][2]~q\ & (\fd|BankRegister|registrador[6][0]~q\)) # (!\fd|BankRegister|registrador[6][2]~q\ & (!\fd|BankRegister|registrador[6][0]~q\ & 
-- \fd|BankRegister|registrador[6][3]~q\)))) # (!\fd|BankRegister|registrador[6][1]~q\ & (!\fd|BankRegister|registrador[6][3]~q\ & (\fd|BankRegister|registrador[6][2]~q\ $ (\fd|BankRegister|registrador[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X56_Y41_N26
\convhex6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[6][1]~q\ & (((\fd|BankRegister|registrador[6][0]~q\ & !\fd|BankRegister|registrador[6][3]~q\)))) # (!\fd|BankRegister|registrador[6][1]~q\ & ((\fd|BankRegister|registrador[6][2]~q\ & 
-- ((!\fd|BankRegister|registrador[6][3]~q\))) # (!\fd|BankRegister|registrador[6][2]~q\ & (\fd|BankRegister|registrador[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X56_Y41_N0
\convhex6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[6][2]~q\ & (\fd|BankRegister|registrador[6][0]~q\ & (\fd|BankRegister|registrador[6][1]~q\ $ (\fd|BankRegister|registrador[6][3]~q\)))) # (!\fd|BankRegister|registrador[6][2]~q\ & 
-- (!\fd|BankRegister|registrador[6][3]~q\ & ((\fd|BankRegister|registrador[6][1]~q\) # (\fd|BankRegister|registrador[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X56_Y41_N18
\convhex6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex6|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[6][0]~q\ & (!\fd|BankRegister|registrador[6][3]~q\ & (\fd|BankRegister|registrador[6][2]~q\ $ (!\fd|BankRegister|registrador[6][1]~q\)))) # (!\fd|BankRegister|registrador[6][0]~q\ & 
-- (!\fd|BankRegister|registrador[6][1]~q\ & (\fd|BankRegister|registrador[6][2]~q\ $ (!\fd|BankRegister|registrador[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[6][2]~q\,
	datab => \fd|BankRegister|registrador[6][1]~q\,
	datac => \fd|BankRegister|registrador[6][0]~q\,
	datad => \fd|BankRegister|registrador[6][3]~q\,
	combout => \convhex6|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X55_Y41_N8
\convhex7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[0]~0_combout\ = (\fd|BankRegister|registrador[7][2]~q\ & (!\fd|BankRegister|registrador[7][1]~q\ & (\fd|BankRegister|registrador[7][3]~q\ $ (!\fd|BankRegister|registrador[7][0]~q\)))) # (!\fd|BankRegister|registrador[7][2]~q\ & 
-- (\fd|BankRegister|registrador[7][0]~q\ & (\fd|BankRegister|registrador[7][3]~q\ $ (!\fd|BankRegister|registrador[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][2]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][1]~q\,
	datad => \fd|BankRegister|registrador[7][0]~q\,
	combout => \convhex7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X55_Y41_N6
\convhex7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[1]~1_combout\ = (\fd|BankRegister|registrador[7][3]~q\ & ((\fd|BankRegister|registrador[7][0]~q\ & ((\fd|BankRegister|registrador[7][1]~q\))) # (!\fd|BankRegister|registrador[7][0]~q\ & (\fd|BankRegister|registrador[7][2]~q\)))) # 
-- (!\fd|BankRegister|registrador[7][3]~q\ & (\fd|BankRegister|registrador[7][2]~q\ & (\fd|BankRegister|registrador[7][0]~q\ $ (\fd|BankRegister|registrador[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][0]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][2]~q\,
	datad => \fd|BankRegister|registrador[7][1]~q\,
	combout => \convhex7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X55_Y41_N24
\convhex7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[2]~2_combout\ = (\fd|BankRegister|registrador[7][3]~q\ & (((\fd|BankRegister|registrador[7][0]~q\ & !\fd|BankRegister|registrador[7][1]~q\)) # (!\fd|BankRegister|registrador[7][2]~q\))) # (!\fd|BankRegister|registrador[7][3]~q\ & 
-- ((\fd|BankRegister|registrador[7][0]~q\) # ((\fd|BankRegister|registrador[7][2]~q\) # (!\fd|BankRegister|registrador[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][0]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][1]~q\,
	datad => \fd|BankRegister|registrador[7][2]~q\,
	combout => \convhex7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X55_Y41_N18
\convhex7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[3]~3_combout\ = (\fd|BankRegister|registrador[7][1]~q\ & ((\fd|BankRegister|registrador[7][0]~q\ & ((\fd|BankRegister|registrador[7][2]~q\))) # (!\fd|BankRegister|registrador[7][0]~q\ & (\fd|BankRegister|registrador[7][3]~q\ & 
-- !\fd|BankRegister|registrador[7][2]~q\)))) # (!\fd|BankRegister|registrador[7][1]~q\ & (!\fd|BankRegister|registrador[7][3]~q\ & (\fd|BankRegister|registrador[7][0]~q\ $ (\fd|BankRegister|registrador[7][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][0]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][1]~q\,
	datad => \fd|BankRegister|registrador[7][2]~q\,
	combout => \convhex7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X55_Y41_N0
\convhex7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[4]~4_combout\ = (\fd|BankRegister|registrador[7][1]~q\ & (\fd|BankRegister|registrador[7][0]~q\ & (!\fd|BankRegister|registrador[7][3]~q\))) # (!\fd|BankRegister|registrador[7][1]~q\ & ((\fd|BankRegister|registrador[7][2]~q\ & 
-- ((!\fd|BankRegister|registrador[7][3]~q\))) # (!\fd|BankRegister|registrador[7][2]~q\ & (\fd|BankRegister|registrador[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][0]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][1]~q\,
	datad => \fd|BankRegister|registrador[7][2]~q\,
	combout => \convhex7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X55_Y41_N10
\convhex7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[5]~5_combout\ = (\fd|BankRegister|registrador[7][0]~q\ & (\fd|BankRegister|registrador[7][3]~q\ $ (((\fd|BankRegister|registrador[7][1]~q\) # (!\fd|BankRegister|registrador[7][2]~q\))))) # (!\fd|BankRegister|registrador[7][0]~q\ & 
-- (!\fd|BankRegister|registrador[7][3]~q\ & (\fd|BankRegister|registrador[7][1]~q\ & !\fd|BankRegister|registrador[7][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][0]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][1]~q\,
	datad => \fd|BankRegister|registrador[7][2]~q\,
	combout => \convhex7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X55_Y41_N20
\convhex7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convhex7|rascSaida7seg[6]~6_combout\ = (\fd|BankRegister|registrador[7][0]~q\ & (!\fd|BankRegister|registrador[7][3]~q\ & (\fd|BankRegister|registrador[7][1]~q\ $ (!\fd|BankRegister|registrador[7][2]~q\)))) # (!\fd|BankRegister|registrador[7][0]~q\ & 
-- (!\fd|BankRegister|registrador[7][1]~q\ & (\fd|BankRegister|registrador[7][3]~q\ $ (!\fd|BankRegister|registrador[7][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|registrador[7][0]~q\,
	datab => \fd|BankRegister|registrador[7][3]~q\,
	datac => \fd|BankRegister|registrador[7][1]~q\,
	datad => \fd|BankRegister|registrador[7][2]~q\,
	combout => \convhex7|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X61_Y39_N28
\fd|ALU|adder|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|v~0_combout\ = (\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & ((\fd|BankRegister|saidaA[31]~3_combout\) # (\fd|MuxSaidaBankRegister|selected[31]~44_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & ((\fd|MuxSaidaBankRegister|selected[31]~44_combout\ $ (!\fd|UCalu|output\(2))) # (!\fd|BankRegister|saidaA[31]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[31]~44_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	datad => \fd|BankRegister|saidaA[31]~3_combout\,
	combout => \fd|ALU|adder|v~0_combout\);

-- Location: LCCOMB_X55_Y42_N12
\fd|adder|addsloop:16:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:16:add1to31|soma~combout\ = \fd|PC|DOUT\(16) $ (((\fd|PC|DOUT\(15) & \fd|adder|addsloop:14:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(15),
	datac => \fd|adder|addsloop:14:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(16),
	combout => \fd|adder|addsloop:16:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y42_N30
\fd|adder|addsloop:15:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:15:add1to31|w3~combout\ = (\fd|PC|DOUT\(13) & (\fd|adder|addsloop:12:add1to31|w3~combout\ & (\fd|PC|DOUT\(15) & \fd|PC|DOUT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(13),
	datab => \fd|adder|addsloop:12:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(15),
	datad => \fd|PC|DOUT\(14),
	combout => \fd|adder|addsloop:15:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y38_N2
\fd|adder|addsloop:13:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:13:add1to31|w3~combout\ = (\fd|PC|DOUT\(11) & (\fd|PC|DOUT\(13) & (\fd|PC|DOUT\(12) & \fd|adder|addsloop:10:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(11),
	datab => \fd|PC|DOUT\(13),
	datac => \fd|PC|DOUT\(12),
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:13:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y42_N16
\fd|adder2|addsloop:15:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:15:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:14:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(15) $ (((\fd|PC|DOUT\(14) & \fd|adder|addsloop:13:add1to31|w3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(15),
	datab => \fd|PC|DOUT\(14),
	datac => \fd|adder|addsloop:13:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:15:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y42_N18
\fd|adder2|addsloop:16:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:16:add1to31|soma~combout\ = \fd|PC|DOUT\(16) $ (\fd|adder|addsloop:15:add1to31|w3~combout\ $ (\fd|adder2|addsloop:15:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(16),
	datac => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:16:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y42_N24
\fd|PC|DOUT[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[16]~7_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:16:add1to31|soma~combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:16:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:16:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:16:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[16]~7_combout\);

-- Location: FF_X55_Y42_N25
\fd|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[16]~7_combout\,
	asdata => \fd|Rom|content~14_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(16));

-- Location: LCCOMB_X55_Y42_N2
\fd|adder|addsloop:16:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:16:add1to31|w3~combout\ = (\fd|PC|DOUT\(15) & (\fd|PC|DOUT\(14) & (\fd|adder|addsloop:13:add1to31|w3~combout\ & \fd|PC|DOUT\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(15),
	datab => \fd|PC|DOUT\(14),
	datac => \fd|adder|addsloop:13:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(16),
	combout => \fd|adder|addsloop:16:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y42_N20
\fd|adder2|addsloop:16:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:16:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(16) & (\fd|adder2|addsloop:14:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(15) $ (\fd|adder|addsloop:14:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(15),
	datab => \fd|PC|DOUT\(16),
	datac => \fd|adder|addsloop:14:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y42_N26
\fd|adder2|addsloop:17:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:17:add1to31|soma~combout\ = \fd|adder|addsloop:16:add1to31|w3~combout\ $ (\fd|PC|DOUT\(17) $ (\fd|adder2|addsloop:16:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:16:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(17),
	datad => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:17:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y42_N28
\fd|adder|addsloop:17:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:17:add1to31|soma~combout\ = \fd|PC|DOUT\(17) $ (((\fd|adder|addsloop:14:add1to31|w3~combout\ & (\fd|PC|DOUT\(15) & \fd|PC|DOUT\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(17),
	datab => \fd|adder|addsloop:14:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(15),
	datad => \fd|PC|DOUT\(16),
	combout => \fd|adder|addsloop:17:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y42_N22
\fd|PC|DOUT[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[17]~8_combout\ = (\fd|beqAnd~combout\ & (\fd|adder2|addsloop:17:add1to31|soma~combout\)) # (!\fd|beqAnd~combout\ & ((\fd|adder|addsloop:17:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:17:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:17:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[17]~8_combout\);

-- Location: FF_X55_Y42_N23
\fd|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[17]~8_combout\,
	asdata => \fd|Rom|content~16_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(17));

-- Location: LCCOMB_X55_Y42_N14
\fd|adder2|addsloop:17:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:17:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(17) & (\fd|adder2|addsloop:15:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:15:add1to31|w3~combout\ $ (\fd|PC|DOUT\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(16),
	datac => \fd|PC|DOUT\(17),
	datad => \fd|adder2|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:17:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y42_N0
\fd|adder|addsloop:17:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:17:add1to31|w3~combout\ = (\fd|PC|DOUT\(17) & (\fd|adder|addsloop:14:add1to31|w3~combout\ & (\fd|PC|DOUT\(15) & \fd|PC|DOUT\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(17),
	datab => \fd|adder|addsloop:14:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(15),
	datad => \fd|PC|DOUT\(16),
	combout => \fd|adder|addsloop:17:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y43_N4
\fd|adder|addsloop:18:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:18:add1to31|soma~combout\ = \fd|PC|DOUT\(18) $ (\fd|adder|addsloop:17:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|PC|DOUT\(18),
	datad => \fd|adder|addsloop:17:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:18:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y43_N30
\fd|MuxPC|selected[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[18]~9_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:18:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:17:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:17:add1to31|vaium~0_combout\,
	datab => \ucfd|Equal4~0_combout\,
	datac => \fd|beqAnd~combout\,
	datad => \fd|adder|addsloop:18:add1to31|soma~combout\,
	combout => \fd|MuxPC|selected[18]~9_combout\);

-- Location: FF_X55_Y43_N31
\fd|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[18]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(18));

-- Location: LCCOMB_X55_Y42_N8
\fd|adder2|addsloop:18:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:18:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(18) & (\fd|adder2|addsloop:16:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(17) $ (\fd|adder|addsloop:16:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(17),
	datab => \fd|adder|addsloop:16:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(18),
	datad => \fd|adder2|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:18:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y43_N14
\fd|adder|addsloop:19:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:19:add1to31|soma~combout\ = \fd|PC|DOUT\(19) $ (((\fd|adder|addsloop:17:add1to31|w3~combout\ & \fd|PC|DOUT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:17:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(18),
	datad => \fd|PC|DOUT\(19),
	combout => \fd|adder|addsloop:19:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y43_N16
\fd|MuxPC|selected[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[19]~10_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:19:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:18:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:18:add1to31|vaium~0_combout\,
	datab => \fd|adder|addsloop:19:add1to31|soma~combout\,
	datac => \fd|beqAnd~combout\,
	datad => \ucfd|Equal4~0_combout\,
	combout => \fd|MuxPC|selected[19]~10_combout\);

-- Location: FF_X55_Y43_N17
\fd|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(19));

-- Location: LCCOMB_X55_Y43_N2
\fd|adder2|addsloop:19:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:19:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:17:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(19) & (\fd|PC|DOUT\(18) $ (\fd|adder|addsloop:17:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:17:add1to31|vaium~0_combout\,
	datab => \fd|PC|DOUT\(19),
	datac => \fd|PC|DOUT\(18),
	datad => \fd|adder|addsloop:17:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:19:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y43_N8
\fd|adder|addsloop:20:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:20:add1to31|soma~combout\ = \fd|PC|DOUT\(20) $ (((\fd|PC|DOUT\(18) & (\fd|adder|addsloop:17:add1to31|w3~combout\ & \fd|PC|DOUT\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(18),
	datab => \fd|adder|addsloop:17:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(20),
	datad => \fd|PC|DOUT\(19),
	combout => \fd|adder|addsloop:20:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y43_N22
\fd|MuxPC|selected[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[20]~11_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:20:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:19:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder2|addsloop:19:add1to31|vaium~0_combout\,
	datac => \fd|beqAnd~combout\,
	datad => \fd|adder|addsloop:20:add1to31|soma~combout\,
	combout => \fd|MuxPC|selected[20]~11_combout\);

-- Location: FF_X55_Y43_N23
\fd|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(20));

-- Location: LCCOMB_X55_Y43_N24
\fd|adder|addsloop:20:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:20:add1to31|w3~combout\ = (\fd|PC|DOUT\(18) & (\fd|PC|DOUT\(19) & (\fd|PC|DOUT\(20) & \fd|adder|addsloop:17:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(18),
	datab => \fd|PC|DOUT\(19),
	datac => \fd|PC|DOUT\(20),
	datad => \fd|adder|addsloop:17:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:20:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y43_N18
\fd|adder|addsloop:21:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:21:add1to31|soma~combout\ = \fd|adder|addsloop:20:add1to31|w3~combout\ $ (\fd|PC|DOUT\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:20:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(21),
	combout => \fd|adder|addsloop:21:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y42_N10
\fd|adder|addsloop:18:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:18:add1to31|w3~combout\ = (\fd|PC|DOUT\(17) & (\fd|PC|DOUT\(16) & (\fd|adder|addsloop:15:add1to31|w3~combout\ & \fd|PC|DOUT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(17),
	datab => \fd|PC|DOUT\(16),
	datac => \fd|adder|addsloop:15:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(18),
	combout => \fd|adder|addsloop:18:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y43_N0
\fd|adder2|addsloop:20:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:20:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(20) & (\fd|adder2|addsloop:18:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(19) $ (\fd|adder|addsloop:18:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(20),
	datab => \fd|PC|DOUT\(19),
	datac => \fd|adder|addsloop:18:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:20:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y43_N26
\fd|adder2|addsloop:21:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:21:add1to31|soma~combout\ = \fd|PC|DOUT\(21) $ (\fd|adder|addsloop:20:add1to31|w3~combout\ $ (\fd|adder2|addsloop:20:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(21),
	datab => \fd|adder|addsloop:20:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:21:add1to31|soma~combout\);

-- Location: LCCOMB_X55_Y43_N12
\fd|PC|DOUT[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[21]~9_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:21:add1to31|soma~combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:21:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~combout\,
	datab => \fd|adder|addsloop:21:add1to31|soma~combout\,
	datad => \fd|adder2|addsloop:21:add1to31|soma~combout\,
	combout => \fd|PC|DOUT[21]~9_combout\);

-- Location: FF_X55_Y43_N13
\fd|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[21]~9_combout\,
	asdata => \fd|Rom|content~4_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(21));

-- Location: LCCOMB_X55_Y43_N20
\fd|adder|addsloop:21:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:21:add1to31|w3~combout\ = (\fd|PC|DOUT\(21) & (\fd|adder|addsloop:18:add1to31|w3~combout\ & (\fd|PC|DOUT\(20) & \fd|PC|DOUT\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(21),
	datab => \fd|adder|addsloop:18:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(20),
	datad => \fd|PC|DOUT\(19),
	combout => \fd|adder|addsloop:21:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y43_N10
\fd|adder|addsloop:19:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:19:add1to31|w3~combout\ = (\fd|PC|DOUT\(18) & (\fd|PC|DOUT\(19) & (\fd|PC|DOUT\(17) & \fd|adder|addsloop:16:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(18),
	datab => \fd|PC|DOUT\(19),
	datac => \fd|PC|DOUT\(17),
	datad => \fd|adder|addsloop:16:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:19:add1to31|w3~combout\);

-- Location: LCCOMB_X55_Y43_N28
\fd|adder2|addsloop:21:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:21:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(21) & (\fd|adder2|addsloop:19:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:19:add1to31|w3~combout\ $ (\fd|PC|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:19:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(21),
	datac => \fd|PC|DOUT\(20),
	datad => \fd|adder2|addsloop:19:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:21:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y43_N6
\fd|adder2|addsloop:22:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:22:add1to31|soma~combout\ = \fd|PC|DOUT\(22) $ (\fd|adder|addsloop:21:add1to31|w3~combout\ $ (\fd|adder2|addsloop:21:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(22),
	datac => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:21:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:22:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y43_N28
\fd|adder|addsloop:22:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:22:add1to31|soma~combout\ = \fd|PC|DOUT\(22) $ (((\fd|PC|DOUT\(21) & \fd|adder|addsloop:20:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(21),
	datab => \fd|PC|DOUT\(22),
	datad => \fd|adder|addsloop:20:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:22:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y43_N24
\fd|PC|DOUT[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[22]~10_combout\ = (\fd|beqAnd~combout\ & (\fd|adder2|addsloop:22:add1to31|soma~combout\)) # (!\fd|beqAnd~combout\ & ((\fd|adder|addsloop:22:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:22:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:22:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[22]~10_combout\);

-- Location: FF_X54_Y43_N25
\fd|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[22]~10_combout\,
	asdata => \fd|Rom|content~6_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(22));

-- Location: LCCOMB_X54_Y43_N12
\fd|adder|addsloop:23:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:23:add1to31|soma~combout\ = \fd|PC|DOUT\(23) $ (((\fd|PC|DOUT\(22) & (\fd|PC|DOUT\(21) & \fd|adder|addsloop:20:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|PC|DOUT\(21),
	datad => \fd|adder|addsloop:20:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:23:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y43_N14
\fd|adder2|addsloop:22:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:22:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(22) & (\fd|adder2|addsloop:20:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(21) $ (\fd|adder|addsloop:20:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(21),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|adder2|addsloop:20:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:20:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:22:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y43_N6
\fd|adder|addsloop:22:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:22:add1to31|w3~combout\ = (\fd|PC|DOUT\(21) & (\fd|PC|DOUT\(22) & (\fd|PC|DOUT\(20) & \fd|adder|addsloop:19:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(21),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|PC|DOUT\(20),
	datad => \fd|adder|addsloop:19:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:22:add1to31|w3~combout\);

-- Location: LCCOMB_X54_Y43_N20
\fd|adder2|addsloop:23:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:23:add1to31|soma~combout\ = \fd|PC|DOUT\(23) $ (\fd|adder2|addsloop:22:add1to31|vaium~0_combout\ $ (\fd|adder|addsloop:22:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datac => \fd|adder2|addsloop:22:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:22:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:23:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y43_N18
\fd|PC|DOUT[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[23]~11_combout\ = (\fd|beqAnd~combout\ & ((\fd|adder2|addsloop:23:add1to31|soma~combout\))) # (!\fd|beqAnd~combout\ & (\fd|adder|addsloop:23:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:23:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:23:add1to31|soma~combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|PC|DOUT[23]~11_combout\);

-- Location: FF_X54_Y43_N19
\fd|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[23]~11_combout\,
	asdata => \fd|Rom|content~9_combout\,
	sload => \ucfd|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(23));

-- Location: LCCOMB_X54_Y43_N2
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

-- Location: LCCOMB_X54_Y43_N4
\fd|adder|addsloop:24:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:24:add1to31|soma~combout\ = \fd|adder|addsloop:23:add1to31|w3~combout\ $ (\fd|PC|DOUT\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|adder|addsloop:23:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder|addsloop:24:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y43_N26
\fd|adder2|addsloop:23:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:23:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(23) & (\fd|adder2|addsloop:21:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(22) $ (\fd|adder|addsloop:21:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(22),
	datac => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:21:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:23:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y43_N0
\fd|MuxPC|selected[24]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[24]~12_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:24:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:23:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder|addsloop:24:add1to31|soma~combout\,
	datac => \fd|adder2|addsloop:23:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[24]~12_combout\);

-- Location: FF_X54_Y43_N1
\fd|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[24]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(24));

-- Location: LCCOMB_X54_Y43_N16
\fd|adder|addsloop:25:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:25:add1to31|soma~combout\ = \fd|PC|DOUT\(25) $ (((\fd|adder|addsloop:23:add1to31|w3~combout\ & \fd|PC|DOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(25),
	datac => \fd|adder|addsloop:23:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder|addsloop:25:add1to31|soma~combout\);

-- Location: LCCOMB_X54_Y43_N22
\fd|adder2|addsloop:24:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:24:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:22:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(24) & (\fd|adder|addsloop:22:add1to31|w3~combout\ $ (\fd|PC|DOUT\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:22:add1to31|w3~combout\,
	datab => \fd|adder2|addsloop:22:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(23),
	datad => \fd|PC|DOUT\(24),
	combout => \fd|adder2|addsloop:24:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y43_N10
\fd|MuxPC|selected[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[25]~13_combout\ = (!\ucfd|Equal4~0_combout\ & (\fd|adder|addsloop:25:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:24:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal4~0_combout\,
	datab => \fd|adder|addsloop:25:add1to31|soma~combout\,
	datac => \fd|adder2|addsloop:24:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[25]~13_combout\);

-- Location: FF_X54_Y43_N11
\fd|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(25));

-- Location: LCCOMB_X54_Y43_N8
\fd|adder|addsloop:25:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:25:add1to31|w3~combout\ = (\fd|PC|DOUT\(23) & (\fd|PC|DOUT\(25) & (\fd|PC|DOUT\(24) & \fd|adder|addsloop:22:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(25),
	datac => \fd|PC|DOUT\(24),
	datad => \fd|adder|addsloop:22:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:25:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y43_N20
\fd|adder2|addsloop:25:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:25:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(25) & (\fd|adder2|addsloop:23:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(24) $ (\fd|adder|addsloop:23:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(24),
	datab => \fd|adder|addsloop:23:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(25),
	datad => \fd|adder2|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:25:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y43_N16
\fd|MuxPC|selected[26]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[26]~14_combout\ = \fd|adder|addsloop:25:add1to31|w3~combout\ $ (\fd|PC|DOUT\(26) $ (((\fd|adder2|addsloop:25:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:25:add1to31|w3~combout\,
	datab => \fd|adder2|addsloop:25:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(26),
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[26]~14_combout\);

-- Location: FF_X53_Y43_N17
\fd|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(26));

-- Location: LCCOMB_X53_Y43_N28
\fd|adder|addsloop:26:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:26:add1to31|w3~combout\ = (\fd|PC|DOUT\(24) & (\fd|PC|DOUT\(26) & (\fd|PC|DOUT\(25) & \fd|adder|addsloop:23:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(24),
	datab => \fd|PC|DOUT\(26),
	datac => \fd|PC|DOUT\(25),
	datad => \fd|adder|addsloop:23:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:26:add1to31|w3~combout\);

-- Location: LCCOMB_X54_Y43_N30
\fd|adder|addsloop:24:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:24:add1to31|w3~combout\ = (\fd|PC|DOUT\(23) & (\fd|PC|DOUT\(24) & (\fd|adder|addsloop:21:add1to31|w3~combout\ & \fd|PC|DOUT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(23),
	datab => \fd|PC|DOUT\(24),
	datac => \fd|adder|addsloop:21:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(22),
	combout => \fd|adder|addsloop:24:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y43_N14
\fd|adder2|addsloop:26:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:26:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(26) & (\fd|adder2|addsloop:24:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:24:add1to31|w3~combout\ $ (\fd|PC|DOUT\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:24:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(26),
	datac => \fd|PC|DOUT\(25),
	datad => \fd|adder2|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:26:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y43_N26
\fd|MuxPC|selected[27]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[27]~15_combout\ = \fd|adder|addsloop:26:add1to31|w3~combout\ $ (\fd|PC|DOUT\(27) $ (((\fd|adder2|addsloop:26:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:26:add1to31|w3~combout\,
	datab => \fd|adder2|addsloop:26:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(27),
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[27]~15_combout\);

-- Location: FF_X53_Y43_N27
\fd|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[27]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(27));

-- Location: LCCOMB_X53_Y43_N8
\fd|adder|addsloop:27:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:27:add1to31|w3~combout\ = (\fd|PC|DOUT\(27) & (\fd|PC|DOUT\(25) & (\fd|adder|addsloop:24:add1to31|w3~combout\ & \fd|PC|DOUT\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(25),
	datac => \fd|adder|addsloop:24:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(26),
	combout => \fd|adder|addsloop:27:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y43_N18
\fd|adder2|addsloop:27:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:27:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(27) & (\fd|adder2|addsloop:25:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(26) $ (\fd|adder|addsloop:25:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(26),
	datac => \fd|adder|addsloop:25:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:27:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y43_N24
\fd|MuxPC|selected[28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[28]~16_combout\ = \fd|adder|addsloop:27:add1to31|w3~combout\ $ (\fd|PC|DOUT\(28) $ (((\fd|adder2|addsloop:27:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:27:add1to31|w3~combout\,
	datab => \fd|adder2|addsloop:27:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(28),
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[28]~16_combout\);

-- Location: FF_X53_Y43_N25
\fd|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(28));

-- Location: LCCOMB_X53_Y43_N22
\fd|adder2|addsloop:28:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:28:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(28) & (\fd|adder2|addsloop:26:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(27) $ (\fd|adder|addsloop:26:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(28),
	datac => \fd|adder2|addsloop:26:add1to31|vaium~0_combout\,
	datad => \fd|adder|addsloop:26:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:28:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y43_N4
\fd|adder|addsloop:28:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:28:add1to31|w3~combout\ = (\fd|PC|DOUT\(28) & (\fd|PC|DOUT\(27) & \fd|adder|addsloop:26:add1to31|w3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(28),
	datac => \fd|PC|DOUT\(27),
	datad => \fd|adder|addsloop:26:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:28:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y43_N30
\fd|MuxPC|selected[29]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[29]~17_combout\ = \fd|adder|addsloop:28:add1to31|w3~combout\ $ (\fd|PC|DOUT\(29) $ (((\fd|adder2|addsloop:28:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:28:add1to31|vaium~0_combout\,
	datab => \fd|adder|addsloop:28:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(29),
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[29]~17_combout\);

-- Location: FF_X53_Y43_N31
\fd|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[29]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(29));

-- Location: LCCOMB_X53_Y43_N12
\fd|adder|addsloop:29:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:29:add1to31|w3~combout\ = (\fd|PC|DOUT\(27) & (\fd|PC|DOUT\(28) & (\fd|PC|DOUT\(29) & \fd|adder|addsloop:26:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(27),
	datab => \fd|PC|DOUT\(28),
	datac => \fd|PC|DOUT\(29),
	datad => \fd|adder|addsloop:26:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:29:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y43_N2
\fd|adder2|addsloop:29:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:29:add1to31|vaium~0_combout\ = (\fd|PC|DOUT\(29) & (\fd|adder2|addsloop:27:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(28) $ (\fd|adder|addsloop:27:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(29),
	datab => \fd|PC|DOUT\(28),
	datac => \fd|adder|addsloop:27:add1to31|w3~combout\,
	datad => \fd|adder2|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:29:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y43_N0
\fd|MuxPC|selected[30]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[30]~18_combout\ = \fd|adder|addsloop:29:add1to31|w3~combout\ $ (\fd|PC|DOUT\(30) $ (((\fd|adder2|addsloop:29:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:29:add1to31|w3~combout\,
	datab => \fd|adder2|addsloop:29:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(30),
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[30]~18_combout\);

-- Location: FF_X53_Y43_N1
\fd|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[30]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(30));

-- Location: LCCOMB_X53_Y43_N6
\fd|MuxPC|selected[31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[31]~19_combout\ = (\fd|PC|DOUT\(29) & ((\fd|adder|addsloop:28:add1to31|w3~combout\) # ((\fd|adder2|addsloop:28:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))) # (!\fd|PC|DOUT\(29) & (\fd|adder|addsloop:28:add1to31|w3~combout\ & 
-- (\fd|adder2|addsloop:28:add1to31|vaium~0_combout\ & \fd|beqAnd~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(29),
	datab => \fd|adder|addsloop:28:add1to31|w3~combout\,
	datac => \fd|adder2|addsloop:28:add1to31|vaium~0_combout\,
	datad => \fd|beqAnd~combout\,
	combout => \fd|MuxPC|selected[31]~19_combout\);

-- Location: LCCOMB_X53_Y43_N10
\fd|MuxPC|selected[31]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[31]~20_combout\ = \fd|PC|DOUT\(31) $ (((\fd|PC|DOUT\(30) & \fd|MuxPC|selected[31]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(30),
	datac => \fd|PC|DOUT\(31),
	datad => \fd|MuxPC|selected[31]~19_combout\,
	combout => \fd|MuxPC|selected[31]~20_combout\);

-- Location: FF_X53_Y43_N11
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

-- Location: LCCOMB_X50_Y40_N22
\fd|MuxSaidaBankRegister|selected[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~45_combout\ = (\fd|MuxSaidaBankRegister|selected[0]~43_combout\) # ((\fd|MuxSaidaBankRegister|selected[0]~41_combout\ & (!\fd|Rom|content~12_combout\ & !\ucfd|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~41_combout\,
	datab => \fd|Rom|content~12_combout\,
	datac => \ucfd|Equal1~1_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[0]~43_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~45_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

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

ww_overflow <= \overflow~output_o\;

ww_resultadoSoma(0) <= \resultadoSoma[0]~output_o\;

ww_resultadoSoma(1) <= \resultadoSoma[1]~output_o\;

ww_resultadoSoma(2) <= \resultadoSoma[2]~output_o\;

ww_resultadoSoma(3) <= \resultadoSoma[3]~output_o\;

ww_resultadoSoma(4) <= \resultadoSoma[4]~output_o\;

ww_resultadoSoma(5) <= \resultadoSoma[5]~output_o\;

ww_resultadoSoma(6) <= \resultadoSoma[6]~output_o\;

ww_resultadoSoma(7) <= \resultadoSoma[7]~output_o\;

ww_resultadoSoma(8) <= \resultadoSoma[8]~output_o\;

ww_resultadoSoma(9) <= \resultadoSoma[9]~output_o\;

ww_resultadoSoma(10) <= \resultadoSoma[10]~output_o\;

ww_resultadoSoma(11) <= \resultadoSoma[11]~output_o\;

ww_resultadoSoma(12) <= \resultadoSoma[12]~output_o\;

ww_resultadoSoma(13) <= \resultadoSoma[13]~output_o\;

ww_resultadoSoma(14) <= \resultadoSoma[14]~output_o\;

ww_resultadoSoma(15) <= \resultadoSoma[15]~output_o\;

ww_resultadoSoma(16) <= \resultadoSoma[16]~output_o\;

ww_resultadoSoma(17) <= \resultadoSoma[17]~output_o\;

ww_resultadoSoma(18) <= \resultadoSoma[18]~output_o\;

ww_resultadoSoma(19) <= \resultadoSoma[19]~output_o\;

ww_resultadoSoma(20) <= \resultadoSoma[20]~output_o\;

ww_resultadoSoma(21) <= \resultadoSoma[21]~output_o\;

ww_resultadoSoma(22) <= \resultadoSoma[22]~output_o\;

ww_resultadoSoma(23) <= \resultadoSoma[23]~output_o\;

ww_resultadoSoma(24) <= \resultadoSoma[24]~output_o\;

ww_resultadoSoma(25) <= \resultadoSoma[25]~output_o\;

ww_resultadoSoma(26) <= \resultadoSoma[26]~output_o\;

ww_resultadoSoma(27) <= \resultadoSoma[27]~output_o\;

ww_resultadoSoma(28) <= \resultadoSoma[28]~output_o\;

ww_resultadoSoma(29) <= \resultadoSoma[29]~output_o\;

ww_resultadoSoma(30) <= \resultadoSoma[30]~output_o\;

ww_resultadoSoma(31) <= \resultadoSoma[31]~output_o\;

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

ww_mux_beq <= \mux_beq~output_o\;

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

ww_testeOutRam(0) <= \testeOutRam[0]~output_o\;

ww_testeOutRam(1) <= \testeOutRam[1]~output_o\;

ww_testeOutRam(2) <= \testeOutRam[2]~output_o\;

ww_testeOutRam(3) <= \testeOutRam[3]~output_o\;

ww_testeOutRam(4) <= \testeOutRam[4]~output_o\;

ww_testeOutRam(5) <= \testeOutRam[5]~output_o\;

ww_testeOutRam(6) <= \testeOutRam[6]~output_o\;

ww_testeOutRam(7) <= \testeOutRam[7]~output_o\;

ww_testeOutRam(8) <= \testeOutRam[8]~output_o\;

ww_testeOutRam(9) <= \testeOutRam[9]~output_o\;

ww_testeOutRam(10) <= \testeOutRam[10]~output_o\;

ww_testeOutRam(11) <= \testeOutRam[11]~output_o\;

ww_testeOutRam(12) <= \testeOutRam[12]~output_o\;

ww_testeOutRam(13) <= \testeOutRam[13]~output_o\;

ww_testeOutRam(14) <= \testeOutRam[14]~output_o\;

ww_testeOutRam(15) <= \testeOutRam[15]~output_o\;

ww_testeOutRam(16) <= \testeOutRam[16]~output_o\;

ww_testeOutRam(17) <= \testeOutRam[17]~output_o\;

ww_testeOutRam(18) <= \testeOutRam[18]~output_o\;

ww_testeOutRam(19) <= \testeOutRam[19]~output_o\;

ww_testeOutRam(20) <= \testeOutRam[20]~output_o\;

ww_testeOutRam(21) <= \testeOutRam[21]~output_o\;

ww_testeOutRam(22) <= \testeOutRam[22]~output_o\;

ww_testeOutRam(23) <= \testeOutRam[23]~output_o\;

ww_testeOutRam(24) <= \testeOutRam[24]~output_o\;

ww_testeOutRam(25) <= \testeOutRam[25]~output_o\;

ww_testeOutRam(26) <= \testeOutRam[26]~output_o\;

ww_testeOutRam(27) <= \testeOutRam[27]~output_o\;

ww_testeOutRam(28) <= \testeOutRam[28]~output_o\;

ww_testeOutRam(29) <= \testeOutRam[29]~output_o\;

ww_testeOutRam(30) <= \testeOutRam[30]~output_o\;

ww_testeOutRam(31) <= \testeOutRam[31]~output_o\;
END structure;


