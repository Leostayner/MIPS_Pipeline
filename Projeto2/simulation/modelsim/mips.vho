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

-- DATE "10/25/2018 18:39:26"

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
	otR7 : OUT std_logic_vector(31 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- otR1[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[7]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[8]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[9]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[10]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[11]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[12]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[13]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[14]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[17]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[18]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[19]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[20]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[21]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[22]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[23]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[24]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[25]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[27]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[28]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[29]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR1[31]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[0]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[1]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[6]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[7]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[8]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[9]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[10]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[11]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[12]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[15]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[16]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[17]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[18]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[19]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[20]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[21]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[22]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[23]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[24]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[25]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[26]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[27]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[28]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[29]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[30]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR2[31]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[3]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[8]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[9]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[10]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[12]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[14]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[15]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[16]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[17]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[18]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[19]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[20]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[21]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[22]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[24]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[25]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[26]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[27]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[28]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[30]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR3[31]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[0]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[8]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[9]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[10]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[12]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[15]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[16]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[18]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[19]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[20]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[21]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[22]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[23]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[24]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[25]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[26]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[27]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[28]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[29]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[30]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR4[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[1]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[6]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[7]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[9]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[11]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[12]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[16]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[17]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[18]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[19]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[20]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[21]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[22]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[24]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[25]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[27]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[28]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[30]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR5[31]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[1]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[5]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[6]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[7]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[8]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[10]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[15]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[16]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[17]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[18]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[19]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[20]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[22]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[23]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[24]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[25]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[26]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[27]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[28]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[29]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[30]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR6[31]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[6]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[7]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[8]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[13]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[15]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[16]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[17]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[18]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[19]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[20]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[21]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[22]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[24]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[25]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[26]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[27]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[28]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[29]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[30]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- otR7[31]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd|adder|addsloop:3:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|Rom|Equal6~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr2~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr2~1_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr8~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:4:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|Rom|WideOr0~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr10~combout\ : std_logic;
SIGNAL \fd|Rom|WideOr1~0_combout\ : std_logic;
SIGNAL \fd|Rom|Equal5~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr12~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:3:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:4:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|Rom|q~0_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[9]~72_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \ucfd|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr7~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr7~combout\ : std_logic;
SIGNAL \fd|Rom|WideOr3~combout\ : std_logic;
SIGNAL \ucfd|Equal1~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr6~combout\ : std_logic;
SIGNAL \fd|Rom|q[12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr5~combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr4~combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|Equal0~1_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr2~combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|Equal0~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|Equal0~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[9]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr9~combout\ : std_logic;
SIGNAL \fd|UCalu|Equal2~0_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~4_combout\ : std_logic;
SIGNAL \fd|UCalu|Equal3~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[3]~1_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~6_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~5_combout\ : std_logic;
SIGNAL \fd|beqAnd~0_combout\ : std_logic;
SIGNAL \fd|UCalu|output[2]~2_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~2_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~3_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~1_combout\ : std_logic;
SIGNAL \fd|UCalu|comb~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|Equal0~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|Equal0~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|Equal0~1_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|Equal0~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~96_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~97_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~98_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[8]~99_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[8]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~102_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~103_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~100_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[7]~101_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[7]~29_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~126_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~127_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~124_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[1]~125_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[1]~38_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[1]~39_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~3_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[0]~1_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[0]~1_combout\ : std_logic;
SIGNAL \fd|ALU|adder|a0|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[1]~123_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[1]~124_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[1]~64_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[1]~31_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~120_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~121_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~122_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[2]~123_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[2]~36_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[2]~37_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[2]~121_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[2]~122_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[2]~65_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[2]~30_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~118_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~119_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~116_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[3]~117_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[3]~34_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[3]~35_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[3]~119_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[3]~120_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[3]~66_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[3]~29_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[4]~117_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[4]~28_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[4]~118_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[4]~67_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~112_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~113_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~114_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[4]~115_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[4]~33_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~108_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~109_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~110_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[5]~111_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[5]~31_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[5]~32_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[5]~115_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[5]~116_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[5]~68_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[5]~27_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~104_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~105_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~106_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[6]~107_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[6]~30_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[6]~113_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[6]~114_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[6]~69_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[6]~26_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[7]~111_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[7]~112_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[7]~70_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[7]~25_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[8]~109_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[8]~110_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[8]~71_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[8]~24_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~92_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~93_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~94_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[9]~95_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[9]~27_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[9]~107_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[9]~108_combout\ : std_logic;
SIGNAL \fd|beqAnd~2_combout\ : std_logic;
SIGNAL \fd|beqAnd~1_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[13]~76_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[13]~19_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[13]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~76_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~77_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~78_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[13]~79_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[13]~20_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[13]~21_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~82_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~83_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[12]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~80_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[12]~81_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[12]~22_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[12]~23_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~90_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~91_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~88_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[10]~89_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[10]~26_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[10]~105_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[10]~106_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[10]~73_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[10]~22_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~84_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~85_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~86_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[11]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[11]~87_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[11]~24_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[11]~25_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[11]~103_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[11]~104_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[11]~74_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[11]~21_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[12]~101_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[12]~102_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[12]~75_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[12]~20_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[13]~99_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[13]~100_combout\ : std_logic;
SIGNAL \fd|beqAnd~3_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[16]~79_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[16]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~70_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~71_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~68_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[15]~69_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[15]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~72_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~73_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~74_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[14]~75_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[14]~19_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[14]~97_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[14]~98_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[14]~77_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[14]~18_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[15]~95_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[15]~96_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[15]~78_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[15]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[15]~17_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[16]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~64_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~65_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~66_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[16]~67_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[16]~17_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[16]~93_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[16]~94_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[17]~80_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[17]~15_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~62_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~63_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to6|DOUT[17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[17]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~60_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[17]~61_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[17]~16_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[17]~91_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[17]~92_combout\ : std_logic;
SIGNAL \fd|beqAnd~4_combout\ : std_logic;
SIGNAL \fd|beqAnd~5_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[24]~87_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[24]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~34_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~35_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[24]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~32_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[24]~33_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[24]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[23]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~42_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~43_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~40_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[22]~41_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[22]~11_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[21]~11_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[20]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[20]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[19]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~58_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~59_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[18]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~56_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to8|DOUT[18]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[18]~57_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[18]~15_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[18]~89_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[18]~90_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[18]~81_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[18]~14_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[19]~87_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[19]~88_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[19]~82_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~52_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~53_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~54_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[19]~55_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[19]~14_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[20]~85_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[20]~86_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[20]~83_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[20]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~48_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~49_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~50_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[20]~51_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[20]~13_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[21]~83_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[21]~84_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[21]~84_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~44_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~45_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~46_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[21]~47_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[21]~12_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[22]~81_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[22]~82_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[22]~85_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[22]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[22]~10_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[23]~79_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[23]~80_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[23]~86_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~38_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~39_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~36_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[23]~37_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[23]~10_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[24]~77_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[24]~78_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[25]~88_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[25]~7_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~30_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~31_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[25]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~28_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[25]~29_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[25]~8_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[25]~75_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[25]~76_combout\ : std_logic;
SIGNAL \fd|beqAnd~7_combout\ : std_logic;
SIGNAL \fd|beqAnd~6_combout\ : std_logic;
SIGNAL \fd|beqAnd~8_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[27]~90_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[27]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[27]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[27]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[26]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[26]~6_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[26]~73_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[26]~74_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[26]~89_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[26]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~26_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~27_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[26]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~24_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[26]~25_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[26]~7_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~22_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~23_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[27]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~20_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[27]~21_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[27]~6_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[27]~71_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[27]~72_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[29]~92_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[29]~3_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[29]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~12_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~13_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~14_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[29]~15_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[29]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~16_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~17_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~18_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[28]~19_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[28]~5_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[28]~69_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[28]~70_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[28]~91_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[28]~4_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[29]~67_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[29]~68_combout\ : std_logic;
SIGNAL \fd|beqAnd~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~4_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~5_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~6_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[31]~7_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[31]~2_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to7|DOUT[30]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~8_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~9_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~10_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxB|selected[30]~11_combout\ : std_logic;
SIGNAL \fd|MuxSaidaBankRegister|selected[30]~3_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[30]~65_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[30]~66_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[30]~93_combout\ : std_logic;
SIGNAL \fd|BankRegister|add1to3|DOUT[30]~feeder_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[30]~2_combout\ : std_logic;
SIGNAL \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~63_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~64_combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[31]~62_combout\ : std_logic;
SIGNAL \fd|BankRegister|muxA|selected[31]~1_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[31]~62_combout\ : std_logic;
SIGNAL \fd|beqAnd~10_combout\ : std_logic;
SIGNAL \fd|ALU|adder|a0|soma~0_combout\ : std_logic;
SIGNAL \fd|ALU|choiceB|selected[0]~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[0]~60_combout\ : std_logic;
SIGNAL \fd|ALU|out4[0]~0_combout\ : std_logic;
SIGNAL \fd|ALU|final|selected[0]~61_combout\ : std_logic;
SIGNAL \fd|beqAnd~11_combout\ : std_logic;
SIGNAL \fd|beqAnd~12_combout\ : std_logic;
SIGNAL \fd|PC|DOUT[4]~5_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:6:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[6]~3_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:6:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:4:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:7:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:7:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[7]~2_combout\ : std_logic;
SIGNAL \fd|Rom|Equal0~2_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:7:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:8:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:10:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[10]~5_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:10:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:10:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:11:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[11]~4_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:11:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:12:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[12]~3_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:13:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:13:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[13]~2_combout\ : std_logic;
SIGNAL \fd|Rom|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Rom|Equal8~0_combout\ : std_logic;
SIGNAL \fd|Rom|Equal8~1_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr11~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr11~1_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:3:add1to31|soma~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[3]~7_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:3:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:5:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:4:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:5:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[5]~4_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:7:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[8]~6_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:9:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:9:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[9]~1_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:10:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder|addsloop:13:add1to31|w3~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:13:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[14]~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[14]~1_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:15:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ : std_logic;
SIGNAL \fd|adder2|addsloop:15:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|PC|DOUT[15]~0_combout\ : std_logic;
SIGNAL \fd|Rom|Equal0~1_combout\ : std_logic;
SIGNAL \fd|Rom|Equal0~3_combout\ : std_logic;
SIGNAL \fd|Rom|Equal7~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[0]~10_combout\ : std_logic;
SIGNAL \fd|adder|addsloop:2:add1to31|soma~combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[2]~9_combout\ : std_logic;
SIGNAL \fd|Rom|Equal0~4_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr0~combout\ : std_logic;
SIGNAL \ucfd|Mux1~0_combout\ : std_logic;
SIGNAL \fd|MuxPC|selected[1]~8_combout\ : std_logic;
SIGNAL \fd|Rom|Equal1~0_combout\ : std_logic;
SIGNAL \fd|Rom|WideOr1~combout\ : std_logic;
SIGNAL \fd|MuxRegRam|selected[0]~63_combout\ : std_logic;
SIGNAL \fd|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to5|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to1|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to6|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to2|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to3|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|Rom|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to7|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to4|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|add1to8|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|BankRegister|muxA|selected\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd|UCalu|output\ : std_logic_vector(3 DOWNTO 0);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y52_N2
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

-- Location: IOOBUF_X115_Y42_N16
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X91_Y73_N16
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

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X85_Y73_N9
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

-- Location: IOOBUF_X0_Y52_N16
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X0_Y54_N9
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X25_Y73_N16
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N2
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

-- Location: IOOBUF_X0_Y53_N9
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X115_Y36_N2
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

-- Location: IOOBUF_X40_Y73_N2
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

-- Location: IOOBUF_X0_Y53_N2
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

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: IOOBUF_X49_Y0_N23
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

-- Location: IOOBUF_X0_Y46_N23
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

-- Location: IOOBUF_X115_Y45_N16
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

-- Location: IOOBUF_X115_Y44_N9
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X0_Y44_N23
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

-- Location: IOOBUF_X115_Y40_N2
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: IOOBUF_X115_Y46_N2
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

-- Location: IOOBUF_X60_Y0_N16
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

-- Location: IOOBUF_X87_Y73_N2
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

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N16
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X13_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N16
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X11_Y73_N2
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

-- Location: IOOBUF_X35_Y73_N23
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X38_Y73_N9
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X20_Y73_N2
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X115_Y45_N23
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

-- Location: IOOBUF_X87_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X115_Y44_N2
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X115_Y51_N2
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

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X9_Y73_N9
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

-- Location: IOOBUF_X33_Y73_N9
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

-- Location: IOOBUF_X115_Y52_N9
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X27_Y73_N9
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

-- Location: IOOBUF_X0_Y51_N16
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

-- Location: IOOBUF_X47_Y73_N16
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X29_Y73_N2
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

-- Location: IOOBUF_X0_Y47_N16
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X81_Y73_N2
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N23
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X115_Y41_N9
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X81_Y73_N16
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

-- Location: IOOBUF_X115_Y52_N2
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X102_Y73_N9
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

-- Location: IOOBUF_X85_Y73_N2
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

-- Location: IOOBUF_X0_Y47_N2
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

-- Location: IOOBUF_X0_Y50_N23
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X33_Y73_N2
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

-- Location: IOOBUF_X115_Y57_N16
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X0_Y52_N23
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

-- Location: IOOBUF_X0_Y47_N23
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

-- Location: IOOBUF_X40_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N23
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y40_N9
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

-- Location: IOOBUF_X81_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N9
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X16_Y73_N23
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

-- Location: IOOBUF_X20_Y73_N16
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

-- Location: IOOBUF_X47_Y0_N9
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X0_Y45_N16
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

-- Location: IOOBUF_X23_Y73_N23
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X54_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X35_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOOBUF_X105_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X0_Y45_N23
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X52_Y0_N9
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

-- Location: IOOBUF_X52_Y0_N16
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

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X115_Y53_N16
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X47_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N23
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X85_Y73_N16
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X85_Y73_N23
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N16
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

-- Location: IOOBUF_X58_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X47_Y73_N2
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

-- Location: IOOBUF_X0_Y49_N9
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

-- Location: IOOBUF_X20_Y73_N23
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X23_Y73_N9
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X23_Y73_N16
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

-- Location: IOOBUF_X0_Y43_N16
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

-- Location: IOOBUF_X25_Y73_N23
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

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X20_Y73_N9
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

-- Location: IOOBUF_X0_Y50_N16
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X42_Y0_N23
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

-- Location: IOOBUF_X45_Y0_N16
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X38_Y73_N2
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

-- Location: IOOBUF_X0_Y48_N2
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

-- Location: IOOBUF_X0_Y48_N9
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X16_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X115_Y49_N2
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOOBUF_X105_Y73_N2
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X38_Y73_N23
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

-- Location: IOOBUF_X0_Y42_N9
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

-- Location: IOOBUF_X0_Y44_N16
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

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X0_Y49_N2
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

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X27_Y73_N23
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

-- Location: IOOBUF_X0_Y46_N16
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

-- Location: LCCOMB_X58_Y48_N12
\fd|adder|addsloop:3:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:3:add1to31|soma~combout\ = \fd|PC|DOUT\(3) $ (((\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(2) & \fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|adder|addsloop:3:add1to31|soma~combout\);

-- Location: LCCOMB_X58_Y47_N22
\fd|Rom|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal6~0_combout\ = (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) & (\fd|Rom|Equal0~3_combout\ & !\fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|Equal6~0_combout\);

-- Location: LCCOMB_X58_Y47_N20
\fd|Rom|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr2~0_combout\ = (\fd|PC|DOUT\(2) $ (!\fd|PC|DOUT\(1))) # (!\fd|Rom|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal0~3_combout\,
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|WideOr2~0_combout\);

-- Location: LCCOMB_X58_Y47_N18
\fd|Rom|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr2~1_combout\ = (\fd|Rom|WideOr2~0_combout\ & (((\fd|PC|DOUT\(0)) # (!\fd|Rom|Equal8~1_combout\)) # (!\fd|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|Equal8~1_combout\,
	datad => \fd|Rom|WideOr2~0_combout\,
	combout => \fd|Rom|WideOr2~1_combout\);

-- Location: LCCOMB_X58_Y47_N24
\fd|Rom|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr8~combout\ = (\fd|Rom|Equal6~0_combout\) # (!\fd|Rom|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal6~0_combout\,
	datad => \fd|Rom|WideOr2~1_combout\,
	combout => \fd|Rom|WideOr8~combout\);

-- Location: FF_X58_Y47_N25
\fd|Rom|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(5));

-- Location: LCCOMB_X59_Y48_N10
\fd|adder|addsloop:4:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:4:add1to31|soma~combout\ = \fd|adder|addsloop:3:add1to31|w3~combout\ $ (\fd|PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(4),
	combout => \fd|adder|addsloop:4:add1to31|soma~combout\);

-- Location: LCCOMB_X58_Y47_N14
\fd|Rom|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr0~0_combout\ = (!\fd|Rom|Equal1~0_combout\ & (((\fd|PC|DOUT\(0)) # (\fd|PC|DOUT\(1))) # (!\fd|Rom|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal8~1_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|Equal1~0_combout\,
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|WideOr0~0_combout\);

-- Location: LCCOMB_X58_Y47_N28
\fd|Rom|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr10~combout\ = ((\fd|Rom|Equal0~3_combout\ & (\fd|PC|DOUT\(2) & !\fd|PC|DOUT\(1)))) # (!\fd|Rom|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal0~3_combout\,
	datab => \fd|Rom|WideOr0~0_combout\,
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|WideOr10~combout\);

-- Location: FF_X57_Y45_N19
\fd|Rom|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|WideOr10~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(2));

-- Location: LCCOMB_X58_Y47_N8
\fd|Rom|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr1~0_combout\ = (!\fd|Rom|Equal0~4_combout\ & (((!\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))) # (!\fd|Rom|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal8~1_combout\,
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|Equal0~4_combout\,
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|WideOr1~0_combout\);

-- Location: LCCOMB_X58_Y47_N16
\fd|Rom|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal5~0_combout\ = (!\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) & \fd|PC|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|Equal5~0_combout\);

-- Location: LCCOMB_X58_Y47_N12
\fd|Rom|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr12~combout\ = (\fd|Rom|Equal7~0_combout\) # (((\fd|Rom|Equal0~3_combout\ & \fd|Rom|Equal5~0_combout\)) # (!\fd|Rom|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal7~0_combout\,
	datab => \fd|Rom|WideOr1~0_combout\,
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|Rom|Equal5~0_combout\,
	combout => \fd|Rom|WideOr12~combout\);

-- Location: FF_X57_Y45_N7
\fd|Rom|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|WideOr12~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(0));

-- Location: LCCOMB_X59_Y48_N24
\fd|adder2|addsloop:3:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:3:add1to31|vaium~0_combout\ = (\fd|adder|addsloop:3:add1to31|soma~combout\ & ((\fd|Rom|q\(1)) # ((\fd|Rom|q\(0) & \fd|adder|addsloop:2:add1to31|soma~combout\)))) # (!\fd|adder|addsloop:3:add1to31|soma~combout\ & (\fd|Rom|q\(1) & 
-- (\fd|Rom|q\(0) & \fd|adder|addsloop:2:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datab => \fd|Rom|q\(1),
	datac => \fd|Rom|q\(0),
	datad => \fd|adder|addsloop:2:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y48_N20
\fd|adder2|addsloop:4:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:4:add1to31|soma~combout\ = \fd|adder|addsloop:3:add1to31|w3~combout\ $ (\fd|Rom|q\(2) $ (\fd|PC|DOUT\(4) $ (\fd|adder2|addsloop:3:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|w3~combout\,
	datab => \fd|Rom|q\(2),
	datac => \fd|PC|DOUT\(4),
	datad => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:4:add1to31|soma~combout\);

-- Location: LCCOMB_X58_Y47_N0
\fd|Rom|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|q~0_combout\ = (\fd|Rom|Equal0~3_combout\ & (\fd|PC|DOUT\(2) & \fd|PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal0~3_combout\,
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|q~0_combout\);

-- Location: FF_X58_Y45_N5
\fd|Rom|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(22));

-- Location: LCCOMB_X55_Y48_N16
\fd|MuxRegRam|selected[9]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[9]~72_combout\ = (\fd|ALU|final|selected[9]~108_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(28),
	datac => \fd|ALU|final|selected[9]~108_combout\,
	datad => \fd|Rom|q\(31),
	combout => \fd|MuxRegRam|selected[9]~72_combout\);

-- Location: LCCOMB_X57_Y47_N0
\fd|BankRegister|add1to4|DOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[9]~72_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[9]~feeder_combout\);

-- Location: LCCOMB_X57_Y47_N30
\ucfd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal0~0_combout\ = (!\fd|Rom|q\(28) & (!\fd|Rom|q\(27) & !\fd|Rom|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datad => \fd|Rom|q\(31),
	combout => \ucfd|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y48_N8
\fd|Rom|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr7~0_combout\ = (!\fd|PC|DOUT\(0) & (\fd|Rom|Equal0~3_combout\ & ((\fd|PC|DOUT\(1)) # (\fd|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(2),
	combout => \fd|Rom|WideOr7~0_combout\);

-- Location: LCCOMB_X58_Y48_N0
\fd|Rom|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr7~combout\ = (\fd|Rom|WideOr7~0_combout\) # ((!\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(1) & \fd|Rom|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|Rom|WideOr7~0_combout\,
	datad => \fd|Rom|Equal8~1_combout\,
	combout => \fd|Rom|WideOr7~combout\);

-- Location: FF_X58_Y48_N1
\fd|Rom|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(11));

-- Location: LCCOMB_X57_Y45_N0
\fd|Rom|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr3~combout\ = (\fd|Rom|Equal0~4_combout\) # (!\fd|Rom|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Rom|Equal0~4_combout\,
	datad => \fd|Rom|WideOr2~1_combout\,
	combout => \fd|Rom|WideOr3~combout\);

-- Location: FF_X57_Y45_N1
\fd|Rom|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(17));

-- Location: LCCOMB_X57_Y45_N6
\ucfd|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Equal1~0_combout\ = (\fd|Rom|q\(31) & (!\fd|Rom|q\(28) & \fd|Rom|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(28),
	datad => \fd|Rom|q\(27),
	combout => \ucfd|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y48_N2
\fd|Rom|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr6~combout\ = (\fd|Rom|Equal0~3_combout\ & ((\fd|PC|DOUT\(0) & (!\fd|PC|DOUT\(1) & \fd|PC|DOUT\(2))) # (!\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(2),
	combout => \fd|Rom|WideOr6~combout\);

-- Location: LCCOMB_X57_Y48_N10
\fd|Rom|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|q[12]~feeder_combout\ = \fd|Rom|WideOr6~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|Rom|WideOr6~combout\,
	combout => \fd|Rom|q[12]~feeder_combout\);

-- Location: FF_X57_Y48_N11
\fd|Rom|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|q[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(12));

-- Location: LCCOMB_X59_Y46_N6
\fd|BankRegister|add1to8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|Equal0~0_combout\ = (\ucfd|Equal0~0_combout\ & (((\fd|Rom|q\(12))))) # (!\ucfd|Equal0~0_combout\ & (\fd|Rom|q\(17) & (\ucfd|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(17),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|Rom|q\(12),
	combout => \fd|BankRegister|add1to8|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y48_N26
\fd|Rom|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr5~combout\ = (\fd|Rom|Equal0~3_combout\ & (\fd|PC|DOUT\(2) $ (((\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(1),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(2),
	combout => \fd|Rom|WideOr5~combout\);

-- Location: FF_X58_Y48_N27
\fd|Rom|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(13));

-- Location: LCCOMB_X58_Y46_N26
\fd|BankRegister|add1to4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|Equal0~0_combout\ = (\fd|BankRegister|add1to8|Equal0~0_combout\ & (!\fd|Rom|q\(28) & ((!\ucfd|Equal0~0_combout\) # (!\fd|Rom|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|Equal0~0_combout\,
	datab => \fd|Rom|q\(13),
	datac => \fd|Rom|q\(28),
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|BankRegister|add1to4|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y45_N28
\fd|Rom|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr4~combout\ = (\fd|Rom|Equal6~0_combout\) # (!\fd|Rom|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|WideOr0~0_combout\,
	datad => \fd|Rom|Equal6~0_combout\,
	combout => \fd|Rom|WideOr4~combout\);

-- Location: FF_X56_Y45_N31
\fd|Rom|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|WideOr4~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(16));

-- Location: LCCOMB_X59_Y46_N0
\fd|BankRegister|add1to4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|Equal0~1_combout\ = (\fd|BankRegister|add1to4|Equal0~0_combout\ & ((\ucfd|Equal0~0_combout\ & (\fd|Rom|q\(11))) # (!\ucfd|Equal0~0_combout\ & ((\fd|Rom|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(11),
	datac => \fd|BankRegister|add1to4|Equal0~0_combout\,
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|add1to4|Equal0~1_combout\);

-- Location: FF_X57_Y47_N1
\fd|BankRegister|add1to4|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[9]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(9));

-- Location: LCCOMB_X58_Y45_N6
\fd|Rom|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr2~combout\ = (\fd|Rom|Equal7~0_combout\) # (!\fd|Rom|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|WideOr2~1_combout\,
	datad => \fd|Rom|Equal7~0_combout\,
	combout => \fd|Rom|WideOr2~combout\);

-- Location: FF_X58_Y45_N7
\fd|Rom|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(21));

-- Location: LCCOMB_X59_Y46_N12
\fd|BankRegister|add1to1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|Equal0~0_combout\ = (\ucfd|Equal0~0_combout\ & (((!\fd|Rom|q\(12))))) # (!\ucfd|Equal0~0_combout\ & (!\fd|Rom|q\(17) & (\ucfd|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(17),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|Rom|q\(12),
	combout => \fd|BankRegister|add1to1|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y46_N16
\fd|BankRegister|add1to6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|Equal0~0_combout\ = (\fd|BankRegister|add1to1|Equal0~0_combout\ & ((\ucfd|Equal0~0_combout\ & (\fd|Rom|q\(11))) # (!\ucfd|Equal0~0_combout\ & ((\fd|Rom|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|Equal0~0_combout\,
	datab => \fd|Rom|q\(11),
	datac => \fd|Rom|q\(16),
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|BankRegister|add1to6|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y46_N4
\fd|BankRegister|add1to2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|Equal0~0_combout\ = (!\fd|Rom|q\(28) & (\fd|BankRegister|add1to6|Equal0~0_combout\ & ((!\fd|Rom|q\(13)) # (!\ucfd|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(28),
	datac => \fd|Rom|q\(13),
	datad => \fd|BankRegister|add1to6|Equal0~0_combout\,
	combout => \fd|BankRegister|add1to2|Equal0~0_combout\);

-- Location: FF_X58_Y45_N11
\fd|BankRegister|add1to2|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~72_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(9));

-- Location: LCCOMB_X59_Y46_N22
\fd|BankRegister|add1to1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|Equal0~1_combout\ = (\fd|BankRegister|add1to1|Equal0~0_combout\ & ((\ucfd|Equal0~0_combout\ & (!\fd|Rom|q\(11))) # (!\ucfd|Equal0~0_combout\ & ((!\fd|Rom|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|Equal0~0_combout\,
	datab => \fd|Rom|q\(11),
	datac => \fd|Rom|q\(16),
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|BankRegister|add1to1|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y46_N10
\fd|BankRegister|add1to1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|Equal0~2_combout\ = (\fd|BankRegister|add1to1|Equal0~1_combout\ & (!\fd|Rom|q\(28) & ((!\fd|Rom|q\(13)) # (!\ucfd|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(13),
	datac => \fd|BankRegister|add1to1|Equal0~1_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|BankRegister|add1to1|Equal0~2_combout\);

-- Location: FF_X57_Y46_N1
\fd|BankRegister|add1to1|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~72_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(9));

-- Location: LCCOMB_X58_Y45_N10
\fd|BankRegister|muxA|selected[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[9]~23_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(9))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(9),
	datad => \fd|BankRegister|add1to1|DOUT\(9),
	combout => \fd|BankRegister|muxA|selected[9]~23_combout\);

-- Location: LCCOMB_X58_Y46_N24
\fd|BankRegister|add1to3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|Equal0~0_combout\ = (\fd|BankRegister|add1to4|Equal0~0_combout\ & ((\ucfd|Equal0~0_combout\ & ((!\fd|Rom|q\(11)))) # (!\ucfd|Equal0~0_combout\ & (!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to4|Equal0~0_combout\,
	datad => \fd|Rom|q\(11),
	combout => \fd|BankRegister|add1to3|Equal0~0_combout\);

-- Location: FF_X57_Y46_N19
\fd|BankRegister|add1to3|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~72_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(9));

-- Location: LCCOMB_X57_Y47_N28
\fd|BankRegister|muxA|selected[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(9) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[9]~23_combout\ & (\fd|BankRegister|add1to4|DOUT\(9))) # (!\fd|BankRegister|muxA|selected[9]~23_combout\ & ((\fd|BankRegister|add1to3|DOUT\(9)))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to4|DOUT\(9),
	datac => \fd|BankRegister|muxA|selected[9]~23_combout\,
	datad => \fd|BankRegister|add1to3|DOUT\(9),
	combout => \fd|BankRegister|muxA|selected\(9));

-- Location: LCCOMB_X58_Y47_N10
\fd|Rom|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr9~combout\ = (\fd|Rom|Equal6~0_combout\) # ((\fd|PC|DOUT\(0) & \fd|Rom|Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(0),
	datac => \fd|Rom|Equal8~1_combout\,
	datad => \fd|Rom|Equal6~0_combout\,
	combout => \fd|Rom|WideOr9~combout\);

-- Location: FF_X57_Y45_N31
\fd|Rom|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|WideOr9~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(3));

-- Location: LCCOMB_X59_Y47_N0
\fd|UCalu|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal2~0_combout\ = (!\fd|Rom|q\(1) & (\fd|Rom|q\(5) & !\fd|Rom|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|q\(1),
	datac => \fd|Rom|q\(5),
	datad => \fd|Rom|q\(3),
	combout => \fd|UCalu|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y47_N30
\fd|UCalu|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~4_combout\ = (\ucfd|Equal0~0_combout\ & ((\fd|Rom|q\(0)) # (!\fd|UCalu|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|Equal2~0_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|Rom|q\(0),
	combout => \fd|UCalu|comb~4_combout\);

-- Location: LCCOMB_X59_Y47_N8
\fd|UCalu|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|Equal3~0_combout\ = (\fd|Rom|q\(5) & (!\fd|Rom|q\(3) & (!\fd|Rom|q\(2) & !\fd|Rom|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(5),
	datab => \fd|Rom|q\(3),
	datac => \fd|Rom|q\(2),
	datad => \fd|Rom|q\(0),
	combout => \fd|UCalu|Equal3~0_combout\);

-- Location: LCCOMB_X59_Y47_N28
\fd|UCalu|output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~0_combout\ = (\fd|Rom|q\(1) & (!\fd|Rom|q\(0) & (!\fd|Rom|q\(2)))) # (!\fd|Rom|q\(1) & (!\fd|Rom|q\(3) & ((\fd|Rom|q\(2)) # (!\fd|Rom|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(0),
	datab => \fd|Rom|q\(1),
	datac => \fd|Rom|q\(2),
	datad => \fd|Rom|q\(3),
	combout => \fd|UCalu|output[3]~0_combout\);

-- Location: LCCOMB_X59_Y47_N18
\fd|UCalu|output[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[3]~1_combout\ = ((\fd|Rom|q\(5) & \fd|UCalu|output[3]~0_combout\)) # (!\ucfd|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(5),
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|UCalu|output[3]~0_combout\,
	combout => \fd|UCalu|output[3]~1_combout\);

-- Location: LCCOMB_X59_Y47_N6
\fd|UCalu|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~6_combout\ = (\fd|UCalu|comb~4_combout\ & (\fd|UCalu|output[3]~1_combout\ & ((!\fd|Rom|q\(1)) # (!\fd|UCalu|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~4_combout\,
	datab => \fd|UCalu|Equal3~0_combout\,
	datac => \fd|Rom|q\(1),
	datad => \fd|UCalu|output[3]~1_combout\,
	combout => \fd|UCalu|comb~6_combout\);

-- Location: LCCOMB_X59_Y47_N4
\fd|UCalu|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~5_combout\ = (\fd|UCalu|output[3]~1_combout\ & (((\fd|UCalu|Equal3~0_combout\ & \fd|Rom|q\(1))) # (!\fd|UCalu|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~4_combout\,
	datab => \fd|UCalu|Equal3~0_combout\,
	datac => \fd|Rom|q\(1),
	datad => \fd|UCalu|output[3]~1_combout\,
	combout => \fd|UCalu|comb~5_combout\);

-- Location: LCCOMB_X59_Y47_N20
\fd|UCalu|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(0) = (!\fd|UCalu|comb~5_combout\ & ((\fd|UCalu|comb~6_combout\) # (\fd|UCalu|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~6_combout\,
	datac => \fd|UCalu|comb~5_combout\,
	datad => \fd|UCalu|output\(0),
	combout => \fd|UCalu|output\(0));

-- Location: LCCOMB_X55_Y48_N30
\fd|beqAnd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~0_combout\ = (!\fd|Rom|q\(31) & (\fd|Rom|q\(28) & !\fd|Rom|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|Rom|q\(27),
	combout => \fd|beqAnd~0_combout\);

-- Location: LCCOMB_X59_Y47_N14
\fd|UCalu|output[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output[2]~2_combout\ = (\ucfd|Equal0~0_combout\ & (((!\fd|Rom|q\(2) & \fd|Rom|q\(0))) # (!\fd|UCalu|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(2),
	datab => \fd|Rom|q\(0),
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|UCalu|Equal2~0_combout\,
	combout => \fd|UCalu|output[2]~2_combout\);

-- Location: LCCOMB_X59_Y47_N12
\fd|UCalu|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~2_combout\ = (!\fd|beqAnd~0_combout\ & (!\fd|UCalu|output[2]~2_combout\ & \fd|UCalu|output[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~0_combout\,
	datac => \fd|UCalu|output[2]~2_combout\,
	datad => \fd|UCalu|output[3]~1_combout\,
	combout => \fd|UCalu|comb~2_combout\);

-- Location: LCCOMB_X59_Y47_N22
\fd|UCalu|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~3_combout\ = (\fd|UCalu|output[3]~1_combout\ & ((\fd|beqAnd~0_combout\) # (\fd|UCalu|output[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~0_combout\,
	datac => \fd|UCalu|output[2]~2_combout\,
	datad => \fd|UCalu|output[3]~1_combout\,
	combout => \fd|UCalu|comb~3_combout\);

-- Location: LCCOMB_X59_Y47_N10
\fd|UCalu|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(2) = (!\fd|UCalu|comb~2_combout\ & ((\fd|UCalu|comb~3_combout\) # (\fd|UCalu|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|comb~2_combout\,
	datac => \fd|UCalu|comb~3_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|UCalu|output\(2));

-- Location: LCCOMB_X59_Y47_N24
\fd|UCalu|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~1_combout\ = (\fd|UCalu|output[3]~1_combout\ & (((!\fd|Rom|q\(2)) # (!\fd|UCalu|Equal2~0_combout\)) # (!\ucfd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|UCalu|Equal2~0_combout\,
	datac => \fd|Rom|q\(2),
	datad => \fd|UCalu|output[3]~1_combout\,
	combout => \fd|UCalu|comb~1_combout\);

-- Location: LCCOMB_X59_Y47_N26
\fd|UCalu|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|comb~0_combout\ = (\ucfd|Equal0~0_combout\ & (\fd|UCalu|Equal2~0_combout\ & (\fd|Rom|q\(2) & \fd|UCalu|output[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|UCalu|Equal2~0_combout\,
	datac => \fd|Rom|q\(2),
	datad => \fd|UCalu|output[3]~1_combout\,
	combout => \fd|UCalu|comb~0_combout\);

-- Location: LCCOMB_X59_Y47_N16
\fd|UCalu|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|UCalu|output\(1) = (!\fd|UCalu|comb~0_combout\ & ((\fd|UCalu|comb~1_combout\) # (\fd|UCalu|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|UCalu|comb~1_combout\,
	datac => \fd|UCalu|comb~0_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|UCalu|output\(1));

-- Location: LCCOMB_X55_Y48_N20
\fd|BankRegister|add1to8|DOUT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|DOUT[8]~feeder_combout\ = \fd|MuxRegRam|selected[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[8]~71_combout\,
	combout => \fd|BankRegister|add1to8|DOUT[8]~feeder_combout\);

-- Location: LCCOMB_X58_Y46_N12
\fd|BankRegister|add1to8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|Equal0~1_combout\ = (\fd|BankRegister|add1to8|Equal0~0_combout\ & ((\fd|Rom|q\(28)) # ((\fd|Rom|q\(13) & \ucfd|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|Equal0~0_combout\,
	datab => \fd|Rom|q\(13),
	datac => \fd|Rom|q\(28),
	datad => \ucfd|Equal0~0_combout\,
	combout => \fd|BankRegister|add1to8|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y46_N2
\fd|BankRegister|add1to8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|Equal0~2_combout\ = (\fd|BankRegister|add1to8|Equal0~1_combout\ & ((\ucfd|Equal0~0_combout\ & (\fd|Rom|q\(11))) # (!\ucfd|Equal0~0_combout\ & ((\fd|Rom|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(11),
	datab => \fd|BankRegister|add1to8|Equal0~1_combout\,
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|add1to8|Equal0~2_combout\);

-- Location: FF_X55_Y48_N21
\fd|BankRegister|add1to8|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to8|DOUT[8]~feeder_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(8));

-- Location: LCCOMB_X58_Y46_N22
\fd|BankRegister|add1to6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|Equal0~1_combout\ = (\fd|BankRegister|add1to6|Equal0~0_combout\ & ((\fd|Rom|q\(28)) # ((\ucfd|Equal0~0_combout\ & \fd|Rom|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal0~0_combout\,
	datab => \fd|Rom|q\(28),
	datac => \fd|Rom|q\(13),
	datad => \fd|BankRegister|add1to6|Equal0~0_combout\,
	combout => \fd|BankRegister|add1to6|Equal0~1_combout\);

-- Location: FF_X56_Y46_N19
\fd|BankRegister|add1to6|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~71_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(8));

-- Location: LCCOMB_X56_Y48_N14
\fd|BankRegister|add1to5|DOUT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[8]~feeder_combout\ = \fd|MuxRegRam|selected[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[8]~71_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[8]~feeder_combout\);

-- Location: LCCOMB_X57_Y46_N28
\fd|BankRegister|add1to5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|Equal0~0_combout\ = (\fd|BankRegister|add1to1|Equal0~1_combout\ & ((\fd|Rom|q\(28)) # ((\fd|Rom|q\(13) & \ucfd|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(13),
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|BankRegister|add1to1|Equal0~1_combout\,
	combout => \fd|BankRegister|add1to5|Equal0~0_combout\);

-- Location: FF_X56_Y48_N15
\fd|BankRegister|add1to5|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[8]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(8));

-- Location: LCCOMB_X58_Y46_N14
\fd|BankRegister|add1to7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|Equal0~0_combout\ = (\fd|BankRegister|add1to8|Equal0~1_combout\ & ((\ucfd|Equal0~0_combout\ & (!\fd|Rom|q\(11))) # (!\ucfd|Equal0~0_combout\ & ((!\fd|Rom|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|Equal0~1_combout\,
	datab => \fd|Rom|q\(11),
	datac => \ucfd|Equal0~0_combout\,
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|add1to7|Equal0~0_combout\);

-- Location: FF_X56_Y48_N27
\fd|BankRegister|add1to7|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~71_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(8));

-- Location: LCCOMB_X56_Y48_N26
\fd|BankRegister|muxB|selected[8]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~96_combout\ = (\fd|Rom|q\(17) & (((\fd|BankRegister|add1to7|DOUT\(8)) # (\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to5|DOUT\(8) & ((!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to5|DOUT\(8),
	datac => \fd|BankRegister|add1to7|DOUT\(8),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[8]~96_combout\);

-- Location: LCCOMB_X56_Y46_N18
\fd|BankRegister|muxB|selected[8]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~97_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[8]~96_combout\ & (\fd|BankRegister|add1to8|DOUT\(8))) # (!\fd|BankRegister|muxB|selected[8]~96_combout\ & ((\fd|BankRegister|add1to6|DOUT\(8)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[8]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(8),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(8),
	datad => \fd|BankRegister|muxB|selected[8]~96_combout\,
	combout => \fd|BankRegister|muxB|selected[8]~97_combout\);

-- Location: FF_X58_Y45_N13
\fd|BankRegister|add1to2|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~71_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(8));

-- Location: FF_X57_Y46_N7
\fd|BankRegister|add1to1|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~71_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(8));

-- Location: LCCOMB_X57_Y46_N6
\fd|BankRegister|muxB|selected[8]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~98_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(8))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(8),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(8),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[8]~98_combout\);

-- Location: FF_X59_Y45_N27
\fd|BankRegister|add1to4|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~71_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(8));

-- Location: LCCOMB_X57_Y46_N12
\fd|BankRegister|muxB|selected[8]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[8]~99_combout\ = (\fd|BankRegister|muxB|selected[8]~98_combout\ & (((\fd|BankRegister|add1to4|DOUT\(8))) # (!\fd|Rom|q\(17)))) # (!\fd|BankRegister|muxB|selected[8]~98_combout\ & (\fd|Rom|q\(17) & 
-- (\fd|BankRegister|add1to3|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[8]~98_combout\,
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(8),
	datad => \fd|BankRegister|add1to4|DOUT\(8),
	combout => \fd|BankRegister|muxB|selected[8]~99_combout\);

-- Location: LCCOMB_X57_Y46_N4
\fd|MuxSaidaBankRegister|selected[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[8]~28_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[8]~97_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[8]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[8]~97_combout\,
	datac => \fd|Rom|q\(28),
	datad => \fd|BankRegister|muxB|selected[8]~99_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[8]~28_combout\);

-- Location: LCCOMB_X56_Y47_N16
\fd|BankRegister|add1to1|DOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[7]~feeder_combout\ = \fd|MuxRegRam|selected[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[7]~70_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[7]~feeder_combout\);

-- Location: FF_X56_Y47_N17
\fd|BankRegister|add1to1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[7]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(7));

-- Location: FF_X58_Y45_N27
\fd|BankRegister|add1to2|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~70_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(7));

-- Location: LCCOMB_X56_Y47_N26
\fd|BankRegister|muxB|selected[7]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~102_combout\ = (\fd|Rom|q\(16) & (((\fd|BankRegister|add1to2|DOUT\(7)) # (\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(7) & ((!\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to1|DOUT\(7),
	datac => \fd|BankRegister|add1to2|DOUT\(7),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[7]~102_combout\);

-- Location: FF_X56_Y47_N25
\fd|BankRegister|add1to3|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~70_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(7));

-- Location: LCCOMB_X56_Y47_N24
\fd|BankRegister|muxB|selected[7]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~103_combout\ = (\fd|BankRegister|muxB|selected[7]~102_combout\ & (((\fd|BankRegister|add1to4|DOUT\(7))) # (!\fd|Rom|q\(17)))) # (!\fd|BankRegister|muxB|selected[7]~102_combout\ & (\fd|Rom|q\(17) & 
-- (\fd|BankRegister|add1to3|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[7]~102_combout\,
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(7),
	datad => \fd|BankRegister|add1to4|DOUT\(7),
	combout => \fd|BankRegister|muxB|selected[7]~103_combout\);

-- Location: FF_X58_Y47_N3
\fd|BankRegister|add1to6|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~70_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(7));

-- Location: FF_X57_Y47_N27
\fd|BankRegister|add1to8|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~70_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(7));

-- Location: FF_X56_Y48_N13
\fd|BankRegister|add1to5|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[7]~70_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(7));

-- Location: FF_X56_Y48_N9
\fd|BankRegister|add1to7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[7]~70_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(7));

-- Location: LCCOMB_X56_Y48_N8
\fd|BankRegister|muxB|selected[7]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~100_combout\ = (\fd|Rom|q\(17) & (((\fd|BankRegister|add1to7|DOUT\(7)) # (\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to5|DOUT\(7) & ((!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(7),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to7|DOUT\(7),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[7]~100_combout\);

-- Location: LCCOMB_X57_Y47_N26
\fd|BankRegister|muxB|selected[7]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[7]~101_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[7]~100_combout\ & ((\fd|BankRegister|add1to8|DOUT\(7)))) # (!\fd|BankRegister|muxB|selected[7]~100_combout\ & (\fd|BankRegister|add1to6|DOUT\(7))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[7]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(7),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to8|DOUT\(7),
	datad => \fd|BankRegister|muxB|selected[7]~100_combout\,
	combout => \fd|BankRegister|muxB|selected[7]~101_combout\);

-- Location: LCCOMB_X56_Y47_N0
\fd|MuxSaidaBankRegister|selected[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[7]~29_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[7]~101_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[7]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|BankRegister|muxB|selected[7]~103_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[7]~101_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[7]~29_combout\);

-- Location: FF_X59_Y45_N1
\fd|BankRegister|add1to4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~64_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(1));

-- Location: FF_X57_Y46_N21
\fd|BankRegister|add1to1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~64_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(1));

-- Location: FF_X58_Y45_N3
\fd|BankRegister|add1to2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~64_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(1));

-- Location: LCCOMB_X57_Y46_N20
\fd|BankRegister|muxB|selected[1]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~126_combout\ = (\fd|Rom|q\(17) & (\fd|Rom|q\(16))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(1)))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to1|DOUT\(1),
	datad => \fd|BankRegister|add1to2|DOUT\(1),
	combout => \fd|BankRegister|muxB|selected[1]~126_combout\);

-- Location: LCCOMB_X57_Y46_N30
\fd|BankRegister|muxB|selected[1]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~127_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[1]~126_combout\ & (\fd|BankRegister|add1to4|DOUT\(1))) # (!\fd|BankRegister|muxB|selected[1]~126_combout\ & ((\fd|BankRegister|add1to3|DOUT\(1)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[1]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(1),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(1),
	datad => \fd|BankRegister|muxB|selected[1]~126_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~127_combout\);

-- Location: LCCOMB_X56_Y46_N4
\fd|BankRegister|add1to6|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\ = \fd|MuxRegRam|selected[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[1]~64_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\);

-- Location: FF_X56_Y46_N5
\fd|BankRegister|add1to6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[1]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(1));

-- Location: FF_X55_Y46_N31
\fd|BankRegister|add1to8|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~64_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(1));

-- Location: FF_X56_Y46_N15
\fd|BankRegister|add1to7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[1]~64_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(1));

-- Location: FF_X55_Y46_N21
\fd|BankRegister|add1to5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~64_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(1));

-- Location: LCCOMB_X55_Y46_N20
\fd|BankRegister|muxB|selected[1]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~124_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(1)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(1) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(1),
	datac => \fd|BankRegister|add1to5|DOUT\(1),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[1]~124_combout\);

-- Location: LCCOMB_X55_Y46_N30
\fd|BankRegister|muxB|selected[1]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[1]~125_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[1]~124_combout\ & ((\fd|BankRegister|add1to8|DOUT\(1)))) # (!\fd|BankRegister|muxB|selected[1]~124_combout\ & (\fd|BankRegister|add1to6|DOUT\(1))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[1]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to6|DOUT\(1),
	datac => \fd|BankRegister|add1to8|DOUT\(1),
	datad => \fd|BankRegister|muxB|selected[1]~124_combout\,
	combout => \fd|BankRegister|muxB|selected[1]~125_combout\);

-- Location: LCCOMB_X57_Y46_N26
\fd|MuxSaidaBankRegister|selected[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[1]~38_combout\ = (\fd|Rom|q\(28) & (((\fd|BankRegister|muxB|selected[1]~125_combout\)))) # (!\fd|Rom|q\(28) & (!\ucfd|Equal1~0_combout\ & (\fd|BankRegister|muxB|selected[1]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|q\(28),
	datac => \fd|BankRegister|muxB|selected[1]~127_combout\,
	datad => \fd|BankRegister|muxB|selected[1]~125_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[1]~38_combout\);

-- Location: LCCOMB_X56_Y45_N18
\fd|MuxSaidaBankRegister|selected[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[1]~39_combout\ = (\fd|MuxSaidaBankRegister|selected[1]~38_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|q\(1),
	datad => \fd|MuxSaidaBankRegister|selected[1]~38_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[1]~39_combout\);

-- Location: LCCOMB_X57_Y45_N10
\fd|MuxSaidaBankRegister|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~0_combout\ = (\fd|Rom|q\(0) & (!\fd|Rom|q\(28) & (\fd|Rom|q\(31) & \fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(0),
	datab => \fd|Rom|q\(28),
	datac => \fd|Rom|q\(31),
	datad => \fd|Rom|q\(27),
	combout => \fd|MuxSaidaBankRegister|selected[0]~0_combout\);

-- Location: FF_X56_Y45_N9
\fd|BankRegister|add1to4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(0));

-- Location: LCCOMB_X58_Y48_N28
\fd|BankRegister|add1to3|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[0]~feeder_combout\ = \fd|MuxRegRam|selected[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[0]~63_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[0]~feeder_combout\);

-- Location: FF_X58_Y48_N29
\fd|BankRegister|add1to3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[0]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(0));

-- Location: FF_X58_Y45_N21
\fd|BankRegister|add1to2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(0));

-- Location: LCCOMB_X58_Y45_N20
\fd|BankRegister|muxA|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[0]~0_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(0))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(0),
	datad => \fd|BankRegister|add1to1|DOUT\(0),
	combout => \fd|BankRegister|muxA|selected[0]~0_combout\);

-- Location: LCCOMB_X58_Y45_N4
\fd|BankRegister|muxA|selected[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(0) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[0]~0_combout\ & (\fd|BankRegister|add1to4|DOUT\(0))) # (!\fd|BankRegister|muxA|selected[0]~0_combout\ & ((\fd|BankRegister|add1to3|DOUT\(0)))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(0),
	datab => \fd|BankRegister|add1to3|DOUT\(0),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|muxA|selected[0]~0_combout\,
	combout => \fd|BankRegister|muxA|selected\(0));

-- Location: LCCOMB_X56_Y45_N30
\fd|BankRegister|muxB|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~2_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(0))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(0),
	datab => \fd|Rom|q\(17),
	datac => \fd|Rom|q\(16),
	datad => \fd|BankRegister|add1to1|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[0]~2_combout\);

-- Location: LCCOMB_X56_Y45_N8
\fd|BankRegister|muxB|selected[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~3_combout\ = (\fd|BankRegister|muxB|selected[0]~2_combout\ & (((\fd|BankRegister|add1to4|DOUT\(0))) # (!\fd|Rom|q\(17)))) # (!\fd|BankRegister|muxB|selected[0]~2_combout\ & (\fd|Rom|q\(17) & 
-- ((\fd|BankRegister|add1to3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[0]~2_combout\,
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to4|DOUT\(0),
	datad => \fd|BankRegister|add1to3|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[0]~3_combout\);

-- Location: FF_X55_Y48_N3
\fd|BankRegister|add1to8|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(0));

-- Location: FF_X57_Y45_N9
\fd|BankRegister|add1to6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(0));

-- Location: FF_X56_Y48_N5
\fd|BankRegister|add1to7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(0));

-- Location: LCCOMB_X56_Y48_N28
\fd|BankRegister|add1to5|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[0]~feeder_combout\ = \fd|MuxRegRam|selected[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[0]~63_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[0]~feeder_combout\);

-- Location: FF_X56_Y48_N29
\fd|BankRegister|add1to5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[0]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(0));

-- Location: LCCOMB_X57_Y45_N2
\fd|BankRegister|muxB|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~0_combout\ = (\fd|Rom|q\(17) & ((\fd|Rom|q\(16)) # ((\fd|BankRegister|add1to7|DOUT\(0))))) # (!\fd|Rom|q\(17) & (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to7|DOUT\(0),
	datad => \fd|BankRegister|add1to5|DOUT\(0),
	combout => \fd|BankRegister|muxB|selected[0]~0_combout\);

-- Location: LCCOMB_X57_Y45_N8
\fd|BankRegister|muxB|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[0]~1_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[0]~0_combout\ & (\fd|BankRegister|add1to8|DOUT\(0))) # (!\fd|BankRegister|muxB|selected[0]~0_combout\ & ((\fd|BankRegister|add1to6|DOUT\(0)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(0),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(0),
	datad => \fd|BankRegister|muxB|selected[0]~0_combout\,
	combout => \fd|BankRegister|muxB|selected[0]~1_combout\);

-- Location: LCCOMB_X56_Y45_N20
\fd|MuxSaidaBankRegister|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[0]~1_combout\ = (\fd|Rom|q\(28) & (((\fd|BankRegister|muxB|selected[0]~1_combout\)))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[0]~3_combout\ & ((!\ucfd|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|BankRegister|muxB|selected[0]~3_combout\,
	datac => \fd|BankRegister|muxB|selected[0]~1_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[0]~1_combout\);

-- Location: LCCOMB_X56_Y45_N4
\fd|ALU|adder|a0|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|a0|vaium~0_combout\ = (\fd|MuxSaidaBankRegister|selected[0]~0_combout\ & (((\fd|BankRegister|muxA|selected\(0))))) # (!\fd|MuxSaidaBankRegister|selected[0]~0_combout\ & ((\fd|MuxSaidaBankRegister|selected[0]~1_combout\ & 
-- ((\fd|BankRegister|muxA|selected\(0)))) # (!\fd|MuxSaidaBankRegister|selected[0]~1_combout\ & (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[0]~0_combout\,
	datac => \fd|BankRegister|muxA|selected\(0),
	datad => \fd|MuxSaidaBankRegister|selected[0]~1_combout\,
	combout => \fd|ALU|adder|a0|vaium~0_combout\);

-- Location: LCCOMB_X56_Y47_N8
\fd|ALU|final|selected[1]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[1]~123_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|a0|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[1]~39_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|a0|vaium~0_combout\,
	combout => \fd|ALU|final|selected[1]~123_combout\);

-- Location: LCCOMB_X56_Y47_N22
\fd|ALU|final|selected[1]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[1]~124_combout\ = (\fd|BankRegister|muxA|selected\(1) & (\fd|UCalu|output\(1) $ (((\fd|ALU|final|selected[1]~123_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|BankRegister|muxA|selected\(1) & (\fd|ALU|final|selected[1]~123_combout\ 
-- & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(1),
	datab => \fd|ALU|final|selected[1]~123_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|UCalu|output\(0),
	combout => \fd|ALU|final|selected[1]~124_combout\);

-- Location: LCCOMB_X56_Y46_N14
\fd|MuxRegRam|selected[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[1]~64_combout\ = (\fd|ALU|final|selected[1]~124_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27))) # (!\fd|Rom|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(27),
	datac => \fd|ALU|final|selected[1]~124_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxRegRam|selected[1]~64_combout\);

-- Location: FF_X57_Y46_N31
\fd|BankRegister|add1to3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[1]~64_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(1));

-- Location: LCCOMB_X58_Y45_N2
\fd|BankRegister|muxA|selected[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[1]~31_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(1))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(1),
	datad => \fd|BankRegister|add1to1|DOUT\(1),
	combout => \fd|BankRegister|muxA|selected[1]~31_combout\);

-- Location: LCCOMB_X59_Y45_N0
\fd|BankRegister|muxA|selected[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(1) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[1]~31_combout\ & ((\fd|BankRegister|add1to4|DOUT\(1)))) # (!\fd|BankRegister|muxA|selected[1]~31_combout\ & (\fd|BankRegister|add1to3|DOUT\(1))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(1),
	datac => \fd|BankRegister|add1to4|DOUT\(1),
	datad => \fd|BankRegister|muxA|selected[1]~31_combout\,
	combout => \fd|BankRegister|muxA|selected\(1));

-- Location: LCCOMB_X56_Y45_N14
\fd|ALU|adder|addsloop:1:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(1) & ((\fd|ALU|adder|a0|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\)))) # (!\fd|BankRegister|muxA|selected\(1) & 
-- (\fd|ALU|adder|a0|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(1),
	datac => \fd|ALU|adder|a0|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[1]~39_combout\,
	combout => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\);

-- Location: FF_X59_Y45_N25
\fd|BankRegister|add1to6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[2]~65_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(2));

-- Location: FF_X54_Y45_N27
\fd|BankRegister|add1to8|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~65_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(2));

-- Location: LCCOMB_X52_Y45_N16
\fd|BankRegister|add1to7|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[2]~65_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[2]~feeder_combout\);

-- Location: FF_X52_Y45_N17
\fd|BankRegister|add1to7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[2]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(2));

-- Location: FF_X54_Y45_N1
\fd|BankRegister|add1to5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~65_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(2));

-- Location: LCCOMB_X54_Y45_N0
\fd|BankRegister|muxB|selected[2]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~120_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(2)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(2) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(2),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(2),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[2]~120_combout\);

-- Location: LCCOMB_X54_Y45_N26
\fd|BankRegister|muxB|selected[2]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~121_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[2]~120_combout\ & ((\fd|BankRegister|add1to8|DOUT\(2)))) # (!\fd|BankRegister|muxB|selected[2]~120_combout\ & (\fd|BankRegister|add1to6|DOUT\(2))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[2]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(2),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to8|DOUT\(2),
	datad => \fd|BankRegister|muxB|selected[2]~120_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~121_combout\);

