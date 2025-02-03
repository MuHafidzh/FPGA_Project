-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/22/2024 03:28:25"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eight_bit IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END eight_bit;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF eight_bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div_inst|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~12_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~1\ : std_logic;
SIGNAL \clk_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~3\ : std_logic;
SIGNAL \clk_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~5\ : std_logic;
SIGNAL \clk_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~7\ : std_logic;
SIGNAL \clk_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~9\ : std_logic;
SIGNAL \clk_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~11\ : std_logic;
SIGNAL \clk_div_inst|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~13\ : std_logic;
SIGNAL \clk_div_inst|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~11_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~15\ : std_logic;
SIGNAL \clk_div_inst|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~17\ : std_logic;
SIGNAL \clk_div_inst|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~19\ : std_logic;
SIGNAL \clk_div_inst|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~21\ : std_logic;
SIGNAL \clk_div_inst|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~23\ : std_logic;
SIGNAL \clk_div_inst|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~10_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~25\ : std_logic;
SIGNAL \clk_div_inst|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~9_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~27\ : std_logic;
SIGNAL \clk_div_inst|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~8_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~29\ : std_logic;
SIGNAL \clk_div_inst|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~7_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~31\ : std_logic;
SIGNAL \clk_div_inst|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~33\ : std_logic;
SIGNAL \clk_div_inst|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~6_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~35\ : std_logic;
SIGNAL \clk_div_inst|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~37\ : std_logic;
SIGNAL \clk_div_inst|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~5_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~39\ : std_logic;
SIGNAL \clk_div_inst|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~4_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~41\ : std_logic;
SIGNAL \clk_div_inst|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~3_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~47\ : std_logic;
SIGNAL \clk_div_inst|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~49\ : std_logic;
SIGNAL \clk_div_inst|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~1_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~43\ : std_logic;
SIGNAL \clk_div_inst|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~2_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~45\ : std_logic;
SIGNAL \clk_div_inst|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_div~0_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_out~combout\ : std_logic;
SIGNAL \clk_div_inst|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \counter_inst|counter_value[0]~8_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \counter_inst|counter_value[0]~9\ : std_logic;
SIGNAL \counter_inst|counter_value[1]~10_combout\ : std_logic;
SIGNAL \counter_inst|counter_value[1]~11\ : std_logic;
SIGNAL \counter_inst|counter_value[2]~12_combout\ : std_logic;
SIGNAL \counter_inst|counter_value[2]~13\ : std_logic;
SIGNAL \counter_inst|counter_value[3]~14_combout\ : std_logic;
SIGNAL \counter_inst|counter_value[3]~15\ : std_logic;
SIGNAL \counter_inst|counter_value[4]~16_combout\ : std_logic;
SIGNAL \counter_inst|counter_value[4]~17\ : std_logic;
SIGNAL \counter_inst|counter_value[5]~18_combout\ : std_logic;
SIGNAL \counter_inst|counter_value[5]~19\ : std_logic;
SIGNAL \counter_inst|counter_value[6]~20_combout\ : std_logic;
SIGNAL \counter_inst|counter_value[6]~21\ : std_logic;
SIGNAL \counter_inst|counter_value[7]~22_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux20~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux19~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux18~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux17~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux16~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux15~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux14~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux13~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux12~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux11~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux10~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux9~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux8~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux7~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux6~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux4~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux1~0_combout\ : std_logic;
SIGNAL \counter_inst|counter_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_div_inst|clk_div\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \seven_segment_inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \seven_segment_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|ALT_INV_Mux14~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_div_inst|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_inst|clk_out~combout\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\seven_segment_inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\seven_segment_inst|ALT_INV_Mux7~0_combout\ <= NOT \seven_segment_inst|Mux7~0_combout\;
\seven_segment_inst|ALT_INV_Mux14~0_combout\ <= NOT \seven_segment_inst|Mux14~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_inst|counter_value\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X44_Y4_N6
\clk_div_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~0_combout\ = \clk_div_inst|clk_div\(0) $ (VCC)
-- \clk_div_inst|Add0~1\ = CARRY(\clk_div_inst|clk_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(0),
	datad => VCC,
	combout => \clk_div_inst|Add0~0_combout\,
	cout => \clk_div_inst|Add0~1\);

-- Location: LCCOMB_X45_Y4_N4
\clk_div_inst|clk_div~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~12_combout\ = (\clk_div_inst|Add0~0_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_inst|Add0~0_combout\,
	datad => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~12_combout\);

-- Location: FF_X45_Y4_N5
\clk_div_inst|clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(0));

-- Location: LCCOMB_X44_Y4_N8
\clk_div_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~2_combout\ = (\clk_div_inst|clk_div\(1) & (!\clk_div_inst|Add0~1\)) # (!\clk_div_inst|clk_div\(1) & ((\clk_div_inst|Add0~1\) # (GND)))
-- \clk_div_inst|Add0~3\ = CARRY((!\clk_div_inst|Add0~1\) # (!\clk_div_inst|clk_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(1),
	datad => VCC,
	cin => \clk_div_inst|Add0~1\,
	combout => \clk_div_inst|Add0~2_combout\,
	cout => \clk_div_inst|Add0~3\);

-- Location: FF_X44_Y4_N9
\clk_div_inst|clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(1));

-- Location: LCCOMB_X44_Y4_N10
\clk_div_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~4_combout\ = (\clk_div_inst|clk_div\(2) & (\clk_div_inst|Add0~3\ $ (GND))) # (!\clk_div_inst|clk_div\(2) & (!\clk_div_inst|Add0~3\ & VCC))
-- \clk_div_inst|Add0~5\ = CARRY((\clk_div_inst|clk_div\(2) & !\clk_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(2),
	datad => VCC,
	cin => \clk_div_inst|Add0~3\,
	combout => \clk_div_inst|Add0~4_combout\,
	cout => \clk_div_inst|Add0~5\);

-- Location: FF_X44_Y4_N11
\clk_div_inst|clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(2));

-- Location: LCCOMB_X44_Y4_N12
\clk_div_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~6_combout\ = (\clk_div_inst|clk_div\(3) & (!\clk_div_inst|Add0~5\)) # (!\clk_div_inst|clk_div\(3) & ((\clk_div_inst|Add0~5\) # (GND)))
-- \clk_div_inst|Add0~7\ = CARRY((!\clk_div_inst|Add0~5\) # (!\clk_div_inst|clk_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(3),
	datad => VCC,
	cin => \clk_div_inst|Add0~5\,
	combout => \clk_div_inst|Add0~6_combout\,
	cout => \clk_div_inst|Add0~7\);

