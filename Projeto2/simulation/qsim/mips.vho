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

-- DATE "10/11/2018 18:21:33"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	cin : IN std_logic;
	invA : IN std_logic;
	invB : IN std_logic;
	func : IN std_logic_vector(1 DOWNTO 0);
	output : BUFFER std_logic_vector(31 DOWNTO 0);
	zero : BUFFER std_logic;
	cout : BUFFER std_logic
	);
END alu;

ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_invA : std_logic;
SIGNAL ww_invB : std_logic;
SIGNAL ww_func : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \output[16]~output_o\ : std_logic;
SIGNAL \output[17]~output_o\ : std_logic;
SIGNAL \output[18]~output_o\ : std_logic;
SIGNAL \output[19]~output_o\ : std_logic;
SIGNAL \output[20]~output_o\ : std_logic;
SIGNAL \output[21]~output_o\ : std_logic;
SIGNAL \output[22]~output_o\ : std_logic;
SIGNAL \output[23]~output_o\ : std_logic;
SIGNAL \output[24]~output_o\ : std_logic;
SIGNAL \output[25]~output_o\ : std_logic;
SIGNAL \output[26]~output_o\ : std_logic;
SIGNAL \output[27]~output_o\ : std_logic;
SIGNAL \output[28]~output_o\ : std_logic;
SIGNAL \output[29]~output_o\ : std_logic;
SIGNAL \output[30]~output_o\ : std_logic;
SIGNAL \output[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \func[0]~input_o\ : std_logic;
SIGNAL \func[1]~input_o\ : std_logic;
SIGNAL \final|selected[0]~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \invA~input_o\ : std_logic;
SIGNAL \choiceA|selected[0]~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \invB~input_o\ : std_logic;
SIGNAL \choiceB|selected[0]~0_combout\ : std_logic;
SIGNAL \adder|a0|w2~0_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \adder|a0|vaium~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \choiceA|selected[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \choiceB|selected[1]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \choiceA|selected[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \choiceB|selected[2]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \adder|cddddd:3:c1to31|w1~combout\ : std_logic;
SIGNAL \adder|cddddd:3:c1to31|w3~combout\ : std_logic;
SIGNAL \adder|cddddd:3:c1to31|w2~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \choiceA|selected[4]~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \choiceB|selected[4]~3_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \choiceA|selected[5]~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \choiceB|selected[5]~4_combout\ : std_logic;
SIGNAL \adder|cddddd:5:c1to31|vaium~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \choiceA|selected[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \choiceB|selected[6]~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \choiceA|selected[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \choiceB|selected[7]~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \adder|cddddd:8:c1to31|w1~combout\ : std_logic;
SIGNAL \adder|cddddd:8:c1to31|w3~combout\ : std_logic;
SIGNAL \adder|cddddd:8:c1to31|w2~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \choiceA|selected[9]~7_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \choiceB|selected[9]~7_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \choiceA|selected[10]~8_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \choiceB|selected[10]~8_combout\ : std_logic;
SIGNAL \adder|cddddd:10:c1to31|vaium~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \choiceA|selected[11]~9_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \choiceB|selected[11]~9_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \choiceA|selected[12]~10_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \choiceB|selected[12]~10_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \choiceA|selected[13]~11_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \choiceB|selected[13]~11_combout\ : std_logic;
SIGNAL \adder|cddddd:13:c1to31|w1~combout\ : std_logic;
SIGNAL \adder|cddddd:13:c1to31|w3~combout\ : std_logic;
SIGNAL \adder|cddddd:13:c1to31|w2~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \choiceA|selected[14]~12_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \choiceB|selected[14]~12_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \choiceA|selected[15]~13_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \choiceB|selected[15]~13_combout\ : std_logic;
SIGNAL \adder|cddddd:15:c1to31|vaium~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \choiceA|selected[16]~14_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \choiceB|selected[16]~14_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \choiceA|selected[17]~15_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \choiceB|selected[17]~15_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \choiceA|selected[18]~16_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \choiceB|selected[18]~16_combout\ : std_logic;
SIGNAL \adder|cddddd:18:c1to31|w1~combout\ : std_logic;
SIGNAL \adder|cddddd:18:c1to31|w3~combout\ : std_logic;
SIGNAL \adder|cddddd:18:c1to31|w2~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \choiceA|selected[19]~17_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \choiceB|selected[19]~17_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \choiceA|selected[20]~18_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \choiceB|selected[20]~18_combout\ : std_logic;
SIGNAL \adder|cddddd:20:c1to31|vaium~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \choiceA|selected[21]~19_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \choiceB|selected[21]~19_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \choiceA|selected[22]~20_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \choiceB|selected[22]~20_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \choiceA|selected[23]~21_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \choiceB|selected[23]~21_combout\ : std_logic;
SIGNAL \adder|cddddd:23:c1to31|w1~combout\ : std_logic;
SIGNAL \adder|cddddd:23:c1to31|w3~combout\ : std_logic;
SIGNAL \adder|cddddd:23:c1to31|w2~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \choiceA|selected[24]~22_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \choiceB|selected[24]~22_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \choiceA|selected[25]~23_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \choiceB|selected[25]~23_combout\ : std_logic;
SIGNAL \adder|cddddd:25:c1to31|vaium~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \choiceA|selected[26]~24_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \choiceB|selected[26]~24_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \choiceA|selected[27]~25_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \choiceB|selected[27]~25_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \choiceA|selected[28]~26_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \choiceB|selected[28]~26_combout\ : std_logic;
SIGNAL \adder|cddddd:28:c1to31|w1~combout\ : std_logic;
SIGNAL \adder|cddddd:28:c1to31|w3~combout\ : std_logic;
SIGNAL \adder|cddddd:28:c1to31|w2~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \choiceA|selected[29]~27_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \choiceB|selected[29]~27_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \choiceA|selected[30]~28_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \choiceB|selected[30]~28_combout\ : std_logic;
SIGNAL \adder|cddddd:30:c1to31|vaium~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \choiceA|selected[31]~29_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \choiceB|selected[31]~29_combout\ : std_logic;
SIGNAL \final|selected~1_combout\ : std_logic;
SIGNAL \final|selected~2_combout\ : std_logic;
SIGNAL \final|selected~3_combout\ : std_logic;
SIGNAL \final|selected[0]~4_combout\ : std_logic;
SIGNAL \final|selected[1]~5_combout\ : std_logic;
SIGNAL \adder|cddddd:1:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[2]~6_combout\ : std_logic;
SIGNAL \adder|cddddd:2:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[3]~7_combout\ : std_logic;
SIGNAL \final|selected[3]~8_combout\ : std_logic;
SIGNAL \final|selected[4]~9_combout\ : std_logic;
SIGNAL \adder|cddddd:4:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[5]~10_combout\ : std_logic;
SIGNAL \final|selected[6]~11_combout\ : std_logic;
SIGNAL \final|selected~12_combout\ : std_logic;
SIGNAL \adder|cddddd:7:c1to31|w1~combout\ : std_logic;
SIGNAL \final|selected[7]~13_combout\ : std_logic;
SIGNAL \final|selected[7]~14_combout\ : std_logic;
SIGNAL \adder|cddddd:7:c1to31|vaium~combout\ : std_logic;
SIGNAL \choiceA|selected[8]~30_combout\ : std_logic;
SIGNAL \final|selected[8]~15_combout\ : std_logic;
SIGNAL \final|selected[9]~16_combout\ : std_logic;
SIGNAL \adder|cddddd:9:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[10]~17_combout\ : std_logic;
SIGNAL \final|selected[11]~18_combout\ : std_logic;
SIGNAL \adder|cddddd:12:c1to31|w1~combout\ : std_logic;
SIGNAL \final|selected[12]~19_combout\ : std_logic;
SIGNAL \final|selected[12]~20_combout\ : std_logic;
SIGNAL \adder|cddddd:12:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[13]~21_combout\ : std_logic;
SIGNAL \final|selected[14]~22_combout\ : std_logic;
SIGNAL \adder|cddddd:14:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[15]~23_combout\ : std_logic;
SIGNAL \final|selected[16]~24_combout\ : std_logic;
SIGNAL \adder|cddddd:17:c1to31|w1~combout\ : std_logic;
SIGNAL \final|selected[17]~25_combout\ : std_logic;
SIGNAL \final|selected[17]~26_combout\ : std_logic;
SIGNAL \adder|cddddd:17:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[18]~27_combout\ : std_logic;
SIGNAL \final|selected[19]~28_combout\ : std_logic;
SIGNAL \adder|cddddd:19:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[20]~29_combout\ : std_logic;
SIGNAL \final|selected[21]~30_combout\ : std_logic;
SIGNAL \adder|cddddd:22:c1to31|w1~combout\ : std_logic;
SIGNAL \final|selected[22]~31_combout\ : std_logic;
SIGNAL \final|selected[22]~32_combout\ : std_logic;
SIGNAL \adder|cddddd:22:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[23]~33_combout\ : std_logic;
SIGNAL \final|selected[24]~34_combout\ : std_logic;
SIGNAL \adder|cddddd:24:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[25]~35_combout\ : std_logic;
SIGNAL \final|selected[26]~36_combout\ : std_logic;
SIGNAL \adder|cddddd:27:c1to31|w1~combout\ : std_logic;
SIGNAL \final|selected[27]~37_combout\ : std_logic;
SIGNAL \final|selected[27]~38_combout\ : std_logic;
SIGNAL \adder|cddddd:27:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[28]~39_combout\ : std_logic;
SIGNAL \final|selected[29]~40_combout\ : std_logic;
SIGNAL \adder|cddddd:29:c1to31|vaium~combout\ : std_logic;
SIGNAL \final|selected[30]~41_combout\ : std_logic;
SIGNAL \final|selected[31]~42_combout\ : std_logic;
SIGNAL \flag|output~0_combout\ : std_logic;
SIGNAL \flag|output~1_combout\ : std_logic;
SIGNAL \flag|output~2_combout\ : std_logic;
SIGNAL \flag|output~3_combout\ : std_logic;
SIGNAL \flag|output~4_combout\ : std_logic;
SIGNAL \flag|output~5_combout\ : std_logic;
SIGNAL \flag|output~6_combout\ : std_logic;
SIGNAL \flag|output~7_combout\ : std_logic;
SIGNAL \flag|output~combout\ : std_logic;
SIGNAL \adder|cddddd:31:c1to31|vaium~combout\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_invB~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_invA~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[0]~input_o\ : std_logic;
SIGNAL \flag|ALT_INV_output~combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~7_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~6_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~5_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~4_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~3_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~2_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \flag|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[31]~42_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[30]~41_combout\ : std_logic;
SIGNAL \adder|cddddd:29:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[29]~40_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[28]~39_combout\ : std_logic;
SIGNAL \adder|cddddd:27:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[27]~38_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[27]~37_combout\ : std_logic;
SIGNAL \adder|cddddd:27:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[26]~36_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[25]~35_combout\ : std_logic;
SIGNAL \adder|cddddd:24:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[24]~34_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[23]~33_combout\ : std_logic;
SIGNAL \adder|cddddd:22:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[22]~32_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[22]~31_combout\ : std_logic;
SIGNAL \adder|cddddd:22:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[21]~30_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[20]~29_combout\ : std_logic;
SIGNAL \adder|cddddd:19:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[19]~28_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[18]~27_combout\ : std_logic;
SIGNAL \adder|cddddd:17:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[17]~26_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[17]~25_combout\ : std_logic;
SIGNAL \adder|cddddd:17:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[16]~24_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[15]~23_combout\ : std_logic;
SIGNAL \adder|cddddd:14:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[14]~22_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[13]~21_combout\ : std_logic;
SIGNAL \adder|cddddd:12:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[12]~20_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[12]~19_combout\ : std_logic;
SIGNAL \adder|cddddd:12:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[11]~18_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[10]~17_combout\ : std_logic;
SIGNAL \adder|cddddd:9:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[9]~16_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[8]~15_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[8]~30_combout\ : std_logic;
SIGNAL \adder|cddddd:7:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[7]~14_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[7]~13_combout\ : std_logic;
SIGNAL \adder|cddddd:7:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected~12_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[6]~11_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[5]~10_combout\ : std_logic;
SIGNAL \adder|cddddd:4:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[4]~9_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[3]~8_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[3]~7_combout\ : std_logic;
SIGNAL \adder|cddddd:2:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[2]~6_combout\ : std_logic;
SIGNAL \adder|cddddd:1:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[1]~5_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected~3_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected~2_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected~1_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[31]~29_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[31]~29_combout\ : std_logic;
SIGNAL \adder|cddddd:30:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[30]~28_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[30]~28_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[29]~27_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[29]~27_combout\ : std_logic;
SIGNAL \adder|cddddd:28:c1to31|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \adder|cddddd:28:c1to31|ALT_INV_w3~combout\ : std_logic;
SIGNAL \adder|cddddd:28:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[28]~26_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[28]~26_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[27]~25_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[27]~25_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[26]~24_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[26]~24_combout\ : std_logic;
SIGNAL \adder|cddddd:25:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[25]~23_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[25]~23_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[24]~22_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[24]~22_combout\ : std_logic;
SIGNAL \adder|cddddd:23:c1to31|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \adder|cddddd:23:c1to31|ALT_INV_w3~combout\ : std_logic;
SIGNAL \adder|cddddd:23:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[23]~21_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[23]~21_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[22]~20_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[22]~20_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[21]~19_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[21]~19_combout\ : std_logic;
SIGNAL \adder|cddddd:20:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[20]~18_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[20]~18_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[19]~17_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[19]~17_combout\ : std_logic;
SIGNAL \adder|cddddd:18:c1to31|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \adder|cddddd:18:c1to31|ALT_INV_w3~combout\ : std_logic;
SIGNAL \adder|cddddd:18:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[18]~16_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[18]~16_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[17]~15_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[17]~15_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[16]~14_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[16]~14_combout\ : std_logic;
SIGNAL \adder|cddddd:15:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[15]~13_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[15]~13_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[14]~12_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[14]~12_combout\ : std_logic;
SIGNAL \adder|cddddd:13:c1to31|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \adder|cddddd:13:c1to31|ALT_INV_w3~combout\ : std_logic;
SIGNAL \adder|cddddd:13:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[13]~11_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[13]~11_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[12]~10_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[12]~10_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[11]~9_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[11]~9_combout\ : std_logic;
SIGNAL \adder|cddddd:10:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[10]~8_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[10]~8_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[9]~7_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[9]~7_combout\ : std_logic;
SIGNAL \adder|cddddd:8:c1to31|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \adder|cddddd:8:c1to31|ALT_INV_w3~combout\ : std_logic;
SIGNAL \adder|cddddd:8:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[7]~6_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[7]~6_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[6]~5_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[6]~5_combout\ : std_logic;
SIGNAL \adder|cddddd:5:c1to31|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[5]~4_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[5]~4_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[4]~3_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[4]~3_combout\ : std_logic;
SIGNAL \adder|cddddd:3:c1to31|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \adder|cddddd:3:c1to31|ALT_INV_w3~combout\ : std_logic;
SIGNAL \adder|cddddd:3:c1to31|ALT_INV_w1~combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[2]~2_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[2]~2_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[1]~1_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[1]~1_combout\ : std_logic;
SIGNAL \adder|a0|ALT_INV_vaium~combout\ : std_logic;
SIGNAL \adder|a0|ALT_INV_w2~0_combout\ : std_logic;
SIGNAL \choiceB|ALT_INV_selected[0]~0_combout\ : std_logic;
SIGNAL \choiceA|ALT_INV_selected[0]~0_combout\ : std_logic;
SIGNAL \final|ALT_INV_selected[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_cin <= cin;
ww_invA <= invA;
ww_invB <= invB;
ww_func <= func;
output <= ww_output;
zero <= ww_zero;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_invB~input_o\ <= NOT \invB~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_invA~input_o\ <= NOT \invA~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_func[1]~input_o\ <= NOT \func[1]~input_o\;
\ALT_INV_func[0]~input_o\ <= NOT \func[0]~input_o\;
\flag|ALT_INV_output~combout\ <= NOT \flag|output~combout\;
\flag|ALT_INV_output~7_combout\ <= NOT \flag|output~7_combout\;
\flag|ALT_INV_output~6_combout\ <= NOT \flag|output~6_combout\;
\flag|ALT_INV_output~5_combout\ <= NOT \flag|output~5_combout\;
\flag|ALT_INV_output~4_combout\ <= NOT \flag|output~4_combout\;
\flag|ALT_INV_output~3_combout\ <= NOT \flag|output~3_combout\;
\flag|ALT_INV_output~2_combout\ <= NOT \flag|output~2_combout\;
\flag|ALT_INV_output~1_combout\ <= NOT \flag|output~1_combout\;
\flag|ALT_INV_output~0_combout\ <= NOT \flag|output~0_combout\;
\final|ALT_INV_selected[31]~42_combout\ <= NOT \final|selected[31]~42_combout\;
\final|ALT_INV_selected[30]~41_combout\ <= NOT \final|selected[30]~41_combout\;
\adder|cddddd:29:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:29:c1to31|vaium~combout\;
\final|ALT_INV_selected[29]~40_combout\ <= NOT \final|selected[29]~40_combout\;
\final|ALT_INV_selected[28]~39_combout\ <= NOT \final|selected[28]~39_combout\;
\adder|cddddd:27:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:27:c1to31|vaium~combout\;
\final|ALT_INV_selected[27]~38_combout\ <= NOT \final|selected[27]~38_combout\;
\final|ALT_INV_selected[27]~37_combout\ <= NOT \final|selected[27]~37_combout\;
\adder|cddddd:27:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:27:c1to31|w1~combout\;
\final|ALT_INV_selected[26]~36_combout\ <= NOT \final|selected[26]~36_combout\;
\final|ALT_INV_selected[25]~35_combout\ <= NOT \final|selected[25]~35_combout\;
\adder|cddddd:24:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:24:c1to31|vaium~combout\;
\final|ALT_INV_selected[24]~34_combout\ <= NOT \final|selected[24]~34_combout\;
\final|ALT_INV_selected[23]~33_combout\ <= NOT \final|selected[23]~33_combout\;
\adder|cddddd:22:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:22:c1to31|vaium~combout\;
\final|ALT_INV_selected[22]~32_combout\ <= NOT \final|selected[22]~32_combout\;
\final|ALT_INV_selected[22]~31_combout\ <= NOT \final|selected[22]~31_combout\;
\adder|cddddd:22:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:22:c1to31|w1~combout\;
\final|ALT_INV_selected[21]~30_combout\ <= NOT \final|selected[21]~30_combout\;
\final|ALT_INV_selected[20]~29_combout\ <= NOT \final|selected[20]~29_combout\;
\adder|cddddd:19:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:19:c1to31|vaium~combout\;
\final|ALT_INV_selected[19]~28_combout\ <= NOT \final|selected[19]~28_combout\;
\final|ALT_INV_selected[18]~27_combout\ <= NOT \final|selected[18]~27_combout\;
\adder|cddddd:17:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:17:c1to31|vaium~combout\;
\final|ALT_INV_selected[17]~26_combout\ <= NOT \final|selected[17]~26_combout\;
\final|ALT_INV_selected[17]~25_combout\ <= NOT \final|selected[17]~25_combout\;
\adder|cddddd:17:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:17:c1to31|w1~combout\;
\final|ALT_INV_selected[16]~24_combout\ <= NOT \final|selected[16]~24_combout\;
\final|ALT_INV_selected[15]~23_combout\ <= NOT \final|selected[15]~23_combout\;
\adder|cddddd:14:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:14:c1to31|vaium~combout\;
\final|ALT_INV_selected[14]~22_combout\ <= NOT \final|selected[14]~22_combout\;
\final|ALT_INV_selected[13]~21_combout\ <= NOT \final|selected[13]~21_combout\;
\adder|cddddd:12:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:12:c1to31|vaium~combout\;
\final|ALT_INV_selected[12]~20_combout\ <= NOT \final|selected[12]~20_combout\;
\final|ALT_INV_selected[12]~19_combout\ <= NOT \final|selected[12]~19_combout\;
\adder|cddddd:12:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:12:c1to31|w1~combout\;
\final|ALT_INV_selected[11]~18_combout\ <= NOT \final|selected[11]~18_combout\;
\final|ALT_INV_selected[10]~17_combout\ <= NOT \final|selected[10]~17_combout\;
\adder|cddddd:9:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:9:c1to31|vaium~combout\;
\final|ALT_INV_selected[9]~16_combout\ <= NOT \final|selected[9]~16_combout\;
\final|ALT_INV_selected[8]~15_combout\ <= NOT \final|selected[8]~15_combout\;
\choiceA|ALT_INV_selected[8]~30_combout\ <= NOT \choiceA|selected[8]~30_combout\;
\adder|cddddd:7:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:7:c1to31|vaium~combout\;
\final|ALT_INV_selected[7]~14_combout\ <= NOT \final|selected[7]~14_combout\;
\final|ALT_INV_selected[7]~13_combout\ <= NOT \final|selected[7]~13_combout\;
\adder|cddddd:7:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:7:c1to31|w1~combout\;
\final|ALT_INV_selected~12_combout\ <= NOT \final|selected~12_combout\;
\final|ALT_INV_selected[6]~11_combout\ <= NOT \final|selected[6]~11_combout\;
\final|ALT_INV_selected[5]~10_combout\ <= NOT \final|selected[5]~10_combout\;
\adder|cddddd:4:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:4:c1to31|vaium~combout\;
\final|ALT_INV_selected[4]~9_combout\ <= NOT \final|selected[4]~9_combout\;
\final|ALT_INV_selected[3]~8_combout\ <= NOT \final|selected[3]~8_combout\;
\final|ALT_INV_selected[3]~7_combout\ <= NOT \final|selected[3]~7_combout\;
\adder|cddddd:2:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:2:c1to31|vaium~combout\;
\final|ALT_INV_selected[2]~6_combout\ <= NOT \final|selected[2]~6_combout\;
\adder|cddddd:1:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:1:c1to31|vaium~combout\;
\final|ALT_INV_selected[1]~5_combout\ <= NOT \final|selected[1]~5_combout\;
\final|ALT_INV_selected~3_combout\ <= NOT \final|selected~3_combout\;
\final|ALT_INV_selected~2_combout\ <= NOT \final|selected~2_combout\;
\final|ALT_INV_selected~1_combout\ <= NOT \final|selected~1_combout\;
\choiceB|ALT_INV_selected[31]~29_combout\ <= NOT \choiceB|selected[31]~29_combout\;
\choiceA|ALT_INV_selected[31]~29_combout\ <= NOT \choiceA|selected[31]~29_combout\;
\adder|cddddd:30:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:30:c1to31|vaium~combout\;
\choiceB|ALT_INV_selected[30]~28_combout\ <= NOT \choiceB|selected[30]~28_combout\;
\choiceA|ALT_INV_selected[30]~28_combout\ <= NOT \choiceA|selected[30]~28_combout\;
\choiceB|ALT_INV_selected[29]~27_combout\ <= NOT \choiceB|selected[29]~27_combout\;
\choiceA|ALT_INV_selected[29]~27_combout\ <= NOT \choiceA|selected[29]~27_combout\;
\adder|cddddd:28:c1to31|ALT_INV_w2~0_combout\ <= NOT \adder|cddddd:28:c1to31|w2~0_combout\;
\adder|cddddd:28:c1to31|ALT_INV_w3~combout\ <= NOT \adder|cddddd:28:c1to31|w3~combout\;
\adder|cddddd:28:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:28:c1to31|w1~combout\;
\choiceB|ALT_INV_selected[28]~26_combout\ <= NOT \choiceB|selected[28]~26_combout\;
\choiceA|ALT_INV_selected[28]~26_combout\ <= NOT \choiceA|selected[28]~26_combout\;
\choiceB|ALT_INV_selected[27]~25_combout\ <= NOT \choiceB|selected[27]~25_combout\;
\choiceA|ALT_INV_selected[27]~25_combout\ <= NOT \choiceA|selected[27]~25_combout\;
\choiceB|ALT_INV_selected[26]~24_combout\ <= NOT \choiceB|selected[26]~24_combout\;
\choiceA|ALT_INV_selected[26]~24_combout\ <= NOT \choiceA|selected[26]~24_combout\;
\adder|cddddd:25:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:25:c1to31|vaium~combout\;
\choiceB|ALT_INV_selected[25]~23_combout\ <= NOT \choiceB|selected[25]~23_combout\;
\choiceA|ALT_INV_selected[25]~23_combout\ <= NOT \choiceA|selected[25]~23_combout\;
\choiceB|ALT_INV_selected[24]~22_combout\ <= NOT \choiceB|selected[24]~22_combout\;
\choiceA|ALT_INV_selected[24]~22_combout\ <= NOT \choiceA|selected[24]~22_combout\;
\adder|cddddd:23:c1to31|ALT_INV_w2~0_combout\ <= NOT \adder|cddddd:23:c1to31|w2~0_combout\;
\adder|cddddd:23:c1to31|ALT_INV_w3~combout\ <= NOT \adder|cddddd:23:c1to31|w3~combout\;
\adder|cddddd:23:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:23:c1to31|w1~combout\;
\choiceB|ALT_INV_selected[23]~21_combout\ <= NOT \choiceB|selected[23]~21_combout\;
\choiceA|ALT_INV_selected[23]~21_combout\ <= NOT \choiceA|selected[23]~21_combout\;
\choiceB|ALT_INV_selected[22]~20_combout\ <= NOT \choiceB|selected[22]~20_combout\;
\choiceA|ALT_INV_selected[22]~20_combout\ <= NOT \choiceA|selected[22]~20_combout\;
\choiceB|ALT_INV_selected[21]~19_combout\ <= NOT \choiceB|selected[21]~19_combout\;
\choiceA|ALT_INV_selected[21]~19_combout\ <= NOT \choiceA|selected[21]~19_combout\;
\adder|cddddd:20:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:20:c1to31|vaium~combout\;
\choiceB|ALT_INV_selected[20]~18_combout\ <= NOT \choiceB|selected[20]~18_combout\;
\choiceA|ALT_INV_selected[20]~18_combout\ <= NOT \choiceA|selected[20]~18_combout\;
\choiceB|ALT_INV_selected[19]~17_combout\ <= NOT \choiceB|selected[19]~17_combout\;
\choiceA|ALT_INV_selected[19]~17_combout\ <= NOT \choiceA|selected[19]~17_combout\;
\adder|cddddd:18:c1to31|ALT_INV_w2~0_combout\ <= NOT \adder|cddddd:18:c1to31|w2~0_combout\;
\adder|cddddd:18:c1to31|ALT_INV_w3~combout\ <= NOT \adder|cddddd:18:c1to31|w3~combout\;
\adder|cddddd:18:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:18:c1to31|w1~combout\;
\choiceB|ALT_INV_selected[18]~16_combout\ <= NOT \choiceB|selected[18]~16_combout\;
\choiceA|ALT_INV_selected[18]~16_combout\ <= NOT \choiceA|selected[18]~16_combout\;
\choiceB|ALT_INV_selected[17]~15_combout\ <= NOT \choiceB|selected[17]~15_combout\;
\choiceA|ALT_INV_selected[17]~15_combout\ <= NOT \choiceA|selected[17]~15_combout\;
\choiceB|ALT_INV_selected[16]~14_combout\ <= NOT \choiceB|selected[16]~14_combout\;
\choiceA|ALT_INV_selected[16]~14_combout\ <= NOT \choiceA|selected[16]~14_combout\;
\adder|cddddd:15:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:15:c1to31|vaium~combout\;
\choiceB|ALT_INV_selected[15]~13_combout\ <= NOT \choiceB|selected[15]~13_combout\;
\choiceA|ALT_INV_selected[15]~13_combout\ <= NOT \choiceA|selected[15]~13_combout\;
\choiceB|ALT_INV_selected[14]~12_combout\ <= NOT \choiceB|selected[14]~12_combout\;
\choiceA|ALT_INV_selected[14]~12_combout\ <= NOT \choiceA|selected[14]~12_combout\;
\adder|cddddd:13:c1to31|ALT_INV_w2~0_combout\ <= NOT \adder|cddddd:13:c1to31|w2~0_combout\;
\adder|cddddd:13:c1to31|ALT_INV_w3~combout\ <= NOT \adder|cddddd:13:c1to31|w3~combout\;
\adder|cddddd:13:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:13:c1to31|w1~combout\;
\choiceB|ALT_INV_selected[13]~11_combout\ <= NOT \choiceB|selected[13]~11_combout\;
\choiceA|ALT_INV_selected[13]~11_combout\ <= NOT \choiceA|selected[13]~11_combout\;
\choiceB|ALT_INV_selected[12]~10_combout\ <= NOT \choiceB|selected[12]~10_combout\;
\choiceA|ALT_INV_selected[12]~10_combout\ <= NOT \choiceA|selected[12]~10_combout\;
\choiceB|ALT_INV_selected[11]~9_combout\ <= NOT \choiceB|selected[11]~9_combout\;
\choiceA|ALT_INV_selected[11]~9_combout\ <= NOT \choiceA|selected[11]~9_combout\;
\adder|cddddd:10:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:10:c1to31|vaium~combout\;
\choiceB|ALT_INV_selected[10]~8_combout\ <= NOT \choiceB|selected[10]~8_combout\;
\choiceA|ALT_INV_selected[10]~8_combout\ <= NOT \choiceA|selected[10]~8_combout\;
\choiceB|ALT_INV_selected[9]~7_combout\ <= NOT \choiceB|selected[9]~7_combout\;
\choiceA|ALT_INV_selected[9]~7_combout\ <= NOT \choiceA|selected[9]~7_combout\;
\adder|cddddd:8:c1to31|ALT_INV_w2~0_combout\ <= NOT \adder|cddddd:8:c1to31|w2~0_combout\;
\adder|cddddd:8:c1to31|ALT_INV_w3~combout\ <= NOT \adder|cddddd:8:c1to31|w3~combout\;
\adder|cddddd:8:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:8:c1to31|w1~combout\;
\choiceB|ALT_INV_selected[7]~6_combout\ <= NOT \choiceB|selected[7]~6_combout\;
\choiceA|ALT_INV_selected[7]~6_combout\ <= NOT \choiceA|selected[7]~6_combout\;
\choiceB|ALT_INV_selected[6]~5_combout\ <= NOT \choiceB|selected[6]~5_combout\;
\choiceA|ALT_INV_selected[6]~5_combout\ <= NOT \choiceA|selected[6]~5_combout\;
\adder|cddddd:5:c1to31|ALT_INV_vaium~combout\ <= NOT \adder|cddddd:5:c1to31|vaium~combout\;
\choiceB|ALT_INV_selected[5]~4_combout\ <= NOT \choiceB|selected[5]~4_combout\;
\choiceA|ALT_INV_selected[5]~4_combout\ <= NOT \choiceA|selected[5]~4_combout\;
\choiceB|ALT_INV_selected[4]~3_combout\ <= NOT \choiceB|selected[4]~3_combout\;
\choiceA|ALT_INV_selected[4]~3_combout\ <= NOT \choiceA|selected[4]~3_combout\;
\adder|cddddd:3:c1to31|ALT_INV_w2~0_combout\ <= NOT \adder|cddddd:3:c1to31|w2~0_combout\;
\adder|cddddd:3:c1to31|ALT_INV_w3~combout\ <= NOT \adder|cddddd:3:c1to31|w3~combout\;
\adder|cddddd:3:c1to31|ALT_INV_w1~combout\ <= NOT \adder|cddddd:3:c1to31|w1~combout\;
\choiceB|ALT_INV_selected[2]~2_combout\ <= NOT \choiceB|selected[2]~2_combout\;
\choiceA|ALT_INV_selected[2]~2_combout\ <= NOT \choiceA|selected[2]~2_combout\;
\choiceB|ALT_INV_selected[1]~1_combout\ <= NOT \choiceB|selected[1]~1_combout\;
\choiceA|ALT_INV_selected[1]~1_combout\ <= NOT \choiceA|selected[1]~1_combout\;
\adder|a0|ALT_INV_vaium~combout\ <= NOT \adder|a0|vaium~combout\;
\adder|a0|ALT_INV_w2~0_combout\ <= NOT \adder|a0|w2~0_combout\;
\choiceB|ALT_INV_selected[0]~0_combout\ <= NOT \choiceB|selected[0]~0_combout\;
\choiceA|ALT_INV_selected[0]~0_combout\ <= NOT \choiceA|selected[0]~0_combout\;
\final|ALT_INV_selected[0]~0_combout\ <= NOT \final|selected[0]~0_combout\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;

\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[0]~4_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[1]~5_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[2]~6_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[3]~8_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[4]~9_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[5]~10_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[6]~11_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

\output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[7]~14_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

\output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[8]~15_combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

\output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[9]~16_combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

\output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[10]~17_combout\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

\output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[11]~18_combout\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

\output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[12]~20_combout\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

\output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[13]~21_combout\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

\output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[14]~22_combout\,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

\output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[15]~23_combout\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

\output[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[16]~24_combout\,
	devoe => ww_devoe,
	o => \output[16]~output_o\);

\output[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[17]~26_combout\,
	devoe => ww_devoe,
	o => \output[17]~output_o\);

\output[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[18]~27_combout\,
	devoe => ww_devoe,
	o => \output[18]~output_o\);

\output[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[19]~28_combout\,
	devoe => ww_devoe,
	o => \output[19]~output_o\);

\output[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[20]~29_combout\,
	devoe => ww_devoe,
	o => \output[20]~output_o\);

\output[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[21]~30_combout\,
	devoe => ww_devoe,
	o => \output[21]~output_o\);

\output[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[22]~32_combout\,
	devoe => ww_devoe,
	o => \output[22]~output_o\);

\output[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[23]~33_combout\,
	devoe => ww_devoe,
	o => \output[23]~output_o\);

\output[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[24]~34_combout\,
	devoe => ww_devoe,
	o => \output[24]~output_o\);

\output[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[25]~35_combout\,
	devoe => ww_devoe,
	o => \output[25]~output_o\);

\output[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[26]~36_combout\,
	devoe => ww_devoe,
	o => \output[26]~output_o\);

\output[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[27]~38_combout\,
	devoe => ww_devoe,
	o => \output[27]~output_o\);

\output[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[28]~39_combout\,
	devoe => ww_devoe,
	o => \output[28]~output_o\);

\output[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[29]~40_combout\,
	devoe => ww_devoe,
	o => \output[29]~output_o\);

\output[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[30]~41_combout\,
	devoe => ww_devoe,
	o => \output[30]~output_o\);

\output[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final|selected[31]~42_combout\,
	devoe => ww_devoe,
	o => \output[31]~output_o\);

\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flag|ALT_INV_output~combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|cddddd:31:c1to31|vaium~combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\func[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(0),
	o => \func[0]~input_o\);

\func[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(1),
	o => \func[1]~input_o\);

\final|selected[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[0]~0_combout\ = (!\func[0]~input_o\ & !\func[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	combout => \final|selected[0]~0_combout\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\invA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_invA,
	o => \invA~input_o\);

\choiceA|selected[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[0]~0_combout\ = !\A[0]~input_o\ $ (!\invA~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_invA~input_o\,
	combout => \choiceA|selected[0]~0_combout\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\invB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_invB,
	o => \invB~input_o\);

\choiceB|selected[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[0]~0_combout\ = !\B[0]~input_o\ $ (!\invB~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_invB~input_o\,
	combout => \choiceB|selected[0]~0_combout\);

\adder|a0|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|a0|w2~0_combout\ = (\choiceA|selected[0]~0_combout\ & \choiceB|selected[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[0]~0_combout\,
	datab => \choiceB|ALT_INV_selected[0]~0_combout\,
	combout => \adder|a0|w2~0_combout\);

\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\adder|a0|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|a0|vaium~combout\ = ( \cin~input_o\ & ( (!\A[0]~input_o\ & ((!\B[0]~input_o\ $ (!\invB~input_o\)) # (\invA~input_o\))) # (\A[0]~input_o\ & ((!\invA~input_o\) # (!\B[0]~input_o\ $ (!\invB~input_o\)))) ) ) # ( !\cin~input_o\ & ( (!\A[0]~input_o\ & 
-- (\invA~input_o\ & (!\B[0]~input_o\ $ (!\invB~input_o\)))) # (\A[0]~input_o\ & (!\invA~input_o\ & (!\B[0]~input_o\ $ (!\invB~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000011011111111011000000110011000000110111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_invA~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_invB~input_o\,
	datae => \ALT_INV_cin~input_o\,
	combout => \adder|a0|vaium~combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\choiceA|selected[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[1]~1_combout\ = !\invA~input_o\ $ (!\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	combout => \choiceA|selected[1]~1_combout\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\choiceB|selected[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[1]~1_combout\ = !\invB~input_o\ $ (!\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	combout => \choiceB|selected[1]~1_combout\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\choiceA|selected[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[2]~2_combout\ = !\invA~input_o\ $ (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	combout => \choiceA|selected[2]~2_combout\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\choiceB|selected[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[2]~2_combout\ = !\invB~input_o\ $ (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \choiceB|selected[2]~2_combout\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\adder|cddddd:3:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:3:c1to31|w1~combout\ = !\invA~input_o\ $ (!\invB~input_o\ $ (!\A[3]~input_o\ $ (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_invB~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \adder|cddddd:3:c1to31|w1~combout\);

\adder|cddddd:3:c1to31|w3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:3:c1to31|w3~combout\ = ( \choiceB|selected[2]~2_combout\ & ( \adder|cddddd:3:c1to31|w1~combout\ & ( ((!\adder|a0|vaium~combout\ & (\choiceA|selected[1]~1_combout\ & \choiceB|selected[1]~1_combout\)) # (\adder|a0|vaium~combout\ & 
-- ((\choiceB|selected[1]~1_combout\) # (\choiceA|selected[1]~1_combout\)))) # (\choiceA|selected[2]~2_combout\) ) ) ) # ( !\choiceB|selected[2]~2_combout\ & ( \adder|cddddd:3:c1to31|w1~combout\ & ( (\choiceA|selected[2]~2_combout\ & 
-- ((!\adder|a0|vaium~combout\ & (\choiceA|selected[1]~1_combout\ & \choiceB|selected[1]~1_combout\)) # (\adder|a0|vaium~combout\ & ((\choiceB|selected[1]~1_combout\) # (\choiceA|selected[1]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|a0|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[1]~1_combout\,
	datac => \choiceB|ALT_INV_selected[1]~1_combout\,
	datad => \choiceA|ALT_INV_selected[2]~2_combout\,
	datae => \choiceB|ALT_INV_selected[2]~2_combout\,
	dataf => \adder|cddddd:3:c1to31|ALT_INV_w1~combout\,
	combout => \adder|cddddd:3:c1to31|w3~combout\);

\adder|cddddd:3:c1to31|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:3:c1to31|w2~0_combout\ = (!\invA~input_o\ & (\A[3]~input_o\ & (!\invB~input_o\ $ (!\B[3]~input_o\)))) # (\invA~input_o\ & (!\A[3]~input_o\ & (!\invB~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_invB~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \adder|cddddd:3:c1to31|w2~0_combout\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\choiceA|selected[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[4]~3_combout\ = !\invA~input_o\ $ (!\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	combout => \choiceA|selected[4]~3_combout\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\choiceB|selected[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[4]~3_combout\ = !\invB~input_o\ $ (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \choiceB|selected[4]~3_combout\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\choiceA|selected[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[5]~4_combout\ = !\invA~input_o\ $ (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	combout => \choiceA|selected[5]~4_combout\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\choiceB|selected[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[5]~4_combout\ = !\invB~input_o\ $ (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \choiceB|selected[5]~4_combout\);

\adder|cddddd:5:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:5:c1to31|vaium~combout\ = ( !\choiceA|selected[5]~4_combout\ & ( \choiceB|selected[5]~4_combout\ & ( (!\choiceA|selected[4]~3_combout\ & ((!\choiceB|selected[4]~3_combout\) # ((!\adder|cddddd:3:c1to31|w3~combout\ & 
-- !\adder|cddddd:3:c1to31|w2~0_combout\)))) # (\choiceA|selected[4]~3_combout\ & (!\adder|cddddd:3:c1to31|w3~combout\ & (!\adder|cddddd:3:c1to31|w2~0_combout\ & !\choiceB|selected[4]~3_combout\))) ) ) ) # ( \choiceA|selected[5]~4_combout\ & ( 
-- !\choiceB|selected[5]~4_combout\ & ( (!\choiceA|selected[4]~3_combout\ & ((!\choiceB|selected[4]~3_combout\) # ((!\adder|cddddd:3:c1to31|w3~combout\ & !\adder|cddddd:3:c1to31|w2~0_combout\)))) # (\choiceA|selected[4]~3_combout\ & 
-- (!\adder|cddddd:3:c1to31|w3~combout\ & (!\adder|cddddd:3:c1to31|w2~0_combout\ & !\choiceB|selected[4]~3_combout\))) ) ) ) # ( !\choiceA|selected[5]~4_combout\ & ( !\choiceB|selected[5]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:3:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:3:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[4]~3_combout\,
	datad => \choiceB|ALT_INV_selected[4]~3_combout\,
	datae => \choiceA|ALT_INV_selected[5]~4_combout\,
	dataf => \choiceB|ALT_INV_selected[5]~4_combout\,
	combout => \adder|cddddd:5:c1to31|vaium~combout\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\choiceA|selected[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[6]~5_combout\ = !\invA~input_o\ $ (!\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	combout => \choiceA|selected[6]~5_combout\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\choiceB|selected[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[6]~5_combout\ = !\invB~input_o\ $ (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	combout => \choiceB|selected[6]~5_combout\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\choiceA|selected[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[7]~6_combout\ = !\invA~input_o\ $ (!\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	combout => \choiceA|selected[7]~6_combout\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\choiceB|selected[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[7]~6_combout\ = !\invB~input_o\ $ (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	combout => \choiceB|selected[7]~6_combout\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\adder|cddddd:8:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:8:c1to31|w1~combout\ = !\invA~input_o\ $ (!\invB~input_o\ $ (!\A[8]~input_o\ $ (!\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_invB~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \adder|cddddd:8:c1to31|w1~combout\);

\adder|cddddd:8:c1to31|w3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:8:c1to31|w3~combout\ = ( \choiceB|selected[7]~6_combout\ & ( \adder|cddddd:8:c1to31|w1~combout\ & ( ((!\adder|cddddd:5:c1to31|vaium~combout\ & ((\choiceB|selected[6]~5_combout\) # (\choiceA|selected[6]~5_combout\))) # 
-- (\adder|cddddd:5:c1to31|vaium~combout\ & (\choiceA|selected[6]~5_combout\ & \choiceB|selected[6]~5_combout\))) # (\choiceA|selected[7]~6_combout\) ) ) ) # ( !\choiceB|selected[7]~6_combout\ & ( \adder|cddddd:8:c1to31|w1~combout\ & ( 
-- (\choiceA|selected[7]~6_combout\ & ((!\adder|cddddd:5:c1to31|vaium~combout\ & ((\choiceB|selected[6]~5_combout\) # (\choiceA|selected[6]~5_combout\))) # (\adder|cddddd:5:c1to31|vaium~combout\ & (\choiceA|selected[6]~5_combout\ & 
-- \choiceB|selected[6]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:5:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[6]~5_combout\,
	datac => \choiceB|ALT_INV_selected[6]~5_combout\,
	datad => \choiceA|ALT_INV_selected[7]~6_combout\,
	datae => \choiceB|ALT_INV_selected[7]~6_combout\,
	dataf => \adder|cddddd:8:c1to31|ALT_INV_w1~combout\,
	combout => \adder|cddddd:8:c1to31|w3~combout\);

\adder|cddddd:8:c1to31|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:8:c1to31|w2~0_combout\ = (!\invA~input_o\ & (\A[8]~input_o\ & (!\invB~input_o\ $ (!\B[8]~input_o\)))) # (\invA~input_o\ & (!\A[8]~input_o\ & (!\invB~input_o\ $ (!\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_invB~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \adder|cddddd:8:c1to31|w2~0_combout\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\choiceA|selected[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[9]~7_combout\ = !\invA~input_o\ $ (!\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	combout => \choiceA|selected[9]~7_combout\);

\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\choiceB|selected[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[9]~7_combout\ = !\invB~input_o\ $ (!\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	combout => \choiceB|selected[9]~7_combout\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\choiceA|selected[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[10]~8_combout\ = !\invA~input_o\ $ (!\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	combout => \choiceA|selected[10]~8_combout\);

\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\choiceB|selected[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[10]~8_combout\ = !\invB~input_o\ $ (!\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	combout => \choiceB|selected[10]~8_combout\);

\adder|cddddd:10:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:10:c1to31|vaium~combout\ = ( !\choiceA|selected[10]~8_combout\ & ( \choiceB|selected[10]~8_combout\ & ( (!\choiceA|selected[9]~7_combout\ & ((!\choiceB|selected[9]~7_combout\) # ((!\adder|cddddd:8:c1to31|w3~combout\ & 
-- !\adder|cddddd:8:c1to31|w2~0_combout\)))) # (\choiceA|selected[9]~7_combout\ & (!\adder|cddddd:8:c1to31|w3~combout\ & (!\adder|cddddd:8:c1to31|w2~0_combout\ & !\choiceB|selected[9]~7_combout\))) ) ) ) # ( \choiceA|selected[10]~8_combout\ & ( 
-- !\choiceB|selected[10]~8_combout\ & ( (!\choiceA|selected[9]~7_combout\ & ((!\choiceB|selected[9]~7_combout\) # ((!\adder|cddddd:8:c1to31|w3~combout\ & !\adder|cddddd:8:c1to31|w2~0_combout\)))) # (\choiceA|selected[9]~7_combout\ & 
-- (!\adder|cddddd:8:c1to31|w3~combout\ & (!\adder|cddddd:8:c1to31|w2~0_combout\ & !\choiceB|selected[9]~7_combout\))) ) ) ) # ( !\choiceA|selected[10]~8_combout\ & ( !\choiceB|selected[10]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:8:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:8:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[9]~7_combout\,
	datad => \choiceB|ALT_INV_selected[9]~7_combout\,
	datae => \choiceA|ALT_INV_selected[10]~8_combout\,
	dataf => \choiceB|ALT_INV_selected[10]~8_combout\,
	combout => \adder|cddddd:10:c1to31|vaium~combout\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\choiceA|selected[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[11]~9_combout\ = !\invA~input_o\ $ (!\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	combout => \choiceA|selected[11]~9_combout\);

\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\choiceB|selected[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[11]~9_combout\ = !\invB~input_o\ $ (!\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	combout => \choiceB|selected[11]~9_combout\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\choiceA|selected[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[12]~10_combout\ = !\invA~input_o\ $ (!\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	combout => \choiceA|selected[12]~10_combout\);

\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\choiceB|selected[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[12]~10_combout\ = !\invB~input_o\ $ (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	combout => \choiceB|selected[12]~10_combout\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\choiceA|selected[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[13]~11_combout\ = !\invA~input_o\ $ (!\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	combout => \choiceA|selected[13]~11_combout\);

\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\choiceB|selected[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[13]~11_combout\ = !\invB~input_o\ $ (!\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	combout => \choiceB|selected[13]~11_combout\);

\adder|cddddd:13:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:13:c1to31|w1~combout\ = !\choiceA|selected[13]~11_combout\ $ (!\choiceB|selected[13]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[13]~11_combout\,
	datab => \choiceB|ALT_INV_selected[13]~11_combout\,
	combout => \adder|cddddd:13:c1to31|w1~combout\);

\adder|cddddd:13:c1to31|w3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:13:c1to31|w3~combout\ = ( \choiceB|selected[12]~10_combout\ & ( \adder|cddddd:13:c1to31|w1~combout\ & ( ((!\adder|cddddd:10:c1to31|vaium~combout\ & ((\choiceB|selected[11]~9_combout\) # (\choiceA|selected[11]~9_combout\))) # 
-- (\adder|cddddd:10:c1to31|vaium~combout\ & (\choiceA|selected[11]~9_combout\ & \choiceB|selected[11]~9_combout\))) # (\choiceA|selected[12]~10_combout\) ) ) ) # ( !\choiceB|selected[12]~10_combout\ & ( \adder|cddddd:13:c1to31|w1~combout\ & ( 
-- (\choiceA|selected[12]~10_combout\ & ((!\adder|cddddd:10:c1to31|vaium~combout\ & ((\choiceB|selected[11]~9_combout\) # (\choiceA|selected[11]~9_combout\))) # (\adder|cddddd:10:c1to31|vaium~combout\ & (\choiceA|selected[11]~9_combout\ & 
-- \choiceB|selected[11]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:10:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[11]~9_combout\,
	datac => \choiceB|ALT_INV_selected[11]~9_combout\,
	datad => \choiceA|ALT_INV_selected[12]~10_combout\,
	datae => \choiceB|ALT_INV_selected[12]~10_combout\,
	dataf => \adder|cddddd:13:c1to31|ALT_INV_w1~combout\,
	combout => \adder|cddddd:13:c1to31|w3~combout\);

\adder|cddddd:13:c1to31|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:13:c1to31|w2~0_combout\ = (\choiceA|selected[13]~11_combout\ & \choiceB|selected[13]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[13]~11_combout\,
	datab => \choiceB|ALT_INV_selected[13]~11_combout\,
	combout => \adder|cddddd:13:c1to31|w2~0_combout\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\choiceA|selected[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[14]~12_combout\ = !\invA~input_o\ $ (!\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	combout => \choiceA|selected[14]~12_combout\);

\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\choiceB|selected[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[14]~12_combout\ = !\invB~input_o\ $ (!\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	combout => \choiceB|selected[14]~12_combout\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\choiceA|selected[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[15]~13_combout\ = !\invA~input_o\ $ (!\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	combout => \choiceA|selected[15]~13_combout\);

\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\choiceB|selected[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[15]~13_combout\ = !\invB~input_o\ $ (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	combout => \choiceB|selected[15]~13_combout\);

\adder|cddddd:15:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:15:c1to31|vaium~combout\ = ( !\choiceA|selected[15]~13_combout\ & ( \choiceB|selected[15]~13_combout\ & ( (!\choiceA|selected[14]~12_combout\ & ((!\choiceB|selected[14]~12_combout\) # ((!\adder|cddddd:13:c1to31|w3~combout\ & 
-- !\adder|cddddd:13:c1to31|w2~0_combout\)))) # (\choiceA|selected[14]~12_combout\ & (!\adder|cddddd:13:c1to31|w3~combout\ & (!\adder|cddddd:13:c1to31|w2~0_combout\ & !\choiceB|selected[14]~12_combout\))) ) ) ) # ( \choiceA|selected[15]~13_combout\ & ( 
-- !\choiceB|selected[15]~13_combout\ & ( (!\choiceA|selected[14]~12_combout\ & ((!\choiceB|selected[14]~12_combout\) # ((!\adder|cddddd:13:c1to31|w3~combout\ & !\adder|cddddd:13:c1to31|w2~0_combout\)))) # (\choiceA|selected[14]~12_combout\ & 
-- (!\adder|cddddd:13:c1to31|w3~combout\ & (!\adder|cddddd:13:c1to31|w2~0_combout\ & !\choiceB|selected[14]~12_combout\))) ) ) ) # ( !\choiceA|selected[15]~13_combout\ & ( !\choiceB|selected[15]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:13:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:13:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[14]~12_combout\,
	datad => \choiceB|ALT_INV_selected[14]~12_combout\,
	datae => \choiceA|ALT_INV_selected[15]~13_combout\,
	dataf => \choiceB|ALT_INV_selected[15]~13_combout\,
	combout => \adder|cddddd:15:c1to31|vaium~combout\);

\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\choiceA|selected[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[16]~14_combout\ = !\invA~input_o\ $ (!\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	combout => \choiceA|selected[16]~14_combout\);

\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\choiceB|selected[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[16]~14_combout\ = !\invB~input_o\ $ (!\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	combout => \choiceB|selected[16]~14_combout\);

\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\choiceA|selected[17]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[17]~15_combout\ = !\invA~input_o\ $ (!\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	combout => \choiceA|selected[17]~15_combout\);

\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\choiceB|selected[17]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[17]~15_combout\ = !\invB~input_o\ $ (!\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	combout => \choiceB|selected[17]~15_combout\);

\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\choiceA|selected[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[18]~16_combout\ = !\invA~input_o\ $ (!\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	combout => \choiceA|selected[18]~16_combout\);

\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\choiceB|selected[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[18]~16_combout\ = !\invB~input_o\ $ (!\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	combout => \choiceB|selected[18]~16_combout\);

\adder|cddddd:18:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:18:c1to31|w1~combout\ = !\choiceA|selected[18]~16_combout\ $ (!\choiceB|selected[18]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[18]~16_combout\,
	datab => \choiceB|ALT_INV_selected[18]~16_combout\,
	combout => \adder|cddddd:18:c1to31|w1~combout\);

\adder|cddddd:18:c1to31|w3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:18:c1to31|w3~combout\ = ( \choiceB|selected[17]~15_combout\ & ( \adder|cddddd:18:c1to31|w1~combout\ & ( ((!\adder|cddddd:15:c1to31|vaium~combout\ & ((\choiceB|selected[16]~14_combout\) # (\choiceA|selected[16]~14_combout\))) # 
-- (\adder|cddddd:15:c1to31|vaium~combout\ & (\choiceA|selected[16]~14_combout\ & \choiceB|selected[16]~14_combout\))) # (\choiceA|selected[17]~15_combout\) ) ) ) # ( !\choiceB|selected[17]~15_combout\ & ( \adder|cddddd:18:c1to31|w1~combout\ & ( 
-- (\choiceA|selected[17]~15_combout\ & ((!\adder|cddddd:15:c1to31|vaium~combout\ & ((\choiceB|selected[16]~14_combout\) # (\choiceA|selected[16]~14_combout\))) # (\adder|cddddd:15:c1to31|vaium~combout\ & (\choiceA|selected[16]~14_combout\ & 
-- \choiceB|selected[16]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:15:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[16]~14_combout\,
	datac => \choiceB|ALT_INV_selected[16]~14_combout\,
	datad => \choiceA|ALT_INV_selected[17]~15_combout\,
	datae => \choiceB|ALT_INV_selected[17]~15_combout\,
	dataf => \adder|cddddd:18:c1to31|ALT_INV_w1~combout\,
	combout => \adder|cddddd:18:c1to31|w3~combout\);

\adder|cddddd:18:c1to31|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:18:c1to31|w2~0_combout\ = (\choiceA|selected[18]~16_combout\ & \choiceB|selected[18]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[18]~16_combout\,
	datab => \choiceB|ALT_INV_selected[18]~16_combout\,
	combout => \adder|cddddd:18:c1to31|w2~0_combout\);

\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\choiceA|selected[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[19]~17_combout\ = !\invA~input_o\ $ (!\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	combout => \choiceA|selected[19]~17_combout\);

\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\choiceB|selected[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[19]~17_combout\ = !\invB~input_o\ $ (!\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	combout => \choiceB|selected[19]~17_combout\);

\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\choiceA|selected[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[20]~18_combout\ = !\invA~input_o\ $ (!\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	combout => \choiceA|selected[20]~18_combout\);

\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\choiceB|selected[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[20]~18_combout\ = !\invB~input_o\ $ (!\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	combout => \choiceB|selected[20]~18_combout\);

\adder|cddddd:20:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:20:c1to31|vaium~combout\ = ( !\choiceA|selected[20]~18_combout\ & ( \choiceB|selected[20]~18_combout\ & ( (!\choiceA|selected[19]~17_combout\ & ((!\choiceB|selected[19]~17_combout\) # ((!\adder|cddddd:18:c1to31|w3~combout\ & 
-- !\adder|cddddd:18:c1to31|w2~0_combout\)))) # (\choiceA|selected[19]~17_combout\ & (!\adder|cddddd:18:c1to31|w3~combout\ & (!\adder|cddddd:18:c1to31|w2~0_combout\ & !\choiceB|selected[19]~17_combout\))) ) ) ) # ( \choiceA|selected[20]~18_combout\ & ( 
-- !\choiceB|selected[20]~18_combout\ & ( (!\choiceA|selected[19]~17_combout\ & ((!\choiceB|selected[19]~17_combout\) # ((!\adder|cddddd:18:c1to31|w3~combout\ & !\adder|cddddd:18:c1to31|w2~0_combout\)))) # (\choiceA|selected[19]~17_combout\ & 
-- (!\adder|cddddd:18:c1to31|w3~combout\ & (!\adder|cddddd:18:c1to31|w2~0_combout\ & !\choiceB|selected[19]~17_combout\))) ) ) ) # ( !\choiceA|selected[20]~18_combout\ & ( !\choiceB|selected[20]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:18:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:18:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[19]~17_combout\,
	datad => \choiceB|ALT_INV_selected[19]~17_combout\,
	datae => \choiceA|ALT_INV_selected[20]~18_combout\,
	dataf => \choiceB|ALT_INV_selected[20]~18_combout\,
	combout => \adder|cddddd:20:c1to31|vaium~combout\);

\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\choiceA|selected[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[21]~19_combout\ = !\invA~input_o\ $ (!\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	combout => \choiceA|selected[21]~19_combout\);

\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\choiceB|selected[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[21]~19_combout\ = !\invB~input_o\ $ (!\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	combout => \choiceB|selected[21]~19_combout\);

\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\choiceA|selected[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[22]~20_combout\ = !\invA~input_o\ $ (!\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	combout => \choiceA|selected[22]~20_combout\);

\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\choiceB|selected[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[22]~20_combout\ = !\invB~input_o\ $ (!\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	combout => \choiceB|selected[22]~20_combout\);

\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\choiceA|selected[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[23]~21_combout\ = !\invA~input_o\ $ (!\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	combout => \choiceA|selected[23]~21_combout\);

\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\choiceB|selected[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[23]~21_combout\ = !\invB~input_o\ $ (!\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	combout => \choiceB|selected[23]~21_combout\);

\adder|cddddd:23:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:23:c1to31|w1~combout\ = !\choiceA|selected[23]~21_combout\ $ (!\choiceB|selected[23]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[23]~21_combout\,
	datab => \choiceB|ALT_INV_selected[23]~21_combout\,
	combout => \adder|cddddd:23:c1to31|w1~combout\);

\adder|cddddd:23:c1to31|w3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:23:c1to31|w3~combout\ = ( \choiceB|selected[22]~20_combout\ & ( \adder|cddddd:23:c1to31|w1~combout\ & ( ((!\adder|cddddd:20:c1to31|vaium~combout\ & ((\choiceB|selected[21]~19_combout\) # (\choiceA|selected[21]~19_combout\))) # 
-- (\adder|cddddd:20:c1to31|vaium~combout\ & (\choiceA|selected[21]~19_combout\ & \choiceB|selected[21]~19_combout\))) # (\choiceA|selected[22]~20_combout\) ) ) ) # ( !\choiceB|selected[22]~20_combout\ & ( \adder|cddddd:23:c1to31|w1~combout\ & ( 
-- (\choiceA|selected[22]~20_combout\ & ((!\adder|cddddd:20:c1to31|vaium~combout\ & ((\choiceB|selected[21]~19_combout\) # (\choiceA|selected[21]~19_combout\))) # (\adder|cddddd:20:c1to31|vaium~combout\ & (\choiceA|selected[21]~19_combout\ & 
-- \choiceB|selected[21]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:20:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[21]~19_combout\,
	datac => \choiceB|ALT_INV_selected[21]~19_combout\,
	datad => \choiceA|ALT_INV_selected[22]~20_combout\,
	datae => \choiceB|ALT_INV_selected[22]~20_combout\,
	dataf => \adder|cddddd:23:c1to31|ALT_INV_w1~combout\,
	combout => \adder|cddddd:23:c1to31|w3~combout\);

\adder|cddddd:23:c1to31|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:23:c1to31|w2~0_combout\ = (\choiceA|selected[23]~21_combout\ & \choiceB|selected[23]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[23]~21_combout\,
	datab => \choiceB|ALT_INV_selected[23]~21_combout\,
	combout => \adder|cddddd:23:c1to31|w2~0_combout\);

\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\choiceA|selected[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[24]~22_combout\ = !\invA~input_o\ $ (!\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	combout => \choiceA|selected[24]~22_combout\);

\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\choiceB|selected[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[24]~22_combout\ = !\invB~input_o\ $ (!\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	combout => \choiceB|selected[24]~22_combout\);

\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\choiceA|selected[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[25]~23_combout\ = !\invA~input_o\ $ (!\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	combout => \choiceA|selected[25]~23_combout\);

\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\choiceB|selected[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[25]~23_combout\ = !\invB~input_o\ $ (!\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	combout => \choiceB|selected[25]~23_combout\);

\adder|cddddd:25:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:25:c1to31|vaium~combout\ = ( !\choiceA|selected[25]~23_combout\ & ( \choiceB|selected[25]~23_combout\ & ( (!\choiceA|selected[24]~22_combout\ & ((!\choiceB|selected[24]~22_combout\) # ((!\adder|cddddd:23:c1to31|w3~combout\ & 
-- !\adder|cddddd:23:c1to31|w2~0_combout\)))) # (\choiceA|selected[24]~22_combout\ & (!\adder|cddddd:23:c1to31|w3~combout\ & (!\adder|cddddd:23:c1to31|w2~0_combout\ & !\choiceB|selected[24]~22_combout\))) ) ) ) # ( \choiceA|selected[25]~23_combout\ & ( 
-- !\choiceB|selected[25]~23_combout\ & ( (!\choiceA|selected[24]~22_combout\ & ((!\choiceB|selected[24]~22_combout\) # ((!\adder|cddddd:23:c1to31|w3~combout\ & !\adder|cddddd:23:c1to31|w2~0_combout\)))) # (\choiceA|selected[24]~22_combout\ & 
-- (!\adder|cddddd:23:c1to31|w3~combout\ & (!\adder|cddddd:23:c1to31|w2~0_combout\ & !\choiceB|selected[24]~22_combout\))) ) ) ) # ( !\choiceA|selected[25]~23_combout\ & ( !\choiceB|selected[25]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:23:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:23:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[24]~22_combout\,
	datad => \choiceB|ALT_INV_selected[24]~22_combout\,
	datae => \choiceA|ALT_INV_selected[25]~23_combout\,
	dataf => \choiceB|ALT_INV_selected[25]~23_combout\,
	combout => \adder|cddddd:25:c1to31|vaium~combout\);

\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\choiceA|selected[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[26]~24_combout\ = !\invA~input_o\ $ (!\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	combout => \choiceA|selected[26]~24_combout\);

\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\choiceB|selected[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[26]~24_combout\ = !\invB~input_o\ $ (!\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	combout => \choiceB|selected[26]~24_combout\);

\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\choiceA|selected[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[27]~25_combout\ = !\invA~input_o\ $ (!\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	combout => \choiceA|selected[27]~25_combout\);

\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\choiceB|selected[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[27]~25_combout\ = !\invB~input_o\ $ (!\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[27]~input_o\,
	combout => \choiceB|selected[27]~25_combout\);

\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\choiceA|selected[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[28]~26_combout\ = !\invA~input_o\ $ (!\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	combout => \choiceA|selected[28]~26_combout\);

\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\choiceB|selected[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[28]~26_combout\ = !\invB~input_o\ $ (!\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	combout => \choiceB|selected[28]~26_combout\);

\adder|cddddd:28:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:28:c1to31|w1~combout\ = !\choiceA|selected[28]~26_combout\ $ (!\choiceB|selected[28]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[28]~26_combout\,
	datab => \choiceB|ALT_INV_selected[28]~26_combout\,
	combout => \adder|cddddd:28:c1to31|w1~combout\);

\adder|cddddd:28:c1to31|w3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:28:c1to31|w3~combout\ = ( \choiceB|selected[27]~25_combout\ & ( \adder|cddddd:28:c1to31|w1~combout\ & ( ((!\adder|cddddd:25:c1to31|vaium~combout\ & ((\choiceB|selected[26]~24_combout\) # (\choiceA|selected[26]~24_combout\))) # 
-- (\adder|cddddd:25:c1to31|vaium~combout\ & (\choiceA|selected[26]~24_combout\ & \choiceB|selected[26]~24_combout\))) # (\choiceA|selected[27]~25_combout\) ) ) ) # ( !\choiceB|selected[27]~25_combout\ & ( \adder|cddddd:28:c1to31|w1~combout\ & ( 
-- (\choiceA|selected[27]~25_combout\ & ((!\adder|cddddd:25:c1to31|vaium~combout\ & ((\choiceB|selected[26]~24_combout\) # (\choiceA|selected[26]~24_combout\))) # (\adder|cddddd:25:c1to31|vaium~combout\ & (\choiceA|selected[26]~24_combout\ & 
-- \choiceB|selected[26]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:25:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[26]~24_combout\,
	datac => \choiceB|ALT_INV_selected[26]~24_combout\,
	datad => \choiceA|ALT_INV_selected[27]~25_combout\,
	datae => \choiceB|ALT_INV_selected[27]~25_combout\,
	dataf => \adder|cddddd:28:c1to31|ALT_INV_w1~combout\,
	combout => \adder|cddddd:28:c1to31|w3~combout\);

\adder|cddddd:28:c1to31|w2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:28:c1to31|w2~0_combout\ = (\choiceA|selected[28]~26_combout\ & \choiceB|selected[28]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[28]~26_combout\,
	datab => \choiceB|ALT_INV_selected[28]~26_combout\,
	combout => \adder|cddddd:28:c1to31|w2~0_combout\);

\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\choiceA|selected[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[29]~27_combout\ = !\invA~input_o\ $ (!\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	combout => \choiceA|selected[29]~27_combout\);

\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\choiceB|selected[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[29]~27_combout\ = !\invB~input_o\ $ (!\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	combout => \choiceB|selected[29]~27_combout\);

\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\choiceA|selected[30]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[30]~28_combout\ = !\invA~input_o\ $ (!\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	combout => \choiceA|selected[30]~28_combout\);

\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\choiceB|selected[30]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[30]~28_combout\ = !\invB~input_o\ $ (!\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	combout => \choiceB|selected[30]~28_combout\);

\adder|cddddd:30:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:30:c1to31|vaium~combout\ = ( !\choiceA|selected[30]~28_combout\ & ( \choiceB|selected[30]~28_combout\ & ( (!\choiceA|selected[29]~27_combout\ & ((!\choiceB|selected[29]~27_combout\) # ((!\adder|cddddd:28:c1to31|w3~combout\ & 
-- !\adder|cddddd:28:c1to31|w2~0_combout\)))) # (\choiceA|selected[29]~27_combout\ & (!\adder|cddddd:28:c1to31|w3~combout\ & (!\adder|cddddd:28:c1to31|w2~0_combout\ & !\choiceB|selected[29]~27_combout\))) ) ) ) # ( \choiceA|selected[30]~28_combout\ & ( 
-- !\choiceB|selected[30]~28_combout\ & ( (!\choiceA|selected[29]~27_combout\ & ((!\choiceB|selected[29]~27_combout\) # ((!\adder|cddddd:28:c1to31|w3~combout\ & !\adder|cddddd:28:c1to31|w2~0_combout\)))) # (\choiceA|selected[29]~27_combout\ & 
-- (!\adder|cddddd:28:c1to31|w3~combout\ & (!\adder|cddddd:28:c1to31|w2~0_combout\ & !\choiceB|selected[29]~27_combout\))) ) ) ) # ( !\choiceA|selected[30]~28_combout\ & ( !\choiceB|selected[30]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:28:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:28:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[29]~27_combout\,
	datad => \choiceB|ALT_INV_selected[29]~27_combout\,
	datae => \choiceA|ALT_INV_selected[30]~28_combout\,
	dataf => \choiceB|ALT_INV_selected[30]~28_combout\,
	combout => \adder|cddddd:30:c1to31|vaium~combout\);

\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\choiceA|selected[31]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[31]~29_combout\ = !\invA~input_o\ $ (!\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	combout => \choiceA|selected[31]~29_combout\);

\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\choiceB|selected[31]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceB|selected[31]~29_combout\ = !\invB~input_o\ $ (!\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invB~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	combout => \choiceB|selected[31]~29_combout\);

\final|selected~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected~1_combout\ = !\func[0]~input_o\ $ (\func[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	combout => \final|selected~1_combout\);

\final|selected~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected~2_combout\ = ( \cin~input_o\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\choiceA|selected[0]~0_combout\ $ (\choiceB|selected[0]~0_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceB|selected[0]~0_combout\) # 
-- (\choiceA|selected[0]~0_combout\)))) ) ) # ( !\cin~input_o\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\choiceA|selected[0]~0_combout\ $ (!\choiceB|selected[0]~0_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & 
-- ((\choiceB|selected[0]~0_combout\) # (\choiceA|selected[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100100001001000100011000000110011001000010010001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \choiceA|ALT_INV_selected[0]~0_combout\,
	datad => \choiceB|ALT_INV_selected[0]~0_combout\,
	datae => \ALT_INV_cin~input_o\,
	combout => \final|selected~2_combout\);

\final|selected~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected~3_combout\ = ( \final|selected~1_combout\ & ( !\final|selected~2_combout\ & ( !\cin~input_o\ $ (((!\adder|cddddd:30:c1to31|vaium~combout\ & ((!\choiceA|selected[31]~29_combout\) # (!\choiceB|selected[31]~29_combout\))) # 
-- (\adder|cddddd:30:c1to31|vaium~combout\ & ((\choiceB|selected[31]~29_combout\) # (\choiceA|selected[31]~29_combout\))))) ) ) ) # ( !\final|selected~1_combout\ & ( !\final|selected~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011001010101100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \adder|cddddd:30:c1to31|ALT_INV_vaium~combout\,
	datac => \choiceA|ALT_INV_selected[31]~29_combout\,
	datad => \choiceB|ALT_INV_selected[31]~29_combout\,
	datae => \final|ALT_INV_selected~1_combout\,
	dataf => \final|ALT_INV_selected~2_combout\,
	combout => \final|selected~3_combout\);

\final|selected[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[0]~4_combout\ = (!\final|selected[0]~0_combout\ & ((!\final|selected~3_combout\))) # (\final|selected[0]~0_combout\ & (\adder|a0|w2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[0]~0_combout\,
	datab => \adder|a0|ALT_INV_w2~0_combout\,
	datac => \final|ALT_INV_selected~3_combout\,
	combout => \final|selected[0]~4_combout\);

\final|selected[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[1]~5_combout\ = ( \choiceB|selected[1]~1_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[1]~1_combout\ $ (((!\func[1]~input_o\) # (\adder|a0|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # ( 
-- !\choiceB|selected[1]~1_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|a0|vaium~combout\ $ (!\choiceA|selected[1]~1_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|a0|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[1]~1_combout\,
	datae => \choiceB|ALT_INV_selected[1]~1_combout\,
	combout => \final|selected[1]~5_combout\);

\adder|cddddd:1:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:1:c1to31|vaium~combout\ = (!\adder|a0|vaium~combout\ & (\choiceA|selected[1]~1_combout\ & \choiceB|selected[1]~1_combout\)) # (\adder|a0|vaium~combout\ & ((\choiceB|selected[1]~1_combout\) # (\choiceA|selected[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|a0|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[1]~1_combout\,
	datac => \choiceB|ALT_INV_selected[1]~1_combout\,
	combout => \adder|cddddd:1:c1to31|vaium~combout\);

\final|selected[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[2]~6_combout\ = ( \choiceB|selected[2]~2_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[2]~2_combout\ $ (((!\func[1]~input_o\) # (\adder|cddddd:1:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # ( 
-- !\choiceB|selected[2]~2_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:1:c1to31|vaium~combout\ $ (!\choiceA|selected[2]~2_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:1:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[2]~2_combout\,
	datae => \choiceB|ALT_INV_selected[2]~2_combout\,
	combout => \final|selected[2]~6_combout\);

\adder|cddddd:2:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:2:c1to31|vaium~combout\ = ( \choiceB|selected[2]~2_combout\ & ( ((!\adder|a0|vaium~combout\ & (\choiceA|selected[1]~1_combout\ & \choiceB|selected[1]~1_combout\)) # (\adder|a0|vaium~combout\ & ((\choiceB|selected[1]~1_combout\) # 
-- (\choiceA|selected[1]~1_combout\)))) # (\choiceA|selected[2]~2_combout\) ) ) # ( !\choiceB|selected[2]~2_combout\ & ( (\choiceA|selected[2]~2_combout\ & ((!\adder|a0|vaium~combout\ & (\choiceA|selected[1]~1_combout\ & \choiceB|selected[1]~1_combout\)) # 
-- (\adder|a0|vaium~combout\ & ((\choiceB|selected[1]~1_combout\) # (\choiceA|selected[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|a0|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[1]~1_combout\,
	datac => \choiceB|ALT_INV_selected[1]~1_combout\,
	datad => \choiceA|ALT_INV_selected[2]~2_combout\,
	datae => \choiceB|ALT_INV_selected[2]~2_combout\,
	combout => \adder|cddddd:2:c1to31|vaium~combout\);

\final|selected[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[3]~7_combout\ = ( \B[3]~input_o\ & ( (!\func[0]~input_o\ & (!\invB~input_o\ & (!\invA~input_o\ $ (!\A[3]~input_o\)))) # (\func[0]~input_o\ & ((!\invB~input_o\) # (!\invA~input_o\ $ (!\A[3]~input_o\)))) ) ) # ( !\B[3]~input_o\ & ( 
-- (!\func[0]~input_o\ & (\invB~input_o\ & (!\invA~input_o\ $ (!\A[3]~input_o\)))) # (\func[0]~input_o\ & ((!\invA~input_o\ $ (!\A[3]~input_o\)) # (\invB~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101001101011100011101010000010111010011010111000111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_invA~input_o\,
	datac => \ALT_INV_invB~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	combout => \final|selected[3]~7_combout\);

\final|selected[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[3]~8_combout\ = ( \final|selected[3]~7_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & (!\adder|cddddd:2:c1to31|vaium~combout\ $ (!\adder|cddddd:3:c1to31|w1~combout\)))) ) ) # ( !\final|selected[3]~7_combout\ & ( 
-- (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:2:c1to31|vaium~combout\ $ (!\adder|cddddd:3:c1to31|w1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000110011101110110000000010001000001100111011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:2:c1to31|ALT_INV_vaium~combout\,
	datad => \adder|cddddd:3:c1to31|ALT_INV_w1~combout\,
	datae => \final|ALT_INV_selected[3]~7_combout\,
	combout => \final|selected[3]~8_combout\);

\final|selected[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[4]~9_combout\ = ( \choiceA|selected[4]~3_combout\ & ( \choiceB|selected[4]~3_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & ((\adder|cddddd:3:c1to31|w2~0_combout\) # (\adder|cddddd:3:c1to31|w3~combout\)))) ) ) ) # ( 
-- !\choiceA|selected[4]~3_combout\ & ( \choiceB|selected[4]~3_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:3:c1to31|w3~combout\ & !\adder|cddddd:3:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # ( 
-- \choiceA|selected[4]~3_combout\ & ( !\choiceB|selected[4]~3_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:3:c1to31|w3~combout\ & !\adder|cddddd:3:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # ( 
-- !\choiceA|selected[4]~3_combout\ & ( !\choiceB|selected[4]~3_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & ((\adder|cddddd:3:c1to31|w2~0_combout\) # (\adder|cddddd:3:c1to31|w3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:3:c1to31|ALT_INV_w3~combout\,
	datad => \adder|cddddd:3:c1to31|ALT_INV_w2~0_combout\,
	datae => \choiceA|ALT_INV_selected[4]~3_combout\,
	dataf => \choiceB|ALT_INV_selected[4]~3_combout\,
	combout => \final|selected[4]~9_combout\);

\adder|cddddd:4:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:4:c1to31|vaium~combout\ = (!\choiceA|selected[4]~3_combout\ & ((!\choiceB|selected[4]~3_combout\) # ((!\adder|cddddd:3:c1to31|w3~combout\ & !\adder|cddddd:3:c1to31|w2~0_combout\)))) # (\choiceA|selected[4]~3_combout\ & 
-- (!\adder|cddddd:3:c1to31|w3~combout\ & (!\adder|cddddd:3:c1to31|w2~0_combout\ & !\choiceB|selected[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:3:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:3:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[4]~3_combout\,
	datad => \choiceB|ALT_INV_selected[4]~3_combout\,
	combout => \adder|cddddd:4:c1to31|vaium~combout\);

\final|selected[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[5]~10_combout\ = ( \choiceB|selected[5]~4_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[5]~4_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:4:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # ( 
-- !\choiceB|selected[5]~4_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:4:c1to31|vaium~combout\ $ (\choiceA|selected[5]~4_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[5]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:4:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[5]~4_combout\,
	datae => \choiceB|ALT_INV_selected[5]~4_combout\,
	combout => \final|selected[5]~10_combout\);

\final|selected[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[6]~11_combout\ = ( \choiceB|selected[6]~5_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[6]~5_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:5:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # ( 
-- !\choiceB|selected[6]~5_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:5:c1to31|vaium~combout\ $ (\choiceA|selected[6]~5_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[6]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:5:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[6]~5_combout\,
	datae => \choiceB|ALT_INV_selected[6]~5_combout\,
	combout => \final|selected[6]~11_combout\);

\final|selected~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected~12_combout\ = (!\func[0]~input_o\ & \func[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	combout => \final|selected~12_combout\);

\adder|cddddd:7:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:7:c1to31|w1~combout\ = !\choiceA|selected[7]~6_combout\ $ (!\choiceB|selected[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[7]~6_combout\,
	datab => \choiceB|ALT_INV_selected[7]~6_combout\,
	combout => \adder|cddddd:7:c1to31|w1~combout\);

\final|selected[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[7]~13_combout\ = (!\func[1]~input_o\ & ((!\func[0]~input_o\ & (\choiceA|selected[7]~6_combout\ & \choiceB|selected[7]~6_combout\)) # (\func[0]~input_o\ & ((\choiceB|selected[7]~6_combout\) # (\choiceA|selected[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \choiceA|ALT_INV_selected[7]~6_combout\,
	datad => \choiceB|ALT_INV_selected[7]~6_combout\,
	combout => \final|selected[7]~13_combout\);

\final|selected[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[7]~14_combout\ = ( \adder|cddddd:7:c1to31|w1~combout\ & ( \final|selected[7]~13_combout\ ) ) # ( !\adder|cddddd:7:c1to31|w1~combout\ & ( \final|selected[7]~13_combout\ ) ) # ( \adder|cddddd:7:c1to31|w1~combout\ & ( 
-- !\final|selected[7]~13_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:5:c1to31|vaium~combout\ & (!\choiceA|selected[6]~5_combout\ & !\choiceB|selected[6]~5_combout\)) # (\adder|cddddd:5:c1to31|vaium~combout\ & 
-- ((!\choiceA|selected[6]~5_combout\) # (!\choiceB|selected[6]~5_combout\))))) ) ) ) # ( !\adder|cddddd:7:c1to31|w1~combout\ & ( !\final|selected[7]~13_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:5:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[6]~5_combout\) # (\choiceA|selected[6]~5_combout\))) # (\adder|cddddd:5:c1to31|vaium~combout\ & (\choiceA|selected[6]~5_combout\ & \choiceB|selected[6]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101010100010001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected~12_combout\,
	datab => \adder|cddddd:5:c1to31|ALT_INV_vaium~combout\,
	datac => \choiceA|ALT_INV_selected[6]~5_combout\,
	datad => \choiceB|ALT_INV_selected[6]~5_combout\,
	datae => \adder|cddddd:7:c1to31|ALT_INV_w1~combout\,
	dataf => \final|ALT_INV_selected[7]~13_combout\,
	combout => \final|selected[7]~14_combout\);

\adder|cddddd:7:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:7:c1to31|vaium~combout\ = ( \choiceB|selected[7]~6_combout\ & ( ((!\adder|cddddd:5:c1to31|vaium~combout\ & ((\choiceB|selected[6]~5_combout\) # (\choiceA|selected[6]~5_combout\))) # (\adder|cddddd:5:c1to31|vaium~combout\ & 
-- (\choiceA|selected[6]~5_combout\ & \choiceB|selected[6]~5_combout\))) # (\choiceA|selected[7]~6_combout\) ) ) # ( !\choiceB|selected[7]~6_combout\ & ( (\choiceA|selected[7]~6_combout\ & ((!\adder|cddddd:5:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[6]~5_combout\) # (\choiceA|selected[6]~5_combout\))) # (\adder|cddddd:5:c1to31|vaium~combout\ & (\choiceA|selected[6]~5_combout\ & \choiceB|selected[6]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:5:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[6]~5_combout\,
	datac => \choiceB|ALT_INV_selected[6]~5_combout\,
	datad => \choiceA|ALT_INV_selected[7]~6_combout\,
	datae => \choiceB|ALT_INV_selected[7]~6_combout\,
	combout => \adder|cddddd:7:c1to31|vaium~combout\);

\choiceA|selected[8]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \choiceA|selected[8]~30_combout\ = !\invA~input_o\ $ (!\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_invA~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	combout => \choiceA|selected[8]~30_combout\);

\final|selected[8]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[8]~15_combout\ = ( \choiceA|selected[8]~30_combout\ & ( \B[8]~input_o\ & ( (!\func[0]~input_o\ & (!\invB~input_o\ $ (((\func[1]~input_o\ & !\adder|cddddd:7:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # ( 
-- !\choiceA|selected[8]~30_combout\ & ( \B[8]~input_o\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\invB~input_o\ $ (\adder|cddddd:7:c1to31|vaium~combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & (!\invB~input_o\))) ) ) ) # ( 
-- \choiceA|selected[8]~30_combout\ & ( !\B[8]~input_o\ & ( (!\func[0]~input_o\ & (!\invB~input_o\ $ (((!\func[1]~input_o\) # (\adder|cddddd:7:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # ( !\choiceA|selected[8]~30_combout\ 
-- & ( !\B[8]~input_o\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\invB~input_o\ $ (!\adder|cddddd:7:c1to31|vaium~combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & (\invB~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \ALT_INV_invB~input_o\,
	datad => \adder|cddddd:7:c1to31|ALT_INV_vaium~combout\,
	datae => \choiceA|ALT_INV_selected[8]~30_combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \final|selected[8]~15_combout\);

\final|selected[9]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[9]~16_combout\ = ( \choiceA|selected[9]~7_combout\ & ( \choiceB|selected[9]~7_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & ((\adder|cddddd:8:c1to31|w2~0_combout\) # (\adder|cddddd:8:c1to31|w3~combout\)))) ) ) ) # ( 
-- !\choiceA|selected[9]~7_combout\ & ( \choiceB|selected[9]~7_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:8:c1to31|w3~combout\ & !\adder|cddddd:8:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # ( 
-- \choiceA|selected[9]~7_combout\ & ( !\choiceB|selected[9]~7_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:8:c1to31|w3~combout\ & !\adder|cddddd:8:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # ( 
-- !\choiceA|selected[9]~7_combout\ & ( !\choiceB|selected[9]~7_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & ((\adder|cddddd:8:c1to31|w2~0_combout\) # (\adder|cddddd:8:c1to31|w3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:8:c1to31|ALT_INV_w3~combout\,
	datad => \adder|cddddd:8:c1to31|ALT_INV_w2~0_combout\,
	datae => \choiceA|ALT_INV_selected[9]~7_combout\,
	dataf => \choiceB|ALT_INV_selected[9]~7_combout\,
	combout => \final|selected[9]~16_combout\);

\adder|cddddd:9:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:9:c1to31|vaium~combout\ = (!\choiceA|selected[9]~7_combout\ & ((!\choiceB|selected[9]~7_combout\) # ((!\adder|cddddd:8:c1to31|w3~combout\ & !\adder|cddddd:8:c1to31|w2~0_combout\)))) # (\choiceA|selected[9]~7_combout\ & 
-- (!\adder|cddddd:8:c1to31|w3~combout\ & (!\adder|cddddd:8:c1to31|w2~0_combout\ & !\choiceB|selected[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:8:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:8:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[9]~7_combout\,
	datad => \choiceB|ALT_INV_selected[9]~7_combout\,
	combout => \adder|cddddd:9:c1to31|vaium~combout\);

\final|selected[10]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[10]~17_combout\ = ( \choiceB|selected[10]~8_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[10]~8_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:9:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # ( 
-- !\choiceB|selected[10]~8_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:9:c1to31|vaium~combout\ $ (\choiceA|selected[10]~8_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[10]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:9:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[10]~8_combout\,
	datae => \choiceB|ALT_INV_selected[10]~8_combout\,
	combout => \final|selected[10]~17_combout\);

\final|selected[11]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[11]~18_combout\ = ( \choiceB|selected[11]~9_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[11]~9_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:10:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # ( 
-- !\choiceB|selected[11]~9_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:10:c1to31|vaium~combout\ $ (\choiceA|selected[11]~9_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[11]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:10:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[11]~9_combout\,
	datae => \choiceB|ALT_INV_selected[11]~9_combout\,
	combout => \final|selected[11]~18_combout\);

\adder|cddddd:12:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:12:c1to31|w1~combout\ = !\choiceA|selected[12]~10_combout\ $ (!\choiceB|selected[12]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[12]~10_combout\,
	datab => \choiceB|ALT_INV_selected[12]~10_combout\,
	combout => \adder|cddddd:12:c1to31|w1~combout\);

\final|selected[12]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[12]~19_combout\ = (!\func[1]~input_o\ & ((!\func[0]~input_o\ & (\choiceA|selected[12]~10_combout\ & \choiceB|selected[12]~10_combout\)) # (\func[0]~input_o\ & ((\choiceB|selected[12]~10_combout\) # (\choiceA|selected[12]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \choiceA|ALT_INV_selected[12]~10_combout\,
	datad => \choiceB|ALT_INV_selected[12]~10_combout\,
	combout => \final|selected[12]~19_combout\);

\final|selected[12]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[12]~20_combout\ = ( \adder|cddddd:12:c1to31|w1~combout\ & ( \final|selected[12]~19_combout\ ) ) # ( !\adder|cddddd:12:c1to31|w1~combout\ & ( \final|selected[12]~19_combout\ ) ) # ( \adder|cddddd:12:c1to31|w1~combout\ & ( 
-- !\final|selected[12]~19_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:10:c1to31|vaium~combout\ & (!\choiceA|selected[11]~9_combout\ & !\choiceB|selected[11]~9_combout\)) # (\adder|cddddd:10:c1to31|vaium~combout\ & 
-- ((!\choiceA|selected[11]~9_combout\) # (!\choiceB|selected[11]~9_combout\))))) ) ) ) # ( !\adder|cddddd:12:c1to31|w1~combout\ & ( !\final|selected[12]~19_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:10:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[11]~9_combout\) # (\choiceA|selected[11]~9_combout\))) # (\adder|cddddd:10:c1to31|vaium~combout\ & (\choiceA|selected[11]~9_combout\ & \choiceB|selected[11]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101010100010001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected~12_combout\,
	datab => \adder|cddddd:10:c1to31|ALT_INV_vaium~combout\,
	datac => \choiceA|ALT_INV_selected[11]~9_combout\,
	datad => \choiceB|ALT_INV_selected[11]~9_combout\,
	datae => \adder|cddddd:12:c1to31|ALT_INV_w1~combout\,
	dataf => \final|ALT_INV_selected[12]~19_combout\,
	combout => \final|selected[12]~20_combout\);

\adder|cddddd:12:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:12:c1to31|vaium~combout\ = ( \choiceB|selected[12]~10_combout\ & ( ((!\adder|cddddd:10:c1to31|vaium~combout\ & ((\choiceB|selected[11]~9_combout\) # (\choiceA|selected[11]~9_combout\))) # (\adder|cddddd:10:c1to31|vaium~combout\ & 
-- (\choiceA|selected[11]~9_combout\ & \choiceB|selected[11]~9_combout\))) # (\choiceA|selected[12]~10_combout\) ) ) # ( !\choiceB|selected[12]~10_combout\ & ( (\choiceA|selected[12]~10_combout\ & ((!\adder|cddddd:10:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[11]~9_combout\) # (\choiceA|selected[11]~9_combout\))) # (\adder|cddddd:10:c1to31|vaium~combout\ & (\choiceA|selected[11]~9_combout\ & \choiceB|selected[11]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:10:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[11]~9_combout\,
	datac => \choiceB|ALT_INV_selected[11]~9_combout\,
	datad => \choiceA|ALT_INV_selected[12]~10_combout\,
	datae => \choiceB|ALT_INV_selected[12]~10_combout\,
	combout => \adder|cddddd:12:c1to31|vaium~combout\);

\final|selected[13]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[13]~21_combout\ = ( \choiceB|selected[13]~11_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[13]~11_combout\ $ (((!\func[1]~input_o\) # (\adder|cddddd:12:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[13]~11_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:12:c1to31|vaium~combout\ $ (!\choiceA|selected[13]~11_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[13]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:12:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[13]~11_combout\,
	datae => \choiceB|ALT_INV_selected[13]~11_combout\,
	combout => \final|selected[13]~21_combout\);

\final|selected[14]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[14]~22_combout\ = ( \choiceA|selected[14]~12_combout\ & ( \choiceB|selected[14]~12_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & ((\adder|cddddd:13:c1to31|w2~0_combout\) # (\adder|cddddd:13:c1to31|w3~combout\)))) ) ) ) # ( 
-- !\choiceA|selected[14]~12_combout\ & ( \choiceB|selected[14]~12_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:13:c1to31|w3~combout\ & !\adder|cddddd:13:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # 
-- ( \choiceA|selected[14]~12_combout\ & ( !\choiceB|selected[14]~12_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:13:c1to31|w3~combout\ & !\adder|cddddd:13:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) 
-- # ( !\choiceA|selected[14]~12_combout\ & ( !\choiceB|selected[14]~12_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & ((\adder|cddddd:13:c1to31|w2~0_combout\) # (\adder|cddddd:13:c1to31|w3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:13:c1to31|ALT_INV_w3~combout\,
	datad => \adder|cddddd:13:c1to31|ALT_INV_w2~0_combout\,
	datae => \choiceA|ALT_INV_selected[14]~12_combout\,
	dataf => \choiceB|ALT_INV_selected[14]~12_combout\,
	combout => \final|selected[14]~22_combout\);

\adder|cddddd:14:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:14:c1to31|vaium~combout\ = (!\choiceA|selected[14]~12_combout\ & ((!\choiceB|selected[14]~12_combout\) # ((!\adder|cddddd:13:c1to31|w3~combout\ & !\adder|cddddd:13:c1to31|w2~0_combout\)))) # (\choiceA|selected[14]~12_combout\ & 
-- (!\adder|cddddd:13:c1to31|w3~combout\ & (!\adder|cddddd:13:c1to31|w2~0_combout\ & !\choiceB|selected[14]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:13:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:13:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[14]~12_combout\,
	datad => \choiceB|ALT_INV_selected[14]~12_combout\,
	combout => \adder|cddddd:14:c1to31|vaium~combout\);

\final|selected[15]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[15]~23_combout\ = ( \choiceB|selected[15]~13_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[15]~13_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:14:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[15]~13_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:14:c1to31|vaium~combout\ $ (\choiceA|selected[15]~13_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[15]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:14:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[15]~13_combout\,
	datae => \choiceB|ALT_INV_selected[15]~13_combout\,
	combout => \final|selected[15]~23_combout\);

\final|selected[16]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[16]~24_combout\ = ( \choiceB|selected[16]~14_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[16]~14_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:15:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[16]~14_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:15:c1to31|vaium~combout\ $ (\choiceA|selected[16]~14_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[16]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:15:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[16]~14_combout\,
	datae => \choiceB|ALT_INV_selected[16]~14_combout\,
	combout => \final|selected[16]~24_combout\);

\adder|cddddd:17:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:17:c1to31|w1~combout\ = !\choiceA|selected[17]~15_combout\ $ (!\choiceB|selected[17]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[17]~15_combout\,
	datab => \choiceB|ALT_INV_selected[17]~15_combout\,
	combout => \adder|cddddd:17:c1to31|w1~combout\);

\final|selected[17]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[17]~25_combout\ = (!\func[1]~input_o\ & ((!\func[0]~input_o\ & (\choiceA|selected[17]~15_combout\ & \choiceB|selected[17]~15_combout\)) # (\func[0]~input_o\ & ((\choiceB|selected[17]~15_combout\) # (\choiceA|selected[17]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \choiceA|ALT_INV_selected[17]~15_combout\,
	datad => \choiceB|ALT_INV_selected[17]~15_combout\,
	combout => \final|selected[17]~25_combout\);

\final|selected[17]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[17]~26_combout\ = ( \adder|cddddd:17:c1to31|w1~combout\ & ( \final|selected[17]~25_combout\ ) ) # ( !\adder|cddddd:17:c1to31|w1~combout\ & ( \final|selected[17]~25_combout\ ) ) # ( \adder|cddddd:17:c1to31|w1~combout\ & ( 
-- !\final|selected[17]~25_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:15:c1to31|vaium~combout\ & (!\choiceA|selected[16]~14_combout\ & !\choiceB|selected[16]~14_combout\)) # (\adder|cddddd:15:c1to31|vaium~combout\ & 
-- ((!\choiceA|selected[16]~14_combout\) # (!\choiceB|selected[16]~14_combout\))))) ) ) ) # ( !\adder|cddddd:17:c1to31|w1~combout\ & ( !\final|selected[17]~25_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:15:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[16]~14_combout\) # (\choiceA|selected[16]~14_combout\))) # (\adder|cddddd:15:c1to31|vaium~combout\ & (\choiceA|selected[16]~14_combout\ & \choiceB|selected[16]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101010100010001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected~12_combout\,
	datab => \adder|cddddd:15:c1to31|ALT_INV_vaium~combout\,
	datac => \choiceA|ALT_INV_selected[16]~14_combout\,
	datad => \choiceB|ALT_INV_selected[16]~14_combout\,
	datae => \adder|cddddd:17:c1to31|ALT_INV_w1~combout\,
	dataf => \final|ALT_INV_selected[17]~25_combout\,
	combout => \final|selected[17]~26_combout\);

\adder|cddddd:17:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:17:c1to31|vaium~combout\ = ( \choiceB|selected[17]~15_combout\ & ( ((!\adder|cddddd:15:c1to31|vaium~combout\ & ((\choiceB|selected[16]~14_combout\) # (\choiceA|selected[16]~14_combout\))) # (\adder|cddddd:15:c1to31|vaium~combout\ & 
-- (\choiceA|selected[16]~14_combout\ & \choiceB|selected[16]~14_combout\))) # (\choiceA|selected[17]~15_combout\) ) ) # ( !\choiceB|selected[17]~15_combout\ & ( (\choiceA|selected[17]~15_combout\ & ((!\adder|cddddd:15:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[16]~14_combout\) # (\choiceA|selected[16]~14_combout\))) # (\adder|cddddd:15:c1to31|vaium~combout\ & (\choiceA|selected[16]~14_combout\ & \choiceB|selected[16]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:15:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[16]~14_combout\,
	datac => \choiceB|ALT_INV_selected[16]~14_combout\,
	datad => \choiceA|ALT_INV_selected[17]~15_combout\,
	datae => \choiceB|ALT_INV_selected[17]~15_combout\,
	combout => \adder|cddddd:17:c1to31|vaium~combout\);

\final|selected[18]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[18]~27_combout\ = ( \choiceB|selected[18]~16_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[18]~16_combout\ $ (((!\func[1]~input_o\) # (\adder|cddddd:17:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[18]~16_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:17:c1to31|vaium~combout\ $ (!\choiceA|selected[18]~16_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[18]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:17:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[18]~16_combout\,
	datae => \choiceB|ALT_INV_selected[18]~16_combout\,
	combout => \final|selected[18]~27_combout\);

\final|selected[19]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[19]~28_combout\ = ( \choiceA|selected[19]~17_combout\ & ( \choiceB|selected[19]~17_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & ((\adder|cddddd:18:c1to31|w2~0_combout\) # (\adder|cddddd:18:c1to31|w3~combout\)))) ) ) ) # ( 
-- !\choiceA|selected[19]~17_combout\ & ( \choiceB|selected[19]~17_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:18:c1to31|w3~combout\ & !\adder|cddddd:18:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # 
-- ( \choiceA|selected[19]~17_combout\ & ( !\choiceB|selected[19]~17_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:18:c1to31|w3~combout\ & !\adder|cddddd:18:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) 
-- # ( !\choiceA|selected[19]~17_combout\ & ( !\choiceB|selected[19]~17_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & ((\adder|cddddd:18:c1to31|w2~0_combout\) # (\adder|cddddd:18:c1to31|w3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:18:c1to31|ALT_INV_w3~combout\,
	datad => \adder|cddddd:18:c1to31|ALT_INV_w2~0_combout\,
	datae => \choiceA|ALT_INV_selected[19]~17_combout\,
	dataf => \choiceB|ALT_INV_selected[19]~17_combout\,
	combout => \final|selected[19]~28_combout\);

\adder|cddddd:19:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:19:c1to31|vaium~combout\ = (!\choiceA|selected[19]~17_combout\ & ((!\choiceB|selected[19]~17_combout\) # ((!\adder|cddddd:18:c1to31|w3~combout\ & !\adder|cddddd:18:c1to31|w2~0_combout\)))) # (\choiceA|selected[19]~17_combout\ & 
-- (!\adder|cddddd:18:c1to31|w3~combout\ & (!\adder|cddddd:18:c1to31|w2~0_combout\ & !\choiceB|selected[19]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:18:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:18:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[19]~17_combout\,
	datad => \choiceB|ALT_INV_selected[19]~17_combout\,
	combout => \adder|cddddd:19:c1to31|vaium~combout\);

\final|selected[20]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[20]~29_combout\ = ( \choiceB|selected[20]~18_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[20]~18_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:19:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[20]~18_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:19:c1to31|vaium~combout\ $ (\choiceA|selected[20]~18_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[20]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:19:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[20]~18_combout\,
	datae => \choiceB|ALT_INV_selected[20]~18_combout\,
	combout => \final|selected[20]~29_combout\);

\final|selected[21]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[21]~30_combout\ = ( \choiceB|selected[21]~19_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[21]~19_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:20:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[21]~19_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:20:c1to31|vaium~combout\ $ (\choiceA|selected[21]~19_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[21]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:20:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[21]~19_combout\,
	datae => \choiceB|ALT_INV_selected[21]~19_combout\,
	combout => \final|selected[21]~30_combout\);

\adder|cddddd:22:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:22:c1to31|w1~combout\ = !\choiceA|selected[22]~20_combout\ $ (!\choiceB|selected[22]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[22]~20_combout\,
	datab => \choiceB|ALT_INV_selected[22]~20_combout\,
	combout => \adder|cddddd:22:c1to31|w1~combout\);

\final|selected[22]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[22]~31_combout\ = (!\func[1]~input_o\ & ((!\func[0]~input_o\ & (\choiceA|selected[22]~20_combout\ & \choiceB|selected[22]~20_combout\)) # (\func[0]~input_o\ & ((\choiceB|selected[22]~20_combout\) # (\choiceA|selected[22]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \choiceA|ALT_INV_selected[22]~20_combout\,
	datad => \choiceB|ALT_INV_selected[22]~20_combout\,
	combout => \final|selected[22]~31_combout\);

\final|selected[22]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[22]~32_combout\ = ( \adder|cddddd:22:c1to31|w1~combout\ & ( \final|selected[22]~31_combout\ ) ) # ( !\adder|cddddd:22:c1to31|w1~combout\ & ( \final|selected[22]~31_combout\ ) ) # ( \adder|cddddd:22:c1to31|w1~combout\ & ( 
-- !\final|selected[22]~31_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:20:c1to31|vaium~combout\ & (!\choiceA|selected[21]~19_combout\ & !\choiceB|selected[21]~19_combout\)) # (\adder|cddddd:20:c1to31|vaium~combout\ & 
-- ((!\choiceA|selected[21]~19_combout\) # (!\choiceB|selected[21]~19_combout\))))) ) ) ) # ( !\adder|cddddd:22:c1to31|w1~combout\ & ( !\final|selected[22]~31_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:20:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[21]~19_combout\) # (\choiceA|selected[21]~19_combout\))) # (\adder|cddddd:20:c1to31|vaium~combout\ & (\choiceA|selected[21]~19_combout\ & \choiceB|selected[21]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101010100010001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected~12_combout\,
	datab => \adder|cddddd:20:c1to31|ALT_INV_vaium~combout\,
	datac => \choiceA|ALT_INV_selected[21]~19_combout\,
	datad => \choiceB|ALT_INV_selected[21]~19_combout\,
	datae => \adder|cddddd:22:c1to31|ALT_INV_w1~combout\,
	dataf => \final|ALT_INV_selected[22]~31_combout\,
	combout => \final|selected[22]~32_combout\);

\adder|cddddd:22:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:22:c1to31|vaium~combout\ = ( \choiceB|selected[22]~20_combout\ & ( ((!\adder|cddddd:20:c1to31|vaium~combout\ & ((\choiceB|selected[21]~19_combout\) # (\choiceA|selected[21]~19_combout\))) # (\adder|cddddd:20:c1to31|vaium~combout\ & 
-- (\choiceA|selected[21]~19_combout\ & \choiceB|selected[21]~19_combout\))) # (\choiceA|selected[22]~20_combout\) ) ) # ( !\choiceB|selected[22]~20_combout\ & ( (\choiceA|selected[22]~20_combout\ & ((!\adder|cddddd:20:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[21]~19_combout\) # (\choiceA|selected[21]~19_combout\))) # (\adder|cddddd:20:c1to31|vaium~combout\ & (\choiceA|selected[21]~19_combout\ & \choiceB|selected[21]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:20:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[21]~19_combout\,
	datac => \choiceB|ALT_INV_selected[21]~19_combout\,
	datad => \choiceA|ALT_INV_selected[22]~20_combout\,
	datae => \choiceB|ALT_INV_selected[22]~20_combout\,
	combout => \adder|cddddd:22:c1to31|vaium~combout\);

\final|selected[23]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[23]~33_combout\ = ( \choiceB|selected[23]~21_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[23]~21_combout\ $ (((!\func[1]~input_o\) # (\adder|cddddd:22:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[23]~21_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:22:c1to31|vaium~combout\ $ (!\choiceA|selected[23]~21_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[23]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:22:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[23]~21_combout\,
	datae => \choiceB|ALT_INV_selected[23]~21_combout\,
	combout => \final|selected[23]~33_combout\);

\final|selected[24]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[24]~34_combout\ = ( \choiceA|selected[24]~22_combout\ & ( \choiceB|selected[24]~22_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & ((\adder|cddddd:23:c1to31|w2~0_combout\) # (\adder|cddddd:23:c1to31|w3~combout\)))) ) ) ) # ( 
-- !\choiceA|selected[24]~22_combout\ & ( \choiceB|selected[24]~22_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:23:c1to31|w3~combout\ & !\adder|cddddd:23:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # 
-- ( \choiceA|selected[24]~22_combout\ & ( !\choiceB|selected[24]~22_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:23:c1to31|w3~combout\ & !\adder|cddddd:23:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) 
-- # ( !\choiceA|selected[24]~22_combout\ & ( !\choiceB|selected[24]~22_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & ((\adder|cddddd:23:c1to31|w2~0_combout\) # (\adder|cddddd:23:c1to31|w3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:23:c1to31|ALT_INV_w3~combout\,
	datad => \adder|cddddd:23:c1to31|ALT_INV_w2~0_combout\,
	datae => \choiceA|ALT_INV_selected[24]~22_combout\,
	dataf => \choiceB|ALT_INV_selected[24]~22_combout\,
	combout => \final|selected[24]~34_combout\);

\adder|cddddd:24:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:24:c1to31|vaium~combout\ = (!\choiceA|selected[24]~22_combout\ & ((!\choiceB|selected[24]~22_combout\) # ((!\adder|cddddd:23:c1to31|w3~combout\ & !\adder|cddddd:23:c1to31|w2~0_combout\)))) # (\choiceA|selected[24]~22_combout\ & 
-- (!\adder|cddddd:23:c1to31|w3~combout\ & (!\adder|cddddd:23:c1to31|w2~0_combout\ & !\choiceB|selected[24]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:23:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:23:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[24]~22_combout\,
	datad => \choiceB|ALT_INV_selected[24]~22_combout\,
	combout => \adder|cddddd:24:c1to31|vaium~combout\);

\final|selected[25]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[25]~35_combout\ = ( \choiceB|selected[25]~23_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[25]~23_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:24:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[25]~23_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:24:c1to31|vaium~combout\ $ (\choiceA|selected[25]~23_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[25]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:24:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[25]~23_combout\,
	datae => \choiceB|ALT_INV_selected[25]~23_combout\,
	combout => \final|selected[25]~35_combout\);

\final|selected[26]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[26]~36_combout\ = ( \choiceB|selected[26]~24_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[26]~24_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:25:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[26]~24_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:25:c1to31|vaium~combout\ $ (\choiceA|selected[26]~24_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[26]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:25:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[26]~24_combout\,
	datae => \choiceB|ALT_INV_selected[26]~24_combout\,
	combout => \final|selected[26]~36_combout\);

\adder|cddddd:27:c1to31|w1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:27:c1to31|w1~combout\ = !\choiceA|selected[27]~25_combout\ $ (!\choiceB|selected[27]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \choiceA|ALT_INV_selected[27]~25_combout\,
	datab => \choiceB|ALT_INV_selected[27]~25_combout\,
	combout => \adder|cddddd:27:c1to31|w1~combout\);

\final|selected[27]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[27]~37_combout\ = (!\func[1]~input_o\ & ((!\func[0]~input_o\ & (\choiceA|selected[27]~25_combout\ & \choiceB|selected[27]~25_combout\)) # (\func[0]~input_o\ & ((\choiceB|selected[27]~25_combout\) # (\choiceA|selected[27]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \choiceA|ALT_INV_selected[27]~25_combout\,
	datad => \choiceB|ALT_INV_selected[27]~25_combout\,
	combout => \final|selected[27]~37_combout\);

\final|selected[27]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[27]~38_combout\ = ( \adder|cddddd:27:c1to31|w1~combout\ & ( \final|selected[27]~37_combout\ ) ) # ( !\adder|cddddd:27:c1to31|w1~combout\ & ( \final|selected[27]~37_combout\ ) ) # ( \adder|cddddd:27:c1to31|w1~combout\ & ( 
-- !\final|selected[27]~37_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:25:c1to31|vaium~combout\ & (!\choiceA|selected[26]~24_combout\ & !\choiceB|selected[26]~24_combout\)) # (\adder|cddddd:25:c1to31|vaium~combout\ & 
-- ((!\choiceA|selected[26]~24_combout\) # (!\choiceB|selected[26]~24_combout\))))) ) ) ) # ( !\adder|cddddd:27:c1to31|w1~combout\ & ( !\final|selected[27]~37_combout\ & ( (\final|selected~12_combout\ & ((!\adder|cddddd:25:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[26]~24_combout\) # (\choiceA|selected[26]~24_combout\))) # (\adder|cddddd:25:c1to31|vaium~combout\ & (\choiceA|selected[26]~24_combout\ & \choiceB|selected[26]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101010100010001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected~12_combout\,
	datab => \adder|cddddd:25:c1to31|ALT_INV_vaium~combout\,
	datac => \choiceA|ALT_INV_selected[26]~24_combout\,
	datad => \choiceB|ALT_INV_selected[26]~24_combout\,
	datae => \adder|cddddd:27:c1to31|ALT_INV_w1~combout\,
	dataf => \final|ALT_INV_selected[27]~37_combout\,
	combout => \final|selected[27]~38_combout\);

\adder|cddddd:27:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:27:c1to31|vaium~combout\ = ( \choiceB|selected[27]~25_combout\ & ( ((!\adder|cddddd:25:c1to31|vaium~combout\ & ((\choiceB|selected[26]~24_combout\) # (\choiceA|selected[26]~24_combout\))) # (\adder|cddddd:25:c1to31|vaium~combout\ & 
-- (\choiceA|selected[26]~24_combout\ & \choiceB|selected[26]~24_combout\))) # (\choiceA|selected[27]~25_combout\) ) ) # ( !\choiceB|selected[27]~25_combout\ & ( (\choiceA|selected[27]~25_combout\ & ((!\adder|cddddd:25:c1to31|vaium~combout\ & 
-- ((\choiceB|selected[26]~24_combout\) # (\choiceA|selected[26]~24_combout\))) # (\adder|cddddd:25:c1to31|vaium~combout\ & (\choiceA|selected[26]~24_combout\ & \choiceB|selected[26]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:25:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[26]~24_combout\,
	datac => \choiceB|ALT_INV_selected[26]~24_combout\,
	datad => \choiceA|ALT_INV_selected[27]~25_combout\,
	datae => \choiceB|ALT_INV_selected[27]~25_combout\,
	combout => \adder|cddddd:27:c1to31|vaium~combout\);

\final|selected[28]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[28]~39_combout\ = ( \choiceB|selected[28]~26_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[28]~26_combout\ $ (((!\func[1]~input_o\) # (\adder|cddddd:27:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[28]~26_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:27:c1to31|vaium~combout\ $ (!\choiceA|selected[28]~26_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[28]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:27:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[28]~26_combout\,
	datae => \choiceB|ALT_INV_selected[28]~26_combout\,
	combout => \final|selected[28]~39_combout\);

\final|selected[29]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[29]~40_combout\ = ( \choiceA|selected[29]~27_combout\ & ( \choiceB|selected[29]~27_combout\ & ( (!\func[1]~input_o\) # ((!\func[0]~input_o\ & ((\adder|cddddd:28:c1to31|w2~0_combout\) # (\adder|cddddd:28:c1to31|w3~combout\)))) ) ) ) # ( 
-- !\choiceA|selected[29]~27_combout\ & ( \choiceB|selected[29]~27_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:28:c1to31|w3~combout\ & !\adder|cddddd:28:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) # 
-- ( \choiceA|selected[29]~27_combout\ & ( !\choiceB|selected[29]~27_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:28:c1to31|w3~combout\ & !\adder|cddddd:28:c1to31|w2~0_combout\))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) ) 
-- # ( !\choiceA|selected[29]~27_combout\ & ( !\choiceB|selected[29]~27_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & ((\adder|cddddd:28:c1to31|w2~0_combout\) # (\adder|cddddd:28:c1to31|w3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:28:c1to31|ALT_INV_w3~combout\,
	datad => \adder|cddddd:28:c1to31|ALT_INV_w2~0_combout\,
	datae => \choiceA|ALT_INV_selected[29]~27_combout\,
	dataf => \choiceB|ALT_INV_selected[29]~27_combout\,
	combout => \final|selected[29]~40_combout\);

\adder|cddddd:29:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:29:c1to31|vaium~combout\ = (!\choiceA|selected[29]~27_combout\ & ((!\choiceB|selected[29]~27_combout\) # ((!\adder|cddddd:28:c1to31|w3~combout\ & !\adder|cddddd:28:c1to31|w2~0_combout\)))) # (\choiceA|selected[29]~27_combout\ & 
-- (!\adder|cddddd:28:c1to31|w3~combout\ & (!\adder|cddddd:28:c1to31|w2~0_combout\ & !\choiceB|selected[29]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:28:c1to31|ALT_INV_w3~combout\,
	datab => \adder|cddddd:28:c1to31|ALT_INV_w2~0_combout\,
	datac => \choiceA|ALT_INV_selected[29]~27_combout\,
	datad => \choiceB|ALT_INV_selected[29]~27_combout\,
	combout => \adder|cddddd:29:c1to31|vaium~combout\);

\final|selected[30]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[30]~41_combout\ = ( \choiceB|selected[30]~28_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[30]~28_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:29:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[30]~28_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:29:c1to31|vaium~combout\ $ (\choiceA|selected[30]~28_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[30]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:29:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[30]~28_combout\,
	datae => \choiceB|ALT_INV_selected[30]~28_combout\,
	combout => \final|selected[30]~41_combout\);

\final|selected[31]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \final|selected[31]~42_combout\ = ( \choiceB|selected[31]~29_combout\ & ( (!\func[0]~input_o\ & (!\choiceA|selected[31]~29_combout\ $ (((!\func[1]~input_o\) # (!\adder|cddddd:30:c1to31|vaium~combout\))))) # (\func[0]~input_o\ & (!\func[1]~input_o\)) ) ) # 
-- ( !\choiceB|selected[31]~29_combout\ & ( (!\func[0]~input_o\ & (\func[1]~input_o\ & (!\adder|cddddd:30:c1to31|vaium~combout\ $ (\choiceA|selected[31]~29_combout\)))) # (\func[0]~input_o\ & (!\func[1]~input_o\ & ((\choiceA|selected[31]~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \adder|cddddd:30:c1to31|ALT_INV_vaium~combout\,
	datad => \choiceA|ALT_INV_selected[31]~29_combout\,
	datae => \choiceB|ALT_INV_selected[31]~29_combout\,
	combout => \final|selected[31]~42_combout\);

\flag|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~0_combout\ = (!\final|selected[1]~5_combout\ & (!\final|selected[2]~6_combout\ & (!\final|selected[3]~8_combout\ & !\final|selected[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[1]~5_combout\,
	datab => \final|ALT_INV_selected[2]~6_combout\,
	datac => \final|ALT_INV_selected[3]~8_combout\,
	datad => \final|ALT_INV_selected[4]~9_combout\,
	combout => \flag|output~0_combout\);

\flag|output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~1_combout\ = (!\final|selected[5]~10_combout\ & (!\final|selected[6]~11_combout\ & (!\final|selected[7]~14_combout\ & \flag|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[5]~10_combout\,
	datab => \final|ALT_INV_selected[6]~11_combout\,
	datac => \final|ALT_INV_selected[7]~14_combout\,
	datad => \flag|ALT_INV_output~0_combout\,
	combout => \flag|output~1_combout\);

\flag|output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~2_combout\ = ( \flag|output~1_combout\ & ( (!\final|selected[8]~15_combout\ & (!\final|selected[9]~16_combout\ & (!\final|selected[10]~17_combout\ & !\final|selected[11]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[8]~15_combout\,
	datab => \final|ALT_INV_selected[9]~16_combout\,
	datac => \final|ALT_INV_selected[10]~17_combout\,
	datad => \final|ALT_INV_selected[11]~18_combout\,
	datae => \flag|ALT_INV_output~1_combout\,
	combout => \flag|output~2_combout\);

\flag|output~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~3_combout\ = (!\final|selected[12]~20_combout\ & (!\final|selected[13]~21_combout\ & (!\final|selected[14]~22_combout\ & \flag|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[12]~20_combout\,
	datab => \final|ALT_INV_selected[13]~21_combout\,
	datac => \final|ALT_INV_selected[14]~22_combout\,
	datad => \flag|ALT_INV_output~2_combout\,
	combout => \flag|output~3_combout\);

\flag|output~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~4_combout\ = (!\final|selected[15]~23_combout\ & (!\final|selected[16]~24_combout\ & (!\final|selected[17]~26_combout\ & \flag|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[15]~23_combout\,
	datab => \final|ALT_INV_selected[16]~24_combout\,
	datac => \final|ALT_INV_selected[17]~26_combout\,
	datad => \flag|ALT_INV_output~3_combout\,
	combout => \flag|output~4_combout\);

\flag|output~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~5_combout\ = ( \flag|output~4_combout\ & ( (!\final|selected[18]~27_combout\ & (!\final|selected[19]~28_combout\ & (!\final|selected[20]~29_combout\ & !\final|selected[21]~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[18]~27_combout\,
	datab => \final|ALT_INV_selected[19]~28_combout\,
	datac => \final|ALT_INV_selected[20]~29_combout\,
	datad => \final|ALT_INV_selected[21]~30_combout\,
	datae => \flag|ALT_INV_output~4_combout\,
	combout => \flag|output~5_combout\);

\flag|output~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~6_combout\ = (!\final|selected[22]~32_combout\ & (!\final|selected[23]~33_combout\ & (!\final|selected[24]~34_combout\ & \flag|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[22]~32_combout\,
	datab => \final|ALT_INV_selected[23]~33_combout\,
	datac => \final|ALT_INV_selected[24]~34_combout\,
	datad => \flag|ALT_INV_output~5_combout\,
	combout => \flag|output~6_combout\);

\flag|output~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~7_combout\ = ( !\final|selected[29]~40_combout\ & ( \flag|output~6_combout\ & ( (!\final|selected[25]~35_combout\ & (!\final|selected[26]~36_combout\ & (!\final|selected[27]~38_combout\ & !\final|selected[28]~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[25]~35_combout\,
	datab => \final|ALT_INV_selected[26]~36_combout\,
	datac => \final|ALT_INV_selected[27]~38_combout\,
	datad => \final|ALT_INV_selected[28]~39_combout\,
	datae => \final|ALT_INV_selected[29]~40_combout\,
	dataf => \flag|ALT_INV_output~6_combout\,
	combout => \flag|output~7_combout\);

\flag|output\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag|output~combout\ = ( \final|selected[31]~42_combout\ & ( \flag|output~7_combout\ ) ) # ( !\final|selected[31]~42_combout\ & ( \flag|output~7_combout\ & ( ((!\final|selected[0]~0_combout\ & ((!\final|selected~3_combout\))) # 
-- (\final|selected[0]~0_combout\ & (\adder|a0|w2~0_combout\))) # (\final|selected[30]~41_combout\) ) ) ) # ( \final|selected[31]~42_combout\ & ( !\flag|output~7_combout\ ) ) # ( !\final|selected[31]~42_combout\ & ( !\flag|output~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110110001111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \final|ALT_INV_selected[0]~0_combout\,
	datab => \adder|a0|ALT_INV_w2~0_combout\,
	datac => \final|ALT_INV_selected~3_combout\,
	datad => \final|ALT_INV_selected[30]~41_combout\,
	datae => \final|ALT_INV_selected[31]~42_combout\,
	dataf => \flag|ALT_INV_output~7_combout\,
	combout => \flag|output~combout\);

\adder|cddddd:31:c1to31|vaium\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|cddddd:31:c1to31|vaium~combout\ = (!\adder|cddddd:30:c1to31|vaium~combout\ & ((\choiceB|selected[31]~29_combout\) # (\choiceA|selected[31]~29_combout\))) # (\adder|cddddd:30:c1to31|vaium~combout\ & (\choiceA|selected[31]~29_combout\ & 
-- \choiceB|selected[31]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|cddddd:30:c1to31|ALT_INV_vaium~combout\,
	datab => \choiceA|ALT_INV_selected[31]~29_combout\,
	datac => \choiceB|ALT_INV_selected[31]~29_combout\,
	combout => \adder|cddddd:31:c1to31|vaium~combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_output(16) <= \output[16]~output_o\;

ww_output(17) <= \output[17]~output_o\;

ww_output(18) <= \output[18]~output_o\;

ww_output(19) <= \output[19]~output_o\;

ww_output(20) <= \output[20]~output_o\;

ww_output(21) <= \output[21]~output_o\;

ww_output(22) <= \output[22]~output_o\;

ww_output(23) <= \output[23]~output_o\;

ww_output(24) <= \output[24]~output_o\;

ww_output(25) <= \output[25]~output_o\;

ww_output(26) <= \output[26]~output_o\;

ww_output(27) <= \output[27]~output_o\;

ww_output(28) <= \output[28]~output_o\;

ww_output(29) <= \output[29]~output_o\;

ww_output(30) <= \output[30]~output_o\;

ww_output(31) <= \output[31]~output_o\;

ww_zero <= \zero~output_o\;

ww_cout <= \cout~output_o\;
END structure;