-- Location: LCCOMB_X58_Y46_N6
\fd|BankRegister|add1to3|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[2]~65_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[2]~feeder_combout\);

-- Location: FF_X58_Y46_N7
\fd|BankRegister|add1to3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[2]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(2));

-- Location: FF_X59_Y45_N15
\fd|BankRegister|add1to4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~65_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(2));

-- Location: LCCOMB_X58_Y46_N8
\fd|BankRegister|add1to1|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[2]~feeder_combout\ = \fd|MuxRegRam|selected[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[2]~65_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[2]~feeder_combout\);

-- Location: FF_X58_Y46_N9
\fd|BankRegister|add1to1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[2]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(2));

-- Location: LCCOMB_X58_Y46_N2
\fd|BankRegister|muxB|selected[2]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~122_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(2)))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(2),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to2|DOUT\(2),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[2]~122_combout\);

-- Location: LCCOMB_X58_Y46_N16
\fd|BankRegister|muxB|selected[2]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[2]~123_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[2]~122_combout\ & ((\fd|BankRegister|add1to4|DOUT\(2)))) # (!\fd|BankRegister|muxB|selected[2]~122_combout\ & (\fd|BankRegister|add1to3|DOUT\(2))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[2]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(2),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to4|DOUT\(2),
	datad => \fd|BankRegister|muxB|selected[2]~122_combout\,
	combout => \fd|BankRegister|muxB|selected[2]~123_combout\);

-- Location: LCCOMB_X57_Y45_N24
\fd|MuxSaidaBankRegister|selected[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[2]~36_combout\ = (\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[2]~121_combout\)) # (!\fd|Rom|q\(28) & (((!\ucfd|Equal1~0_combout\ & \fd|BankRegister|muxB|selected[2]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[2]~121_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[2]~123_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[2]~36_combout\);

-- Location: LCCOMB_X57_Y45_N18
\fd|MuxSaidaBankRegister|selected[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[2]~37_combout\ = (\fd|MuxSaidaBankRegister|selected[2]~36_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|q\(2),
	datad => \fd|MuxSaidaBankRegister|selected[2]~36_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[2]~37_combout\);

-- Location: LCCOMB_X57_Y45_N26
\fd|ALU|final|selected[2]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[2]~121_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~37_combout\,
	combout => \fd|ALU|final|selected[2]~121_combout\);

-- Location: LCCOMB_X59_Y45_N30
\fd|ALU|final|selected[2]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[2]~122_combout\ = (\fd|ALU|final|selected[2]~121_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|BankRegister|muxA|selected\(2)))))) # (!\fd|ALU|final|selected[2]~121_combout\ & (\fd|BankRegister|muxA|selected\(2) 
-- & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|ALU|final|selected[2]~121_combout\,
	datac => \fd|BankRegister|muxA|selected\(2),
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[2]~122_combout\);

-- Location: LCCOMB_X59_Y45_N24
\fd|MuxRegRam|selected[2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[2]~65_combout\ = (\fd|ALU|final|selected[2]~122_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|ALU|final|selected[2]~122_combout\,
	datad => \fd|Rom|q\(31),
	combout => \fd|MuxRegRam|selected[2]~65_combout\);

-- Location: FF_X58_Y45_N1
\fd|BankRegister|add1to2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[2]~65_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(2));

-- Location: LCCOMB_X58_Y45_N0
\fd|BankRegister|muxA|selected[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[2]~30_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(2))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(2),
	datad => \fd|BankRegister|add1to1|DOUT\(2),
	combout => \fd|BankRegister|muxA|selected[2]~30_combout\);

-- Location: LCCOMB_X59_Y45_N14
\fd|BankRegister|muxA|selected[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(2) = (\fd|BankRegister|muxA|selected[2]~30_combout\ & (((\fd|BankRegister|add1to4|DOUT\(2))) # (!\fd|Rom|q\(22)))) # (!\fd|BankRegister|muxA|selected[2]~30_combout\ & (\fd|Rom|q\(22) & 
-- ((\fd|BankRegister|add1to3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[2]~30_combout\,
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to4|DOUT\(2),
	datad => \fd|BankRegister|add1to3|DOUT\(2),
	combout => \fd|BankRegister|muxA|selected\(2));

-- Location: LCCOMB_X56_Y45_N0
\fd|ALU|adder|addsloop:2:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(2) & ((\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(2) & (\fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(2),
	datac => \fd|ALU|adder|addsloop:1:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[2]~37_combout\,
	combout => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\);

-- Location: FF_X59_Y45_N17
\fd|BankRegister|add1to4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[3]~66_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(3));

-- Location: LCCOMB_X60_Y45_N16
\fd|BankRegister|add1to1|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~66_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[3]~feeder_combout\);

-- Location: FF_X60_Y45_N17
\fd|BankRegister|add1to1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[3]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(3));

-- Location: FF_X58_Y45_N23
\fd|BankRegister|add1to2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~66_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(3));

-- Location: LCCOMB_X60_Y45_N20
\fd|BankRegister|muxB|selected[3]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~118_combout\ = (\fd|Rom|q\(16) & (((\fd|Rom|q\(17)) # (\fd|BankRegister|add1to2|DOUT\(3))))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(3) & (!\fd|Rom|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to1|DOUT\(3),
	datac => \fd|Rom|q\(17),
	datad => \fd|BankRegister|add1to2|DOUT\(3),
	combout => \fd|BankRegister|muxB|selected[3]~118_combout\);

-- Location: LCCOMB_X60_Y45_N22
\fd|BankRegister|muxB|selected[3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~119_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[3]~118_combout\ & (\fd|BankRegister|add1to4|DOUT\(3))) # (!\fd|BankRegister|muxB|selected[3]~118_combout\ & ((\fd|BankRegister|add1to3|DOUT\(3)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[3]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(3),
	datab => \fd|BankRegister|add1to3|DOUT\(3),
	datac => \fd|Rom|q\(17),
	datad => \fd|BankRegister|muxB|selected[3]~118_combout\,
	combout => \fd|BankRegister|muxB|selected[3]~119_combout\);

-- Location: LCCOMB_X52_Y45_N8
\fd|BankRegister|add1to6|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~66_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\);

-- Location: FF_X52_Y45_N9
\fd|BankRegister|add1to6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[3]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(3));

-- Location: FF_X53_Y45_N15
\fd|BankRegister|add1to8|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[3]~66_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(3));

-- Location: LCCOMB_X53_Y45_N4
\fd|BankRegister|add1to5|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[3]~66_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[3]~feeder_combout\);

-- Location: FF_X53_Y45_N5
\fd|BankRegister|add1to5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[3]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(3));

-- Location: LCCOMB_X52_Y45_N6
\fd|BankRegister|add1to7|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~66_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[3]~feeder_combout\);

-- Location: FF_X52_Y45_N7
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

-- Location: LCCOMB_X53_Y45_N20
\fd|BankRegister|muxB|selected[3]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~116_combout\ = (\fd|Rom|q\(17) & (((\fd|BankRegister|add1to7|DOUT\(3)) # (\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to5|DOUT\(3) & ((!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(3),
	datab => \fd|BankRegister|add1to7|DOUT\(3),
	datac => \fd|Rom|q\(17),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[3]~116_combout\);

-- Location: LCCOMB_X53_Y45_N14
\fd|BankRegister|muxB|selected[3]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[3]~117_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[3]~116_combout\ & ((\fd|BankRegister|add1to8|DOUT\(3)))) # (!\fd|BankRegister|muxB|selected[3]~116_combout\ & (\fd|BankRegister|add1to6|DOUT\(3))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[3]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(3),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to8|DOUT\(3),
	datad => \fd|BankRegister|muxB|selected[3]~116_combout\,
	combout => \fd|BankRegister|muxB|selected[3]~117_combout\);