-- Location: FF_X44_Y4_N13
\clk_div_inst|clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(3));

-- Location: LCCOMB_X44_Y4_N14
\clk_div_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~8_combout\ = (\clk_div_inst|clk_div\(4) & (\clk_div_inst|Add0~7\ $ (GND))) # (!\clk_div_inst|clk_div\(4) & (!\clk_div_inst|Add0~7\ & VCC))
-- \clk_div_inst|Add0~9\ = CARRY((\clk_div_inst|clk_div\(4) & !\clk_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(4),
	datad => VCC,
	cin => \clk_div_inst|Add0~7\,
	combout => \clk_div_inst|Add0~8_combout\,
	cout => \clk_div_inst|Add0~9\);

-- Location: FF_X44_Y4_N15
\clk_div_inst|clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(4));

-- Location: LCCOMB_X44_Y4_N16
\clk_div_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~10_combout\ = (\clk_div_inst|clk_div\(5) & (!\clk_div_inst|Add0~9\)) # (!\clk_div_inst|clk_div\(5) & ((\clk_div_inst|Add0~9\) # (GND)))
-- \clk_div_inst|Add0~11\ = CARRY((!\clk_div_inst|Add0~9\) # (!\clk_div_inst|clk_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(5),
	datad => VCC,
	cin => \clk_div_inst|Add0~9\,
	combout => \clk_div_inst|Add0~10_combout\,
	cout => \clk_div_inst|Add0~11\);

-- Location: FF_X44_Y4_N17
\clk_div_inst|clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(5));

-- Location: LCCOMB_X44_Y4_N18
\clk_div_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~12_combout\ = (\clk_div_inst|clk_div\(6) & (\clk_div_inst|Add0~11\ $ (GND))) # (!\clk_div_inst|clk_div\(6) & (!\clk_div_inst|Add0~11\ & VCC))
-- \clk_div_inst|Add0~13\ = CARRY((\clk_div_inst|clk_div\(6) & !\clk_div_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(6),
	datad => VCC,
	cin => \clk_div_inst|Add0~11\,
	combout => \clk_div_inst|Add0~12_combout\,
	cout => \clk_div_inst|Add0~13\);

-- Location: FF_X44_Y4_N19
\clk_div_inst|clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(6));

-- Location: LCCOMB_X44_Y4_N20
\clk_div_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~14_combout\ = (\clk_div_inst|clk_div\(7) & (!\clk_div_inst|Add0~13\)) # (!\clk_div_inst|clk_div\(7) & ((\clk_div_inst|Add0~13\) # (GND)))
-- \clk_div_inst|Add0~15\ = CARRY((!\clk_div_inst|Add0~13\) # (!\clk_div_inst|clk_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(7),
	datad => VCC,
	cin => \clk_div_inst|Add0~13\,
	combout => \clk_div_inst|Add0~14_combout\,
	cout => \clk_div_inst|Add0~15\);

-- Location: LCCOMB_X45_Y4_N2
\clk_div_inst|clk_div~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~11_combout\ = (\clk_div_inst|Add0~14_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|Add0~14_combout\,
	datad => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~11_combout\);

-- Location: FF_X45_Y4_N3
\clk_div_inst|clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(7));

-- Location: LCCOMB_X44_Y4_N22
\clk_div_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~16_combout\ = (\clk_div_inst|clk_div\(8) & (\clk_div_inst|Add0~15\ $ (GND))) # (!\clk_div_inst|clk_div\(8) & (!\clk_div_inst|Add0~15\ & VCC))
-- \clk_div_inst|Add0~17\ = CARRY((\clk_div_inst|clk_div\(8) & !\clk_div_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(8),
	datad => VCC,
	cin => \clk_div_inst|Add0~15\,
	combout => \clk_div_inst|Add0~16_combout\,
	cout => \clk_div_inst|Add0~17\);

-- Location: FF_X44_Y4_N23
\clk_div_inst|clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(8));

-- Location: LCCOMB_X44_Y4_N24
\clk_div_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~18_combout\ = (\clk_div_inst|clk_div\(9) & (!\clk_div_inst|Add0~17\)) # (!\clk_div_inst|clk_div\(9) & ((\clk_div_inst|Add0~17\) # (GND)))
-- \clk_div_inst|Add0~19\ = CARRY((!\clk_div_inst|Add0~17\) # (!\clk_div_inst|clk_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(9),
	datad => VCC,
	cin => \clk_div_inst|Add0~17\,
	combout => \clk_div_inst|Add0~18_combout\,
	cout => \clk_div_inst|Add0~19\);

-- Location: FF_X44_Y4_N25
\clk_div_inst|clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(9));

-- Location: LCCOMB_X44_Y4_N26
\clk_div_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~20_combout\ = (\clk_div_inst|clk_div\(10) & (\clk_div_inst|Add0~19\ $ (GND))) # (!\clk_div_inst|clk_div\(10) & (!\clk_div_inst|Add0~19\ & VCC))
-- \clk_div_inst|Add0~21\ = CARRY((\clk_div_inst|clk_div\(10) & !\clk_div_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(10),
	datad => VCC,
	cin => \clk_div_inst|Add0~19\,
	combout => \clk_div_inst|Add0~20_combout\,
	cout => \clk_div_inst|Add0~21\);

-- Location: FF_X44_Y4_N27
\clk_div_inst|clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(10));

-- Location: LCCOMB_X44_Y4_N28
\clk_div_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~22_combout\ = (\clk_div_inst|clk_div\(11) & (!\clk_div_inst|Add0~21\)) # (!\clk_div_inst|clk_div\(11) & ((\clk_div_inst|Add0~21\) # (GND)))
-- \clk_div_inst|Add0~23\ = CARRY((!\clk_div_inst|Add0~21\) # (!\clk_div_inst|clk_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(11),
	datad => VCC,
	cin => \clk_div_inst|Add0~21\,
	combout => \clk_div_inst|Add0~22_combout\,
	cout => \clk_div_inst|Add0~23\);

-- Location: FF_X44_Y4_N29
\clk_div_inst|clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(11));