-- Location: LCCOMB_X57_Y45_N16
\fd|MuxSaidaBankRegister|selected[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[3]~34_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[3]~117_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[3]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[3]~119_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[3]~117_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[3]~34_combout\);

-- Location: LCCOMB_X57_Y45_N14
\fd|MuxSaidaBankRegister|selected[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[3]~35_combout\ = (\fd|MuxSaidaBankRegister|selected[3]~34_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|q\(3),
	datad => \fd|MuxSaidaBankRegister|selected[3]~34_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[3]~35_combout\);

-- Location: LCCOMB_X59_Y45_N18
\fd|ALU|final|selected[3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[3]~119_combout\ = \fd|MuxSaidaBankRegister|selected[3]~35_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[3]~35_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[3]~119_combout\);

-- Location: LCCOMB_X59_Y45_N4
\fd|ALU|final|selected[3]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[3]~120_combout\ = (\fd|BankRegister|muxA|selected\(3) & (\fd|UCalu|output\(1) $ (((\fd|ALU|final|selected[3]~119_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|BankRegister|muxA|selected\(3) & (\fd|ALU|final|selected[3]~119_combout\ 
-- & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(3),
	datab => \fd|ALU|final|selected[3]~119_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[3]~120_combout\);

-- Location: LCCOMB_X59_Y45_N16
\fd|MuxRegRam|selected[3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[3]~66_combout\ = (\fd|ALU|final|selected[3]~120_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|ALU|final|selected[3]~120_combout\,
	datad => \fd|Rom|q\(31),
	combout => \fd|MuxRegRam|selected[3]~66_combout\);

-- Location: LCCOMB_X60_Y45_N24
\fd|BankRegister|add1to3|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[3]~feeder_combout\ = \fd|MuxRegRam|selected[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[3]~66_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[3]~feeder_combout\);

-- Location: FF_X60_Y45_N25
\fd|BankRegister|add1to3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[3]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(3));

-- Location: LCCOMB_X58_Y45_N22
\fd|BankRegister|muxA|selected[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[3]~29_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(3))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(3),
	datad => \fd|BankRegister|add1to1|DOUT\(3),
	combout => \fd|BankRegister|muxA|selected[3]~29_combout\);

-- Location: LCCOMB_X59_Y45_N8
\fd|BankRegister|muxA|selected[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(3) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[3]~29_combout\ & ((\fd|BankRegister|add1to4|DOUT\(3)))) # (!\fd|BankRegister|muxA|selected[3]~29_combout\ & (\fd|BankRegister|add1to3|DOUT\(3))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(3),
	datab => \fd|BankRegister|add1to4|DOUT\(3),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|muxA|selected[3]~29_combout\,
	combout => \fd|BankRegister|muxA|selected\(3));

-- Location: LCCOMB_X56_Y45_N6
\fd|ALU|adder|addsloop:3:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(3) & ((\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[3]~35_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(3) & (\fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(3),
	datac => \fd|MuxSaidaBankRegister|selected[3]~35_combout\,
	datad => \fd|ALU|adder|addsloop:2:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y45_N22
\fd|ALU|final|selected[4]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[4]~117_combout\ = \fd|MuxSaidaBankRegister|selected[4]~33_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[4]~33_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[4]~117_combout\);

-- Location: FF_X58_Y49_N25
\fd|BankRegister|add1to3|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~67_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(4));

-- Location: FF_X59_Y45_N3
\fd|BankRegister|add1to4|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[4]~67_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(4));

-- Location: FF_X58_Y45_N25
\fd|BankRegister|add1to2|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~67_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(4));

-- Location: LCCOMB_X58_Y49_N16
\fd|BankRegister|add1to1|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[4]~67_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\);

-- Location: FF_X58_Y49_N17
\fd|BankRegister|add1to1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[4]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(4));

-- Location: LCCOMB_X58_Y45_N24
\fd|BankRegister|muxA|selected[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[4]~28_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(4))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(4),
	datad => \fd|BankRegister|add1to1|DOUT\(4),
	combout => \fd|BankRegister|muxA|selected[4]~28_combout\);

-- Location: LCCOMB_X59_Y45_N6
\fd|BankRegister|muxA|selected[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(4) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[4]~28_combout\ & ((\fd|BankRegister|add1to4|DOUT\(4)))) # (!\fd|BankRegister|muxA|selected[4]~28_combout\ & (\fd|BankRegister|add1to3|DOUT\(4))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(4),
	datab => \fd|BankRegister|add1to4|DOUT\(4),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|muxA|selected[4]~28_combout\,
	combout => \fd|BankRegister|muxA|selected\(4));

-- Location: LCCOMB_X59_Y45_N20
\fd|ALU|final|selected[4]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[4]~118_combout\ = (\fd|ALU|final|selected[4]~117_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|BankRegister|muxA|selected\(4)))))) # (!\fd|ALU|final|selected[4]~117_combout\ & (\fd|BankRegister|muxA|selected\(4) 
-- & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[4]~117_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|BankRegister|muxA|selected\(4),
	combout => \fd|ALU|final|selected[4]~118_combout\);

-- Location: LCCOMB_X59_Y45_N2
\fd|MuxRegRam|selected[4]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[4]~67_combout\ = (\fd|ALU|final|selected[4]~118_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(27)) # (!\fd|Rom|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(27),
	datad => \fd|ALU|final|selected[4]~118_combout\,
	combout => \fd|MuxRegRam|selected[4]~67_combout\);

-- Location: LCCOMB_X57_Y49_N20
\fd|BankRegister|add1to6|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[4]~67_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\);

-- Location: FF_X57_Y49_N21
\fd|BankRegister|add1to6|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[4]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(4));

-- Location: FF_X57_Y49_N9
\fd|BankRegister|add1to8|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~67_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(4));

-- Location: LCCOMB_X56_Y48_N30
\fd|BankRegister|add1to5|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[4]~feeder_combout\ = \fd|MuxRegRam|selected[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[4]~67_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[4]~feeder_combout\);

-- Location: FF_X56_Y48_N31
\fd|BankRegister|add1to5|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to5|DOUT[4]~feeder_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(4));

-- Location: FF_X56_Y48_N23
\fd|BankRegister|add1to7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[4]~67_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(4));

-- Location: LCCOMB_X56_Y48_N22
\fd|BankRegister|muxB|selected[4]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~112_combout\ = (\fd|Rom|q\(17) & (((\fd|BankRegister|add1to7|DOUT\(4)) # (\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to5|DOUT\(4) & ((!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(4),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to7|DOUT\(4),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[4]~112_combout\);

-- Location: LCCOMB_X57_Y49_N8
\fd|BankRegister|muxB|selected[4]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~113_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[4]~112_combout\ & ((\fd|BankRegister|add1to8|DOUT\(4)))) # (!\fd|BankRegister|muxB|selected[4]~112_combout\ & (\fd|BankRegister|add1to6|DOUT\(4))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[4]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(4),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to8|DOUT\(4),
	datad => \fd|BankRegister|muxB|selected[4]~112_combout\,
	combout => \fd|BankRegister|muxB|selected[4]~113_combout\);

-- Location: LCCOMB_X58_Y49_N26
\fd|BankRegister|muxB|selected[4]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~114_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(4)))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to1|DOUT\(4),
	datac => \fd|Rom|q\(16),
	datad => \fd|BankRegister|add1to2|DOUT\(4),
	combout => \fd|BankRegister|muxB|selected[4]~114_combout\);

-- Location: LCCOMB_X58_Y49_N24
\fd|BankRegister|muxB|selected[4]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[4]~115_combout\ = (\fd|BankRegister|muxB|selected[4]~114_combout\ & (((\fd|BankRegister|add1to4|DOUT\(4))) # (!\fd|Rom|q\(17)))) # (!\fd|BankRegister|muxB|selected[4]~114_combout\ & (\fd|Rom|q\(17) & 
-- (\fd|BankRegister|add1to3|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[4]~114_combout\,
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(4),
	datad => \fd|BankRegister|add1to4|DOUT\(4),
	combout => \fd|BankRegister|muxB|selected[4]~115_combout\);

-- Location: LCCOMB_X57_Y49_N2
\fd|MuxSaidaBankRegister|selected[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[4]~33_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[4]~113_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[4]~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[4]~113_combout\,
	datad => \fd|BankRegister|muxB|selected[4]~115_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[4]~33_combout\);

-- Location: LCCOMB_X56_Y45_N12
\fd|ALU|adder|addsloop:4:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(4) & ((\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[4]~33_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(4) & (\fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[4]~33_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[4]~33_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|BankRegister|muxA|selected\(4),
	datad => \fd|ALU|adder|addsloop:3:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y48_N14
\fd|BankRegister|add1to8|DOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|DOUT[5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[5]~68_combout\,
	combout => \fd|BankRegister|add1to8|DOUT[5]~feeder_combout\);

-- Location: FF_X55_Y48_N15
\fd|BankRegister|add1to8|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to8|DOUT[5]~feeder_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(5));

-- Location: LCCOMB_X57_Y48_N20
\fd|BankRegister|add1to6|DOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\ = \fd|MuxRegRam|selected[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[5]~68_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\);

-- Location: FF_X57_Y48_N21
\fd|BankRegister|add1to6|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[5]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(5));

-- Location: FF_X56_Y48_N17
\fd|BankRegister|add1to7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~68_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(5));

-- Location: FF_X56_Y48_N25
\fd|BankRegister|add1to5|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[5]~68_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(5));

-- Location: LCCOMB_X56_Y48_N16
\fd|BankRegister|muxB|selected[5]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~108_combout\ = (\fd|Rom|q\(16) & (\fd|Rom|q\(17))) # (!\fd|Rom|q\(16) & ((\fd|Rom|q\(17) & (\fd|BankRegister|add1to7|DOUT\(5))) # (!\fd|Rom|q\(17) & ((\fd|BankRegister|add1to5|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to7|DOUT\(5),
	datad => \fd|BankRegister|add1to5|DOUT\(5),
	combout => \fd|BankRegister|muxB|selected[5]~108_combout\);

-- Location: LCCOMB_X56_Y48_N20
\fd|BankRegister|muxB|selected[5]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~109_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[5]~108_combout\ & (\fd|BankRegister|add1to8|DOUT\(5))) # (!\fd|BankRegister|muxB|selected[5]~108_combout\ & ((\fd|BankRegister|add1to6|DOUT\(5)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[5]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(5),
	datac => \fd|BankRegister|add1to6|DOUT\(5),
	datad => \fd|BankRegister|muxB|selected[5]~108_combout\,
	combout => \fd|BankRegister|muxB|selected[5]~109_combout\);

-- Location: FF_X59_Y45_N13
\fd|BankRegister|add1to4|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~68_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(5));

-- Location: FF_X58_Y49_N7
\fd|BankRegister|add1to1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~68_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(5));

-- Location: FF_X58_Y45_N15
\fd|BankRegister|add1to2|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~68_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(5));

-- Location: LCCOMB_X58_Y49_N6
\fd|BankRegister|muxB|selected[5]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~110_combout\ = (\fd|Rom|q\(17) & (\fd|Rom|q\(16))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(5)))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to1|DOUT\(5),
	datad => \fd|BankRegister|add1to2|DOUT\(5),
	combout => \fd|BankRegister|muxB|selected[5]~110_combout\);

-- Location: LCCOMB_X58_Y49_N2
\fd|BankRegister|muxB|selected[5]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[5]~111_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[5]~110_combout\ & (\fd|BankRegister|add1to4|DOUT\(5))) # (!\fd|BankRegister|muxB|selected[5]~110_combout\ & ((\fd|BankRegister|add1to3|DOUT\(5)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[5]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to4|DOUT\(5),
	datac => \fd|BankRegister|add1to3|DOUT\(5),
	datad => \fd|BankRegister|muxB|selected[5]~110_combout\,
	combout => \fd|BankRegister|muxB|selected[5]~111_combout\);

-- Location: LCCOMB_X57_Y45_N12
\fd|MuxSaidaBankRegister|selected[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[5]~31_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[5]~109_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[5]~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[5]~109_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[5]~111_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[5]~31_combout\);

-- Location: LCCOMB_X57_Y45_N30
\fd|MuxSaidaBankRegister|selected[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[5]~32_combout\ = (\fd|MuxSaidaBankRegister|selected[5]~31_combout\) # ((\fd|Rom|q\(5) & \ucfd|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(5),
	datab => \ucfd|Equal1~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[5]~31_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[5]~32_combout\);

-- Location: LCCOMB_X57_Y45_N20
\fd|ALU|final|selected[5]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[5]~115_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[5]~32_combout\,
	combout => \fd|ALU|final|selected[5]~115_combout\);

-- Location: LCCOMB_X59_Y45_N28
\fd|ALU|final|selected[5]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[5]~116_combout\ = (\fd|BankRegister|muxA|selected\(5) & (\fd|UCalu|output\(1) $ (((\fd|ALU|final|selected[5]~115_combout\) # (\fd|UCalu|output\(0)))))) # (!\fd|BankRegister|muxA|selected\(5) & (\fd|ALU|final|selected[5]~115_combout\ 
-- & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(5),
	datab => \fd|ALU|final|selected[5]~115_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[5]~116_combout\);

-- Location: LCCOMB_X56_Y48_N24
\fd|MuxRegRam|selected[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[5]~68_combout\ = (\fd|ALU|final|selected[5]~116_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[5]~116_combout\,
	combout => \fd|MuxRegRam|selected[5]~68_combout\);

-- Location: FF_X58_Y49_N3
\fd|BankRegister|add1to3|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[5]~68_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(5));

-- Location: LCCOMB_X58_Y45_N14
\fd|BankRegister|muxA|selected[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[5]~27_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(5))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(5),
	datad => \fd|BankRegister|add1to1|DOUT\(5),
	combout => \fd|BankRegister|muxA|selected[5]~27_combout\);

-- Location: LCCOMB_X59_Y45_N12
\fd|BankRegister|muxA|selected[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(5) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[5]~27_combout\ & ((\fd|BankRegister|add1to4|DOUT\(5)))) # (!\fd|BankRegister|muxA|selected[5]~27_combout\ & (\fd|BankRegister|add1to3|DOUT\(5))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(5),
	datac => \fd|BankRegister|add1to4|DOUT\(5),
	datad => \fd|BankRegister|muxA|selected[5]~27_combout\,
	combout => \fd|BankRegister|muxA|selected\(5));

-- Location: LCCOMB_X56_Y45_N2
\fd|ALU|adder|addsloop:5:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(5) & ((\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(5) & (\fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(5),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[5]~32_combout\,
	datad => \fd|ALU|adder|addsloop:4:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\);

-- Location: FF_X56_Y48_N7
\fd|BankRegister|add1to5|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[6]~69_combout\,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(6));

-- Location: FF_X56_Y48_N11
\fd|BankRegister|add1to7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~69_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(6));

-- Location: LCCOMB_X56_Y48_N10
\fd|BankRegister|muxB|selected[6]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~104_combout\ = (\fd|Rom|q\(17) & (((\fd|BankRegister|add1to7|DOUT\(6)) # (\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to5|DOUT\(6) & ((!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(6),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to7|DOUT\(6),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[6]~104_combout\);

-- Location: FF_X57_Y47_N11
\fd|BankRegister|add1to8|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~69_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(6));

-- Location: FF_X58_Y47_N17
\fd|BankRegister|add1to6|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~69_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(6));

-- Location: LCCOMB_X57_Y47_N10
\fd|BankRegister|muxB|selected[6]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~105_combout\ = (\fd|BankRegister|muxB|selected[6]~104_combout\ & (((\fd|BankRegister|add1to8|DOUT\(6))) # (!\fd|Rom|q\(16)))) # (!\fd|BankRegister|muxB|selected[6]~104_combout\ & (\fd|Rom|q\(16) & 
-- ((\fd|BankRegister|add1to6|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[6]~104_combout\,
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to8|DOUT\(6),
	datad => \fd|BankRegister|add1to6|DOUT\(6),
	combout => \fd|BankRegister|muxB|selected[6]~105_combout\);

-- Location: FF_X55_Y47_N11
\fd|BankRegister|add1to3|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~69_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(6));

-- Location: FF_X58_Y45_N29
\fd|BankRegister|add1to2|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~69_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(6));

-- Location: FF_X55_Y47_N17
\fd|BankRegister|add1to1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[6]~69_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(6));

-- Location: LCCOMB_X55_Y47_N16
\fd|BankRegister|muxB|selected[6]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~106_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(6)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(6) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to2|DOUT\(6),
	datac => \fd|BankRegister|add1to1|DOUT\(6),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[6]~106_combout\);

-- Location: LCCOMB_X55_Y47_N10
\fd|BankRegister|muxB|selected[6]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[6]~107_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[6]~106_combout\ & (\fd|BankRegister|add1to4|DOUT\(6))) # (!\fd|BankRegister|muxB|selected[6]~106_combout\ & ((\fd|BankRegister|add1to3|DOUT\(6)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[6]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(6),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(6),
	datad => \fd|BankRegister|muxB|selected[6]~106_combout\,
	combout => \fd|BankRegister|muxB|selected[6]~107_combout\);

-- Location: LCCOMB_X55_Y47_N14
\fd|MuxSaidaBankRegister|selected[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[6]~30_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[6]~105_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[6]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|q\(28),
	datac => \fd|BankRegister|muxB|selected[6]~105_combout\,
	datad => \fd|BankRegister|muxB|selected[6]~107_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[6]~30_combout\);

-- Location: LCCOMB_X56_Y47_N10
\fd|ALU|final|selected[6]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[6]~113_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~30_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[6]~30_combout\,
	combout => \fd|ALU|final|selected[6]~113_combout\);

-- Location: LCCOMB_X56_Y48_N18
\fd|ALU|final|selected[6]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[6]~114_combout\ = (\fd|ALU|final|selected[6]~113_combout\ & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|BankRegister|muxA|selected\(6)))))) # (!\fd|ALU|final|selected[6]~113_combout\ & (\fd|BankRegister|muxA|selected\(6) 
-- & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[6]~113_combout\,
	datad => \fd|BankRegister|muxA|selected\(6),
	combout => \fd|ALU|final|selected[6]~114_combout\);

-- Location: LCCOMB_X56_Y48_N6
\fd|MuxRegRam|selected[6]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[6]~69_combout\ = (\fd|ALU|final|selected[6]~114_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[6]~114_combout\,
	combout => \fd|MuxRegRam|selected[6]~69_combout\);

-- Location: LCCOMB_X57_Y47_N4
\fd|BankRegister|add1to4|DOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[6]~feeder_combout\ = \fd|MuxRegRam|selected[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[6]~69_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[6]~feeder_combout\);

-- Location: FF_X57_Y47_N5
\fd|BankRegister|add1to4|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[6]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(6));

-- Location: LCCOMB_X58_Y45_N28
\fd|BankRegister|muxA|selected[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[6]~26_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(6))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(6),
	datad => \fd|BankRegister|add1to1|DOUT\(6),
	combout => \fd|BankRegister|muxA|selected[6]~26_combout\);

-- Location: LCCOMB_X57_Y47_N12
\fd|BankRegister|muxA|selected[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(6) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[6]~26_combout\ & (\fd|BankRegister|add1to4|DOUT\(6))) # (!\fd|BankRegister|muxA|selected[6]~26_combout\ & ((\fd|BankRegister|add1to3|DOUT\(6)))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to4|DOUT\(6),
	datac => \fd|BankRegister|add1to3|DOUT\(6),
	datad => \fd|BankRegister|muxA|selected[6]~26_combout\,
	combout => \fd|BankRegister|muxA|selected\(6));

-- Location: LCCOMB_X56_Y45_N28
\fd|ALU|adder|addsloop:6:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(6) & ((\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~30_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(6) & (\fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(6),
	datac => \fd|MuxSaidaBankRegister|selected[6]~30_combout\,
	datad => \fd|ALU|adder|addsloop:5:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y48_N2
\fd|ALU|final|selected[7]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[7]~111_combout\ = \fd|MuxSaidaBankRegister|selected[7]~29_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[7]~29_combout\,
	datac => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[7]~111_combout\);

-- Location: LCCOMB_X56_Y48_N0
\fd|ALU|final|selected[7]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[7]~112_combout\ = (\fd|BankRegister|muxA|selected\(7) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[7]~111_combout\))))) # (!\fd|BankRegister|muxA|selected\(7) & (\fd|ALU|final|selected[7]~111_combout\ 
-- & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected\(7),
	datad => \fd|ALU|final|selected[7]~111_combout\,
	combout => \fd|ALU|final|selected[7]~112_combout\);

-- Location: LCCOMB_X56_Y48_N12
\fd|MuxRegRam|selected[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[7]~70_combout\ = (\fd|ALU|final|selected[7]~112_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|ALU|final|selected[7]~112_combout\,
	datac => \fd|Rom|q\(28),
	datad => \fd|Rom|q\(31),
	combout => \fd|MuxRegRam|selected[7]~70_combout\);

-- Location: LCCOMB_X57_Y47_N2
\fd|BankRegister|add1to4|DOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[7]~feeder_combout\ = \fd|MuxRegRam|selected[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[7]~70_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[7]~feeder_combout\);

-- Location: FF_X57_Y47_N3
\fd|BankRegister|add1to4|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[7]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(7));

-- Location: LCCOMB_X58_Y45_N26
\fd|BankRegister|muxA|selected[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[7]~25_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(7))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(7),
	datad => \fd|BankRegister|add1to1|DOUT\(7),
	combout => \fd|BankRegister|muxA|selected[7]~25_combout\);

-- Location: LCCOMB_X57_Y47_N24
\fd|BankRegister|muxA|selected[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(7) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[7]~25_combout\ & (\fd|BankRegister|add1to4|DOUT\(7))) # (!\fd|BankRegister|muxA|selected[7]~25_combout\ & ((\fd|BankRegister|add1to3|DOUT\(7)))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[7]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to4|DOUT\(7),
	datac => \fd|BankRegister|muxA|selected[7]~25_combout\,
	datad => \fd|BankRegister|add1to3|DOUT\(7),
	combout => \fd|BankRegister|muxA|selected\(7));

-- Location: LCCOMB_X56_Y45_N10
\fd|ALU|adder|addsloop:7:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(7) & ((\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(7) & (\fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(7),
	datac => \fd|MuxSaidaBankRegister|selected[7]~29_combout\,
	datad => \fd|ALU|adder|addsloop:6:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y48_N0
\fd|ALU|final|selected[8]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[8]~109_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[8]~28_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[8]~28_combout\,
	datad => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[8]~109_combout\);

-- Location: LCCOMB_X55_Y48_N22
\fd|ALU|final|selected[8]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[8]~110_combout\ = (\fd|BankRegister|muxA|selected\(8) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[8]~109_combout\))))) # (!\fd|BankRegister|muxA|selected\(8) & (\fd|ALU|final|selected[8]~109_combout\ 
-- & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected\(8),
	datad => \fd|ALU|final|selected[8]~109_combout\,
	combout => \fd|ALU|final|selected[8]~110_combout\);

-- Location: LCCOMB_X55_Y48_N6
\fd|MuxRegRam|selected[8]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[8]~71_combout\ = (\fd|ALU|final|selected[8]~110_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27))) # (!\fd|Rom|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[8]~110_combout\,
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|Rom|q\(27),
	combout => \fd|MuxRegRam|selected[8]~71_combout\);

-- Location: FF_X57_Y46_N13
\fd|BankRegister|add1to3|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[8]~71_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(8));

-- Location: LCCOMB_X58_Y45_N12
\fd|BankRegister|muxA|selected[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[8]~24_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(8))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(8),
	datad => \fd|BankRegister|add1to1|DOUT\(8),
	combout => \fd|BankRegister|muxA|selected[8]~24_combout\);

-- Location: LCCOMB_X59_Y45_N26
\fd|BankRegister|muxA|selected[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(8) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[8]~24_combout\ & ((\fd|BankRegister|add1to4|DOUT\(8)))) # (!\fd|BankRegister|muxA|selected[8]~24_combout\ & (\fd|BankRegister|add1to3|DOUT\(8))))) # (!\fd|Rom|q\(22) & 
-- (((\fd|BankRegister|muxA|selected[8]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(8),
	datac => \fd|BankRegister|add1to4|DOUT\(8),
	datad => \fd|BankRegister|muxA|selected[8]~24_combout\,
	combout => \fd|BankRegister|muxA|selected\(8));

-- Location: LCCOMB_X56_Y45_N16
\fd|ALU|adder|addsloop:8:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(8) & ((\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[8]~28_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(8) & (\fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[8]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(8),
	datac => \fd|MuxSaidaBankRegister|selected[8]~28_combout\,
	datad => \fd|ALU|adder|addsloop:7:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y49_N30
\fd|BankRegister|add1to7|DOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[9]~72_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[9]~feeder_combout\);

-- Location: FF_X53_Y49_N31
\fd|BankRegister|add1to7|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[9]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(9));

-- Location: FF_X56_Y49_N21
\fd|BankRegister|add1to5|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~72_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(9));

-- Location: LCCOMB_X56_Y49_N20
\fd|BankRegister|muxB|selected[9]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~92_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(9)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(9) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(9),
	datac => \fd|BankRegister|add1to5|DOUT\(9),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[9]~92_combout\);

-- Location: FF_X56_Y46_N21
\fd|BankRegister|add1to6|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[9]~72_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(9));

-- Location: LCCOMB_X55_Y48_N18
\fd|BankRegister|add1to8|DOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|DOUT[9]~feeder_combout\ = \fd|MuxRegRam|selected[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[9]~72_combout\,
	combout => \fd|BankRegister|add1to8|DOUT[9]~feeder_combout\);

-- Location: FF_X55_Y48_N19
\fd|BankRegister|add1to8|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to8|DOUT[9]~feeder_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(9));

-- Location: LCCOMB_X56_Y46_N20
\fd|BankRegister|muxB|selected[9]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~93_combout\ = (\fd|BankRegister|muxB|selected[9]~92_combout\ & (((\fd|BankRegister|add1to8|DOUT\(9))) # (!\fd|Rom|q\(16)))) # (!\fd|BankRegister|muxB|selected[9]~92_combout\ & (\fd|Rom|q\(16) & 
-- (\fd|BankRegister|add1to6|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[9]~92_combout\,
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(9),
	datad => \fd|BankRegister|add1to8|DOUT\(9),
	combout => \fd|BankRegister|muxB|selected[9]~93_combout\);

-- Location: LCCOMB_X57_Y46_N0
\fd|BankRegister|muxB|selected[9]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~94_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(9))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(9),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(9),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[9]~94_combout\);

-- Location: LCCOMB_X57_Y46_N18
\fd|BankRegister|muxB|selected[9]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[9]~95_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[9]~94_combout\ & (\fd|BankRegister|add1to4|DOUT\(9))) # (!\fd|BankRegister|muxB|selected[9]~94_combout\ & ((\fd|BankRegister|add1to3|DOUT\(9)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[9]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(9),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(9),
	datad => \fd|BankRegister|muxB|selected[9]~94_combout\,
	combout => \fd|BankRegister|muxB|selected[9]~95_combout\);

-- Location: LCCOMB_X56_Y46_N30
\fd|MuxSaidaBankRegister|selected[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[9]~27_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[9]~93_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[9]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|BankRegister|muxB|selected[9]~93_combout\,
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[9]~95_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[9]~27_combout\);

-- Location: LCCOMB_X56_Y46_N10
\fd|ALU|final|selected[9]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[9]~107_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\ $ (((\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[9]~27_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[9]~107_combout\);

-- Location: LCCOMB_X55_Y48_N26
\fd|ALU|final|selected[9]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[9]~108_combout\ = (\fd|BankRegister|muxA|selected\(9) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[9]~107_combout\))))) # (!\fd|BankRegister|muxA|selected\(9) & (\fd|ALU|final|selected[9]~107_combout\ 
-- & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(9),
	datab => \fd|UCalu|output\(0),
	datac => \fd|ALU|final|selected[9]~107_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[9]~108_combout\);

-- Location: LCCOMB_X55_Y48_N10
\fd|beqAnd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~2_combout\ = (!\fd|ALU|final|selected[9]~108_combout\ & (!\fd|ALU|final|selected[6]~114_combout\ & (!\fd|ALU|final|selected[7]~112_combout\ & !\fd|ALU|final|selected[8]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[9]~108_combout\,
	datab => \fd|ALU|final|selected[6]~114_combout\,
	datac => \fd|ALU|final|selected[7]~112_combout\,
	datad => \fd|ALU|final|selected[8]~110_combout\,
	combout => \fd|beqAnd~2_combout\);

-- Location: LCCOMB_X59_Y45_N10
\fd|beqAnd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~1_combout\ = (!\fd|ALU|final|selected[2]~122_combout\ & (!\fd|ALU|final|selected[4]~118_combout\ & (!\fd|ALU|final|selected[3]~120_combout\ & !\fd|ALU|final|selected[5]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[2]~122_combout\,
	datab => \fd|ALU|final|selected[4]~118_combout\,
	datac => \fd|ALU|final|selected[3]~120_combout\,
	datad => \fd|ALU|final|selected[5]~116_combout\,
	combout => \fd|beqAnd~1_combout\);

-- Location: LCCOMB_X57_Y49_N16
\fd|MuxRegRam|selected[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[13]~76_combout\ = (\fd|ALU|final|selected[13]~100_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(31),
	datad => \fd|ALU|final|selected[13]~100_combout\,
	combout => \fd|MuxRegRam|selected[13]~76_combout\);

-- Location: FF_X58_Y45_N31
\fd|BankRegister|add1to2|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~76_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(13));

-- Location: FF_X58_Y46_N29
\fd|BankRegister|add1to1|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~76_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(13));

-- Location: LCCOMB_X58_Y45_N30
\fd|BankRegister|muxA|selected[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[13]~19_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(13))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(13),
	datad => \fd|BankRegister|add1to1|DOUT\(13),
	combout => \fd|BankRegister|muxA|selected[13]~19_combout\);

-- Location: FF_X54_Y46_N17
\fd|BankRegister|add1to3|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~76_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(13));

-- Location: FF_X54_Y46_N13
\fd|BankRegister|add1to4|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~76_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(13));

-- Location: LCCOMB_X54_Y46_N12
\fd|BankRegister|muxA|selected[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(13) = (\fd|BankRegister|muxA|selected[13]~19_combout\ & (((\fd|BankRegister|add1to4|DOUT\(13)) # (!\fd|Rom|q\(22))))) # (!\fd|BankRegister|muxA|selected[13]~19_combout\ & (\fd|BankRegister|add1to3|DOUT\(13) & 
-- ((\fd|Rom|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[13]~19_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(13),
	datac => \fd|BankRegister|add1to4|DOUT\(13),
	datad => \fd|Rom|q\(22),
	combout => \fd|BankRegister|muxA|selected\(13));

-- Location: FF_X57_Y49_N17
\fd|BankRegister|add1to8|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[13]~76_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(13));

-- Location: FF_X57_Y49_N31
\fd|BankRegister|add1to6|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~76_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(13));

-- Location: LCCOMB_X56_Y49_N12
\fd|BankRegister|add1to7|DOUT[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[13]~feeder_combout\ = \fd|MuxRegRam|selected[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[13]~76_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[13]~feeder_combout\);

-- Location: FF_X56_Y49_N13
\fd|BankRegister|add1to7|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[13]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(13));

-- Location: FF_X56_Y49_N25
\fd|BankRegister|add1to5|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[13]~76_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(13));

-- Location: LCCOMB_X56_Y49_N24
\fd|BankRegister|muxB|selected[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~76_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(13)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(13) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(13),
	datac => \fd|BankRegister|add1to5|DOUT\(13),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[13]~76_combout\);

-- Location: LCCOMB_X57_Y49_N30
\fd|BankRegister|muxB|selected[13]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~77_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[13]~76_combout\ & (\fd|BankRegister|add1to8|DOUT\(13))) # (!\fd|BankRegister|muxB|selected[13]~76_combout\ & ((\fd|BankRegister|add1to6|DOUT\(13)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[13]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(13),
	datac => \fd|BankRegister|add1to6|DOUT\(13),
	datad => \fd|BankRegister|muxB|selected[13]~76_combout\,
	combout => \fd|BankRegister|muxB|selected[13]~77_combout\);

-- Location: LCCOMB_X58_Y46_N28
\fd|BankRegister|muxB|selected[13]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~78_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(13))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to1|DOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(13),
	datad => \fd|BankRegister|add1to2|DOUT\(13),
	combout => \fd|BankRegister|muxB|selected[13]~78_combout\);

-- Location: LCCOMB_X54_Y46_N16
\fd|BankRegister|muxB|selected[13]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[13]~79_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[13]~78_combout\ & (\fd|BankRegister|add1to4|DOUT\(13))) # (!\fd|BankRegister|muxB|selected[13]~78_combout\ & ((\fd|BankRegister|add1to3|DOUT\(13)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[13]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(13),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(13),
	datad => \fd|BankRegister|muxB|selected[13]~78_combout\,
	combout => \fd|BankRegister|muxB|selected[13]~79_combout\);

-- Location: LCCOMB_X56_Y46_N28
\fd|MuxSaidaBankRegister|selected[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[13]~20_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[13]~77_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[13]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[13]~77_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[13]~79_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxSaidaBankRegister|selected[13]~20_combout\);

-- Location: LCCOMB_X56_Y46_N22
\fd|MuxSaidaBankRegister|selected[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[13]~21_combout\ = (\fd|MuxSaidaBankRegister|selected[13]~20_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|q\(13),
	datad => \fd|MuxSaidaBankRegister|selected[13]~20_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[13]~21_combout\);

-- Location: FF_X54_Y47_N23
\fd|BankRegister|add1to4|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~75_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(12));

-- Location: FF_X58_Y45_N9
\fd|BankRegister|add1to2|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~75_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(12));

-- Location: FF_X56_Y47_N29
\fd|BankRegister|add1to1|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~75_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(12));

-- Location: LCCOMB_X56_Y47_N28
\fd|BankRegister|muxB|selected[12]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~82_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(12)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(12) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to2|DOUT\(12),
	datac => \fd|BankRegister|add1to1|DOUT\(12),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[12]~82_combout\);

-- Location: LCCOMB_X56_Y47_N12
\fd|BankRegister|muxB|selected[12]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~83_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[12]~82_combout\ & (\fd|BankRegister|add1to4|DOUT\(12))) # (!\fd|BankRegister|muxB|selected[12]~82_combout\ & ((\fd|BankRegister|add1to3|DOUT\(12)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[12]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(12),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(12),
	datad => \fd|BankRegister|muxB|selected[12]~82_combout\,
	combout => \fd|BankRegister|muxB|selected[12]~83_combout\);

-- Location: LCCOMB_X53_Y49_N24
\fd|BankRegister|add1to7|DOUT[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[12]~feeder_combout\ = \fd|MuxRegRam|selected[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[12]~75_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[12]~feeder_combout\);

-- Location: FF_X53_Y49_N25
\fd|BankRegister|add1to7|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[12]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(12));

-- Location: FF_X56_Y49_N15
\fd|BankRegister|add1to5|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~75_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(12));

-- Location: LCCOMB_X56_Y49_N14
\fd|BankRegister|muxB|selected[12]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~80_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(12)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(12) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(12),
	datac => \fd|BankRegister|add1to5|DOUT\(12),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[12]~80_combout\);

-- Location: FF_X57_Y49_N19
\fd|BankRegister|add1to8|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[12]~75_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(12));

-- Location: FF_X57_Y49_N1
\fd|BankRegister|add1to6|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~75_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(12));

-- Location: LCCOMB_X57_Y49_N0
\fd|BankRegister|muxB|selected[12]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[12]~81_combout\ = (\fd|BankRegister|muxB|selected[12]~80_combout\ & ((\fd|BankRegister|add1to8|DOUT\(12)) # ((!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[12]~80_combout\ & (((\fd|BankRegister|add1to6|DOUT\(12) & 
-- \fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[12]~80_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(12),
	datac => \fd|BankRegister|add1to6|DOUT\(12),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[12]~81_combout\);

-- Location: LCCOMB_X57_Y49_N24
\fd|MuxSaidaBankRegister|selected[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[12]~22_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[12]~81_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[12]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[12]~83_combout\,
	datad => \fd|BankRegister|muxB|selected[12]~81_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[12]~22_combout\);

-- Location: LCCOMB_X56_Y49_N22
\fd|MuxSaidaBankRegister|selected[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[12]~23_combout\ = (\fd|MuxSaidaBankRegister|selected[12]~22_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[12]~22_combout\,
	datad => \fd|Rom|q\(12),
	combout => \fd|MuxSaidaBankRegister|selected[12]~23_combout\);

-- Location: LCCOMB_X56_Y45_N22
\fd|ALU|adder|addsloop:9:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(9) & ((\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(9) & (\fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[9]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(9),
	datac => \fd|MuxSaidaBankRegister|selected[9]~27_combout\,
	datad => \fd|ALU|adder|addsloop:8:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\);

-- Location: FF_X57_Y47_N31
\fd|BankRegister|add1to4|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~73_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(10));

-- Location: FF_X58_Y45_N17
\fd|BankRegister|add1to2|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~73_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(10));

-- Location: FF_X56_Y47_N19
\fd|BankRegister|add1to1|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~73_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(10));

-- Location: LCCOMB_X56_Y47_N18
\fd|BankRegister|muxB|selected[10]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~90_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(10)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(10) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to2|DOUT\(10),
	datac => \fd|BankRegister|add1to1|DOUT\(10),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[10]~90_combout\);

-- Location: LCCOMB_X56_Y47_N30
\fd|BankRegister|muxB|selected[10]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~91_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[10]~90_combout\ & (\fd|BankRegister|add1to4|DOUT\(10))) # (!\fd|BankRegister|muxB|selected[10]~90_combout\ & ((\fd|BankRegister|add1to3|DOUT\(10)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[10]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(10),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(10),
	datad => \fd|BankRegister|muxB|selected[10]~90_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~91_combout\);

-- Location: FF_X57_Y47_N17
\fd|BankRegister|add1to8|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[10]~73_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(10));

-- Location: FF_X56_Y46_N7
\fd|BankRegister|add1to6|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~73_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(10));

-- Location: LCCOMB_X56_Y49_N10
\fd|BankRegister|add1to5|DOUT[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\ = \fd|MuxRegRam|selected[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[10]~73_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[10]~feeder_combout\);

-- Location: FF_X56_Y49_N11
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

-- Location: FF_X56_Y49_N9
\fd|BankRegister|add1to7|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~73_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(10));

-- Location: LCCOMB_X56_Y49_N8
\fd|BankRegister|muxB|selected[10]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~88_combout\ = (\fd|Rom|q\(17) & (((\fd|BankRegister|add1to7|DOUT\(10)) # (\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to5|DOUT\(10) & ((!\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to5|DOUT\(10),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to7|DOUT\(10),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[10]~88_combout\);

-- Location: LCCOMB_X56_Y46_N6
\fd|BankRegister|muxB|selected[10]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[10]~89_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[10]~88_combout\ & (\fd|BankRegister|add1to8|DOUT\(10))) # (!\fd|BankRegister|muxB|selected[10]~88_combout\ & ((\fd|BankRegister|add1to6|DOUT\(10)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[10]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(10),
	datac => \fd|BankRegister|add1to6|DOUT\(10),
	datad => \fd|BankRegister|muxB|selected[10]~88_combout\,
	combout => \fd|BankRegister|muxB|selected[10]~89_combout\);

-- Location: LCCOMB_X56_Y46_N16
\fd|MuxSaidaBankRegister|selected[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[10]~26_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[10]~89_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[10]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[10]~91_combout\,
	datad => \fd|BankRegister|muxB|selected[10]~89_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[10]~26_combout\);

-- Location: LCCOMB_X55_Y46_N18
\fd|ALU|final|selected[10]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[10]~105_combout\ = \fd|MuxSaidaBankRegister|selected[10]~26_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[10]~26_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[10]~105_combout\);

-- Location: LCCOMB_X54_Y46_N6
\fd|ALU|final|selected[10]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[10]~106_combout\ = (\fd|BankRegister|muxA|selected\(10) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[10]~105_combout\))))) # (!\fd|BankRegister|muxA|selected\(10) & 
-- (\fd|ALU|final|selected[10]~105_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(10),
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[10]~105_combout\,
	combout => \fd|ALU|final|selected[10]~106_combout\);

-- Location: LCCOMB_X57_Y47_N16
\fd|MuxRegRam|selected[10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[10]~73_combout\ = (\fd|ALU|final|selected[10]~106_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27))) # (!\fd|Rom|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[10]~106_combout\,
	combout => \fd|MuxRegRam|selected[10]~73_combout\);

-- Location: FF_X56_Y47_N31
\fd|BankRegister|add1to3|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[10]~73_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(10));

-- Location: LCCOMB_X58_Y45_N16
\fd|BankRegister|muxA|selected[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[10]~22_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(10))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(10),
	datad => \fd|BankRegister|add1to1|DOUT\(10),
	combout => \fd|BankRegister|muxA|selected[10]~22_combout\);

-- Location: LCCOMB_X57_Y47_N6
\fd|BankRegister|muxA|selected[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(10) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[10]~22_combout\ & ((\fd|BankRegister|add1to4|DOUT\(10)))) # (!\fd|BankRegister|muxA|selected[10]~22_combout\ & (\fd|BankRegister|add1to3|DOUT\(10))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[10]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(10),
	datac => \fd|BankRegister|add1to4|DOUT\(10),
	datad => \fd|BankRegister|muxA|selected[10]~22_combout\,
	combout => \fd|BankRegister|muxA|selected\(10));

-- Location: LCCOMB_X56_Y45_N24
\fd|ALU|adder|addsloop:10:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(10) & ((\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~26_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(10) & (\fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[10]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(10),
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:9:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[10]~26_combout\,
	combout => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y49_N6
\fd|BankRegister|add1to7|DOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[11]~74_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[11]~feeder_combout\);

-- Location: FF_X56_Y49_N7
\fd|BankRegister|add1to7|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[11]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(11));

-- Location: FF_X56_Y49_N17
\fd|BankRegister|add1to5|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~74_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(11));

-- Location: LCCOMB_X56_Y49_N16
\fd|BankRegister|muxB|selected[11]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~84_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(11)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(11) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(11),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(11),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[11]~84_combout\);

-- Location: FF_X57_Y49_N15
\fd|BankRegister|add1to6|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~74_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(11));

-- Location: FF_X57_Y49_N7
\fd|BankRegister|add1to8|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[11]~74_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(11));

-- Location: LCCOMB_X57_Y49_N14
\fd|BankRegister|muxB|selected[11]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~85_combout\ = (\fd|BankRegister|muxB|selected[11]~84_combout\ & (((\fd|BankRegister|add1to8|DOUT\(11))) # (!\fd|Rom|q\(16)))) # (!\fd|BankRegister|muxB|selected[11]~84_combout\ & (\fd|Rom|q\(16) & 
-- (\fd|BankRegister|add1to6|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[11]~84_combout\,
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(11),
	datad => \fd|BankRegister|add1to8|DOUT\(11),
	combout => \fd|BankRegister|muxB|selected[11]~85_combout\);

-- Location: FF_X58_Y46_N31
\fd|BankRegister|add1to1|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~74_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(11));

-- Location: FF_X58_Y45_N19
\fd|BankRegister|add1to2|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~74_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(11));

-- Location: LCCOMB_X58_Y46_N30
\fd|BankRegister|muxB|selected[11]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~86_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(11))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to1|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(11),
	datad => \fd|BankRegister|add1to2|DOUT\(11),
	combout => \fd|BankRegister|muxB|selected[11]~86_combout\);

-- Location: LCCOMB_X57_Y47_N20
\fd|BankRegister|add1to4|DOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[11]~feeder_combout\ = \fd|MuxRegRam|selected[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[11]~74_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[11]~feeder_combout\);

-- Location: FF_X57_Y47_N21
\fd|BankRegister|add1to4|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[11]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(11));

-- Location: LCCOMB_X58_Y46_N0
\fd|BankRegister|muxB|selected[11]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[11]~87_combout\ = (\fd|BankRegister|muxB|selected[11]~86_combout\ & (((\fd|BankRegister|add1to4|DOUT\(11))) # (!\fd|Rom|q\(17)))) # (!\fd|BankRegister|muxB|selected[11]~86_combout\ & (\fd|Rom|q\(17) & 
-- (\fd|BankRegister|add1to3|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[11]~86_combout\,
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(11),
	datad => \fd|BankRegister|add1to4|DOUT\(11),
	combout => \fd|BankRegister|muxB|selected[11]~87_combout\);

-- Location: LCCOMB_X57_Y49_N12
\fd|MuxSaidaBankRegister|selected[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[11]~24_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[11]~85_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[11]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[11]~85_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[11]~87_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxSaidaBankRegister|selected[11]~24_combout\);

-- Location: LCCOMB_X57_Y49_N10
\fd|MuxSaidaBankRegister|selected[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[11]~25_combout\ = (\fd|MuxSaidaBankRegister|selected[11]~24_combout\) # ((\ucfd|Equal1~0_combout\ & \fd|Rom|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|Rom|q\(11),
	datad => \fd|MuxSaidaBankRegister|selected[11]~24_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[11]~25_combout\);

-- Location: LCCOMB_X56_Y46_N8
\fd|ALU|final|selected[11]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[11]~103_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[11]~25_combout\ $ (((\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\,
	datac => \fd|MuxSaidaBankRegister|selected[11]~25_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[11]~103_combout\);

-- Location: LCCOMB_X54_Y46_N20
\fd|ALU|final|selected[11]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[11]~104_combout\ = (\fd|BankRegister|muxA|selected\(11) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[11]~103_combout\))))) # (!\fd|BankRegister|muxA|selected\(11) & 
-- (\fd|ALU|final|selected[11]~103_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(11),
	datad => \fd|ALU|final|selected[11]~103_combout\,
	combout => \fd|ALU|final|selected[11]~104_combout\);

-- Location: LCCOMB_X57_Y49_N6
\fd|MuxRegRam|selected[11]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[11]~74_combout\ = (\fd|ALU|final|selected[11]~104_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(31),
	datad => \fd|ALU|final|selected[11]~104_combout\,
	combout => \fd|MuxRegRam|selected[11]~74_combout\);

-- Location: FF_X58_Y46_N1
\fd|BankRegister|add1to3|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[11]~74_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(11));

-- Location: LCCOMB_X58_Y45_N18
\fd|BankRegister|muxA|selected[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[11]~21_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(11)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(11),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(11),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[11]~21_combout\);

-- Location: LCCOMB_X57_Y47_N14
\fd|BankRegister|muxA|selected[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(11) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[11]~21_combout\ & ((\fd|BankRegister|add1to4|DOUT\(11)))) # (!\fd|BankRegister|muxA|selected[11]~21_combout\ & (\fd|BankRegister|add1to3|DOUT\(11))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(11),
	datac => \fd|BankRegister|muxA|selected[11]~21_combout\,
	datad => \fd|BankRegister|add1to4|DOUT\(11),
	combout => \fd|BankRegister|muxA|selected\(11));

-- Location: LCCOMB_X56_Y45_N26
\fd|ALU|adder|addsloop:11:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(11) & ((\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[11]~25_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(11) & (\fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(11),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[11]~25_combout\,
	datad => \fd|ALU|adder|addsloop:10:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y46_N28
\fd|ALU|final|selected[12]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[12]~101_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[12]~23_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[12]~23_combout\,
	datad => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[12]~101_combout\);

-- Location: LCCOMB_X54_Y46_N14
\fd|ALU|final|selected[12]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[12]~102_combout\ = (\fd|BankRegister|muxA|selected\(12) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[12]~101_combout\))))) # (!\fd|BankRegister|muxA|selected\(12) & 
-- (\fd|ALU|final|selected[12]~101_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(12),
	datad => \fd|ALU|final|selected[12]~101_combout\,
	combout => \fd|ALU|final|selected[12]~102_combout\);

-- Location: LCCOMB_X57_Y49_N18
\fd|MuxRegRam|selected[12]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[12]~75_combout\ = (\fd|ALU|final|selected[12]~102_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(31),
	datad => \fd|ALU|final|selected[12]~102_combout\,
	combout => \fd|MuxRegRam|selected[12]~75_combout\);

-- Location: FF_X56_Y47_N13
\fd|BankRegister|add1to3|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[12]~75_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(12));

-- Location: LCCOMB_X58_Y45_N8
\fd|BankRegister|muxA|selected[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[12]~20_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(12))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & ((\fd|BankRegister|add1to1|DOUT\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to2|DOUT\(12),
	datad => \fd|BankRegister|add1to1|DOUT\(12),
	combout => \fd|BankRegister|muxA|selected[12]~20_combout\);

-- Location: LCCOMB_X54_Y47_N22
\fd|BankRegister|muxA|selected[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(12) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[12]~20_combout\ & ((\fd|BankRegister|add1to4|DOUT\(12)))) # (!\fd|BankRegister|muxA|selected[12]~20_combout\ & (\fd|BankRegister|add1to3|DOUT\(12))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(12),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to4|DOUT\(12),
	datad => \fd|BankRegister|muxA|selected[12]~20_combout\,
	combout => \fd|BankRegister|muxA|selected\(12));

-- Location: LCCOMB_X55_Y45_N12
\fd|ALU|adder|addsloop:12:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(12) & ((\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[12]~23_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(12) & (\fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[12]~23_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(12),
	datab => \fd|MuxSaidaBankRegister|selected[12]~23_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:11:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y46_N24
\fd|ALU|final|selected[13]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[13]~99_combout\ = \fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[13]~21_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[13]~99_combout\);

-- Location: LCCOMB_X54_Y46_N10
\fd|ALU|final|selected[13]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[13]~100_combout\ = (\fd|BankRegister|muxA|selected\(13) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[13]~99_combout\))))) # (!\fd|BankRegister|muxA|selected\(13) & 
-- (\fd|ALU|final|selected[13]~99_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(13),
	datad => \fd|ALU|final|selected[13]~99_combout\,
	combout => \fd|ALU|final|selected[13]~100_combout\);

-- Location: LCCOMB_X54_Y46_N26
\fd|beqAnd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~3_combout\ = (!\fd|ALU|final|selected[13]~100_combout\ & (!\fd|ALU|final|selected[11]~104_combout\ & (!\fd|ALU|final|selected[12]~102_combout\ & !\fd|ALU|final|selected[10]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[13]~100_combout\,
	datab => \fd|ALU|final|selected[11]~104_combout\,
	datac => \fd|ALU|final|selected[12]~102_combout\,
	datad => \fd|ALU|final|selected[10]~106_combout\,
	combout => \fd|beqAnd~3_combout\);

-- Location: LCCOMB_X55_Y49_N8
\fd|MuxRegRam|selected[16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[16]~79_combout\ = (\fd|ALU|final|selected[16]~94_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[16]~94_combout\,
	combout => \fd|MuxRegRam|selected[16]~79_combout\);

-- Location: FF_X58_Y49_N13
\fd|BankRegister|add1to1|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~79_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(16));

-- Location: LCCOMB_X59_Y49_N30
\fd|BankRegister|add1to2|DOUT[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[16]~79_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[16]~feeder_combout\);

-- Location: FF_X59_Y49_N31
\fd|BankRegister|add1to2|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[16]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(16));

-- Location: LCCOMB_X59_Y49_N16
\fd|BankRegister|muxA|selected[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[16]~16_combout\ = (\fd|Rom|q\(21) & (((\fd|Rom|q\(22)) # (\fd|BankRegister|add1to2|DOUT\(16))))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(16) & (!\fd|Rom|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(16),
	datab => \fd|Rom|q\(21),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|add1to2|DOUT\(16),
	combout => \fd|BankRegister|muxA|selected[16]~16_combout\);

-- Location: FF_X58_Y49_N5
\fd|BankRegister|add1to3|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~79_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(16));

-- Location: LCCOMB_X59_Y49_N18
\fd|BankRegister|add1to4|DOUT[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[16]~79_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[16]~feeder_combout\);

-- Location: FF_X59_Y49_N19
\fd|BankRegister|add1to4|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[16]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(16));

-- Location: LCCOMB_X59_Y49_N26
\fd|BankRegister|muxA|selected[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(16) = (\fd|BankRegister|muxA|selected[16]~16_combout\ & (((\fd|BankRegister|add1to4|DOUT\(16))) # (!\fd|Rom|q\(22)))) # (!\fd|BankRegister|muxA|selected[16]~16_combout\ & (\fd|Rom|q\(22) & 
-- (\fd|BankRegister|add1to3|DOUT\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[16]~16_combout\,
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to3|DOUT\(16),
	datad => \fd|BankRegister|add1to4|DOUT\(16),
	combout => \fd|BankRegister|muxA|selected\(16));

-- Location: FF_X58_Y49_N15
\fd|BankRegister|add1to1|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~78_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(15));

-- Location: LCCOMB_X59_Y49_N24
\fd|BankRegister|add1to2|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~78_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[15]~feeder_combout\);

-- Location: FF_X59_Y49_N25
\fd|BankRegister|add1to2|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[15]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(15));

-- Location: LCCOMB_X58_Y49_N14
\fd|BankRegister|muxB|selected[15]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~70_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(15))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to1|DOUT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(15),
	datad => \fd|BankRegister|add1to2|DOUT\(15),
	combout => \fd|BankRegister|muxB|selected[15]~70_combout\);

-- Location: FF_X58_Y49_N19
\fd|BankRegister|add1to3|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~78_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(15));

-- Location: LCCOMB_X58_Y49_N18
\fd|BankRegister|muxB|selected[15]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~71_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[15]~70_combout\ & ((\fd|BankRegister|add1to4|DOUT\(15)))) # (!\fd|BankRegister|muxB|selected[15]~70_combout\ & (\fd|BankRegister|add1to3|DOUT\(15))))) # 
-- (!\fd|Rom|q\(17) & (\fd|BankRegister|muxB|selected[15]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|muxB|selected[15]~70_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(15),
	datad => \fd|BankRegister|add1to4|DOUT\(15),
	combout => \fd|BankRegister|muxB|selected[15]~71_combout\);

-- Location: FF_X55_Y49_N7
\fd|BankRegister|add1to8|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[15]~78_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(15));

-- Location: LCCOMB_X53_Y49_N4
\fd|BankRegister|add1to6|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~78_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[15]~feeder_combout\);

-- Location: FF_X53_Y49_N5
\fd|BankRegister|add1to6|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[15]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(15));

-- Location: LCCOMB_X53_Y49_N20
\fd|BankRegister|add1to7|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~78_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[15]~feeder_combout\);

-- Location: FF_X53_Y49_N21
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

-- Location: FF_X56_Y49_N29
\fd|BankRegister|add1to5|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[15]~78_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(15));

-- Location: LCCOMB_X56_Y49_N28
\fd|BankRegister|muxB|selected[15]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~68_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(15)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(15) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(15),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(15),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[15]~68_combout\);

-- Location: LCCOMB_X57_Y49_N26
\fd|BankRegister|muxB|selected[15]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[15]~69_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[15]~68_combout\ & (\fd|BankRegister|add1to8|DOUT\(15))) # (!\fd|BankRegister|muxB|selected[15]~68_combout\ & ((\fd|BankRegister|add1to6|DOUT\(15)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[15]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(15),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(15),
	datad => \fd|BankRegister|muxB|selected[15]~68_combout\,
	combout => \fd|BankRegister|muxB|selected[15]~69_combout\);

-- Location: LCCOMB_X58_Y49_N0
\fd|MuxSaidaBankRegister|selected[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[15]~18_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[15]~69_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[15]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[15]~71_combout\,
	datac => \fd|BankRegister|muxB|selected[15]~69_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxSaidaBankRegister|selected[15]~18_combout\);

-- Location: FF_X55_Y49_N5
\fd|BankRegister|add1to8|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[14]~77_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(14));

-- Location: FF_X55_Y49_N21
\fd|BankRegister|add1to6|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~77_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(14));

-- Location: LCCOMB_X53_Y49_N10
\fd|BankRegister|add1to7|DOUT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\ = \fd|MuxRegRam|selected[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[14]~77_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[14]~feeder_combout\);

-- Location: FF_X53_Y49_N11
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

-- Location: FF_X56_Y49_N19
\fd|BankRegister|add1to5|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~77_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(14));

-- Location: LCCOMB_X56_Y49_N18
\fd|BankRegister|muxB|selected[14]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~72_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(14)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(14) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(14),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(14),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[14]~72_combout\);

-- Location: LCCOMB_X55_Y49_N20
\fd|BankRegister|muxB|selected[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~73_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[14]~72_combout\ & (\fd|BankRegister|add1to8|DOUT\(14))) # (!\fd|BankRegister|muxB|selected[14]~72_combout\ & ((\fd|BankRegister|add1to6|DOUT\(14)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[14]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(14),
	datac => \fd|BankRegister|add1to6|DOUT\(14),
	datad => \fd|BankRegister|muxB|selected[14]~72_combout\,
	combout => \fd|BankRegister|muxB|selected[14]~73_combout\);

-- Location: FF_X52_Y46_N29
\fd|BankRegister|add1to4|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~77_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(14));

-- Location: FF_X58_Y49_N21
\fd|BankRegister|add1to1|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~77_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(14));

-- Location: FF_X52_Y46_N17
\fd|BankRegister|add1to2|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~77_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(14));

-- Location: LCCOMB_X58_Y49_N20
\fd|BankRegister|muxB|selected[14]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~74_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(14))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to1|DOUT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(14),
	datad => \fd|BankRegister|add1to2|DOUT\(14),
	combout => \fd|BankRegister|muxB|selected[14]~74_combout\);

-- Location: LCCOMB_X58_Y49_N8
\fd|BankRegister|muxB|selected[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[14]~75_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[14]~74_combout\ & (\fd|BankRegister|add1to4|DOUT\(14))) # (!\fd|BankRegister|muxB|selected[14]~74_combout\ & ((\fd|BankRegister|add1to3|DOUT\(14)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[14]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to4|DOUT\(14),
	datac => \fd|BankRegister|add1to3|DOUT\(14),
	datad => \fd|BankRegister|muxB|selected[14]~74_combout\,
	combout => \fd|BankRegister|muxB|selected[14]~75_combout\);

-- Location: LCCOMB_X55_Y49_N14
\fd|MuxSaidaBankRegister|selected[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[14]~19_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[14]~73_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[14]~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[14]~73_combout\,
	datac => \fd|Rom|q\(28),
	datad => \fd|BankRegister|muxB|selected[14]~75_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[14]~19_combout\);

-- Location: LCCOMB_X55_Y45_N2
\fd|ALU|adder|addsloop:13:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(13) & ((\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(13) & (\fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[13]~21_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[13]~21_combout\,
	datab => \fd|BankRegister|muxA|selected\(13),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:12:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y46_N8
\fd|ALU|final|selected[14]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[14]~97_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~19_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[14]~19_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[14]~97_combout\);

-- Location: LCCOMB_X54_Y46_N18
\fd|ALU|final|selected[14]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[14]~98_combout\ = (\fd|BankRegister|muxA|selected\(14) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[14]~97_combout\))))) # (!\fd|BankRegister|muxA|selected\(14) & 
-- (\fd|ALU|final|selected[14]~97_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(14),
	datac => \fd|ALU|final|selected[14]~97_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[14]~98_combout\);

-- Location: LCCOMB_X55_Y49_N4
\fd|MuxRegRam|selected[14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[14]~77_combout\ = (\fd|ALU|final|selected[14]~98_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[14]~98_combout\,
	combout => \fd|MuxRegRam|selected[14]~77_combout\);

-- Location: FF_X58_Y49_N9
\fd|BankRegister|add1to3|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[14]~77_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(14));

-- Location: LCCOMB_X52_Y46_N16
\fd|BankRegister|muxA|selected[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[14]~18_combout\ = (\fd|Rom|q\(22) & (\fd|Rom|q\(21))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & (\fd|BankRegister|add1to2|DOUT\(14))) # (!\fd|Rom|q\(21) & ((\fd|BankRegister|add1to1|DOUT\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|Rom|q\(21),
	datac => \fd|BankRegister|add1to2|DOUT\(14),
	datad => \fd|BankRegister|add1to1|DOUT\(14),
	combout => \fd|BankRegister|muxA|selected[14]~18_combout\);

-- Location: LCCOMB_X52_Y46_N28
\fd|BankRegister|muxA|selected[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(14) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[14]~18_combout\ & ((\fd|BankRegister|add1to4|DOUT\(14)))) # (!\fd|BankRegister|muxA|selected[14]~18_combout\ & (\fd|BankRegister|add1to3|DOUT\(14))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(14),
	datac => \fd|BankRegister|add1to4|DOUT\(14),
	datad => \fd|BankRegister|muxA|selected[14]~18_combout\,
	combout => \fd|BankRegister|muxA|selected\(14));

-- Location: LCCOMB_X55_Y45_N20
\fd|ALU|adder|addsloop:14:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(14) & ((\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~19_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(14) & (\fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(14),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[14]~19_combout\,
	datad => \fd|ALU|adder|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y49_N24
\fd|ALU|final|selected[15]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[15]~95_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	datad => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[15]~95_combout\);

-- Location: LCCOMB_X55_Y49_N18
\fd|ALU|final|selected[15]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[15]~96_combout\ = (\fd|BankRegister|muxA|selected\(15) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[15]~95_combout\))))) # (!\fd|BankRegister|muxA|selected\(15) & 
-- (\fd|ALU|final|selected[15]~95_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(15),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[15]~95_combout\,
	combout => \fd|ALU|final|selected[15]~96_combout\);

-- Location: LCCOMB_X55_Y49_N6
\fd|MuxRegRam|selected[15]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[15]~78_combout\ = (\fd|ALU|final|selected[15]~96_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[15]~96_combout\,
	combout => \fd|MuxRegRam|selected[15]~78_combout\);

-- Location: LCCOMB_X59_Y49_N12
\fd|BankRegister|add1to4|DOUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[15]~feeder_combout\ = \fd|MuxRegRam|selected[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[15]~78_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[15]~feeder_combout\);

-- Location: FF_X59_Y49_N13
\fd|BankRegister|add1to4|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[15]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(15));

-- Location: LCCOMB_X59_Y49_N28
\fd|BankRegister|muxA|selected[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[15]~17_combout\ = (\fd|Rom|q\(21) & (((\fd|Rom|q\(22)) # (\fd|BankRegister|add1to2|DOUT\(15))))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(15) & (!\fd|Rom|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(15),
	datab => \fd|Rom|q\(21),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|add1to2|DOUT\(15),
	combout => \fd|BankRegister|muxA|selected[15]~17_combout\);

-- Location: LCCOMB_X59_Y49_N6
\fd|BankRegister|muxA|selected[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(15) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[15]~17_combout\ & (\fd|BankRegister|add1to4|DOUT\(15))) # (!\fd|BankRegister|muxA|selected[15]~17_combout\ & ((\fd|BankRegister|add1to3|DOUT\(15)))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(15),
	datab => \fd|BankRegister|add1to3|DOUT\(15),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|muxA|selected[15]~17_combout\,
	combout => \fd|BankRegister|muxA|selected\(15));

-- Location: LCCOMB_X55_Y45_N10
\fd|ALU|adder|addsloop:15:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(15) & ((\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(15) & (\fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[15]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(15),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[15]~18_combout\,
	datad => \fd|ALU|adder|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\);

-- Location: FF_X55_Y49_N9
\fd|BankRegister|add1to8|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[16]~79_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(16));

-- Location: LCCOMB_X53_Y49_N14
\fd|BankRegister|add1to6|DOUT[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[16]~79_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[16]~feeder_combout\);

-- Location: FF_X53_Y49_N15
\fd|BankRegister|add1to6|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[16]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(16));

-- Location: LCCOMB_X53_Y49_N22
\fd|BankRegister|add1to7|DOUT[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[16]~feeder_combout\ = \fd|MuxRegRam|selected[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[16]~79_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[16]~feeder_combout\);

-- Location: FF_X53_Y49_N23
\fd|BankRegister|add1to7|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[16]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(16));

-- Location: FF_X56_Y49_N3
\fd|BankRegister|add1to5|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[16]~79_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(16));

-- Location: LCCOMB_X56_Y49_N2
\fd|BankRegister|muxB|selected[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~64_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(16)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(16) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(16),
	datac => \fd|BankRegister|add1to5|DOUT\(16),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[16]~64_combout\);

-- Location: LCCOMB_X58_Y49_N28
\fd|BankRegister|muxB|selected[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~65_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[16]~64_combout\ & (\fd|BankRegister|add1to8|DOUT\(16))) # (!\fd|BankRegister|muxB|selected[16]~64_combout\ & ((\fd|BankRegister|add1to6|DOUT\(16)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[16]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(16),
	datab => \fd|BankRegister|add1to6|DOUT\(16),
	datac => \fd|Rom|q\(16),
	datad => \fd|BankRegister|muxB|selected[16]~64_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~65_combout\);