-- Location: LCCOMB_X44_Y4_N30
\clk_div_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~24_combout\ = (\clk_div_inst|clk_div\(12) & (\clk_div_inst|Add0~23\ $ (GND))) # (!\clk_div_inst|clk_div\(12) & (!\clk_div_inst|Add0~23\ & VCC))
-- \clk_div_inst|Add0~25\ = CARRY((\clk_div_inst|clk_div\(12) & !\clk_div_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(12),
	datad => VCC,
	cin => \clk_div_inst|Add0~23\,
	combout => \clk_div_inst|Add0~24_combout\,
	cout => \clk_div_inst|Add0~25\);

-- Location: LCCOMB_X45_Y4_N8
\clk_div_inst|clk_div~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~10_combout\ = (\clk_div_inst|Add0~24_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_inst|Add0~24_combout\,
	datad => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~10_combout\);

-- Location: FF_X45_Y4_N9
\clk_div_inst|clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(12));

-- Location: LCCOMB_X44_Y3_N0
\clk_div_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~26_combout\ = (\clk_div_inst|clk_div\(13) & (!\clk_div_inst|Add0~25\)) # (!\clk_div_inst|clk_div\(13) & ((\clk_div_inst|Add0~25\) # (GND)))
-- \clk_div_inst|Add0~27\ = CARRY((!\clk_div_inst|Add0~25\) # (!\clk_div_inst|clk_div\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(13),
	datad => VCC,
	cin => \clk_div_inst|Add0~25\,
	combout => \clk_div_inst|Add0~26_combout\,
	cout => \clk_div_inst|Add0~27\);

-- Location: LCCOMB_X45_Y3_N4
\clk_div_inst|clk_div~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~9_combout\ = (!\clk_div_inst|Equal0~8_combout\ & \clk_div_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|Equal0~8_combout\,
	datad => \clk_div_inst|Add0~26_combout\,
	combout => \clk_div_inst|clk_div~9_combout\);

-- Location: FF_X45_Y3_N5
\clk_div_inst|clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(13));

-- Location: LCCOMB_X44_Y3_N2
\clk_div_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~28_combout\ = (\clk_div_inst|clk_div\(14) & (\clk_div_inst|Add0~27\ $ (GND))) # (!\clk_div_inst|clk_div\(14) & (!\clk_div_inst|Add0~27\ & VCC))
-- \clk_div_inst|Add0~29\ = CARRY((\clk_div_inst|clk_div\(14) & !\clk_div_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(14),
	datad => VCC,
	cin => \clk_div_inst|Add0~27\,
	combout => \clk_div_inst|Add0~28_combout\,
	cout => \clk_div_inst|Add0~29\);

-- Location: LCCOMB_X45_Y3_N18
\clk_div_inst|clk_div~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~8_combout\ = (\clk_div_inst|Add0~28_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~28_combout\,
	datab => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~8_combout\);

-- Location: FF_X45_Y3_N19
\clk_div_inst|clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(14));

-- Location: LCCOMB_X44_Y3_N4
\clk_div_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~30_combout\ = (\clk_div_inst|clk_div\(15) & (!\clk_div_inst|Add0~29\)) # (!\clk_div_inst|clk_div\(15) & ((\clk_div_inst|Add0~29\) # (GND)))
-- \clk_div_inst|Add0~31\ = CARRY((!\clk_div_inst|Add0~29\) # (!\clk_div_inst|clk_div\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(15),
	datad => VCC,
	cin => \clk_div_inst|Add0~29\,
	combout => \clk_div_inst|Add0~30_combout\,
	cout => \clk_div_inst|Add0~31\);

-- Location: LCCOMB_X45_Y3_N16
\clk_div_inst|clk_div~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~7_combout\ = (!\clk_div_inst|Equal0~8_combout\ & \clk_div_inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|Equal0~8_combout\,
	datac => \clk_div_inst|Add0~30_combout\,
	combout => \clk_div_inst|clk_div~7_combout\);

-- Location: FF_X45_Y3_N17
\clk_div_inst|clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(15));

-- Location: LCCOMB_X44_Y3_N6
\clk_div_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~32_combout\ = (\clk_div_inst|clk_div\(16) & (\clk_div_inst|Add0~31\ $ (GND))) # (!\clk_div_inst|clk_div\(16) & (!\clk_div_inst|Add0~31\ & VCC))
-- \clk_div_inst|Add0~33\ = CARRY((\clk_div_inst|clk_div\(16) & !\clk_div_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(16),
	datad => VCC,
	cin => \clk_div_inst|Add0~31\,
	combout => \clk_div_inst|Add0~32_combout\,
	cout => \clk_div_inst|Add0~33\);

-- Location: FF_X44_Y3_N7
\clk_div_inst|clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(16));

-- Location: LCCOMB_X44_Y3_N8
\clk_div_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~34_combout\ = (\clk_div_inst|clk_div\(17) & (!\clk_div_inst|Add0~33\)) # (!\clk_div_inst|clk_div\(17) & ((\clk_div_inst|Add0~33\) # (GND)))
-- \clk_div_inst|Add0~35\ = CARRY((!\clk_div_inst|Add0~33\) # (!\clk_div_inst|clk_div\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(17),
	datad => VCC,
	cin => \clk_div_inst|Add0~33\,
	combout => \clk_div_inst|Add0~34_combout\,
	cout => \clk_div_inst|Add0~35\);

-- Location: LCCOMB_X44_Y3_N28
\clk_div_inst|clk_div~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~6_combout\ = (!\clk_div_inst|Equal0~8_combout\ & \clk_div_inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Equal0~8_combout\,
	datac => \clk_div_inst|Add0~34_combout\,
	combout => \clk_div_inst|clk_div~6_combout\);

-- Location: FF_X44_Y3_N29
\clk_div_inst|clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(17));

-- Location: LCCOMB_X44_Y3_N10
\clk_div_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~36_combout\ = (\clk_div_inst|clk_div\(18) & (\clk_div_inst|Add0~35\ $ (GND))) # (!\clk_div_inst|clk_div\(18) & (!\clk_div_inst|Add0~35\ & VCC))
-- \clk_div_inst|Add0~37\ = CARRY((\clk_div_inst|clk_div\(18) & !\clk_div_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(18),
	datad => VCC,
	cin => \clk_div_inst|Add0~35\,
	combout => \clk_div_inst|Add0~36_combout\,
	cout => \clk_div_inst|Add0~37\);

-- Location: FF_X44_Y3_N11
\clk_div_inst|clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(18));