-- Location: LCCOMB_X58_Y49_N12
\fd|BankRegister|muxB|selected[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~66_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(16))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(16),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[16]~66_combout\);

-- Location: LCCOMB_X58_Y49_N4
\fd|BankRegister|muxB|selected[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[16]~67_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[16]~66_combout\ & (\fd|BankRegister|add1to4|DOUT\(16))) # (!\fd|BankRegister|muxB|selected[16]~66_combout\ & ((\fd|BankRegister|add1to3|DOUT\(16)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[16]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to4|DOUT\(16),
	datac => \fd|BankRegister|add1to3|DOUT\(16),
	datad => \fd|BankRegister|muxB|selected[16]~66_combout\,
	combout => \fd|BankRegister|muxB|selected[16]~67_combout\);

-- Location: LCCOMB_X58_Y49_N22
\fd|MuxSaidaBankRegister|selected[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[16]~17_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[16]~65_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[16]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[16]~65_combout\,
	datac => \fd|BankRegister|muxB|selected[16]~67_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxSaidaBankRegister|selected[16]~17_combout\);

-- Location: LCCOMB_X55_Y49_N12
\fd|ALU|final|selected[16]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[16]~93_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[16]~17_combout\ $ (((\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|MuxSaidaBankRegister|selected[16]~17_combout\,
	combout => \fd|ALU|final|selected[16]~93_combout\);

-- Location: LCCOMB_X55_Y49_N10
\fd|ALU|final|selected[16]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[16]~94_combout\ = (\fd|BankRegister|muxA|selected\(16) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[16]~93_combout\))))) # (!\fd|BankRegister|muxA|selected\(16) & 
-- (\fd|ALU|final|selected[16]~93_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(16),
	datad => \fd|ALU|final|selected[16]~93_combout\,
	combout => \fd|ALU|final|selected[16]~94_combout\);

-- Location: LCCOMB_X55_Y49_N22
\fd|MuxRegRam|selected[17]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[17]~80_combout\ = (\fd|ALU|final|selected[17]~92_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(27)) # (!\fd|Rom|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(31),
	datac => \fd|ALU|final|selected[17]~92_combout\,
	datad => \fd|Rom|q\(27),
	combout => \fd|MuxRegRam|selected[17]~80_combout\);

-- Location: FF_X58_Y49_N11
\fd|BankRegister|add1to3|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~80_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(17));

-- Location: FF_X54_Y47_N21
\fd|BankRegister|add1to4|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~80_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(17));

-- Location: FF_X58_Y49_N31
\fd|BankRegister|add1to1|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~80_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(17));

-- Location: FF_X54_Y47_N1
\fd|BankRegister|add1to2|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~80_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(17));

-- Location: LCCOMB_X54_Y47_N0
\fd|BankRegister|muxA|selected[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[17]~15_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(17)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to1|DOUT\(17),
	datac => \fd|BankRegister|add1to2|DOUT\(17),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[17]~15_combout\);

-- Location: LCCOMB_X54_Y47_N20
\fd|BankRegister|muxA|selected[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(17) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[17]~15_combout\ & ((\fd|BankRegister|add1to4|DOUT\(17)))) # (!\fd|BankRegister|muxA|selected[17]~15_combout\ & (\fd|BankRegister|add1to3|DOUT\(17))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[17]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(17),
	datac => \fd|BankRegister|add1to4|DOUT\(17),
	datad => \fd|BankRegister|muxA|selected[17]~15_combout\,
	combout => \fd|BankRegister|muxA|selected\(17));

-- Location: LCCOMB_X58_Y49_N30
\fd|BankRegister|muxB|selected[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~62_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(17))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to1|DOUT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(17),
	datad => \fd|BankRegister|add1to2|DOUT\(17),
	combout => \fd|BankRegister|muxB|selected[17]~62_combout\);

-- Location: LCCOMB_X58_Y49_N10
\fd|BankRegister|muxB|selected[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~63_combout\ = (\fd|BankRegister|muxB|selected[17]~62_combout\ & (((\fd|BankRegister|add1to4|DOUT\(17))) # (!\fd|Rom|q\(17)))) # (!\fd|BankRegister|muxB|selected[17]~62_combout\ & (\fd|Rom|q\(17) & 
-- (\fd|BankRegister|add1to3|DOUT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[17]~62_combout\,
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(17),
	datad => \fd|BankRegister|add1to4|DOUT\(17),
	combout => \fd|BankRegister|muxB|selected[17]~63_combout\);

-- Location: LCCOMB_X53_Y49_N12
\fd|BankRegister|add1to6|DOUT[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to6|DOUT[17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[17]~80_combout\,
	combout => \fd|BankRegister|add1to6|DOUT[17]~feeder_combout\);

-- Location: FF_X53_Y49_N13
\fd|BankRegister|add1to6|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to6|DOUT[17]~feeder_combout\,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(17));

-- Location: LCCOMB_X53_Y49_N16
\fd|BankRegister|add1to7|DOUT[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[17]~feeder_combout\ = \fd|MuxRegRam|selected[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[17]~80_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[17]~feeder_combout\);

-- Location: FF_X53_Y49_N17
\fd|BankRegister|add1to7|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[17]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(17));

-- Location: FF_X56_Y49_N5
\fd|BankRegister|add1to5|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[17]~80_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(17));

-- Location: LCCOMB_X56_Y49_N4
\fd|BankRegister|muxB|selected[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~60_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(17)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(17) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(17),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(17),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[17]~60_combout\);

-- Location: FF_X55_Y49_N23
\fd|BankRegister|add1to8|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[17]~80_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(17));

-- Location: LCCOMB_X53_Y49_N28
\fd|BankRegister|muxB|selected[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[17]~61_combout\ = (\fd|BankRegister|muxB|selected[17]~60_combout\ & (((\fd|BankRegister|add1to8|DOUT\(17)) # (!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[17]~60_combout\ & (\fd|BankRegister|add1to6|DOUT\(17) & 
-- ((\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to6|DOUT\(17),
	datab => \fd|BankRegister|muxB|selected[17]~60_combout\,
	datac => \fd|BankRegister|add1to8|DOUT\(17),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[17]~61_combout\);

-- Location: LCCOMB_X53_Y49_N6
\fd|MuxSaidaBankRegister|selected[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[17]~16_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[17]~61_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[17]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[17]~63_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[17]~61_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[17]~16_combout\);

-- Location: LCCOMB_X55_Y45_N4
\fd|ALU|adder|addsloop:16:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(16) & ((\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[16]~17_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(16) & (\fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[16]~17_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[16]~17_combout\,
	datab => \fd|BankRegister|muxA|selected\(16),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:15:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y49_N28
\fd|ALU|final|selected[17]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[17]~91_combout\ = \fd|MuxSaidaBankRegister|selected[17]~16_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[17]~16_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[17]~91_combout\);

-- Location: LCCOMB_X55_Y49_N26
\fd|ALU|final|selected[17]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[17]~92_combout\ = (\fd|BankRegister|muxA|selected\(17) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[17]~91_combout\))))) # (!\fd|BankRegister|muxA|selected\(17) & 
-- (\fd|ALU|final|selected[17]~91_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(17),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[17]~91_combout\,
	combout => \fd|ALU|final|selected[17]~92_combout\);

-- Location: LCCOMB_X55_Y49_N16
\fd|beqAnd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~4_combout\ = (!\fd|ALU|final|selected[16]~94_combout\ & (!\fd|ALU|final|selected[14]~98_combout\ & (!\fd|ALU|final|selected[17]~92_combout\ & !\fd|ALU|final|selected[15]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[16]~94_combout\,
	datab => \fd|ALU|final|selected[14]~98_combout\,
	datac => \fd|ALU|final|selected[17]~92_combout\,
	datad => \fd|ALU|final|selected[15]~96_combout\,
	combout => \fd|beqAnd~4_combout\);

-- Location: LCCOMB_X55_Y49_N30
\fd|beqAnd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~5_combout\ = (\fd|beqAnd~2_combout\ & (\fd|beqAnd~1_combout\ & (\fd|beqAnd~3_combout\ & \fd|beqAnd~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~2_combout\,
	datab => \fd|beqAnd~1_combout\,
	datac => \fd|beqAnd~3_combout\,
	datad => \fd|beqAnd~4_combout\,
	combout => \fd|beqAnd~5_combout\);

-- Location: LCCOMB_X54_Y45_N16
\fd|MuxRegRam|selected[24]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[24]~87_combout\ = (\fd|ALU|final|selected[24]~78_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[24]~78_combout\,
	combout => \fd|MuxRegRam|selected[24]~87_combout\);

-- Location: LCCOMB_X55_Y47_N12
\fd|BankRegister|add1to1|DOUT[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[24]~87_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[24]~feeder_combout\);

-- Location: FF_X55_Y47_N13
\fd|BankRegister|add1to1|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[24]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(24));

-- Location: LCCOMB_X52_Y46_N10
\fd|BankRegister|add1to2|DOUT[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[24]~87_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[24]~feeder_combout\);

-- Location: FF_X52_Y46_N11
\fd|BankRegister|add1to2|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[24]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(24));

-- Location: LCCOMB_X56_Y47_N4
\fd|BankRegister|muxA|selected[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[24]~8_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(24)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(24),
	datab => \fd|Rom|q\(22),
	datac => \fd|Rom|q\(21),
	datad => \fd|BankRegister|add1to2|DOUT\(24),
	combout => \fd|BankRegister|muxA|selected[24]~8_combout\);

-- Location: FF_X55_Y47_N3
\fd|BankRegister|add1to3|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~87_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(24));

-- Location: LCCOMB_X53_Y47_N18
\fd|BankRegister|add1to4|DOUT[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[24]~87_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[24]~feeder_combout\);

-- Location: FF_X53_Y47_N19
\fd|BankRegister|add1to4|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[24]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(24));

-- Location: LCCOMB_X55_Y47_N2
\fd|BankRegister|muxA|selected[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(24) = (\fd|BankRegister|muxA|selected[24]~8_combout\ & (((\fd|BankRegister|add1to4|DOUT\(24))) # (!\fd|Rom|q\(22)))) # (!\fd|BankRegister|muxA|selected[24]~8_combout\ & (\fd|Rom|q\(22) & 
-- (\fd|BankRegister|add1to3|DOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[24]~8_combout\,
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to3|DOUT\(24),
	datad => \fd|BankRegister|add1to4|DOUT\(24),
	combout => \fd|BankRegister|muxA|selected\(24));

-- Location: LCCOMB_X56_Y47_N6
\fd|BankRegister|muxB|selected[24]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~34_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(24))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & (\fd|BankRegister|add1to1|DOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(24),
	datad => \fd|BankRegister|add1to2|DOUT\(24),
	combout => \fd|BankRegister|muxB|selected[24]~34_combout\);

-- Location: LCCOMB_X55_Y47_N20
\fd|BankRegister|muxB|selected[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~35_combout\ = (\fd|BankRegister|muxB|selected[24]~34_combout\ & (((\fd|BankRegister|add1to4|DOUT\(24)) # (!\fd|Rom|q\(17))))) # (!\fd|BankRegister|muxB|selected[24]~34_combout\ & (\fd|BankRegister|add1to3|DOUT\(24) & 
-- (\fd|Rom|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[24]~34_combout\,
	datab => \fd|BankRegister|add1to3|DOUT\(24),
	datac => \fd|Rom|q\(17),
	datad => \fd|BankRegister|add1to4|DOUT\(24),
	combout => \fd|BankRegister|muxB|selected[24]~35_combout\);

-- Location: FF_X54_Y45_N17
\fd|BankRegister|add1to8|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[24]~87_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(24));

-- Location: FF_X52_Y45_N3
\fd|BankRegister|add1to6|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~87_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(24));

-- Location: LCCOMB_X52_Y45_N12
\fd|BankRegister|add1to7|DOUT[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[24]~feeder_combout\ = \fd|MuxRegRam|selected[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[24]~87_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[24]~feeder_combout\);

-- Location: FF_X52_Y45_N13
\fd|BankRegister|add1to7|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[24]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(24));

-- Location: FF_X53_Y45_N17
\fd|BankRegister|add1to5|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[24]~87_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(24));

-- Location: LCCOMB_X53_Y45_N16
\fd|BankRegister|muxB|selected[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~32_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(24)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(24) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(24),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(24),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[24]~32_combout\);

-- Location: LCCOMB_X52_Y45_N2
\fd|BankRegister|muxB|selected[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[24]~33_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[24]~32_combout\ & (\fd|BankRegister|add1to8|DOUT\(24))) # (!\fd|BankRegister|muxB|selected[24]~32_combout\ & ((\fd|BankRegister|add1to6|DOUT\(24)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(24),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(24),
	datad => \fd|BankRegister|muxB|selected[24]~32_combout\,
	combout => \fd|BankRegister|muxB|selected[24]~33_combout\);

-- Location: LCCOMB_X52_Y45_N0
\fd|MuxSaidaBankRegister|selected[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[24]~9_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[24]~33_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[24]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[24]~35_combout\,
	datac => \fd|Rom|q\(28),
	datad => \fd|BankRegister|muxB|selected[24]~33_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[24]~9_combout\);

-- Location: FF_X56_Y47_N21
\fd|BankRegister|add1to3|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~86_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(23));

-- Location: FF_X52_Y46_N1
\fd|BankRegister|add1to2|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~86_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(23));

-- Location: FF_X56_Y47_N3
\fd|BankRegister|add1to1|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~86_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(23));

-- Location: LCCOMB_X52_Y46_N0
\fd|BankRegister|muxA|selected[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[23]~9_combout\ = (\fd|Rom|q\(22) & (\fd|Rom|q\(21))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & (\fd|BankRegister|add1to2|DOUT\(23))) # (!\fd|Rom|q\(21) & ((\fd|BankRegister|add1to1|DOUT\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|Rom|q\(21),
	datac => \fd|BankRegister|add1to2|DOUT\(23),
	datad => \fd|BankRegister|add1to1|DOUT\(23),
	combout => \fd|BankRegister|muxA|selected[23]~9_combout\);

-- Location: LCCOMB_X52_Y46_N12
\fd|BankRegister|muxA|selected[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(23) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[23]~9_combout\ & ((\fd|BankRegister|add1to4|DOUT\(23)))) # (!\fd|BankRegister|muxA|selected[23]~9_combout\ & (\fd|BankRegister|add1to3|DOUT\(23))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[23]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(23),
	datac => \fd|BankRegister|add1to4|DOUT\(23),
	datad => \fd|BankRegister|muxA|selected[23]~9_combout\,
	combout => \fd|BankRegister|muxA|selected\(23));

-- Location: FF_X52_Y46_N31
\fd|BankRegister|add1to4|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~85_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(22));

-- Location: LCCOMB_X52_Y46_N22
\fd|BankRegister|add1to2|DOUT[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[22]~feeder_combout\ = \fd|MuxRegRam|selected[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[22]~85_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[22]~feeder_combout\);

-- Location: FF_X52_Y46_N23
\fd|BankRegister|add1to2|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[22]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(22));

-- Location: FF_X52_Y47_N21
\fd|BankRegister|add1to1|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~85_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(22));

-- Location: LCCOMB_X52_Y47_N20
\fd|BankRegister|muxB|selected[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~42_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(22)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(22) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(22),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to1|DOUT\(22),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[22]~42_combout\);

-- Location: LCCOMB_X52_Y46_N8
\fd|BankRegister|muxB|selected[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~43_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[22]~42_combout\ & (\fd|BankRegister|add1to4|DOUT\(22))) # (!\fd|BankRegister|muxB|selected[22]~42_combout\ & ((\fd|BankRegister|add1to3|DOUT\(22)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[22]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(22),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(22),
	datad => \fd|BankRegister|muxB|selected[22]~42_combout\,
	combout => \fd|BankRegister|muxB|selected[22]~43_combout\);

-- Location: FF_X53_Y45_N31
\fd|BankRegister|add1to8|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[22]~85_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(22));

-- Location: LCCOMB_X53_Y46_N16
\fd|BankRegister|add1to7|DOUT[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[22]~feeder_combout\ = \fd|MuxRegRam|selected[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[22]~85_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[22]~feeder_combout\);

-- Location: FF_X53_Y46_N17
\fd|BankRegister|add1to7|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[22]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(22));

-- Location: FF_X53_Y45_N9
\fd|BankRegister|add1to5|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~85_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(22));

-- Location: LCCOMB_X53_Y45_N8
\fd|BankRegister|muxB|selected[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~40_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(22)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(22) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(22),
	datac => \fd|BankRegister|add1to5|DOUT\(22),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[22]~40_combout\);

-- Location: FF_X52_Y45_N21
\fd|BankRegister|add1to6|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[22]~85_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(22));

-- Location: LCCOMB_X52_Y45_N20
\fd|BankRegister|muxB|selected[22]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[22]~41_combout\ = (\fd|BankRegister|muxB|selected[22]~40_combout\ & ((\fd|BankRegister|add1to8|DOUT\(22)) # ((!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[22]~40_combout\ & (((\fd|BankRegister|add1to6|DOUT\(22) & 
-- \fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(22),
	datab => \fd|BankRegister|muxB|selected[22]~40_combout\,
	datac => \fd|BankRegister|add1to6|DOUT\(22),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[22]~41_combout\);

-- Location: LCCOMB_X52_Y45_N14
\fd|MuxSaidaBankRegister|selected[22]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[22]~11_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[22]~41_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[22]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[22]~43_combout\,
	datac => \fd|Rom|q\(28),
	datad => \fd|BankRegister|muxB|selected[22]~41_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[22]~11_combout\);

-- Location: FF_X55_Y47_N1
\fd|BankRegister|add1to3|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~84_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(21));

-- Location: FF_X55_Y47_N23
\fd|BankRegister|add1to1|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~84_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(21));

-- Location: FF_X54_Y47_N3
\fd|BankRegister|add1to2|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~84_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(21));

-- Location: LCCOMB_X54_Y47_N2
\fd|BankRegister|muxA|selected[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[21]~11_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(21)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to1|DOUT\(21),
	datac => \fd|BankRegister|add1to2|DOUT\(21),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[21]~11_combout\);

-- Location: LCCOMB_X53_Y47_N24
\fd|BankRegister|add1to4|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[21]~84_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[21]~feeder_combout\);

-- Location: FF_X53_Y47_N25
\fd|BankRegister|add1to4|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[21]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(21));

-- Location: LCCOMB_X55_Y47_N28
\fd|BankRegister|muxA|selected[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(21) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[21]~11_combout\ & ((\fd|BankRegister|add1to4|DOUT\(21)))) # (!\fd|BankRegister|muxA|selected[21]~11_combout\ & (\fd|BankRegister|add1to3|DOUT\(21))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[21]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|muxA|selected[21]~11_combout\,
	datad => \fd|BankRegister|add1to4|DOUT\(21),
	combout => \fd|BankRegister|muxA|selected\(21));

-- Location: LCCOMB_X52_Y49_N10
\fd|BankRegister|add1to4|DOUT[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[20]~feeder_combout\ = \fd|MuxRegRam|selected[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[20]~83_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[20]~feeder_combout\);

-- Location: FF_X52_Y49_N11
\fd|BankRegister|add1to4|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[20]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(20));

-- Location: FF_X54_Y49_N25
\fd|BankRegister|add1to1|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~83_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(20));

-- Location: FF_X52_Y49_N9
\fd|BankRegister|add1to2|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~83_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(20));

-- Location: LCCOMB_X52_Y49_N8
\fd|BankRegister|muxA|selected[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[20]~12_combout\ = (\fd|Rom|q\(21) & (((\fd|BankRegister|add1to2|DOUT\(20)) # (\fd|Rom|q\(22))))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(20) & ((!\fd|Rom|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to1|DOUT\(20),
	datab => \fd|Rom|q\(21),
	datac => \fd|BankRegister|add1to2|DOUT\(20),
	datad => \fd|Rom|q\(22),
	combout => \fd|BankRegister|muxA|selected[20]~12_combout\);

-- Location: FF_X54_Y49_N7
\fd|BankRegister|add1to3|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~83_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(20));

-- Location: LCCOMB_X52_Y49_N20
\fd|BankRegister|muxA|selected[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(20) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[20]~12_combout\ & (\fd|BankRegister|add1to4|DOUT\(20))) # (!\fd|BankRegister|muxA|selected[20]~12_combout\ & ((\fd|BankRegister|add1to3|DOUT\(20)))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[20]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(20),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|muxA|selected[20]~12_combout\,
	datad => \fd|BankRegister|add1to3|DOUT\(20),
	combout => \fd|BankRegister|muxA|selected\(20));

-- Location: FF_X54_Y49_N19
\fd|BankRegister|add1to1|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(19));

-- Location: FF_X54_Y47_N5
\fd|BankRegister|add1to2|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(19));

-- Location: LCCOMB_X54_Y47_N4
\fd|BankRegister|muxA|selected[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[19]~13_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(19)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to1|DOUT\(19),
	datac => \fd|BankRegister|add1to2|DOUT\(19),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[19]~13_combout\);

-- Location: FF_X54_Y47_N31
\fd|BankRegister|add1to4|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(19));

-- Location: FF_X54_Y49_N21
\fd|BankRegister|add1to3|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(19));

-- Location: LCCOMB_X54_Y47_N30
\fd|BankRegister|muxA|selected[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(19) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[19]~13_combout\ & (\fd|BankRegister|add1to4|DOUT\(19))) # (!\fd|BankRegister|muxA|selected[19]~13_combout\ & ((\fd|BankRegister|add1to3|DOUT\(19)))))) # 
-- (!\fd|Rom|q\(22) & (\fd|BankRegister|muxA|selected[19]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|muxA|selected[19]~13_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(19),
	datad => \fd|BankRegister|add1to3|DOUT\(19),
	combout => \fd|BankRegister|muxA|selected\(19));

-- Location: FF_X57_Y47_N19
\fd|BankRegister|add1to4|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~81_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(18));

-- Location: FF_X54_Y47_N7
\fd|BankRegister|add1to2|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~81_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(18));

-- Location: FF_X54_Y49_N5
\fd|BankRegister|add1to1|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~81_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(18));

-- Location: LCCOMB_X54_Y49_N4
\fd|BankRegister|muxB|selected[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~58_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(18)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(18) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(18),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to1|DOUT\(18),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[18]~58_combout\);

-- Location: LCCOMB_X54_Y49_N22
\fd|BankRegister|muxB|selected[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~59_combout\ = (\fd|BankRegister|muxB|selected[18]~58_combout\ & ((\fd|BankRegister|add1to4|DOUT\(18)) # ((!\fd|Rom|q\(17))))) # (!\fd|BankRegister|muxB|selected[18]~58_combout\ & (((\fd|BankRegister|add1to3|DOUT\(18) & 
-- \fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(18),
	datab => \fd|BankRegister|muxB|selected[18]~58_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(18),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[18]~59_combout\);

-- Location: LCCOMB_X53_Y49_N26
\fd|BankRegister|add1to7|DOUT[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[18]~feeder_combout\ = \fd|MuxRegRam|selected[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[18]~81_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[18]~feeder_combout\);

-- Location: FF_X53_Y49_N27
\fd|BankRegister|add1to7|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[18]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(18));

-- Location: FF_X56_Y49_N27
\fd|BankRegister|add1to5|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~81_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(18));

-- Location: LCCOMB_X56_Y49_N26
\fd|BankRegister|muxB|selected[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~56_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(18)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(18) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(18),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(18),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[18]~56_combout\);

-- Location: LCCOMB_X57_Y47_N8
\fd|BankRegister|add1to8|DOUT[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to8|DOUT[18]~feeder_combout\ = \fd|MuxRegRam|selected[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[18]~81_combout\,
	combout => \fd|BankRegister|add1to8|DOUT[18]~feeder_combout\);

-- Location: FF_X57_Y47_N9
\fd|BankRegister|add1to8|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to8|DOUT[18]~feeder_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(18));

-- Location: FF_X57_Y49_N29
\fd|BankRegister|add1to6|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~81_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(18));

-- Location: LCCOMB_X57_Y49_N28
\fd|BankRegister|muxB|selected[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[18]~57_combout\ = (\fd|BankRegister|muxB|selected[18]~56_combout\ & ((\fd|BankRegister|add1to8|DOUT\(18)) # ((!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[18]~56_combout\ & (((\fd|BankRegister|add1to6|DOUT\(18) & 
-- \fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[18]~56_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(18),
	datac => \fd|BankRegister|add1to6|DOUT\(18),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[18]~57_combout\);

-- Location: LCCOMB_X54_Y49_N8
\fd|MuxSaidaBankRegister|selected[18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[18]~15_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[18]~57_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[18]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[18]~59_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[18]~57_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[18]~15_combout\);

-- Location: LCCOMB_X55_Y45_N14
\fd|ALU|adder|addsloop:17:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(17) & ((\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[17]~16_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(17) & (\fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[17]~16_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[17]~16_combout\,
	datab => \fd|BankRegister|muxA|selected\(17),
	datac => \fd|ALU|adder|addsloop:16:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y49_N0
\fd|ALU|final|selected[18]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[18]~89_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[18]~15_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[18]~15_combout\,
	datad => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[18]~89_combout\);

-- Location: LCCOMB_X54_Y49_N2
\fd|ALU|final|selected[18]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[18]~90_combout\ = (\fd|BankRegister|muxA|selected\(18) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[18]~89_combout\))))) # (!\fd|BankRegister|muxA|selected\(18) & 
-- (\fd|ALU|final|selected[18]~89_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(18),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[18]~89_combout\,
	combout => \fd|ALU|final|selected[18]~90_combout\);

-- Location: LCCOMB_X57_Y47_N22
\fd|MuxRegRam|selected[18]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[18]~81_combout\ = (\fd|ALU|final|selected[18]~90_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|ALU|final|selected[18]~90_combout\,
	datad => \fd|Rom|q\(31),
	combout => \fd|MuxRegRam|selected[18]~81_combout\);

-- Location: FF_X54_Y49_N23
\fd|BankRegister|add1to3|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[18]~81_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(18));

-- Location: LCCOMB_X54_Y47_N6
\fd|BankRegister|muxA|selected[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[18]~14_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(18)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to1|DOUT\(18),
	datac => \fd|BankRegister|add1to2|DOUT\(18),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[18]~14_combout\);

-- Location: LCCOMB_X57_Y47_N18
\fd|BankRegister|muxA|selected[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(18) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[18]~14_combout\ & ((\fd|BankRegister|add1to4|DOUT\(18)))) # (!\fd|BankRegister|muxA|selected[18]~14_combout\ & (\fd|BankRegister|add1to3|DOUT\(18))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(18),
	datac => \fd|BankRegister|add1to4|DOUT\(18),
	datad => \fd|BankRegister|muxA|selected[18]~14_combout\,
	combout => \fd|BankRegister|muxA|selected\(18));

-- Location: LCCOMB_X55_Y45_N16
\fd|ALU|adder|addsloop:18:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(18) & ((\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[18]~15_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(18) & (\fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[18]~15_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(18),
	datab => \fd|MuxSaidaBankRegister|selected[18]~15_combout\,
	datac => \fd|ALU|adder|addsloop:17:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y49_N16
\fd|ALU|final|selected[19]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[19]~87_combout\ = \fd|MuxSaidaBankRegister|selected[19]~14_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[19]~14_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[19]~87_combout\);

-- Location: LCCOMB_X54_Y49_N26
\fd|ALU|final|selected[19]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[19]~88_combout\ = (\fd|BankRegister|muxA|selected\(19) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[19]~87_combout\))))) # (!\fd|BankRegister|muxA|selected\(19) & 
-- (\fd|ALU|final|selected[19]~87_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(19),
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[19]~87_combout\,
	combout => \fd|ALU|final|selected[19]~88_combout\);

-- Location: LCCOMB_X55_Y49_N0
\fd|MuxRegRam|selected[19]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[19]~82_combout\ = (\fd|ALU|final|selected[19]~88_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(28),
	datac => \fd|ALU|final|selected[19]~88_combout\,
	datad => \fd|Rom|q\(31),
	combout => \fd|MuxRegRam|selected[19]~82_combout\);

-- Location: FF_X55_Y49_N1
\fd|BankRegister|add1to8|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[19]~82_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(19));

-- Location: FF_X55_Y49_N3
\fd|BankRegister|add1to6|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(19));

-- Location: FF_X56_Y49_N23
\fd|BankRegister|add1to7|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(19));

-- Location: FF_X56_Y49_N1
\fd|BankRegister|add1to5|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[19]~82_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(19));

-- Location: LCCOMB_X56_Y49_N0
\fd|BankRegister|muxB|selected[19]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~52_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(19)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(19) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(19),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(19),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[19]~52_combout\);

-- Location: LCCOMB_X55_Y49_N2
\fd|BankRegister|muxB|selected[19]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~53_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[19]~52_combout\ & (\fd|BankRegister|add1to8|DOUT\(19))) # (!\fd|BankRegister|muxB|selected[19]~52_combout\ & ((\fd|BankRegister|add1to6|DOUT\(19)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[19]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(19),
	datac => \fd|BankRegister|add1to6|DOUT\(19),
	datad => \fd|BankRegister|muxB|selected[19]~52_combout\,
	combout => \fd|BankRegister|muxB|selected[19]~53_combout\);

-- Location: LCCOMB_X54_Y49_N18
\fd|BankRegister|muxB|selected[19]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~54_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(19)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(19) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(19),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to1|DOUT\(19),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[19]~54_combout\);

-- Location: LCCOMB_X54_Y49_N20
\fd|BankRegister|muxB|selected[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[19]~55_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[19]~54_combout\ & (\fd|BankRegister|add1to4|DOUT\(19))) # (!\fd|BankRegister|muxB|selected[19]~54_combout\ & ((\fd|BankRegister|add1to3|DOUT\(19)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[19]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to4|DOUT\(19),
	datac => \fd|BankRegister|add1to3|DOUT\(19),
	datad => \fd|BankRegister|muxB|selected[19]~54_combout\,
	combout => \fd|BankRegister|muxB|selected[19]~55_combout\);

-- Location: LCCOMB_X54_Y49_N14
\fd|MuxSaidaBankRegister|selected[19]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[19]~14_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[19]~53_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[19]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[19]~53_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[19]~55_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[19]~14_combout\);

-- Location: LCCOMB_X55_Y45_N6
\fd|ALU|adder|addsloop:19:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(19) & ((\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[19]~14_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(19) & (\fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[19]~14_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[19]~14_combout\,
	datab => \fd|BankRegister|muxA|selected\(19),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:18:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y49_N28
\fd|ALU|final|selected[20]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[20]~85_combout\ = \fd|MuxSaidaBankRegister|selected[20]~13_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[20]~13_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[20]~85_combout\);

-- Location: LCCOMB_X54_Y49_N10
\fd|ALU|final|selected[20]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[20]~86_combout\ = (\fd|BankRegister|muxA|selected\(20) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[20]~85_combout\))))) # (!\fd|BankRegister|muxA|selected\(20) & 
-- (\fd|ALU|final|selected[20]~85_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(20),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[20]~85_combout\,
	combout => \fd|ALU|final|selected[20]~86_combout\);

-- Location: LCCOMB_X57_Y49_N4
\fd|MuxRegRam|selected[20]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[20]~83_combout\ = (\fd|ALU|final|selected[20]~86_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(31)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(31),
	datad => \fd|ALU|final|selected[20]~86_combout\,
	combout => \fd|MuxRegRam|selected[20]~83_combout\);

-- Location: FF_X57_Y49_N5
\fd|BankRegister|add1to8|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[20]~83_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(20));

-- Location: FF_X57_Y49_N23
\fd|BankRegister|add1to6|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[20]~83_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(20));

-- Location: LCCOMB_X53_Y49_N8
\fd|BankRegister|add1to7|DOUT[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[20]~feeder_combout\ = \fd|MuxRegRam|selected[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[20]~83_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[20]~feeder_combout\);

-- Location: FF_X53_Y49_N9
\fd|BankRegister|add1to7|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[20]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(20));

-- Location: LCCOMB_X56_Y49_N30
\fd|BankRegister|add1to5|DOUT[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\ = \fd|MuxRegRam|selected[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[20]~83_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[20]~feeder_combout\);

-- Location: FF_X56_Y49_N31
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

-- Location: LCCOMB_X53_Y49_N2
\fd|BankRegister|muxB|selected[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~48_combout\ = (\fd|Rom|q\(17) & ((\fd|Rom|q\(16)) # ((\fd|BankRegister|add1to7|DOUT\(20))))) # (!\fd|Rom|q\(17) & (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to5|DOUT\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to7|DOUT\(20),
	datad => \fd|BankRegister|add1to5|DOUT\(20),
	combout => \fd|BankRegister|muxB|selected[20]~48_combout\);

-- Location: LCCOMB_X57_Y49_N22
\fd|BankRegister|muxB|selected[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~49_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[20]~48_combout\ & (\fd|BankRegister|add1to8|DOUT\(20))) # (!\fd|BankRegister|muxB|selected[20]~48_combout\ & ((\fd|BankRegister|add1to6|DOUT\(20)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[20]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(20),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(20),
	datad => \fd|BankRegister|muxB|selected[20]~48_combout\,
	combout => \fd|BankRegister|muxB|selected[20]~49_combout\);

-- Location: LCCOMB_X54_Y49_N24
\fd|BankRegister|muxB|selected[20]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~50_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(20)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(20) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(20),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to1|DOUT\(20),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[20]~50_combout\);

-- Location: LCCOMB_X54_Y49_N6
\fd|BankRegister|muxB|selected[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[20]~51_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[20]~50_combout\ & (\fd|BankRegister|add1to4|DOUT\(20))) # (!\fd|BankRegister|muxB|selected[20]~50_combout\ & ((\fd|BankRegister|add1to3|DOUT\(20)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[20]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to4|DOUT\(20),
	datac => \fd|BankRegister|add1to3|DOUT\(20),
	datad => \fd|BankRegister|muxB|selected[20]~50_combout\,
	combout => \fd|BankRegister|muxB|selected[20]~51_combout\);

-- Location: LCCOMB_X54_Y49_N12
\fd|MuxSaidaBankRegister|selected[20]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[20]~13_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[20]~49_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[20]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[20]~49_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[20]~51_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[20]~13_combout\);

-- Location: LCCOMB_X55_Y45_N0
\fd|ALU|adder|addsloop:20:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(20) & ((\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[20]~13_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(20) & (\fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[20]~13_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[20]~13_combout\,
	datab => \fd|BankRegister|muxA|selected\(20),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:19:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y45_N12
\fd|ALU|final|selected[21]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[21]~83_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[21]~12_combout\ $ (((\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ & \fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[21]~12_combout\,
	datac => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[21]~83_combout\);

-- Location: LCCOMB_X54_Y45_N10
\fd|ALU|final|selected[21]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[21]~84_combout\ = (\fd|BankRegister|muxA|selected\(21) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[21]~83_combout\))))) # (!\fd|BankRegister|muxA|selected\(21) & 
-- (\fd|ALU|final|selected[21]~83_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(21),
	datad => \fd|ALU|final|selected[21]~83_combout\,
	combout => \fd|ALU|final|selected[21]~84_combout\);

-- Location: LCCOMB_X53_Y45_N22
\fd|MuxRegRam|selected[21]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[21]~84_combout\ = (\fd|ALU|final|selected[21]~84_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27))) # (!\fd|Rom|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(28),
	datac => \fd|ALU|final|selected[21]~84_combout\,
	datad => \fd|Rom|q\(27),
	combout => \fd|MuxRegRam|selected[21]~84_combout\);

-- Location: LCCOMB_X52_Y45_N24
\fd|BankRegister|add1to7|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[21]~84_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[21]~feeder_combout\);

-- Location: FF_X52_Y45_N25
\fd|BankRegister|add1to7|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[21]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(21));

-- Location: LCCOMB_X53_Y45_N2
\fd|BankRegister|add1to5|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\ = \fd|MuxRegRam|selected[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[21]~84_combout\,
	combout => \fd|BankRegister|add1to5|DOUT[21]~feeder_combout\);

-- Location: FF_X53_Y45_N3
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

-- Location: LCCOMB_X53_Y45_N24
\fd|BankRegister|muxB|selected[21]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~44_combout\ = (\fd|Rom|q\(16) & (((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & ((\fd|Rom|q\(17) & (\fd|BankRegister|add1to7|DOUT\(21))) # (!\fd|Rom|q\(17) & ((\fd|BankRegister|add1to5|DOUT\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(21),
	datab => \fd|Rom|q\(16),
	datac => \fd|Rom|q\(17),
	datad => \fd|BankRegister|add1to5|DOUT\(21),
	combout => \fd|BankRegister|muxB|selected[21]~44_combout\);

-- Location: FF_X53_Y45_N23
\fd|BankRegister|add1to8|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[21]~84_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(21));

-- Location: FF_X52_Y45_N11
\fd|BankRegister|add1to6|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[21]~84_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(21));

-- Location: LCCOMB_X52_Y45_N10
\fd|BankRegister|muxB|selected[21]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~45_combout\ = (\fd|BankRegister|muxB|selected[21]~44_combout\ & ((\fd|BankRegister|add1to8|DOUT\(21)) # ((!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[21]~44_combout\ & (((\fd|BankRegister|add1to6|DOUT\(21) & 
-- \fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[21]~44_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(21),
	datac => \fd|BankRegister|add1to6|DOUT\(21),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[21]~45_combout\);

-- Location: LCCOMB_X55_Y47_N22
\fd|BankRegister|muxB|selected[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~46_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(21))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(21),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(21),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[21]~46_combout\);

-- Location: LCCOMB_X55_Y47_N0
\fd|BankRegister|muxB|selected[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[21]~47_combout\ = (\fd|BankRegister|muxB|selected[21]~46_combout\ & ((\fd|BankRegister|add1to4|DOUT\(21)) # ((!\fd|Rom|q\(17))))) # (!\fd|BankRegister|muxB|selected[21]~46_combout\ & (((\fd|BankRegister|add1to3|DOUT\(21) & 
-- \fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[21]~46_combout\,
	datab => \fd|BankRegister|add1to4|DOUT\(21),
	datac => \fd|BankRegister|add1to3|DOUT\(21),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[21]~47_combout\);

-- Location: LCCOMB_X55_Y47_N6
\fd|MuxSaidaBankRegister|selected[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[21]~12_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[21]~45_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[21]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[21]~45_combout\,
	datab => \fd|BankRegister|muxB|selected[21]~47_combout\,
	datac => \fd|Rom|q\(28),
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[21]~12_combout\);

-- Location: LCCOMB_X55_Y45_N30
\fd|ALU|adder|addsloop:21:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(21) & ((\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[21]~12_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(21) & (\fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[21]~12_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[21]~12_combout\,
	datab => \fd|BankRegister|muxA|selected\(21),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:20:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y45_N28
\fd|ALU|final|selected[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[22]~81_combout\ = \fd|MuxSaidaBankRegister|selected[22]~11_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[22]~11_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[22]~81_combout\);

-- Location: LCCOMB_X53_Y45_N18
\fd|ALU|final|selected[22]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[22]~82_combout\ = (\fd|BankRegister|muxA|selected\(22) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[22]~81_combout\))))) # (!\fd|BankRegister|muxA|selected\(22) & 
-- (\fd|ALU|final|selected[22]~81_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(22),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[22]~81_combout\,
	combout => \fd|ALU|final|selected[22]~82_combout\);

-- Location: LCCOMB_X53_Y45_N30
\fd|MuxRegRam|selected[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[22]~85_combout\ = (\fd|ALU|final|selected[22]~82_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27))) # (!\fd|Rom|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[22]~82_combout\,
	combout => \fd|MuxRegRam|selected[22]~85_combout\);

-- Location: LCCOMB_X56_Y47_N14
\fd|BankRegister|add1to3|DOUT[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[22]~feeder_combout\ = \fd|MuxRegRam|selected[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[22]~85_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[22]~feeder_combout\);

-- Location: FF_X56_Y47_N15
\fd|BankRegister|add1to3|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[22]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(22));

-- Location: LCCOMB_X52_Y46_N2
\fd|BankRegister|muxA|selected[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[22]~10_combout\ = (\fd|Rom|q\(22) & (\fd|Rom|q\(21))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(22)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|Rom|q\(21),
	datac => \fd|BankRegister|add1to1|DOUT\(22),
	datad => \fd|BankRegister|add1to2|DOUT\(22),
	combout => \fd|BankRegister|muxA|selected[22]~10_combout\);

-- Location: LCCOMB_X52_Y46_N30
\fd|BankRegister|muxA|selected[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(22) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[22]~10_combout\ & ((\fd|BankRegister|add1to4|DOUT\(22)))) # (!\fd|BankRegister|muxA|selected[22]~10_combout\ & (\fd|BankRegister|add1to3|DOUT\(22))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[22]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(22),
	datac => \fd|BankRegister|add1to4|DOUT\(22),
	datad => \fd|BankRegister|muxA|selected[22]~10_combout\,
	combout => \fd|BankRegister|muxA|selected\(22));

-- Location: LCCOMB_X55_Y45_N28
\fd|ALU|adder|addsloop:22:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(22) & ((\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~11_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(22) & (\fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[22]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(22),
	datab => \fd|UCalu|output\(2),
	datac => \fd|ALU|adder|addsloop:21:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[22]~11_combout\,
	combout => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y45_N12
\fd|ALU|final|selected[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[23]~79_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[23]~10_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[23]~10_combout\,
	datad => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[23]~79_combout\);

-- Location: LCCOMB_X53_Y45_N26
\fd|ALU|final|selected[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[23]~80_combout\ = (\fd|BankRegister|muxA|selected\(23) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[23]~79_combout\))))) # (!\fd|BankRegister|muxA|selected\(23) & 
-- (\fd|ALU|final|selected[23]~79_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|BankRegister|muxA|selected\(23),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[23]~79_combout\,
	combout => \fd|ALU|final|selected[23]~80_combout\);

-- Location: LCCOMB_X53_Y45_N0
\fd|MuxRegRam|selected[23]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[23]~86_combout\ = (\fd|ALU|final|selected[23]~80_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27))) # (!\fd|Rom|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(27),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[23]~80_combout\,
	combout => \fd|MuxRegRam|selected[23]~86_combout\);

-- Location: FF_X52_Y46_N13
\fd|BankRegister|add1to4|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~86_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(23));

-- Location: LCCOMB_X56_Y47_N2
\fd|BankRegister|muxB|selected[23]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~38_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(23))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(23),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(23),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[23]~38_combout\);

-- Location: LCCOMB_X56_Y47_N20
\fd|BankRegister|muxB|selected[23]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~39_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[23]~38_combout\ & (\fd|BankRegister|add1to4|DOUT\(23))) # (!\fd|BankRegister|muxB|selected[23]~38_combout\ & ((\fd|BankRegister|add1to3|DOUT\(23)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[23]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(23),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(23),
	datad => \fd|BankRegister|muxB|selected[23]~38_combout\,
	combout => \fd|BankRegister|muxB|selected[23]~39_combout\);

-- Location: LCCOMB_X52_Y45_N30
\fd|BankRegister|add1to7|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[23]~feeder_combout\ = \fd|MuxRegRam|selected[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[23]~86_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[23]~feeder_combout\);

-- Location: FF_X52_Y45_N31
\fd|BankRegister|add1to7|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[23]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(23));

-- Location: FF_X53_Y45_N11
\fd|BankRegister|add1to5|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~86_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(23));

-- Location: LCCOMB_X53_Y45_N10
\fd|BankRegister|muxB|selected[23]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~36_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(23)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(23) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to7|DOUT\(23),
	datac => \fd|BankRegister|add1to5|DOUT\(23),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[23]~36_combout\);

-- Location: FF_X53_Y45_N1
\fd|BankRegister|add1to8|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[23]~86_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(23));

-- Location: FF_X53_Y47_N21
\fd|BankRegister|add1to6|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[23]~86_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(23));

-- Location: LCCOMB_X53_Y47_N20
\fd|BankRegister|muxB|selected[23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[23]~37_combout\ = (\fd|BankRegister|muxB|selected[23]~36_combout\ & ((\fd|BankRegister|add1to8|DOUT\(23)) # ((!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[23]~36_combout\ & (((\fd|BankRegister|add1to6|DOUT\(23) & 
-- \fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[23]~36_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(23),
	datac => \fd|BankRegister|add1to6|DOUT\(23),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[23]~37_combout\);

-- Location: LCCOMB_X53_Y47_N6
\fd|MuxSaidaBankRegister|selected[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[23]~10_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[23]~37_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[23]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|Rom|q\(28),
	datac => \fd|BankRegister|muxB|selected[23]~39_combout\,
	datad => \fd|BankRegister|muxB|selected[23]~37_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[23]~10_combout\);

-- Location: LCCOMB_X55_Y45_N18
\fd|ALU|adder|addsloop:23:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(23) & ((\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[23]~10_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(23) & (\fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[23]~10_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[23]~10_combout\,
	datab => \fd|BankRegister|muxA|selected\(23),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:22:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y45_N20
\fd|ALU|final|selected[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[24]~77_combout\ = \fd|MuxSaidaBankRegister|selected[24]~9_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|MuxSaidaBankRegister|selected[24]~9_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[24]~77_combout\);

-- Location: LCCOMB_X54_Y45_N6
\fd|ALU|final|selected[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[24]~78_combout\ = (\fd|BankRegister|muxA|selected\(24) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[24]~77_combout\))))) # (!\fd|BankRegister|muxA|selected\(24) & 
-- (\fd|ALU|final|selected[24]~77_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(24),
	datad => \fd|ALU|final|selected[24]~77_combout\,
	combout => \fd|ALU|final|selected[24]~78_combout\);

-- Location: LCCOMB_X54_Y45_N14
\fd|MuxRegRam|selected[25]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[25]~88_combout\ = (\fd|ALU|final|selected[25]~76_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|ALU|final|selected[25]~76_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxRegRam|selected[25]~88_combout\);

-- Location: LCCOMB_X60_Y45_N26
\fd|BankRegister|add1to3|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[25]~88_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[25]~feeder_combout\);

-- Location: FF_X60_Y45_N27
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

-- Location: FF_X54_Y47_N13
\fd|BankRegister|add1to4|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~88_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(25));

-- Location: LCCOMB_X54_Y47_N16
\fd|BankRegister|add1to2|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[25]~88_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[25]~feeder_combout\);

-- Location: FF_X54_Y47_N17
\fd|BankRegister|add1to2|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(25));

-- Location: LCCOMB_X60_Y45_N30
\fd|BankRegister|add1to1|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[25]~88_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\);

-- Location: FF_X60_Y45_N31
\fd|BankRegister|add1to1|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(25));

-- Location: LCCOMB_X54_Y47_N18
\fd|BankRegister|muxA|selected[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[25]~7_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & (\fd|BankRegister|add1to2|DOUT\(25))) # (!\fd|Rom|q\(21) & ((\fd|BankRegister|add1to1|DOUT\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to2|DOUT\(25),
	datac => \fd|BankRegister|add1to1|DOUT\(25),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[25]~7_combout\);

-- Location: LCCOMB_X54_Y47_N12
\fd|BankRegister|muxA|selected[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(25) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[25]~7_combout\ & ((\fd|BankRegister|add1to4|DOUT\(25)))) # (!\fd|BankRegister|muxA|selected[25]~7_combout\ & (\fd|BankRegister|add1to3|DOUT\(25))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[25]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(25),
	datac => \fd|BankRegister|add1to4|DOUT\(25),
	datad => \fd|BankRegister|muxA|selected[25]~7_combout\,
	combout => \fd|BankRegister|muxA|selected\(25));

-- Location: LCCOMB_X60_Y45_N28
\fd|BankRegister|muxB|selected[25]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~30_combout\ = (\fd|Rom|q\(16) & (((\fd|Rom|q\(17)) # (\fd|BankRegister|add1to2|DOUT\(25))))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(25) & (!\fd|Rom|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to1|DOUT\(25),
	datac => \fd|Rom|q\(17),
	datad => \fd|BankRegister|add1to2|DOUT\(25),
	combout => \fd|BankRegister|muxB|selected[25]~30_combout\);

-- Location: LCCOMB_X60_Y45_N10
\fd|BankRegister|muxB|selected[25]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~31_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[25]~30_combout\ & (\fd|BankRegister|add1to4|DOUT\(25))) # (!\fd|BankRegister|muxB|selected[25]~30_combout\ & ((\fd|BankRegister|add1to3|DOUT\(25)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[25]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(25),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(25),
	datad => \fd|BankRegister|muxB|selected[25]~30_combout\,
	combout => \fd|BankRegister|muxB|selected[25]~31_combout\);

-- Location: FF_X54_Y45_N15
\fd|BankRegister|add1to8|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[25]~88_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(25));

-- Location: FF_X52_Y45_N5
\fd|BankRegister|add1to6|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~88_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(25));

-- Location: LCCOMB_X52_Y45_N26
\fd|BankRegister|add1to7|DOUT[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[25]~feeder_combout\ = \fd|MuxRegRam|selected[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[25]~88_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[25]~feeder_combout\);

-- Location: FF_X52_Y45_N27
\fd|BankRegister|add1to7|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[25]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(25));

-- Location: FF_X53_Y45_N7
\fd|BankRegister|add1to5|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[25]~88_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(25));

-- Location: LCCOMB_X53_Y45_N6
\fd|BankRegister|muxB|selected[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~28_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(25)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(25) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(25),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(25),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[25]~28_combout\);

-- Location: LCCOMB_X52_Y45_N4
\fd|BankRegister|muxB|selected[25]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[25]~29_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[25]~28_combout\ & (\fd|BankRegister|add1to8|DOUT\(25))) # (!\fd|BankRegister|muxB|selected[25]~28_combout\ & ((\fd|BankRegister|add1to6|DOUT\(25)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[25]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(25),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(25),
	datad => \fd|BankRegister|muxB|selected[25]~28_combout\,
	combout => \fd|BankRegister|muxB|selected[25]~29_combout\);

-- Location: LCCOMB_X52_Y45_N18
\fd|MuxSaidaBankRegister|selected[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[25]~8_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[25]~29_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[25]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[25]~31_combout\,
	datab => \fd|BankRegister|muxB|selected[25]~29_combout\,
	datac => \fd|Rom|q\(28),
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[25]~8_combout\);

-- Location: LCCOMB_X55_Y45_N24
\fd|ALU|adder|addsloop:24:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(24) & ((\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[24]~9_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(24) & (\fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[24]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(24),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[24]~9_combout\,
	datad => \fd|ALU|adder|addsloop:23:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y45_N24
\fd|ALU|final|selected[25]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[25]~75_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[25]~8_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[25]~8_combout\,
	datad => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[25]~75_combout\);

-- Location: LCCOMB_X54_Y45_N22
\fd|ALU|final|selected[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[25]~76_combout\ = (\fd|BankRegister|muxA|selected\(25) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[25]~75_combout\))))) # (!\fd|BankRegister|muxA|selected\(25) & 
-- (\fd|ALU|final|selected[25]~75_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datab => \fd|UCalu|output\(1),
	datac => \fd|BankRegister|muxA|selected\(25),
	datad => \fd|ALU|final|selected[25]~75_combout\,
	combout => \fd|ALU|final|selected[25]~76_combout\);

-- Location: LCCOMB_X54_Y48_N4
\fd|beqAnd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~7_combout\ = (!\fd|ALU|final|selected[24]~78_combout\ & (!\fd|ALU|final|selected[22]~82_combout\ & (!\fd|ALU|final|selected[23]~80_combout\ & !\fd|ALU|final|selected[25]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[24]~78_combout\,
	datab => \fd|ALU|final|selected[22]~82_combout\,
	datac => \fd|ALU|final|selected[23]~80_combout\,
	datad => \fd|ALU|final|selected[25]~76_combout\,
	combout => \fd|beqAnd~7_combout\);

-- Location: LCCOMB_X54_Y49_N30
\fd|beqAnd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~6_combout\ = (!\fd|ALU|final|selected[20]~86_combout\ & (!\fd|ALU|final|selected[18]~90_combout\ & (!\fd|ALU|final|selected[19]~88_combout\ & !\fd|ALU|final|selected[21]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[20]~86_combout\,
	datab => \fd|ALU|final|selected[18]~90_combout\,
	datac => \fd|ALU|final|selected[19]~88_combout\,
	datad => \fd|ALU|final|selected[21]~84_combout\,
	combout => \fd|beqAnd~6_combout\);

-- Location: LCCOMB_X54_Y48_N18
\fd|beqAnd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~8_combout\ = (\fd|beqAnd~7_combout\ & \fd|beqAnd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|beqAnd~7_combout\,
	datad => \fd|beqAnd~6_combout\,
	combout => \fd|beqAnd~8_combout\);

-- Location: LCCOMB_X55_Y46_N28
\fd|MuxRegRam|selected[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[27]~90_combout\ = (\fd|ALU|final|selected[27]~72_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(27)) # (!\fd|Rom|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(27),
	datad => \fd|ALU|final|selected[27]~72_combout\,
	combout => \fd|MuxRegRam|selected[27]~90_combout\);

-- Location: FF_X55_Y47_N19
\fd|BankRegister|add1to1|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~90_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(27));

-- Location: LCCOMB_X54_Y47_N8
\fd|BankRegister|add1to2|DOUT[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[27]~feeder_combout\ = \fd|MuxRegRam|selected[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[27]~90_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[27]~feeder_combout\);

-- Location: FF_X54_Y47_N9
\fd|BankRegister|add1to2|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[27]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(27));

-- Location: LCCOMB_X54_Y47_N14
\fd|BankRegister|muxA|selected[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[27]~5_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(27)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to1|DOUT\(27),
	datac => \fd|BankRegister|add1to2|DOUT\(27),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[27]~5_combout\);

-- Location: FF_X55_Y47_N25
\fd|BankRegister|add1to3|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~90_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(27));

-- Location: LCCOMB_X54_Y46_N22
\fd|BankRegister|add1to4|DOUT[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[27]~feeder_combout\ = \fd|MuxRegRam|selected[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[27]~90_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[27]~feeder_combout\);

-- Location: FF_X54_Y46_N23
\fd|BankRegister|add1to4|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[27]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(27));

-- Location: LCCOMB_X55_Y47_N26
\fd|BankRegister|muxA|selected[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(27) = (\fd|BankRegister|muxA|selected[27]~5_combout\ & (((\fd|BankRegister|add1to4|DOUT\(27))) # (!\fd|Rom|q\(22)))) # (!\fd|BankRegister|muxA|selected[27]~5_combout\ & (\fd|Rom|q\(22) & 
-- (\fd|BankRegister|add1to3|DOUT\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected[27]~5_combout\,
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to3|DOUT\(27),
	datad => \fd|BankRegister|add1to4|DOUT\(27),
	combout => \fd|BankRegister|muxA|selected\(27));

-- Location: LCCOMB_X54_Y47_N26
\fd|BankRegister|add1to2|DOUT[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[26]~feeder_combout\ = \fd|MuxRegRam|selected[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[26]~89_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[26]~feeder_combout\);

-- Location: FF_X54_Y47_N27
\fd|BankRegister|add1to2|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to2|DOUT[26]~feeder_combout\,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(26));

-- Location: FF_X57_Y46_N15
\fd|BankRegister|add1to1|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~89_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(26));

-- Location: LCCOMB_X54_Y47_N24
\fd|BankRegister|muxA|selected[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[26]~6_combout\ = (\fd|Rom|q\(22) & (\fd|Rom|q\(21))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & (\fd|BankRegister|add1to2|DOUT\(26))) # (!\fd|Rom|q\(21) & ((\fd|BankRegister|add1to1|DOUT\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|Rom|q\(21),
	datac => \fd|BankRegister|add1to2|DOUT\(26),
	datad => \fd|BankRegister|add1to1|DOUT\(26),
	combout => \fd|BankRegister|muxA|selected[26]~6_combout\);

-- Location: FF_X58_Y46_N19
\fd|BankRegister|add1to3|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~89_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(26));

-- Location: LCCOMB_X53_Y47_N4
\fd|BankRegister|muxA|selected[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(26) = (\fd|BankRegister|muxA|selected[26]~6_combout\ & ((\fd|BankRegister|add1to4|DOUT\(26)) # ((!\fd|Rom|q\(22))))) # (!\fd|BankRegister|muxA|selected[26]~6_combout\ & (((\fd|Rom|q\(22) & 
-- \fd|BankRegister|add1to3|DOUT\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(26),
	datab => \fd|BankRegister|muxA|selected[26]~6_combout\,
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|add1to3|DOUT\(26),
	combout => \fd|BankRegister|muxA|selected\(26));

-- Location: LCCOMB_X55_Y45_N26
\fd|ALU|adder|addsloop:25:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(25) & ((\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[25]~8_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(25) & (\fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[25]~8_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(25),
	datab => \fd|MuxSaidaBankRegister|selected[25]~8_combout\,
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:24:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y45_N28
\fd|ALU|final|selected[26]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[26]~73_combout\ = \fd|MuxSaidaBankRegister|selected[26]~7_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[26]~7_combout\,
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[26]~73_combout\);

-- Location: LCCOMB_X54_Y45_N18
\fd|ALU|final|selected[26]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[26]~74_combout\ = (\fd|BankRegister|muxA|selected\(26) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[26]~73_combout\))))) # (!\fd|BankRegister|muxA|selected\(26) & 
-- (\fd|ALU|final|selected[26]~73_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(26),
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[26]~73_combout\,
	combout => \fd|ALU|final|selected[26]~74_combout\);

-- Location: LCCOMB_X54_Y45_N4
\fd|MuxRegRam|selected[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[26]~89_combout\ = (\fd|ALU|final|selected[26]~74_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[26]~74_combout\,
	combout => \fd|MuxRegRam|selected[26]~89_combout\);

-- Location: LCCOMB_X53_Y47_N12
\fd|BankRegister|add1to4|DOUT[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[26]~feeder_combout\ = \fd|MuxRegRam|selected[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[26]~89_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[26]~feeder_combout\);

-- Location: FF_X53_Y47_N13
\fd|BankRegister|add1to4|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[26]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(26));

-- Location: LCCOMB_X57_Y46_N14
\fd|BankRegister|muxB|selected[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~26_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(26))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(26),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(26),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[26]~26_combout\);

-- Location: LCCOMB_X58_Y46_N18
\fd|BankRegister|muxB|selected[26]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~27_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[26]~26_combout\ & (\fd|BankRegister|add1to4|DOUT\(26))) # (!\fd|BankRegister|muxB|selected[26]~26_combout\ & ((\fd|BankRegister|add1to3|DOUT\(26)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(26),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to3|DOUT\(26),
	datad => \fd|BankRegister|muxB|selected[26]~26_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~27_combout\);

-- Location: FF_X54_Y45_N5
\fd|BankRegister|add1to8|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[26]~89_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(26));

-- Location: FF_X53_Y46_N25
\fd|BankRegister|add1to6|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~89_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(26));

-- Location: LCCOMB_X53_Y46_N26
\fd|BankRegister|add1to7|DOUT[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[26]~feeder_combout\ = \fd|MuxRegRam|selected[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[26]~89_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[26]~feeder_combout\);

-- Location: FF_X53_Y46_N27
\fd|BankRegister|add1to7|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[26]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(26));

-- Location: FF_X54_Y45_N3
\fd|BankRegister|add1to5|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[26]~89_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(26));

-- Location: LCCOMB_X54_Y45_N2
\fd|BankRegister|muxB|selected[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~24_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(26)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(26) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(26),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(26),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[26]~24_combout\);

-- Location: LCCOMB_X53_Y46_N24
\fd|BankRegister|muxB|selected[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[26]~25_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[26]~24_combout\ & (\fd|BankRegister|add1to8|DOUT\(26))) # (!\fd|BankRegister|muxB|selected[26]~24_combout\ & ((\fd|BankRegister|add1to6|DOUT\(26)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[26]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(26),
	datac => \fd|BankRegister|add1to6|DOUT\(26),
	datad => \fd|BankRegister|muxB|selected[26]~24_combout\,
	combout => \fd|BankRegister|muxB|selected[26]~25_combout\);

-- Location: LCCOMB_X53_Y46_N14
\fd|MuxSaidaBankRegister|selected[26]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[26]~7_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[26]~25_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[26]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|BankRegister|muxB|selected[26]~27_combout\,
	datad => \fd|BankRegister|muxB|selected[26]~25_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[26]~7_combout\);

-- Location: LCCOMB_X55_Y45_N8
\fd|ALU|adder|addsloop:26:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(26) & ((\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[26]~7_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(26) & (\fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[26]~7_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[26]~7_combout\,
	datab => \fd|BankRegister|muxA|selected\(26),
	datac => \fd|ALU|adder|addsloop:25:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y47_N18
\fd|BankRegister|muxB|selected[27]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~22_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(27))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to2|DOUT\(27),
	datac => \fd|BankRegister|add1to1|DOUT\(27),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[27]~22_combout\);

-- Location: LCCOMB_X55_Y47_N24
\fd|BankRegister|muxB|selected[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~23_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[27]~22_combout\ & (\fd|BankRegister|add1to4|DOUT\(27))) # (!\fd|BankRegister|muxB|selected[27]~22_combout\ & ((\fd|BankRegister|add1to3|DOUT\(27)))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[27]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to4|DOUT\(27),
	datac => \fd|BankRegister|add1to3|DOUT\(27),
	datad => \fd|BankRegister|muxB|selected[27]~22_combout\,
	combout => \fd|BankRegister|muxB|selected[27]~23_combout\);

-- Location: LCCOMB_X53_Y46_N28
\fd|BankRegister|add1to7|DOUT[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[27]~feeder_combout\ = \fd|MuxRegRam|selected[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[27]~90_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[27]~feeder_combout\);

-- Location: FF_X53_Y46_N29
\fd|BankRegister|add1to7|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[27]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(27));

-- Location: FF_X55_Y46_N15
\fd|BankRegister|add1to5|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~90_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(27));

-- Location: LCCOMB_X55_Y46_N14
\fd|BankRegister|muxB|selected[27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~20_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(27)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(27) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(27),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(27),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[27]~20_combout\);

-- Location: FF_X56_Y46_N1
\fd|BankRegister|add1to6|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[27]~90_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(27));

-- Location: FF_X55_Y46_N29
\fd|BankRegister|add1to8|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[27]~90_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(27));

-- Location: LCCOMB_X56_Y46_N0
\fd|BankRegister|muxB|selected[27]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[27]~21_combout\ = (\fd|BankRegister|muxB|selected[27]~20_combout\ & (((\fd|BankRegister|add1to8|DOUT\(27))) # (!\fd|Rom|q\(16)))) # (!\fd|BankRegister|muxB|selected[27]~20_combout\ & (\fd|Rom|q\(16) & 
-- (\fd|BankRegister|add1to6|DOUT\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[27]~20_combout\,
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(27),
	datad => \fd|BankRegister|add1to8|DOUT\(27),
	combout => \fd|BankRegister|muxB|selected[27]~21_combout\);

-- Location: LCCOMB_X55_Y47_N8
\fd|MuxSaidaBankRegister|selected[27]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[27]~6_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[27]~21_combout\))) # (!\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[27]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[27]~23_combout\,
	datab => \fd|Rom|q\(28),
	datac => \ucfd|Equal1~0_combout\,
	datad => \fd|BankRegister|muxB|selected[27]~21_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[27]~6_combout\);

-- Location: LCCOMB_X54_Y46_N0
\fd|ALU|final|selected[27]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[27]~71_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[27]~6_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[27]~6_combout\,
	combout => \fd|ALU|final|selected[27]~71_combout\);