-- Location: LCCOMB_X44_Y3_N12
\clk_div_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~38_combout\ = (\clk_div_inst|clk_div\(19) & (!\clk_div_inst|Add0~37\)) # (!\clk_div_inst|clk_div\(19) & ((\clk_div_inst|Add0~37\) # (GND)))
-- \clk_div_inst|Add0~39\ = CARRY((!\clk_div_inst|Add0~37\) # (!\clk_div_inst|clk_div\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(19),
	datad => VCC,
	cin => \clk_div_inst|Add0~37\,
	combout => \clk_div_inst|Add0~38_combout\,
	cout => \clk_div_inst|Add0~39\);

-- Location: LCCOMB_X44_Y3_N26
\clk_div_inst|clk_div~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~5_combout\ = (\clk_div_inst|Add0~38_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~38_combout\,
	datac => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~5_combout\);

-- Location: FF_X44_Y3_N27
\clk_div_inst|clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(19));

-- Location: LCCOMB_X44_Y3_N14
\clk_div_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~40_combout\ = (\clk_div_inst|clk_div\(20) & (\clk_div_inst|Add0~39\ $ (GND))) # (!\clk_div_inst|clk_div\(20) & (!\clk_div_inst|Add0~39\ & VCC))
-- \clk_div_inst|Add0~41\ = CARRY((\clk_div_inst|clk_div\(20) & !\clk_div_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(20),
	datad => VCC,
	cin => \clk_div_inst|Add0~39\,
	combout => \clk_div_inst|Add0~40_combout\,
	cout => \clk_div_inst|Add0~41\);

-- Location: LCCOMB_X45_Y3_N24
\clk_div_inst|clk_div~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~4_combout\ = (\clk_div_inst|Add0~40_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~40_combout\,
	datab => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~4_combout\);

-- Location: FF_X45_Y3_N25
\clk_div_inst|clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(20));

-- Location: LCCOMB_X44_Y3_N16
\clk_div_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~42_combout\ = (\clk_div_inst|clk_div\(21) & (!\clk_div_inst|Add0~41\)) # (!\clk_div_inst|clk_div\(21) & ((\clk_div_inst|Add0~41\) # (GND)))
-- \clk_div_inst|Add0~43\ = CARRY((!\clk_div_inst|Add0~41\) # (!\clk_div_inst|clk_div\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(21),
	datad => VCC,
	cin => \clk_div_inst|Add0~41\,
	combout => \clk_div_inst|Add0~42_combout\,
	cout => \clk_div_inst|Add0~43\);

-- Location: LCCOMB_X45_Y3_N2
\clk_div_inst|clk_div~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~3_combout\ = (!\clk_div_inst|Equal0~8_combout\ & \clk_div_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|Equal0~8_combout\,
	datac => \clk_div_inst|Add0~42_combout\,
	combout => \clk_div_inst|clk_div~3_combout\);

-- Location: FF_X45_Y3_N3
\clk_div_inst|clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(21));