-- Location: LCCOMB_X54_Y46_N30
\fd|ALU|final|selected[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[27]~72_combout\ = (\fd|BankRegister|muxA|selected\(27) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[27]~71_combout\))))) # (!\fd|BankRegister|muxA|selected\(27) & 
-- (\fd|ALU|final|selected[27]~71_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(27),
	datab => \fd|UCalu|output\(1),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[27]~71_combout\,
	combout => \fd|ALU|final|selected[27]~72_combout\);

-- Location: LCCOMB_X54_Y45_N30
\fd|MuxRegRam|selected[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[29]~92_combout\ = (\fd|ALU|final|selected[29]~68_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[29]~68_combout\,
	combout => \fd|MuxRegRam|selected[29]~92_combout\);

-- Location: LCCOMB_X53_Y47_N10
\fd|BankRegister|add1to4|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~92_combout\,
	combout => \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\);

-- Location: FF_X53_Y47_N11
\fd|BankRegister|add1to4|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to4|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(29));

-- Location: FF_X55_Y47_N5
\fd|BankRegister|add1to1|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~92_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(29));

-- Location: FF_X54_Y47_N29
\fd|BankRegister|add1to2|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~92_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(29));

-- Location: LCCOMB_X54_Y47_N28
\fd|BankRegister|muxA|selected[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[29]~3_combout\ = (\fd|Rom|q\(22) & (((\fd|Rom|q\(21))))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(29)))) # (!\fd|Rom|q\(21) & (\fd|BankRegister|add1to1|DOUT\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to1|DOUT\(29),
	datac => \fd|BankRegister|add1to2|DOUT\(29),
	datad => \fd|Rom|q\(21),
	combout => \fd|BankRegister|muxA|selected[29]~3_combout\);

-- Location: LCCOMB_X55_Y47_N30
\fd|BankRegister|add1to3|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[29]~92_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[29]~feeder_combout\);

-- Location: FF_X55_Y47_N31
\fd|BankRegister|add1to3|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(29));

-- Location: LCCOMB_X53_Y47_N22
\fd|BankRegister|muxA|selected[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(29) = (\fd|BankRegister|muxA|selected[29]~3_combout\ & ((\fd|BankRegister|add1to4|DOUT\(29)) # ((!\fd|Rom|q\(22))))) # (!\fd|BankRegister|muxA|selected[29]~3_combout\ & (((\fd|Rom|q\(22) & 
-- \fd|BankRegister|add1to3|DOUT\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(29),
	datab => \fd|BankRegister|muxA|selected[29]~3_combout\,
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|add1to3|DOUT\(29),
	combout => \fd|BankRegister|muxA|selected\(29));

-- Location: LCCOMB_X52_Y45_N28
\fd|BankRegister|add1to7|DOUT[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[29]~feeder_combout\ = \fd|MuxRegRam|selected[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[29]~92_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[29]~feeder_combout\);

-- Location: FF_X52_Y45_N29
\fd|BankRegister|add1to7|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[29]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(29));

-- Location: FF_X54_Y45_N9
\fd|BankRegister|add1to5|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~92_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(29));

-- Location: LCCOMB_X54_Y45_N8
\fd|BankRegister|muxB|selected[29]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~12_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(29)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(29) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(29),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(29),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[29]~12_combout\);

-- Location: FF_X52_Y45_N23
\fd|BankRegister|add1to6|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[29]~92_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(29));

-- Location: FF_X54_Y45_N31
\fd|BankRegister|add1to8|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[29]~92_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(29));

-- Location: LCCOMB_X52_Y45_N22
\fd|BankRegister|muxB|selected[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~13_combout\ = (\fd|BankRegister|muxB|selected[29]~12_combout\ & (((\fd|BankRegister|add1to8|DOUT\(29))) # (!\fd|Rom|q\(16)))) # (!\fd|BankRegister|muxB|selected[29]~12_combout\ & (\fd|Rom|q\(16) & 
-- (\fd|BankRegister|add1to6|DOUT\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[29]~12_combout\,
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(29),
	datad => \fd|BankRegister|add1to8|DOUT\(29),
	combout => \fd|BankRegister|muxB|selected[29]~13_combout\);

-- Location: LCCOMB_X55_Y47_N4
\fd|BankRegister|muxB|selected[29]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~14_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|add1to2|DOUT\(29)) # ((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (((\fd|BankRegister|add1to1|DOUT\(29) & !\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to2|DOUT\(29),
	datac => \fd|BankRegister|add1to1|DOUT\(29),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[29]~14_combout\);

-- Location: LCCOMB_X53_Y47_N14
\fd|BankRegister|muxB|selected[29]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[29]~15_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|muxB|selected[29]~14_combout\ & ((\fd|BankRegister|add1to4|DOUT\(29)))) # (!\fd|BankRegister|muxB|selected[29]~14_combout\ & (\fd|BankRegister|add1to3|DOUT\(29))))) # 
-- (!\fd|Rom|q\(17) & (((\fd|BankRegister|muxB|selected[29]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(17),
	datab => \fd|BankRegister|add1to3|DOUT\(29),
	datac => \fd|BankRegister|muxB|selected[29]~14_combout\,
	datad => \fd|BankRegister|add1to4|DOUT\(29),
	combout => \fd|BankRegister|muxB|selected[29]~15_combout\);

-- Location: LCCOMB_X53_Y47_N0
\fd|MuxSaidaBankRegister|selected[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[29]~4_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[29]~13_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[29]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[29]~13_combout\,
	datab => \fd|Rom|q\(28),
	datac => \fd|BankRegister|muxB|selected[29]~15_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[29]~4_combout\);

-- Location: LCCOMB_X53_Y46_N30
\fd|BankRegister|add1to7|DOUT[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[28]~91_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[28]~feeder_combout\);

-- Location: FF_X53_Y46_N31
\fd|BankRegister|add1to7|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[28]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(28));

-- Location: FF_X55_Y46_N17
\fd|BankRegister|add1to5|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~91_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(28));

-- Location: LCCOMB_X55_Y46_N16
\fd|BankRegister|muxB|selected[28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~16_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(28)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(28) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(28),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(28),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[28]~16_combout\);

-- Location: FF_X55_Y46_N9
\fd|BankRegister|add1to8|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[28]~91_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(28));

-- Location: FF_X53_Y46_N19
\fd|BankRegister|add1to6|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~91_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(28));