-- Location: LCCOMB_X45_Y3_N28
\clk_div_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~6_combout\ = (\clk_div_inst|clk_div\(23) & (\clk_div_inst|clk_div\(20) & (\clk_div_inst|clk_div\(22) & \clk_div_inst|clk_div\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(23),
	datab => \clk_div_inst|clk_div\(20),
	datac => \clk_div_inst|clk_div\(22),
	datad => \clk_div_inst|clk_div\(21),
	combout => \clk_div_inst|Equal0~6_combout\);

-- Location: LCCOMB_X44_Y3_N30
\clk_div_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~5_combout\ = (!\clk_div_inst|clk_div\(18) & (\clk_div_inst|clk_div\(17) & (\clk_div_inst|clk_div\(19) & !\clk_div_inst|clk_div\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(18),
	datab => \clk_div_inst|clk_div\(17),
	datac => \clk_div_inst|clk_div\(19),
	datad => \clk_div_inst|clk_div\(16),
	combout => \clk_div_inst|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y4_N2
\clk_div_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~1_combout\ = (\clk_div_inst|clk_div\(7) & (!\clk_div_inst|clk_div\(6) & (!\clk_div_inst|clk_div\(4) & !\clk_div_inst|clk_div\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(7),
	datab => \clk_div_inst|clk_div\(6),
	datac => \clk_div_inst|clk_div\(4),
	datad => \clk_div_inst|clk_div\(5),
	combout => \clk_div_inst|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y4_N4
\clk_div_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~2_combout\ = (!\clk_div_inst|clk_div\(3) & (!\clk_div_inst|clk_div\(2) & (!\clk_div_inst|clk_div\(1) & !\clk_div_inst|clk_div\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(3),
	datab => \clk_div_inst|clk_div\(2),
	datac => \clk_div_inst|clk_div\(1),
	datad => \clk_div_inst|clk_div\(0),
	combout => \clk_div_inst|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y4_N0
\clk_div_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~0_combout\ = (!\clk_div_inst|clk_div\(8) & (!\clk_div_inst|clk_div\(11) & (!\clk_div_inst|clk_div\(10) & !\clk_div_inst|clk_div\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(8),
	datab => \clk_div_inst|clk_div\(11),
	datac => \clk_div_inst|clk_div\(10),
	datad => \clk_div_inst|clk_div\(9),
	combout => \clk_div_inst|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y3_N22
\clk_div_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~3_combout\ = (\clk_div_inst|clk_div\(14) & (\clk_div_inst|clk_div\(15) & (\clk_div_inst|clk_div\(13) & \clk_div_inst|clk_div\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(14),
	datab => \clk_div_inst|clk_div\(15),
	datac => \clk_div_inst|clk_div\(13),
	datad => \clk_div_inst|clk_div\(12),
	combout => \clk_div_inst|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y4_N30
\clk_div_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~4_combout\ = (\clk_div_inst|Equal0~1_combout\ & (\clk_div_inst|Equal0~2_combout\ & (\clk_div_inst|Equal0~0_combout\ & \clk_div_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Equal0~1_combout\,
	datab => \clk_div_inst|Equal0~2_combout\,
	datac => \clk_div_inst|Equal0~0_combout\,
	datad => \clk_div_inst|Equal0~3_combout\,
	combout => \clk_div_inst|Equal0~4_combout\);

-- Location: LCCOMB_X44_Y3_N20
\clk_div_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~46_combout\ = (\clk_div_inst|clk_div\(23) & (!\clk_div_inst|Add0~45\)) # (!\clk_div_inst|clk_div\(23) & ((\clk_div_inst|Add0~45\) # (GND)))
-- \clk_div_inst|Add0~47\ = CARRY((!\clk_div_inst|Add0~45\) # (!\clk_div_inst|clk_div\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(23),
	datad => VCC,
	cin => \clk_div_inst|Add0~45\,
	combout => \clk_div_inst|Add0~46_combout\,
	cout => \clk_div_inst|Add0~47\);

-- Location: LCCOMB_X44_Y3_N22
\clk_div_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~48_combout\ = (\clk_div_inst|clk_div\(24) & (\clk_div_inst|Add0~47\ $ (GND))) # (!\clk_div_inst|clk_div\(24) & (!\clk_div_inst|Add0~47\ & VCC))
-- \clk_div_inst|Add0~49\ = CARRY((\clk_div_inst|clk_div\(24) & !\clk_div_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(24),
	datad => VCC,
	cin => \clk_div_inst|Add0~47\,
	combout => \clk_div_inst|Add0~48_combout\,
	cout => \clk_div_inst|Add0~49\);

-- Location: FF_X45_Y3_N31
\clk_div_inst|clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \clk_div_inst|Add0~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(24));

-- Location: LCCOMB_X44_Y3_N24
\clk_div_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~50_combout\ = \clk_div_inst|clk_div\(25) $ (\clk_div_inst|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|clk_div\(25),
	cin => \clk_div_inst|Add0~49\,
	combout => \clk_div_inst|Add0~50_combout\);

-- Location: LCCOMB_X45_Y3_N12
\clk_div_inst|clk_div~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~1_combout\ = (\clk_div_inst|Add0~50_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|Add0~50_combout\,
	datad => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~1_combout\);

-- Location: FF_X45_Y3_N13
\clk_div_inst|clk_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~input_o\,
	d => \clk_div_inst|clk_div~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(25));

-- Location: LCCOMB_X45_Y3_N30
\clk_div_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~7_combout\ = (!\clk_div_inst|clk_div\(24) & \clk_div_inst|clk_div\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_inst|clk_div\(24),
	datad => \clk_div_inst|clk_div\(25),
	combout => \clk_div_inst|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y3_N20
\clk_div_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~8_combout\ = (\clk_div_inst|Equal0~6_combout\ & (\clk_div_inst|Equal0~5_combout\ & (\clk_div_inst|Equal0~4_combout\ & \clk_div_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Equal0~6_combout\,
	datab => \clk_div_inst|Equal0~5_combout\,
	datac => \clk_div_inst|Equal0~4_combout\,
	datad => \clk_div_inst|Equal0~7_combout\,
	combout => \clk_div_inst|Equal0~8_combout\);

-- Location: LCCOMB_X44_Y3_N18
\clk_div_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~44_combout\ = (\clk_div_inst|clk_div\(22) & (\clk_div_inst|Add0~43\ $ (GND))) # (!\clk_div_inst|clk_div\(22) & (!\clk_div_inst|Add0~43\ & VCC))
-- \clk_div_inst|Add0~45\ = CARRY((\clk_div_inst|clk_div\(22) & !\clk_div_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|clk_div\(22),
	datad => VCC,
	cin => \clk_div_inst|Add0~43\,
	combout => \clk_div_inst|Add0~44_combout\,
	cout => \clk_div_inst|Add0~45\);

-- Location: LCCOMB_X45_Y3_N6
\clk_div_inst|clk_div~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~2_combout\ = (!\clk_div_inst|Equal0~8_combout\ & \clk_div_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|Equal0~8_combout\,
	datad => \clk_div_inst|Add0~44_combout\,
	combout => \clk_div_inst|clk_div~2_combout\);

-- Location: FF_X45_Y3_N7
\clk_div_inst|clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \clk_div_inst|clk_div~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(22));

-- Location: LCCOMB_X45_Y3_N8
\clk_div_inst|clk_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_div~0_combout\ = (\clk_div_inst|Add0~46_combout\ & !\clk_div_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_inst|Add0~46_combout\,
	datad => \clk_div_inst|Equal0~8_combout\,
	combout => \clk_div_inst|clk_div~0_combout\);

-- Location: FF_X45_Y3_N9
\clk_div_inst|clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~input_o\,
	d => \clk_div_inst|clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_div\(23));

-- Location: LCCOMB_X45_Y3_N10
\clk_div_inst|clk_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_out~combout\ = LCELL((\SW[1]~input_o\ & (\clk_div_inst|clk_div\(23))) # (!\SW[1]~input_o\ & ((\clk_div_inst|clk_div\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \clk_div_inst|clk_div\(23),
	datad => \clk_div_inst|clk_div\(25),
	combout => \clk_div_inst|clk_out~combout\);

-- Location: CLKCTRL_G17
\clk_div_inst|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_inst|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_inst|clk_out~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X59_Y53_N8
\counter_inst|counter_value[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[0]~8_combout\ = \counter_inst|counter_value\(0) $ (VCC)
-- \counter_inst|counter_value[0]~9\ = CARRY(\counter_inst|counter_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(0),
	datad => VCC,
	combout => \counter_inst|counter_value[0]~8_combout\,
	cout => \counter_inst|counter_value[0]~9\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X59_Y53_N9
\counter_inst|counter_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[0]~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(0));

-- Location: LCCOMB_X59_Y53_N10
\counter_inst|counter_value[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[1]~10_combout\ = (\SW[2]~input_o\ & ((\counter_inst|counter_value\(1) & (\counter_inst|counter_value[0]~9\ & VCC)) # (!\counter_inst|counter_value\(1) & (!\counter_inst|counter_value[0]~9\)))) # (!\SW[2]~input_o\ & 
-- ((\counter_inst|counter_value\(1) & (!\counter_inst|counter_value[0]~9\)) # (!\counter_inst|counter_value\(1) & ((\counter_inst|counter_value[0]~9\) # (GND)))))
-- \counter_inst|counter_value[1]~11\ = CARRY((\SW[2]~input_o\ & (!\counter_inst|counter_value\(1) & !\counter_inst|counter_value[0]~9\)) # (!\SW[2]~input_o\ & ((!\counter_inst|counter_value[0]~9\) # (!\counter_inst|counter_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter_inst|counter_value\(1),
	datad => VCC,
	cin => \counter_inst|counter_value[0]~9\,
	combout => \counter_inst|counter_value[1]~10_combout\,
	cout => \counter_inst|counter_value[1]~11\);

-- Location: FF_X59_Y53_N11
\counter_inst|counter_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[1]~10_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(1));

-- Location: LCCOMB_X59_Y53_N12
\counter_inst|counter_value[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[2]~12_combout\ = ((\SW[2]~input_o\ $ (\counter_inst|counter_value\(2) $ (!\counter_inst|counter_value[1]~11\)))) # (GND)
-- \counter_inst|counter_value[2]~13\ = CARRY((\SW[2]~input_o\ & ((\counter_inst|counter_value\(2)) # (!\counter_inst|counter_value[1]~11\))) # (!\SW[2]~input_o\ & (\counter_inst|counter_value\(2) & !\counter_inst|counter_value[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter_inst|counter_value\(2),
	datad => VCC,
	cin => \counter_inst|counter_value[1]~11\,
	combout => \counter_inst|counter_value[2]~12_combout\,
	cout => \counter_inst|counter_value[2]~13\);

-- Location: FF_X59_Y53_N13
\counter_inst|counter_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[2]~12_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(2));

-- Location: LCCOMB_X59_Y53_N14
\counter_inst|counter_value[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[3]~14_combout\ = (\SW[2]~input_o\ & ((\counter_inst|counter_value\(3) & (\counter_inst|counter_value[2]~13\ & VCC)) # (!\counter_inst|counter_value\(3) & (!\counter_inst|counter_value[2]~13\)))) # (!\SW[2]~input_o\ & 
-- ((\counter_inst|counter_value\(3) & (!\counter_inst|counter_value[2]~13\)) # (!\counter_inst|counter_value\(3) & ((\counter_inst|counter_value[2]~13\) # (GND)))))
-- \counter_inst|counter_value[3]~15\ = CARRY((\SW[2]~input_o\ & (!\counter_inst|counter_value\(3) & !\counter_inst|counter_value[2]~13\)) # (!\SW[2]~input_o\ & ((!\counter_inst|counter_value[2]~13\) # (!\counter_inst|counter_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter_inst|counter_value\(3),
	datad => VCC,
	cin => \counter_inst|counter_value[2]~13\,
	combout => \counter_inst|counter_value[3]~14_combout\,
	cout => \counter_inst|counter_value[3]~15\);

-- Location: FF_X59_Y53_N15
\counter_inst|counter_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[3]~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(3));

-- Location: LCCOMB_X59_Y53_N16
\counter_inst|counter_value[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[4]~16_combout\ = ((\SW[2]~input_o\ $ (\counter_inst|counter_value\(4) $ (!\counter_inst|counter_value[3]~15\)))) # (GND)
-- \counter_inst|counter_value[4]~17\ = CARRY((\SW[2]~input_o\ & ((\counter_inst|counter_value\(4)) # (!\counter_inst|counter_value[3]~15\))) # (!\SW[2]~input_o\ & (\counter_inst|counter_value\(4) & !\counter_inst|counter_value[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter_inst|counter_value\(4),
	datad => VCC,
	cin => \counter_inst|counter_value[3]~15\,
	combout => \counter_inst|counter_value[4]~16_combout\,
	cout => \counter_inst|counter_value[4]~17\);

-- Location: FF_X59_Y53_N17
\counter_inst|counter_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[4]~16_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(4));

-- Location: LCCOMB_X59_Y53_N18
\counter_inst|counter_value[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[5]~18_combout\ = (\SW[2]~input_o\ & ((\counter_inst|counter_value\(5) & (\counter_inst|counter_value[4]~17\ & VCC)) # (!\counter_inst|counter_value\(5) & (!\counter_inst|counter_value[4]~17\)))) # (!\SW[2]~input_o\ & 
-- ((\counter_inst|counter_value\(5) & (!\counter_inst|counter_value[4]~17\)) # (!\counter_inst|counter_value\(5) & ((\counter_inst|counter_value[4]~17\) # (GND)))))
-- \counter_inst|counter_value[5]~19\ = CARRY((\SW[2]~input_o\ & (!\counter_inst|counter_value\(5) & !\counter_inst|counter_value[4]~17\)) # (!\SW[2]~input_o\ & ((!\counter_inst|counter_value[4]~17\) # (!\counter_inst|counter_value\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter_inst|counter_value\(5),
	datad => VCC,
	cin => \counter_inst|counter_value[4]~17\,
	combout => \counter_inst|counter_value[5]~18_combout\,
	cout => \counter_inst|counter_value[5]~19\);

-- Location: FF_X59_Y53_N19
\counter_inst|counter_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[5]~18_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(5));

-- Location: LCCOMB_X59_Y53_N20
\counter_inst|counter_value[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[6]~20_combout\ = ((\SW[2]~input_o\ $ (\counter_inst|counter_value\(6) $ (!\counter_inst|counter_value[5]~19\)))) # (GND)
-- \counter_inst|counter_value[6]~21\ = CARRY((\SW[2]~input_o\ & ((\counter_inst|counter_value\(6)) # (!\counter_inst|counter_value[5]~19\))) # (!\SW[2]~input_o\ & (\counter_inst|counter_value\(6) & !\counter_inst|counter_value[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter_inst|counter_value\(6),
	datad => VCC,
	cin => \counter_inst|counter_value[5]~19\,
	combout => \counter_inst|counter_value[6]~20_combout\,
	cout => \counter_inst|counter_value[6]~21\);

-- Location: FF_X59_Y53_N21
\counter_inst|counter_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[6]~20_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(6));

-- Location: LCCOMB_X59_Y53_N22
\counter_inst|counter_value[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|counter_value[7]~22_combout\ = \SW[2]~input_o\ $ (\counter_inst|counter_value[6]~21\ $ (\counter_inst|counter_value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \counter_inst|counter_value\(7),
	cin => \counter_inst|counter_value[6]~21\,
	combout => \counter_inst|counter_value[7]~22_combout\);

-- Location: FF_X59_Y53_N23
\counter_inst|counter_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \counter_inst|counter_value[7]~22_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|counter_value\(7));

-- Location: LCCOMB_X62_Y52_N0
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \counter_inst|counter_value\(5) $ (VCC)
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\counter_inst|counter_value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(5),
	datad => VCC,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X62_Y52_N2
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\counter_inst|counter_value\(6) & (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\counter_inst|counter_value\(6) 
-- & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\counter_inst|counter_value\(6) & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(6),
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X62_Y52_N4
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\counter_inst|counter_value\(7) & (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\counter_inst|counter_value\(7) & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\counter_inst|counter_value\(7) & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(7),
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X62_Y52_N6
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X63_Y52_N26
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X63_Y52_N0
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\counter_inst|counter_value\(7) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(7),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X63_Y52_N24
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X63_Y52_N20
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\counter_inst|counter_value\(6) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(6),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X63_Y52_N28
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X63_Y52_N18
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\counter_inst|counter_value\(5) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(5),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X63_Y52_N30
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \counter_inst|counter_value\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \counter_inst|counter_value\(4),
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X63_Y52_N16
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \counter_inst|counter_value\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \counter_inst|counter_value\(4),
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X63_Y52_N6
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X63_Y52_N8
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X63_Y52_N10
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X63_Y52_N12
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X63_Y52_N14
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y52_N30
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\counter_inst|counter_value\(3) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(3),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X64_Y52_N8
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\counter_inst|counter_value\(3) & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(3),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X64_Y52_N12
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X63_Y52_N2
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\counter_inst|counter_value\(7))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(7),
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X64_Y52_N0
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X64_Y52_N10
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X63_Y52_N4
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\counter_inst|counter_value\(6))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \counter_inst|counter_value\(6),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X64_Y52_N28
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X63_Y52_N22
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\counter_inst|counter_value\(5)))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \counter_inst|counter_value\(5),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X65_Y52_N10
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X65_Y52_N0
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\counter_inst|counter_value\(4) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(4),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X64_Y52_N14
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X64_Y52_N16
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X64_Y52_N18
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X64_Y52_N20
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X64_Y52_N22
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X65_Y52_N2
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X65_Y52_N24
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\counter_inst|counter_value\(3) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(3),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X66_Y52_N10
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\counter_inst|counter_value\(2) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(2),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X66_Y52_N4
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\counter_inst|counter_value\(2) & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(2),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X66_Y52_N16
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X66_Y52_N18
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X64_Y52_N24
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X64_Y52_N26
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X64_Y52_N2
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X66_Y52_N8
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X65_Y52_N12
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X64_Y52_N4
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X65_Y52_N16
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\counter_inst|counter_value\(4))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \counter_inst|counter_value\(4),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X65_Y52_N6
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X66_Y52_N20
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X66_Y52_N22
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X66_Y52_N24
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X66_Y52_N26
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X66_Y52_N28
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X66_Y52_N2
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X65_Y52_N26
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\counter_inst|counter_value\(3)))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \counter_inst|counter_value\(3),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X64_Y52_N6
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X66_Y52_N6
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X66_Y52_N14
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X66_Y52_N0
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X65_Y52_N20
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X67_Y52_N4
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X67_Y52_N30
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X65_Y52_N14
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X66_Y52_N12
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X67_Y52_N0
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\counter_inst|counter_value\(2) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(2),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X67_Y52_N8
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\counter_inst|counter_value\(1) & \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(1),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X67_Y52_N2
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\counter_inst|counter_value\(1) & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(1),
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X67_Y52_N12
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X67_Y52_N14
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X67_Y52_N16
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X67_Y52_N18
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y52_N20
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X67_Y52_N22
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ & !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X67_Y52_N24
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X67_Y52_N26
\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X67_Y52_N6
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X67_Y52_N10
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\counter_inst|counter_value\(1))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(1),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X67_Y52_N28
\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	combout => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X69_Y52_N8
\seven_segment_inst|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux20~0_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- \counter_inst|counter_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux20~0_combout\);

-- Location: LCCOMB_X69_Y52_N26
\seven_segment_inst|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux19~0_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ 
-- & (\counter_inst|counter_value\(0) $ (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux19~0_combout\);

-- Location: LCCOMB_X69_Y52_N4
\seven_segment_inst|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux18~0_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\) # 
-- (!\counter_inst|counter_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux18~0_combout\);

-- Location: LCCOMB_X69_Y52_N6
\seven_segment_inst|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux17~0_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\counter_inst|counter_value\(0) & 
-- \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & \counter_inst|counter_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux17~0_combout\);

-- Location: LCCOMB_X69_Y52_N0
\seven_segment_inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux16~0_combout\ = (\counter_inst|counter_value\(0)) # ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux16~0_combout\);

-- Location: LCCOMB_X69_Y52_N10
\seven_segment_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux15~0_combout\ = (\counter_inst|counter_value\(0) & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\counter_inst|counter_value\(0) & ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux15~0_combout\);

-- Location: LCCOMB_X69_Y52_N28
\seven_segment_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux14~0_combout\ = (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\) # (!\counter_inst|counter_value\(0))))) # (!\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (((\seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \counter_inst|counter_value\(0),
	datac => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \seven_segment_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \seven_segment_inst|Mux14~0_combout\);

-- Location: LCCOMB_X62_Y51_N10
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \counter_inst|counter_value\(5) $ (VCC)
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\counter_inst|counter_value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(5),
	datad => VCC,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X62_Y51_N12
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\counter_inst|counter_value\(6) & (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\counter_inst|counter_value\(6) 
-- & (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\counter_inst|counter_value\(6) & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(6),
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X62_Y51_N14
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\counter_inst|counter_value\(7) & (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\counter_inst|counter_value\(7) & (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\counter_inst|counter_value\(7) & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(7),
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X62_Y51_N16
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X62_Y51_N2
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\counter_inst|counter_value\(7) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(7),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X62_Y51_N20
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X61_Y51_N26
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X61_Y51_N0
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\counter_inst|counter_value\(6) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(6),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X61_Y51_N12
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\counter_inst|counter_value\(5) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(5),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X61_Y51_N14
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X61_Y51_N10
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\counter_inst|counter_value\(4) & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(4),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X61_Y51_N8
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\counter_inst|counter_value\(4) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(4),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X61_Y51_N16
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X61_Y51_N18
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X61_Y51_N20
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X61_Y51_N22
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y51_N24
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X61_Y51_N4
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X61_Y51_N28
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\counter_inst|counter_value\(6))) # (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(6),
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X61_Y51_N6
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\counter_inst|counter_value\(5))) # (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(5),
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X61_Y51_N30
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X60_Y51_N26
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X60_Y51_N8
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\counter_inst|counter_value\(4) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(4),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X60_Y51_N30
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\counter_inst|counter_value\(3) & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(3),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X60_Y51_N28
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\counter_inst|counter_value\(3) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(3),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X60_Y51_N12
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X60_Y51_N14
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X60_Y51_N16
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X60_Y51_N18
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y51_N20
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y51_N8
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X64_Y51_N10
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X64_Y51_N12
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X64_Y51_N14
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X64_Y51_N16
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X64_Y51_N18
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X64_Y51_N20
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X64_Y51_N26
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X64_Y51_N24
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\);

-- Location: LCCOMB_X63_Y51_N26
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\);

-- Location: LCCOMB_X63_Y51_N4
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X60_Y51_N0
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X61_Y51_N2
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X60_Y51_N2
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X60_Y51_N4
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\counter_inst|counter_value\(4)))) # (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \counter_inst|counter_value\(4),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X60_Y51_N24
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X60_Y51_N22
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\counter_inst|counter_value\(3) & \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(3),
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X59_Y51_N10
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \counter_inst|counter_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \counter_inst|counter_value\(2),
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X59_Y51_N12
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \counter_inst|counter_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \counter_inst|counter_value\(2),
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X59_Y51_N0
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X59_Y51_N2
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X59_Y51_N4
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X59_Y51_N6
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y51_N8
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y51_N30
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\);

-- Location: LCCOMB_X63_Y51_N24
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X63_Y51_N0
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\ = (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\);

-- Location: LCCOMB_X63_Y51_N6
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\) # 
-- (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\)))
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\) # 
-- (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datad => VCC,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X63_Y51_N8
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & 
-- (((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\) # (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\)))) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ & (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\)))
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ & 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ & !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X63_Y51_N10
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & 
-- (((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\)))) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\)))))
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X64_Y51_N0
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[54]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X64_Y51_N2
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[53]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[53]~1_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LCCOMB_X64_Y51_N28
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[52]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[52]~2_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[52]~2_combout\);

-- Location: LCCOMB_X64_Y51_N6
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: LCCOMB_X64_Y51_N22
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X63_Y51_N12
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ & 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ & !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X63_Y51_N14
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[52]~2_combout\) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X63_Y51_N16
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[53]~1_combout\ & 
-- !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X63_Y51_N18
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X63_Y51_N20
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X63_Y51_N22
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\)))) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\);

-- Location: LCCOMB_X63_Y51_N28
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\) # ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\)))) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\);

-- Location: LCCOMB_X59_Y51_N30
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X60_Y51_N10
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X60_Y51_N6
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\counter_inst|counter_value\(3)))) # (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \counter_inst|counter_value\(3),
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X59_Y51_N16
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X59_Y51_N14
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X59_Y51_N18
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \counter_inst|counter_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \counter_inst|counter_value\(2),
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X59_Y53_N24
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \counter_inst|counter_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \counter_inst|counter_value\(1),
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X59_Y53_N26
\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \counter_inst|counter_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \counter_inst|counter_value\(1),
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X59_Y51_N20
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # 
-- (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X59_Y51_N22
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X59_Y51_N24
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X59_Y51_N26
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \seven_segment_inst|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y51_N28
\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y51_N24
\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = !\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X62_Y51_N30
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (!\seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\);

-- Location: LCCOMB_X63_Y51_N2
\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\) # (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\)))) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\);

-- Location: LCCOMB_X66_Y51_N0
\seven_segment_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux13~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\)) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ $ (((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux13~0_combout\);

-- Location: LCCOMB_X66_Y51_N2
\seven_segment_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux12~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ & ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\) # 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ 
-- & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\ $ (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux12~0_combout\);

-- Location: LCCOMB_X66_Y51_N12
\seven_segment_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux11~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\)) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux11~0_combout\);