-- Location: LCCOMB_X53_Y46_N18
\fd|BankRegister|muxB|selected[28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~17_combout\ = (\fd|BankRegister|muxB|selected[28]~16_combout\ & ((\fd|BankRegister|add1to8|DOUT\(28)) # ((!\fd|Rom|q\(16))))) # (!\fd|BankRegister|muxB|selected[28]~16_combout\ & (((\fd|BankRegister|add1to6|DOUT\(28) & 
-- \fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxB|selected[28]~16_combout\,
	datab => \fd|BankRegister|add1to8|DOUT\(28),
	datac => \fd|BankRegister|add1to6|DOUT\(28),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[28]~17_combout\);

-- Location: FF_X54_Y46_N5
\fd|BankRegister|add1to4|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~91_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(28));

-- Location: LCCOMB_X54_Y47_N10
\fd|BankRegister|add1to2|DOUT[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\ = \fd|MuxRegRam|selected[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[28]~91_combout\,
	combout => \fd|BankRegister|add1to2|DOUT[28]~feeder_combout\);

-- Location: FF_X54_Y47_N11
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

-- Location: FF_X57_Y46_N9
\fd|BankRegister|add1to1|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~91_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(28));

-- Location: LCCOMB_X57_Y46_N8
\fd|BankRegister|muxB|selected[28]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~18_combout\ = (\fd|Rom|q\(17) & (((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & ((\fd|Rom|q\(16) & (\fd|BankRegister|add1to2|DOUT\(28))) # (!\fd|Rom|q\(16) & ((\fd|BankRegister|add1to1|DOUT\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(28),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to1|DOUT\(28),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[28]~18_combout\);

-- Location: LCCOMB_X57_Y46_N16
\fd|BankRegister|muxB|selected[28]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[28]~19_combout\ = (\fd|BankRegister|muxB|selected[28]~18_combout\ & ((\fd|BankRegister|add1to4|DOUT\(28)) # ((!\fd|Rom|q\(17))))) # (!\fd|BankRegister|muxB|selected[28]~18_combout\ & (((\fd|BankRegister|add1to3|DOUT\(28) & 
-- \fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to4|DOUT\(28),
	datab => \fd|BankRegister|muxB|selected[28]~18_combout\,
	datac => \fd|BankRegister|add1to3|DOUT\(28),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[28]~19_combout\);

-- Location: LCCOMB_X55_Y46_N22
\fd|MuxSaidaBankRegister|selected[28]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[28]~5_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[28]~17_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[28]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[28]~17_combout\,
	datac => \fd|BankRegister|muxB|selected[28]~19_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxSaidaBankRegister|selected[28]~5_combout\);

-- Location: LCCOMB_X55_Y45_N22
\fd|ALU|adder|addsloop:27:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(27) & ((\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[27]~6_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(27) & (\fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[27]~6_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(27),
	datab => \fd|MuxSaidaBankRegister|selected[27]~6_combout\,
	datac => \fd|ALU|adder|addsloop:26:add1to31|vaium~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X55_Y46_N6
\fd|ALU|final|selected[28]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[28]~69_combout\ = \fd|MuxSaidaBankRegister|selected[28]~5_combout\ $ (\fd|UCalu|output\(2) $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[28]~5_combout\,
	datab => \fd|UCalu|output\(2),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[28]~69_combout\);

-- Location: LCCOMB_X55_Y46_N4
\fd|ALU|final|selected[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[28]~70_combout\ = (\fd|BankRegister|muxA|selected\(28) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[28]~69_combout\))))) # (!\fd|BankRegister|muxA|selected\(28) & 
-- (\fd|ALU|final|selected[28]~69_combout\ & (\fd|UCalu|output\(0) $ (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(28),
	datab => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[28]~69_combout\,
	combout => \fd|ALU|final|selected[28]~70_combout\);

-- Location: LCCOMB_X55_Y46_N8
\fd|MuxRegRam|selected[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[28]~91_combout\ = (\fd|ALU|final|selected[28]~70_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|ALU|final|selected[28]~70_combout\,
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxRegRam|selected[28]~91_combout\);

-- Location: FF_X57_Y46_N17
\fd|BankRegister|add1to3|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[28]~91_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(28));

-- Location: LCCOMB_X57_Y46_N22
\fd|BankRegister|muxA|selected[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[28]~4_combout\ = (\fd|Rom|q\(21) & ((\fd|BankRegister|add1to2|DOUT\(28)) # ((\fd|Rom|q\(22))))) # (!\fd|Rom|q\(21) & (((\fd|BankRegister|add1to1|DOUT\(28) & !\fd|Rom|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to2|DOUT\(28),
	datab => \fd|BankRegister|add1to1|DOUT\(28),
	datac => \fd|Rom|q\(21),
	datad => \fd|Rom|q\(22),
	combout => \fd|BankRegister|muxA|selected[28]~4_combout\);

-- Location: LCCOMB_X54_Y46_N4
\fd|BankRegister|muxA|selected[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(28) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[28]~4_combout\ & ((\fd|BankRegister|add1to4|DOUT\(28)))) # (!\fd|BankRegister|muxA|selected[28]~4_combout\ & (\fd|BankRegister|add1to3|DOUT\(28))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[28]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to3|DOUT\(28),
	datac => \fd|BankRegister|add1to4|DOUT\(28),
	datad => \fd|BankRegister|muxA|selected[28]~4_combout\,
	combout => \fd|BankRegister|muxA|selected\(28));

-- Location: LCCOMB_X54_Y48_N0
\fd|ALU|adder|addsloop:28:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(28) & ((\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(28) & (\fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[28]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|BankRegister|muxA|selected\(28),
	datac => \fd|MuxSaidaBankRegister|selected[28]~5_combout\,
	datad => \fd|ALU|adder|addsloop:27:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y48_N12
\fd|ALU|final|selected[29]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[29]~67_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[29]~4_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[29]~4_combout\,
	datad => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[29]~67_combout\);

-- Location: LCCOMB_X54_Y48_N26
\fd|ALU|final|selected[29]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[29]~68_combout\ = (\fd|BankRegister|muxA|selected\(29) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[29]~67_combout\))))) # (!\fd|BankRegister|muxA|selected\(29) & 
-- (\fd|ALU|final|selected[29]~67_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|BankRegister|muxA|selected\(29),
	datac => \fd|UCalu|output\(0),
	datad => \fd|ALU|final|selected[29]~67_combout\,
	combout => \fd|ALU|final|selected[29]~68_combout\);

-- Location: LCCOMB_X54_Y48_N8
\fd|beqAnd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~9_combout\ = (!\fd|ALU|final|selected[27]~72_combout\ & (!\fd|ALU|final|selected[26]~74_combout\ & (!\fd|ALU|final|selected[29]~68_combout\ & !\fd|ALU|final|selected[28]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[27]~72_combout\,
	datab => \fd|ALU|final|selected[26]~74_combout\,
	datac => \fd|ALU|final|selected[29]~68_combout\,
	datad => \fd|ALU|final|selected[28]~70_combout\,
	combout => \fd|beqAnd~9_combout\);

-- Location: FF_X55_Y46_N27
\fd|BankRegister|add1to8|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[31]~62_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(31));

-- Location: FF_X56_Y46_N25
\fd|BankRegister|add1to6|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~62_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(31));

-- Location: LCCOMB_X56_Y46_N2
\fd|BankRegister|add1to7|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[31]~62_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[31]~feeder_combout\);

-- Location: FF_X56_Y46_N3
\fd|BankRegister|add1to7|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[31]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(31));

-- Location: FF_X55_Y46_N25
\fd|BankRegister|add1to5|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~62_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(31));

-- Location: LCCOMB_X55_Y46_N24
\fd|BankRegister|muxB|selected[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~4_combout\ = (\fd|Rom|q\(17) & ((\fd|BankRegister|add1to7|DOUT\(31)) # ((\fd|Rom|q\(16))))) # (!\fd|Rom|q\(17) & (((\fd|BankRegister|add1to5|DOUT\(31) & !\fd|Rom|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to7|DOUT\(31),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to5|DOUT\(31),
	datad => \fd|Rom|q\(16),
	combout => \fd|BankRegister|muxB|selected[31]~4_combout\);

-- Location: LCCOMB_X56_Y46_N24
\fd|BankRegister|muxB|selected[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~5_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[31]~4_combout\ & (\fd|BankRegister|add1to8|DOUT\(31))) # (!\fd|BankRegister|muxB|selected[31]~4_combout\ & ((\fd|BankRegister|add1to6|DOUT\(31)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to8|DOUT\(31),
	datac => \fd|BankRegister|add1to6|DOUT\(31),
	datad => \fd|BankRegister|muxB|selected[31]~4_combout\,
	combout => \fd|BankRegister|muxB|selected[31]~5_combout\);

-- Location: LCCOMB_X54_Y46_N2
\fd|BankRegister|add1to3|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fd|MuxRegRam|selected[31]~62_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[31]~feeder_combout\);

-- Location: FF_X54_Y46_N3
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

-- Location: LCCOMB_X57_Y46_N24
\fd|BankRegister|add1to1|DOUT[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\ = \fd|MuxRegRam|selected[31]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[31]~62_combout\,
	combout => \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\);

-- Location: FF_X57_Y46_N25
\fd|BankRegister|add1to1|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to1|DOUT[31]~feeder_combout\,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(31));

-- Location: FF_X52_Y46_N15
\fd|BankRegister|add1to2|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~62_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(31));

-- Location: LCCOMB_X52_Y46_N26
\fd|BankRegister|muxB|selected[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~6_combout\ = (\fd|Rom|q\(16) & (((\fd|BankRegister|add1to2|DOUT\(31)) # (\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & (\fd|BankRegister|add1to1|DOUT\(31) & ((!\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to1|DOUT\(31),
	datac => \fd|BankRegister|add1to2|DOUT\(31),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[31]~6_combout\);

-- Location: LCCOMB_X52_Y46_N4
\fd|BankRegister|muxB|selected[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[31]~7_combout\ = (\fd|BankRegister|muxB|selected[31]~6_combout\ & (((\fd|BankRegister|add1to4|DOUT\(31)) # (!\fd|Rom|q\(17))))) # (!\fd|BankRegister|muxB|selected[31]~6_combout\ & (\fd|BankRegister|add1to3|DOUT\(31) & 
-- ((\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(31),
	datab => \fd|BankRegister|muxB|selected[31]~6_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(31),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[31]~7_combout\);

-- Location: LCCOMB_X55_Y46_N0
\fd|MuxSaidaBankRegister|selected[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[31]~2_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[31]~5_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[31]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|BankRegister|muxB|selected[31]~5_combout\,
	datac => \fd|BankRegister|muxB|selected[31]~7_combout\,
	datad => \ucfd|Equal1~0_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[31]~2_combout\);

-- Location: FF_X55_Y46_N11
\fd|BankRegister|add1to8|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxRegRam|selected[30]~93_combout\,
	ena => \fd|BankRegister|add1to8|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to8|DOUT\(30));

-- Location: FF_X56_Y46_N27
\fd|BankRegister|add1to6|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~93_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to6|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to6|DOUT\(30));

-- Location: LCCOMB_X56_Y46_N12
\fd|BankRegister|add1to7|DOUT[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to7|DOUT[30]~feeder_combout\ = \fd|MuxRegRam|selected[30]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[30]~93_combout\,
	combout => \fd|BankRegister|add1to7|DOUT[30]~feeder_combout\);

-- Location: FF_X56_Y46_N13
\fd|BankRegister|add1to7|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to7|DOUT[30]~feeder_combout\,
	ena => \fd|BankRegister|add1to7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to7|DOUT\(30));

-- Location: FF_X55_Y46_N3
\fd|BankRegister|add1to5|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~93_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to5|DOUT\(30));

-- Location: LCCOMB_X55_Y46_N2
\fd|BankRegister|muxB|selected[30]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~8_combout\ = (\fd|Rom|q\(16) & (((\fd|Rom|q\(17))))) # (!\fd|Rom|q\(16) & ((\fd|Rom|q\(17) & (\fd|BankRegister|add1to7|DOUT\(30))) # (!\fd|Rom|q\(17) & ((\fd|BankRegister|add1to5|DOUT\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|BankRegister|add1to7|DOUT\(30),
	datac => \fd|BankRegister|add1to5|DOUT\(30),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[30]~8_combout\);

-- Location: LCCOMB_X56_Y46_N26
\fd|BankRegister|muxB|selected[30]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~9_combout\ = (\fd|Rom|q\(16) & ((\fd|BankRegister|muxB|selected[30]~8_combout\ & (\fd|BankRegister|add1to8|DOUT\(30))) # (!\fd|BankRegister|muxB|selected[30]~8_combout\ & ((\fd|BankRegister|add1to6|DOUT\(30)))))) # 
-- (!\fd|Rom|q\(16) & (((\fd|BankRegister|muxB|selected[30]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to8|DOUT\(30),
	datab => \fd|Rom|q\(16),
	datac => \fd|BankRegister|add1to6|DOUT\(30),
	datad => \fd|BankRegister|muxB|selected[30]~8_combout\,
	combout => \fd|BankRegister|muxB|selected[30]~9_combout\);

-- Location: FF_X52_Y46_N21
\fd|BankRegister|add1to2|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~93_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to2|DOUT\(30));

-- Location: FF_X57_Y46_N11
\fd|BankRegister|add1to1|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~93_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(30));

-- Location: LCCOMB_X52_Y46_N20
\fd|BankRegister|muxB|selected[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~10_combout\ = (\fd|Rom|q\(16) & ((\fd|Rom|q\(17)) # ((\fd|BankRegister|add1to2|DOUT\(30))))) # (!\fd|Rom|q\(16) & (!\fd|Rom|q\(17) & ((\fd|BankRegister|add1to1|DOUT\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(16),
	datab => \fd|Rom|q\(17),
	datac => \fd|BankRegister|add1to2|DOUT\(30),
	datad => \fd|BankRegister|add1to1|DOUT\(30),
	combout => \fd|BankRegister|muxB|selected[30]~10_combout\);

-- Location: FF_X52_Y46_N19
\fd|BankRegister|add1to4|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[30]~93_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(30));

-- Location: LCCOMB_X52_Y46_N18
\fd|BankRegister|muxB|selected[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxB|selected[30]~11_combout\ = (\fd|BankRegister|muxB|selected[30]~10_combout\ & (((\fd|BankRegister|add1to4|DOUT\(30)) # (!\fd|Rom|q\(17))))) # (!\fd|BankRegister|muxB|selected[30]~10_combout\ & (\fd|BankRegister|add1to3|DOUT\(30) & 
-- ((\fd|Rom|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(30),
	datab => \fd|BankRegister|muxB|selected[30]~10_combout\,
	datac => \fd|BankRegister|add1to4|DOUT\(30),
	datad => \fd|Rom|q\(17),
	combout => \fd|BankRegister|muxB|selected[30]~11_combout\);

-- Location: LCCOMB_X53_Y46_N0
\fd|MuxSaidaBankRegister|selected[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxSaidaBankRegister|selected[30]~3_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|Rom|q\(28) & (\fd|BankRegister|muxB|selected[30]~9_combout\)) # (!\fd|Rom|q\(28) & ((\fd|BankRegister|muxB|selected[30]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Equal1~0_combout\,
	datab => \fd|BankRegister|muxB|selected[30]~9_combout\,
	datac => \fd|Rom|q\(28),
	datad => \fd|BankRegister|muxB|selected[30]~11_combout\,
	combout => \fd|MuxSaidaBankRegister|selected[30]~3_combout\);

-- Location: LCCOMB_X54_Y48_N10
\fd|ALU|adder|addsloop:29:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(29) & ((\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\) # (\fd|MuxSaidaBankRegister|selected[29]~4_combout\ $ (\fd|UCalu|output\(2))))) # 
-- (!\fd|BankRegister|muxA|selected\(29) & (\fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\ & (\fd|MuxSaidaBankRegister|selected[29]~4_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[29]~4_combout\,
	datab => \fd|BankRegister|muxA|selected\(29),
	datac => \fd|UCalu|output\(2),
	datad => \fd|ALU|adder|addsloop:28:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y48_N20
\fd|ALU|final|selected[30]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[30]~65_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~3_combout\ $ (((\fd|UCalu|output\(1) & \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|UCalu|output\(1),
	datac => \fd|MuxSaidaBankRegister|selected[30]~3_combout\,
	datad => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[30]~65_combout\);

-- Location: LCCOMB_X54_Y48_N30
\fd|ALU|final|selected[30]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[30]~66_combout\ = (\fd|BankRegister|muxA|selected\(30) & (\fd|UCalu|output\(1) $ (((\fd|UCalu|output\(0)) # (\fd|ALU|final|selected[30]~65_combout\))))) # (!\fd|BankRegister|muxA|selected\(30) & 
-- (\fd|ALU|final|selected[30]~65_combout\ & (\fd|UCalu|output\(1) $ (\fd|UCalu|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|UCalu|output\(0),
	datac => \fd|BankRegister|muxA|selected\(30),
	datad => \fd|ALU|final|selected[30]~65_combout\,
	combout => \fd|ALU|final|selected[30]~66_combout\);

-- Location: LCCOMB_X55_Y46_N10
\fd|MuxRegRam|selected[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[30]~93_combout\ = (\fd|ALU|final|selected[30]~66_combout\ & ((\fd|Rom|q\(28)) # ((!\fd|Rom|q\(27)) # (!\fd|Rom|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(28),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(27),
	datad => \fd|ALU|final|selected[30]~66_combout\,
	combout => \fd|MuxRegRam|selected[30]~93_combout\);

-- Location: LCCOMB_X58_Y46_N20
\fd|BankRegister|add1to3|DOUT[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|add1to3|DOUT[30]~feeder_combout\ = \fd|MuxRegRam|selected[30]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|MuxRegRam|selected[30]~93_combout\,
	combout => \fd|BankRegister|add1to3|DOUT[30]~feeder_combout\);

-- Location: FF_X58_Y46_N21
\fd|BankRegister|add1to3|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|BankRegister|add1to3|DOUT[30]~feeder_combout\,
	ena => \fd|BankRegister|add1to3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to3|DOUT\(30));

-- Location: LCCOMB_X57_Y46_N10
\fd|BankRegister|muxA|selected[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[30]~2_combout\ = (\fd|Rom|q\(21) & ((\fd|Rom|q\(22)) # ((\fd|BankRegister|add1to2|DOUT\(30))))) # (!\fd|Rom|q\(21) & (!\fd|Rom|q\(22) & (\fd|BankRegister|add1to1|DOUT\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(21),
	datab => \fd|Rom|q\(22),
	datac => \fd|BankRegister|add1to1|DOUT\(30),
	datad => \fd|BankRegister|add1to2|DOUT\(30),
	combout => \fd|BankRegister|muxA|selected[30]~2_combout\);

-- Location: LCCOMB_X52_Y46_N6
\fd|BankRegister|muxA|selected[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(30) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[30]~2_combout\ & ((\fd|BankRegister|add1to4|DOUT\(30)))) # (!\fd|BankRegister|muxA|selected[30]~2_combout\ & (\fd|BankRegister|add1to3|DOUT\(30))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[30]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|add1to3|DOUT\(30),
	datab => \fd|BankRegister|add1to4|DOUT\(30),
	datac => \fd|Rom|q\(22),
	datad => \fd|BankRegister|muxA|selected[30]~2_combout\,
	combout => \fd|BankRegister|muxA|selected\(30));

-- Location: LCCOMB_X54_Y48_N28
\fd|ALU|adder|addsloop:30:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ = (\fd|BankRegister|muxA|selected\(30) & ((\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\) # (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~3_combout\)))) # 
-- (!\fd|BankRegister|muxA|selected\(30) & (\fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\ & (\fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[30]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(30),
	datab => \fd|UCalu|output\(2),
	datac => \fd|MuxSaidaBankRegister|selected[30]~3_combout\,
	datad => \fd|ALU|adder|addsloop:29:add1to31|vaium~0_combout\,
	combout => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X54_Y48_N24
\fd|ALU|final|selected[31]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~63_combout\ = \fd|UCalu|output\(2) $ (\fd|MuxSaidaBankRegister|selected[31]~2_combout\ $ (\fd|BankRegister|muxA|selected\(31) $ (\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[31]~2_combout\,
	datac => \fd|BankRegister|muxA|selected\(31),
	datad => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	combout => \fd|ALU|final|selected[31]~63_combout\);

-- Location: LCCOMB_X54_Y48_N6
\fd|ALU|final|selected[31]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~64_combout\ = (!\fd|UCalu|output\(0) & (\fd|UCalu|output\(1) & \fd|ALU|final|selected[31]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(0),
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[31]~63_combout\,
	combout => \fd|ALU|final|selected[31]~64_combout\);

-- Location: LCCOMB_X55_Y46_N26
\fd|MuxRegRam|selected[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[31]~62_combout\ = (!\ucfd|Equal1~0_combout\ & ((\fd|ALU|final|selected[31]~64_combout\) # ((\fd|ALU|final|selected[31]~62_combout\ & !\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[31]~62_combout\,
	datab => \ucfd|Equal1~0_combout\,
	datac => \fd|UCalu|output\(1),
	datad => \fd|ALU|final|selected[31]~64_combout\,
	combout => \fd|MuxRegRam|selected[31]~62_combout\);

-- Location: FF_X52_Y46_N5
\fd|BankRegister|add1to4|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[31]~62_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to4|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to4|DOUT\(31));

-- Location: LCCOMB_X52_Y46_N14
\fd|BankRegister|muxA|selected[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected[31]~1_combout\ = (\fd|Rom|q\(22) & (\fd|Rom|q\(21))) # (!\fd|Rom|q\(22) & ((\fd|Rom|q\(21) & (\fd|BankRegister|add1to2|DOUT\(31))) # (!\fd|Rom|q\(21) & ((\fd|BankRegister|add1to1|DOUT\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|Rom|q\(21),
	datac => \fd|BankRegister|add1to2|DOUT\(31),
	datad => \fd|BankRegister|add1to1|DOUT\(31),
	combout => \fd|BankRegister|muxA|selected[31]~1_combout\);

-- Location: LCCOMB_X52_Y46_N24
\fd|BankRegister|muxA|selected[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|BankRegister|muxA|selected\(31) = (\fd|Rom|q\(22) & ((\fd|BankRegister|muxA|selected[31]~1_combout\ & (\fd|BankRegister|add1to4|DOUT\(31))) # (!\fd|BankRegister|muxA|selected[31]~1_combout\ & ((\fd|BankRegister|add1to3|DOUT\(31)))))) # 
-- (!\fd|Rom|q\(22) & (((\fd|BankRegister|muxA|selected[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(22),
	datab => \fd|BankRegister|add1to4|DOUT\(31),
	datac => \fd|BankRegister|muxA|selected[31]~1_combout\,
	datad => \fd|BankRegister|add1to3|DOUT\(31),
	combout => \fd|BankRegister|muxA|selected\(31));

-- Location: LCCOMB_X55_Y46_N12
\fd|ALU|final|selected[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[31]~62_combout\ = (\fd|BankRegister|muxA|selected\(31) & ((\fd|UCalu|output\(0)) # (\fd|MuxSaidaBankRegister|selected[31]~2_combout\ $ (\fd|UCalu|output\(2))))) # (!\fd|BankRegister|muxA|selected\(31) & (\fd|UCalu|output\(0) & 
-- (\fd|MuxSaidaBankRegister|selected[31]~2_combout\ $ (\fd|UCalu|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(31),
	datab => \fd|MuxSaidaBankRegister|selected[31]~2_combout\,
	datac => \fd|UCalu|output\(0),
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|final|selected[31]~62_combout\);

-- Location: LCCOMB_X54_Y48_N14
\fd|beqAnd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~10_combout\ = (!\fd|ALU|final|selected[30]~66_combout\ & (!\fd|ALU|final|selected[31]~64_combout\ & ((\fd|UCalu|output\(1)) # (!\fd|ALU|final|selected[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|final|selected[31]~62_combout\,
	datac => \fd|ALU|final|selected[30]~66_combout\,
	datad => \fd|ALU|final|selected[31]~64_combout\,
	combout => \fd|beqAnd~10_combout\);

-- Location: LCCOMB_X55_Y48_N2
\fd|ALU|adder|a0|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|adder|a0|soma~0_combout\ = \fd|BankRegister|muxA|selected\(0) $ (((\fd|MuxSaidaBankRegister|selected[0]~0_combout\) # (\fd|MuxSaidaBankRegister|selected[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|BankRegister|muxA|selected\(0),
	datab => \fd|MuxSaidaBankRegister|selected[0]~0_combout\,
	datad => \fd|MuxSaidaBankRegister|selected[0]~1_combout\,
	combout => \fd|ALU|adder|a0|soma~0_combout\);

-- Location: LCCOMB_X55_Y48_N12
\fd|ALU|choiceB|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|choiceB|selected[0]~0_combout\ = \fd|UCalu|output\(2) $ (((\fd|MuxSaidaBankRegister|selected[0]~1_combout\) # (\fd|MuxSaidaBankRegister|selected[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|MuxSaidaBankRegister|selected[0]~1_combout\,
	datab => \fd|MuxSaidaBankRegister|selected[0]~0_combout\,
	datad => \fd|UCalu|output\(2),
	combout => \fd|ALU|choiceB|selected[0]~0_combout\);

-- Location: LCCOMB_X55_Y48_N8
\fd|ALU|final|selected[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[0]~60_combout\ = (\fd|ALU|choiceB|selected[0]~0_combout\ & ((\fd|UCalu|output\(0)) # ((\fd|BankRegister|muxA|selected\(0) & !\fd|UCalu|output\(1))))) # (!\fd|ALU|choiceB|selected[0]~0_combout\ & (\fd|UCalu|output\(0) & 
-- ((\fd|BankRegister|muxA|selected\(0)) # (\fd|UCalu|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|choiceB|selected[0]~0_combout\,
	datab => \fd|BankRegister|muxA|selected\(0),
	datac => \fd|UCalu|output\(0),
	datad => \fd|UCalu|output\(1),
	combout => \fd|ALU|final|selected[0]~60_combout\);

-- Location: LCCOMB_X54_Y48_N2
\fd|ALU|out4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|out4[0]~0_combout\ = (\fd|BankRegister|muxA|selected\(31) & ((\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & ((!\fd|MuxSaidaBankRegister|selected[31]~2_combout\))) # (!\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & 
-- (!\fd|UCalu|output\(2))))) # (!\fd|BankRegister|muxA|selected\(31) & ((\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & (!\fd|UCalu|output\(2))) # (!\fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\ & 
-- ((\fd|MuxSaidaBankRegister|selected[31]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(2),
	datab => \fd|MuxSaidaBankRegister|selected[31]~2_combout\,
	datac => \fd|BankRegister|muxA|selected\(31),
	datad => \fd|ALU|adder|addsloop:30:add1to31|vaium~0_combout\,
	combout => \fd|ALU|out4[0]~0_combout\);

-- Location: LCCOMB_X55_Y48_N28
\fd|ALU|final|selected[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|ALU|final|selected[0]~61_combout\ = (\fd|UCalu|output\(1) & ((\fd|ALU|final|selected[0]~60_combout\ & ((\fd|ALU|out4[0]~0_combout\))) # (!\fd|ALU|final|selected[0]~60_combout\ & (\fd|ALU|adder|a0|soma~0_combout\)))) # (!\fd|UCalu|output\(1) & 
-- (((\fd|ALU|final|selected[0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|UCalu|output\(1),
	datab => \fd|ALU|adder|a0|soma~0_combout\,
	datac => \fd|ALU|final|selected[0]~60_combout\,
	datad => \fd|ALU|out4[0]~0_combout\,
	combout => \fd|ALU|final|selected[0]~61_combout\);

-- Location: LCCOMB_X54_Y48_N16
\fd|beqAnd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~11_combout\ = (!\fd|ALU|final|selected[1]~124_combout\ & (\fd|beqAnd~0_combout\ & (\fd|beqAnd~10_combout\ & !\fd|ALU|final|selected[0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|ALU|final|selected[1]~124_combout\,
	datab => \fd|beqAnd~0_combout\,
	datac => \fd|beqAnd~10_combout\,
	datad => \fd|ALU|final|selected[0]~61_combout\,
	combout => \fd|beqAnd~11_combout\);

-- Location: LCCOMB_X54_Y48_N22
\fd|beqAnd~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|beqAnd~12_combout\ = (\fd|beqAnd~5_combout\ & (\fd|beqAnd~8_combout\ & (\fd|beqAnd~9_combout\ & \fd|beqAnd~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|beqAnd~5_combout\,
	datab => \fd|beqAnd~8_combout\,
	datac => \fd|beqAnd~9_combout\,
	datad => \fd|beqAnd~11_combout\,
	combout => \fd|beqAnd~12_combout\);

-- Location: LCCOMB_X59_Y48_N4
\fd|PC|DOUT[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[4]~5_combout\ = (\fd|beqAnd~12_combout\ & ((\fd|adder2|addsloop:4:add1to31|soma~combout\))) # (!\fd|beqAnd~12_combout\ & (\fd|adder|addsloop:4:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:4:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:4:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|PC|DOUT[4]~5_combout\);

-- Location: FF_X59_Y48_N5
\fd|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[4]~5_combout\,
	asdata => \fd|Rom|q\(0),
	sload => \ucfd|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(4));

-- Location: LCCOMB_X59_Y48_N0
\fd|adder2|addsloop:6:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:6:add1to31|soma~combout\ = \fd|adder|addsloop:6:add1to31|soma~combout\ $ (\fd|adder2|addsloop:5:add1to31|vaium~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder|addsloop:6:add1to31|soma~combout\,
	datad => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:6:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y48_N8
\fd|PC|DOUT[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[6]~3_combout\ = (\fd|beqAnd~12_combout\ & (\fd|adder2|addsloop:6:add1to31|soma~combout\)) # (!\fd|beqAnd~12_combout\ & ((\fd|adder|addsloop:6:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:6:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:6:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|PC|DOUT[6]~3_combout\);

-- Location: FF_X59_Y48_N9
\fd|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[6]~3_combout\,
	asdata => \fd|Rom|q\(2),
	sload => \ucfd|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(6));

-- Location: LCCOMB_X59_Y48_N2
\fd|adder|addsloop:6:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:6:add1to31|soma~combout\ = \fd|PC|DOUT\(6) $ (((\fd|PC|DOUT\(5) & (\fd|PC|DOUT\(4) & \fd|adder|addsloop:3:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(5),
	datab => \fd|PC|DOUT\(4),
	datac => \fd|PC|DOUT\(6),
	datad => \fd|adder|addsloop:3:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:6:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y48_N18
\fd|adder|addsloop:4:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:4:add1to31|w3~combout\ = (\fd|adder|addsloop:3:add1to31|w3~combout\ & \fd|PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(4),
	combout => \fd|adder|addsloop:4:add1to31|w3~combout\);

-- Location: LCCOMB_X58_Y48_N22
\fd|adder|addsloop:7:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:7:add1to31|soma~combout\ = \fd|PC|DOUT\(7) $ (((\fd|PC|DOUT\(5) & (\fd|PC|DOUT\(6) & \fd|adder|addsloop:4:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(5),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|PC|DOUT\(6),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:7:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N12
\fd|adder2|addsloop:7:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:7:add1to31|soma~combout\ = \fd|Rom|q\(5) $ (\fd|adder|addsloop:7:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:5:add1to31|vaium~0_combout\ & \fd|adder|addsloop:6:add1to31|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	datab => \fd|Rom|q\(5),
	datac => \fd|adder|addsloop:6:add1to31|soma~combout\,
	datad => \fd|adder|addsloop:7:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:7:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N22
\fd|PC|DOUT[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[7]~2_combout\ = (\fd|beqAnd~12_combout\ & (\fd|adder2|addsloop:7:add1to31|soma~combout\)) # (!\fd|beqAnd~12_combout\ & ((\fd|adder|addsloop:7:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:7:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:7:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|PC|DOUT[7]~2_combout\);

-- Location: FF_X57_Y48_N23
\fd|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[7]~2_combout\,
	asdata => \fd|Rom|q\(3),
	sload => \ucfd|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(7));

-- Location: LCCOMB_X58_Y48_N18
\fd|Rom|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal0~2_combout\ = (!\fd|PC|DOUT\(5) & (!\fd|PC|DOUT\(7) & (!\fd|PC|DOUT\(6) & !\fd|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(5),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|PC|DOUT\(6),
	datad => \fd|PC|DOUT\(4),
	combout => \fd|Rom|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y48_N16
\fd|adder|addsloop:7:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:7:add1to31|w3~combout\ = (\fd|PC|DOUT\(5) & (\fd|PC|DOUT\(7) & (\fd|PC|DOUT\(6) & \fd|adder|addsloop:4:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(5),
	datab => \fd|PC|DOUT\(7),
	datac => \fd|PC|DOUT\(6),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:7:add1to31|w3~combout\);

-- Location: LCCOMB_X57_Y48_N8
\fd|adder|addsloop:8:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:8:add1to31|soma~combout\ = \fd|PC|DOUT\(8) $ (\fd|adder|addsloop:7:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|PC|DOUT\(8),
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:8:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N26
\fd|adder2|addsloop:10:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:10:add1to31|soma~combout\ = \fd|adder|addsloop:10:add1to31|soma~combout\ $ (((\fd|adder|addsloop:9:add1to31|soma~combout\ & (\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & \fd|adder|addsloop:8:add1to31|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:9:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:8:add1to31|soma~combout\,
	datad => \fd|adder|addsloop:10:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:10:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N24
\fd|MuxPC|selected[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[10]~5_combout\ = (!\ucfd|Mux1~0_combout\ & ((\fd|beqAnd~12_combout\ & (\fd|adder2|addsloop:10:add1to31|soma~combout\)) # (!\fd|beqAnd~12_combout\ & ((\fd|adder|addsloop:10:add1to31|soma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:10:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:10:add1to31|soma~combout\,
	datac => \ucfd|Mux1~0_combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[10]~5_combout\);

-- Location: FF_X57_Y48_N25
\fd|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(10));

-- Location: LCCOMB_X57_Y48_N28
\fd|adder|addsloop:10:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:10:add1to31|soma~combout\ = \fd|PC|DOUT\(10) $ (((\fd|PC|DOUT\(9) & (\fd|PC|DOUT\(8) & \fd|adder|addsloop:7:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datab => \fd|PC|DOUT\(10),
	datac => \fd|PC|DOUT\(8),
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:10:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N4
\fd|adder2|addsloop:10:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:10:add1to31|w3~combout\ = (\fd|adder|addsloop:9:add1to31|soma~combout\ & (\fd|adder|addsloop:10:add1to31|soma~combout\ & (\fd|adder|addsloop:8:add1to31|soma~combout\ & \fd|adder2|addsloop:7:add1to31|vaium~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:9:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:10:add1to31|soma~combout\,
	datac => \fd|adder|addsloop:8:add1to31|soma~combout\,
	datad => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:10:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y48_N26
\fd|adder|addsloop:11:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:11:add1to31|soma~combout\ = \fd|PC|DOUT\(11) $ (\fd|adder|addsloop:10:add1to31|w3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|PC|DOUT\(11),
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:11:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y48_N8
\fd|MuxPC|selected[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[11]~4_combout\ = (!\ucfd|Mux1~0_combout\ & (\fd|adder|addsloop:11:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:10:add1to31|w3~combout\ & \fd|beqAnd~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:10:add1to31|w3~combout\,
	datab => \ucfd|Mux1~0_combout\,
	datac => \fd|adder|addsloop:11:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[11]~4_combout\);

-- Location: FF_X53_Y48_N9
\fd|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(11));

-- Location: LCCOMB_X53_Y48_N2
\fd|adder2|addsloop:11:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:11:add1to31|w3~combout\ = (\fd|adder2|addsloop:10:add1to31|w3~combout\ & (\fd|adder|addsloop:10:add1to31|w3~combout\ $ (\fd|PC|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:10:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(11),
	datad => \fd|adder2|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:11:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y48_N0
\fd|adder|addsloop:12:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:12:add1to31|soma~combout\ = \fd|PC|DOUT\(12) $ (((\fd|PC|DOUT\(11) & \fd|adder|addsloop:10:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(12),
	datac => \fd|PC|DOUT\(11),
	datad => \fd|adder|addsloop:10:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:12:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y48_N18
\fd|MuxPC|selected[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[12]~3_combout\ = (!\ucfd|Mux1~0_combout\ & (\fd|adder|addsloop:12:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:11:add1to31|w3~combout\ & \fd|beqAnd~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:11:add1to31|w3~combout\,
	datab => \fd|adder|addsloop:12:add1to31|soma~combout\,
	datac => \ucfd|Mux1~0_combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[12]~3_combout\);

-- Location: FF_X53_Y48_N19
\fd|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(12));

-- Location: LCCOMB_X53_Y48_N22
\fd|adder|addsloop:13:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:13:add1to31|soma~combout\ = \fd|PC|DOUT\(13) $ (((\fd|adder|addsloop:10:add1to31|w3~combout\ & (\fd|PC|DOUT\(11) & \fd|PC|DOUT\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:10:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(13),
	datac => \fd|PC|DOUT\(11),
	datad => \fd|PC|DOUT\(12),
	combout => \fd|adder|addsloop:13:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y48_N12
\fd|adder2|addsloop:13:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:13:add1to31|soma~combout\ = \fd|adder|addsloop:13:add1to31|soma~combout\ $ (\fd|Rom|q\(11) $ (((\fd|adder2|addsloop:11:add1to31|w3~combout\ & \fd|adder|addsloop:12:add1to31|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:13:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:11:add1to31|w3~combout\,
	datac => \fd|Rom|q\(11),
	datad => \fd|adder|addsloop:12:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:13:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y48_N16
\fd|MuxPC|selected[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[13]~2_combout\ = (!\ucfd|Mux1~0_combout\ & ((\fd|beqAnd~12_combout\ & (\fd|adder2|addsloop:13:add1to31|soma~combout\)) # (!\fd|beqAnd~12_combout\ & ((\fd|adder|addsloop:13:add1to31|soma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:13:add1to31|soma~combout\,
	datab => \ucfd|Mux1~0_combout\,
	datac => \fd|adder|addsloop:13:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[13]~2_combout\);

-- Location: FF_X53_Y48_N17
\fd|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(13));

-- Location: LCCOMB_X53_Y48_N14
\fd|Rom|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal0~0_combout\ = (!\fd|PC|DOUT\(14) & (!\fd|PC|DOUT\(13) & (!\fd|PC|DOUT\(11) & !\fd|PC|DOUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|PC|DOUT\(13),
	datac => \fd|PC|DOUT\(11),
	datad => \fd|PC|DOUT\(12),
	combout => \fd|Rom|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y48_N28
\fd|Rom|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal8~0_combout\ = (!\fd|PC|DOUT\(2) & \fd|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|PC|DOUT\(2),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|Equal8~0_combout\);

-- Location: LCCOMB_X58_Y48_N20
\fd|Rom|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal8~1_combout\ = (\fd|Rom|Equal0~1_combout\ & (\fd|Rom|Equal0~2_combout\ & (\fd|Rom|Equal0~0_combout\ & \fd|Rom|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal0~1_combout\,
	datab => \fd|Rom|Equal0~2_combout\,
	datac => \fd|Rom|Equal0~0_combout\,
	datad => \fd|Rom|Equal8~0_combout\,
	combout => \fd|Rom|Equal8~1_combout\);

-- Location: LCCOMB_X58_Y47_N6
\fd|Rom|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr11~0_combout\ = (\fd|PC|DOUT\(1) & (((!\fd|PC|DOUT\(2) & \fd|Rom|Equal0~3_combout\)))) # (!\fd|PC|DOUT\(1) & (\fd|Rom|Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal8~1_combout\,
	datab => \fd|PC|DOUT\(2),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(1),
	combout => \fd|Rom|WideOr11~0_combout\);

-- Location: LCCOMB_X57_Y45_N4
\fd|Rom|WideOr11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr11~1_combout\ = (\fd|Rom|Equal6~0_combout\) # ((\fd|Rom|WideOr11~0_combout\ & \fd|PC|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|WideOr11~0_combout\,
	datab => \fd|Rom|Equal6~0_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|WideOr11~1_combout\);

-- Location: FF_X56_Y45_N19
\fd|Rom|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|WideOr11~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(1));

-- Location: LCCOMB_X59_Y48_N30
\fd|adder2|addsloop:3:add1to31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:3:add1to31|soma~0_combout\ = \fd|adder|addsloop:3:add1to31|soma~combout\ $ (\fd|Rom|q\(1) $ (((\fd|Rom|q\(0) & \fd|adder|addsloop:2:add1to31|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datab => \fd|Rom|q\(1),
	datac => \fd|Rom|q\(0),
	datad => \fd|adder|addsloop:2:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:3:add1to31|soma~0_combout\);

-- Location: LCCOMB_X58_Y48_N24
\fd|MuxPC|selected[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[3]~7_combout\ = (!\ucfd|Mux1~0_combout\ & ((\fd|beqAnd~12_combout\ & ((\fd|adder2|addsloop:3:add1to31|soma~0_combout\))) # (!\fd|beqAnd~12_combout\ & (\fd|adder|addsloop:3:add1to31|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Mux1~0_combout\,
	datab => \fd|adder|addsloop:3:add1to31|soma~combout\,
	datac => \fd|adder2|addsloop:3:add1to31|soma~0_combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[3]~7_combout\);

-- Location: FF_X58_Y48_N25
\fd|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(3));

-- Location: LCCOMB_X58_Y48_N10
\fd|adder|addsloop:3:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:3:add1to31|w3~combout\ = (\fd|PC|DOUT\(0) & (\fd|PC|DOUT\(2) & (\fd|PC|DOUT\(1) & \fd|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(3),
	combout => \fd|adder|addsloop:3:add1to31|w3~combout\);

-- Location: LCCOMB_X59_Y48_N26
\fd|adder|addsloop:5:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:5:add1to31|soma~combout\ = \fd|PC|DOUT\(5) $ (((\fd|adder|addsloop:3:add1to31|w3~combout\ & \fd|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|w3~combout\,
	datac => \fd|PC|DOUT\(4),
	datad => \fd|PC|DOUT\(5),
	combout => \fd|adder|addsloop:5:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y48_N14
\fd|adder2|addsloop:4:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:4:add1to31|vaium~0_combout\ = (\fd|Rom|q\(2) & ((\fd|adder2|addsloop:3:add1to31|vaium~0_combout\) # (\fd|adder|addsloop:3:add1to31|w3~combout\ $ (\fd|PC|DOUT\(4))))) # (!\fd|Rom|q\(2) & (\fd|adder2|addsloop:3:add1to31|vaium~0_combout\ 
-- & (\fd|adder|addsloop:3:add1to31|w3~combout\ $ (\fd|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:3:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(4),
	datac => \fd|Rom|q\(2),
	datad => \fd|adder2|addsloop:3:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X59_Y48_N16
\fd|adder2|addsloop:5:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:5:add1to31|soma~combout\ = \fd|PC|DOUT\(5) $ (\fd|adder2|addsloop:4:add1to31|vaium~0_combout\ $ (\fd|Rom|q\(3) $ (\fd|adder|addsloop:4:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(5),
	datab => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\,
	datac => \fd|Rom|q\(3),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:5:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y48_N6
\fd|PC|DOUT[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[5]~4_combout\ = (\fd|beqAnd~12_combout\ & ((\fd|adder2|addsloop:5:add1to31|soma~combout\))) # (!\fd|beqAnd~12_combout\ & (\fd|adder|addsloop:5:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:5:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:5:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|PC|DOUT[5]~4_combout\);

-- Location: FF_X59_Y48_N7
\fd|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[5]~4_combout\,
	asdata => \fd|Rom|q\(1),
	sload => \ucfd|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(5));

-- Location: LCCOMB_X59_Y48_N12
\fd|adder2|addsloop:5:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:5:add1to31|vaium~0_combout\ = (\fd|adder2|addsloop:4:add1to31|vaium~0_combout\ & ((\fd|Rom|q\(3)) # (\fd|PC|DOUT\(5) $ (\fd|adder|addsloop:4:add1to31|w3~combout\)))) # (!\fd|adder2|addsloop:4:add1to31|vaium~0_combout\ & (\fd|Rom|q\(3) 
-- & (\fd|PC|DOUT\(5) $ (\fd|adder|addsloop:4:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(5),
	datab => \fd|adder2|addsloop:4:add1to31|vaium~0_combout\,
	datac => \fd|Rom|q\(3),
	datad => \fd|adder|addsloop:4:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y48_N2
\fd|adder2|addsloop:7:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:7:add1to31|vaium~0_combout\ = (\fd|Rom|q\(5) & ((\fd|adder|addsloop:7:add1to31|soma~combout\) # ((\fd|adder2|addsloop:5:add1to31|vaium~0_combout\ & \fd|adder|addsloop:6:add1to31|soma~combout\)))) # (!\fd|Rom|q\(5) & 
-- (\fd|adder2|addsloop:5:add1to31|vaium~0_combout\ & (\fd|adder|addsloop:6:add1to31|soma~combout\ & \fd|adder|addsloop:7:add1to31|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder2|addsloop:5:add1to31|vaium~0_combout\,
	datab => \fd|Rom|q\(5),
	datac => \fd|adder|addsloop:6:add1to31|soma~combout\,
	datad => \fd|adder|addsloop:7:add1to31|soma~combout\,
	combout => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X57_Y48_N14
\fd|MuxPC|selected[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[8]~6_combout\ = (!\ucfd|Mux1~0_combout\ & (\fd|adder|addsloop:8:add1to31|soma~combout\ $ (((\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & \fd|beqAnd~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Mux1~0_combout\,
	datab => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	datac => \fd|adder|addsloop:8:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[8]~6_combout\);

-- Location: FF_X57_Y48_N15
\fd|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(8));

-- Location: LCCOMB_X57_Y48_N30
\fd|adder|addsloop:9:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:9:add1to31|soma~combout\ = \fd|PC|DOUT\(9) $ (((\fd|PC|DOUT\(8) & \fd|adder|addsloop:7:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|PC|DOUT\(9),
	datac => \fd|PC|DOUT\(8),
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:9:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N18
\fd|adder2|addsloop:9:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:9:add1to31|soma~combout\ = \fd|PC|DOUT\(9) $ (((\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & ((\fd|PC|DOUT\(8)) # (\fd|adder|addsloop:7:add1to31|w3~combout\))) # (!\fd|adder2|addsloop:7:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(8) 
-- & \fd|adder|addsloop:7:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datab => \fd|adder2|addsloop:7:add1to31|vaium~0_combout\,
	datac => \fd|PC|DOUT\(8),
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:9:add1to31|soma~combout\);

-- Location: LCCOMB_X57_Y48_N0
\fd|PC|DOUT[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[9]~1_combout\ = (\fd|beqAnd~12_combout\ & ((\fd|adder2|addsloop:9:add1to31|soma~combout\))) # (!\fd|beqAnd~12_combout\ & (\fd|adder|addsloop:9:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:9:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:9:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|PC|DOUT[9]~1_combout\);

-- Location: FF_X57_Y48_N1
\fd|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[9]~1_combout\,
	asdata => \fd|Rom|q\(5),
	sload => \ucfd|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(9));

-- Location: LCCOMB_X57_Y48_N6
\fd|adder|addsloop:10:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:10:add1to31|w3~combout\ = (\fd|PC|DOUT\(9) & (\fd|PC|DOUT\(10) & (\fd|PC|DOUT\(8) & \fd|adder|addsloop:7:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(9),
	datab => \fd|PC|DOUT\(10),
	datac => \fd|PC|DOUT\(8),
	datad => \fd|adder|addsloop:7:add1to31|w3~combout\,
	combout => \fd|adder|addsloop:10:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y48_N4
\fd|adder|addsloop:13:add1to31|w3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:13:add1to31|w3~combout\ = (\fd|adder|addsloop:10:add1to31|w3~combout\ & (\fd|PC|DOUT\(13) & (\fd|PC|DOUT\(11) & \fd|PC|DOUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:10:add1to31|w3~combout\,
	datab => \fd|PC|DOUT\(13),
	datac => \fd|PC|DOUT\(11),
	datad => \fd|PC|DOUT\(12),
	combout => \fd|adder|addsloop:13:add1to31|w3~combout\);

-- Location: LCCOMB_X53_Y48_N20
\fd|adder2|addsloop:13:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:13:add1to31|vaium~0_combout\ = (\fd|adder|addsloop:13:add1to31|soma~combout\ & ((\fd|Rom|q\(11)) # ((\fd|adder|addsloop:12:add1to31|soma~combout\ & \fd|adder2|addsloop:11:add1to31|w3~combout\)))) # 
-- (!\fd|adder|addsloop:13:add1to31|soma~combout\ & (\fd|adder|addsloop:12:add1to31|soma~combout\ & (\fd|Rom|q\(11) & \fd|adder2|addsloop:11:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:13:add1to31|soma~combout\,
	datab => \fd|adder|addsloop:12:add1to31|soma~combout\,
	datac => \fd|Rom|q\(11),
	datad => \fd|adder2|addsloop:11:add1to31|w3~combout\,
	combout => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X53_Y48_N10
\fd|MuxPC|selected[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[14]~0_combout\ = (\fd|beqAnd~12_combout\ & (\fd|adder2|addsloop:13:add1to31|vaium~0_combout\ $ (\fd|Rom|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\,
	datac => \fd|Rom|q\(12),
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[14]~0_combout\);

-- Location: LCCOMB_X53_Y48_N30
\fd|MuxPC|selected[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[14]~1_combout\ = (!\ucfd|Mux1~0_combout\ & (\fd|adder|addsloop:13:add1to31|w3~combout\ $ (\fd|PC|DOUT\(14) $ (\fd|MuxPC|selected[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:13:add1to31|w3~combout\,
	datab => \ucfd|Mux1~0_combout\,
	datac => \fd|PC|DOUT\(14),
	datad => \fd|MuxPC|selected[14]~0_combout\,
	combout => \fd|MuxPC|selected[14]~1_combout\);

-- Location: FF_X53_Y48_N31
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

-- Location: LCCOMB_X53_Y48_N28
\fd|adder|addsloop:15:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:15:add1to31|soma~combout\ = \fd|PC|DOUT\(15) $ (((\fd|PC|DOUT\(14) & \fd|adder|addsloop:13:add1to31|w3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datac => \fd|adder|addsloop:13:add1to31|w3~combout\,
	datad => \fd|PC|DOUT\(15),
	combout => \fd|adder|addsloop:15:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y48_N6
\fd|adder2|addsloop:14:add1to31|vaium~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:14:add1to31|vaium~0_combout\ = (\fd|Rom|q\(12) & ((\fd|adder2|addsloop:13:add1to31|vaium~0_combout\) # (\fd|PC|DOUT\(14) $ (\fd|adder|addsloop:13:add1to31|w3~combout\)))) # (!\fd|Rom|q\(12) & 
-- (\fd|adder2|addsloop:13:add1to31|vaium~0_combout\ & (\fd|PC|DOUT\(14) $ (\fd|adder|addsloop:13:add1to31|w3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(14),
	datab => \fd|adder|addsloop:13:add1to31|w3~combout\,
	datac => \fd|Rom|q\(12),
	datad => \fd|adder2|addsloop:13:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\);

-- Location: LCCOMB_X56_Y48_N4
\fd|adder2|addsloop:15:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder2|addsloop:15:add1to31|soma~combout\ = \fd|adder|addsloop:15:add1to31|soma~combout\ $ (\fd|Rom|q\(13) $ (\fd|adder2|addsloop:14:add1to31|vaium~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|soma~combout\,
	datab => \fd|Rom|q\(13),
	datad => \fd|adder2|addsloop:14:add1to31|vaium~0_combout\,
	combout => \fd|adder2|addsloop:15:add1to31|soma~combout\);

-- Location: LCCOMB_X53_Y48_N24
\fd|PC|DOUT[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|PC|DOUT[15]~0_combout\ = (\fd|beqAnd~12_combout\ & ((\fd|adder2|addsloop:15:add1to31|soma~combout\))) # (!\fd|beqAnd~12_combout\ & (\fd|adder|addsloop:15:add1to31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:15:add1to31|soma~combout\,
	datab => \fd|adder2|addsloop:15:add1to31|soma~combout\,
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|PC|DOUT[15]~0_combout\);

-- Location: FF_X53_Y48_N25
\fd|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|PC|DOUT[15]~0_combout\,
	asdata => \fd|Rom|q\(11),
	sload => \ucfd|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(15));

-- Location: LCCOMB_X57_Y48_N16
\fd|Rom|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal0~1_combout\ = (!\fd|PC|DOUT\(15) & (!\fd|PC|DOUT\(10) & (!\fd|PC|DOUT\(8) & !\fd|PC|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(15),
	datab => \fd|PC|DOUT\(10),
	datac => \fd|PC|DOUT\(8),
	datad => \fd|PC|DOUT\(9),
	combout => \fd|Rom|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y48_N30
\fd|Rom|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal0~3_combout\ = (\fd|Rom|Equal0~1_combout\ & (\fd|Rom|Equal0~2_combout\ & (\fd|Rom|Equal0~0_combout\ & !\fd|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|Equal0~1_combout\,
	datab => \fd|Rom|Equal0~2_combout\,
	datac => \fd|Rom|Equal0~0_combout\,
	datad => \fd|PC|DOUT\(3),
	combout => \fd|Rom|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y47_N26
\fd|Rom|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal7~0_combout\ = (\fd|PC|DOUT\(1) & (\fd|PC|DOUT\(2) & (\fd|Rom|Equal0~3_combout\ & \fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|Equal7~0_combout\);

-- Location: FF_X57_Y45_N5
\fd|Rom|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|Equal7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(28));

-- Location: LCCOMB_X58_Y48_N6
\fd|MuxPC|selected[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[0]~10_combout\ = (!\fd|PC|DOUT\(0) & ((\fd|Rom|q\(31)) # ((\fd|Rom|q\(28)) # (!\fd|Rom|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(31),
	datab => \fd|Rom|q\(27),
	datac => \fd|PC|DOUT\(0),
	datad => \fd|Rom|q\(28),
	combout => \fd|MuxPC|selected[0]~10_combout\);

-- Location: FF_X58_Y48_N7
\fd|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(0));

-- Location: LCCOMB_X58_Y48_N14
\fd|adder|addsloop:2:add1to31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|adder|addsloop:2:add1to31|soma~combout\ = \fd|PC|DOUT\(2) $ (((\fd|PC|DOUT\(0) & \fd|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(0),
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(2),
	combout => \fd|adder|addsloop:2:add1to31|soma~combout\);

-- Location: LCCOMB_X59_Y48_N22
\fd|MuxPC|selected[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[2]~9_combout\ = (!\ucfd|Mux1~0_combout\ & (\fd|adder|addsloop:2:add1to31|soma~combout\ $ (((\fd|Rom|q\(0) & \fd|beqAnd~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|adder|addsloop:2:add1to31|soma~combout\,
	datab => \ucfd|Mux1~0_combout\,
	datac => \fd|Rom|q\(0),
	datad => \fd|beqAnd~12_combout\,
	combout => \fd|MuxPC|selected[2]~9_combout\);

-- Location: FF_X59_Y48_N23
\fd|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(2));

-- Location: LCCOMB_X58_Y47_N30
\fd|Rom|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal0~4_combout\ = (!\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(2) & (\fd|Rom|Equal0~3_combout\ & !\fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y45_N22
\fd|Rom|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr0~combout\ = (\fd|Rom|Equal0~4_combout\) # (!\fd|Rom|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Rom|Equal0~4_combout\,
	datad => \fd|Rom|WideOr0~0_combout\,
	combout => \fd|Rom|WideOr0~combout\);

-- Location: FF_X57_Y45_N23
\fd|Rom|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|Rom|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(31));

-- Location: LCCOMB_X55_Y48_N24
\ucfd|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucfd|Mux1~0_combout\ = (!\fd|Rom|q\(31) & (!\fd|Rom|q\(28) & \fd|Rom|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|Rom|q\(27),
	combout => \ucfd|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y48_N4
\fd|MuxPC|selected[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxPC|selected[1]~8_combout\ = (!\ucfd|Mux1~0_combout\ & (\fd|PC|DOUT\(1) $ (\fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucfd|Mux1~0_combout\,
	datac => \fd|PC|DOUT\(1),
	datad => \fd|PC|DOUT\(0),
	combout => \fd|MuxPC|selected[1]~8_combout\);

-- Location: FF_X58_Y48_N5
\fd|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fd|MuxPC|selected[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|PC|DOUT\(1));

-- Location: LCCOMB_X58_Y47_N4
\fd|Rom|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|Equal1~0_combout\ = (!\fd|PC|DOUT\(1) & (!\fd|PC|DOUT\(2) & (\fd|Rom|Equal0~3_combout\ & \fd|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|PC|DOUT\(1),
	datab => \fd|PC|DOUT\(2),
	datac => \fd|Rom|Equal0~3_combout\,
	datad => \fd|PC|DOUT\(0),
	combout => \fd|Rom|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y47_N2
\fd|Rom|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Rom|WideOr1~combout\ = (\fd|Rom|Equal1~0_combout\) # (!\fd|Rom|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Rom|Equal1~0_combout\,
	datad => \fd|Rom|WideOr1~0_combout\,
	combout => \fd|Rom|WideOr1~combout\);

-- Location: FF_X57_Y45_N29
\fd|Rom|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|Rom|WideOr1~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|Rom|q\(27));

-- Location: LCCOMB_X55_Y48_N4
\fd|MuxRegRam|selected[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|MuxRegRam|selected[0]~63_combout\ = (\fd|ALU|final|selected[0]~61_combout\ & (((\fd|Rom|q\(28)) # (!\fd|Rom|q\(31))) # (!\fd|Rom|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Rom|q\(27),
	datab => \fd|Rom|q\(31),
	datac => \fd|Rom|q\(28),
	datad => \fd|ALU|final|selected[0]~61_combout\,
	combout => \fd|MuxRegRam|selected[0]~63_combout\);

-- Location: FF_X55_Y48_N13
\fd|BankRegister|add1to1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fd|MuxRegRam|selected[0]~63_combout\,
	sload => VCC,
	ena => \fd|BankRegister|add1to1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|BankRegister|add1to1|DOUT\(0));

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
END structure;