-- Location: LCCOMB_X66_Y51_N30
\seven_segment_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux10~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\) # 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ & \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\)))) # (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ 
-- & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ $ (((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y51_N16
\seven_segment_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux9~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\) # ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ & 
-- (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\)) # (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\ & 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux9~0_combout\);

-- Location: LCCOMB_X66_Y51_N26
\seven_segment_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux8~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\) # 
-- ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\ & \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ 
-- & ((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\) # ((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux8~0_combout\);

-- Location: LCCOMB_X66_Y51_N28
\seven_segment_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux7~0_combout\ = (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- ((!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\) # (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\)))) # 
-- (!\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ $ 
-- (((\seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datab => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datac => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datad => \seven_segment_inst|Mod0|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \seven_segment_inst|Mux7~0_combout\);

-- Location: LCCOMB_X66_Y47_N14
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \counter_inst|counter_value\(3) $ (VCC)
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\counter_inst|counter_value\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(3),
	datad => VCC,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X66_Y47_N16
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\counter_inst|counter_value\(4) & (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\counter_inst|counter_value\(4) 
-- & (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\counter_inst|counter_value\(4) & !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(4),
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X66_Y47_N18
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\counter_inst|counter_value\(5) & ((GND) # (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # 
-- (!\counter_inst|counter_value\(5) & (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\counter_inst|counter_value\(5)) # (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(5),
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X66_Y47_N20
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\counter_inst|counter_value\(6) & (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\counter_inst|counter_value\(6) & 
-- ((\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\counter_inst|counter_value\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(6),
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X66_Y47_N22
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\counter_inst|counter_value\(7) & (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # 
-- (!\counter_inst|counter_value\(7) & (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\counter_inst|counter_value\(7) & !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(7),
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X66_Y47_N24
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X65_Y47_N2
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X65_Y47_N0
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\counter_inst|counter_value\(7) & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(7),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X65_Y47_N28
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & 
-- !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X66_Y47_N8
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\counter_inst|counter_value\(6) & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(6),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X65_Y47_N30
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & 
-- !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X66_Y47_N10
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\counter_inst|counter_value\(5) & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|counter_value\(5),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X65_Y47_N10
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X65_Y47_N8
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\counter_inst|counter_value\(4) & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|counter_value\(4),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X65_Y47_N12
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\counter_inst|counter_value\(3) & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(3),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X65_Y47_N4
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X66_Y47_N6
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\counter_inst|counter_value\(2) & !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(2),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X66_Y47_N12
\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\counter_inst|counter_value\(2) & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|counter_value\(2),
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X65_Y47_N14
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # 
-- (\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X65_Y47_N16
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- (!\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X65_Y47_N18
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- ((\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X65_Y47_N20
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & 
-- !\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X65_Y47_N22
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & 
-- ((\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # (\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X65_Y47_N24
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- (!\seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X65_Y47_N26
\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X77_Y44_N16
\seven_segment_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux6~0_combout\ = (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y47_N0
\seven_segment_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux4~0_combout\ = (\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y43_N8
\seven_segment_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux1~0_combout\ = (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (!\seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \seven_segment_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \seven_segment_inst|Mux1~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


